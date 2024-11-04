--// Variables
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera
local cache = {}

local bonesR15 = {
    {"Head", "UpperTorso"},
    {"UpperTorso", "RightUpperArm"},
    {"RightUpperArm", "RightLowerArm"},
    {"RightLowerArm", "RightHand"},
    {"UpperTorso", "LeftUpperArm"},
    {"LeftUpperArm", "LeftLowerArm"},
    {"LeftLowerArm", "LeftHand"},
    {"UpperTorso", "LowerTorso"},
    {"LowerTorso", "LeftUpperLeg"},
    {"LeftUpperLeg", "LeftLowerLeg"},
    {"LeftLowerLeg", "LeftFoot"},
    {"LowerTorso", "RightUpperLeg"},
    {"RightUpperLeg", "RightLowerLeg"},
    {"RightLowerLeg", "RightFoot"}
}

local bonesR6 = {
    {"Head", "Torso"},
    {"Torso", "Left Arm"},
    {"Left Arm", "Left Leg"},
    {"Torso", "Right Arm"},
    {"Right Arm", "Right Leg"}
}

--// Settings
local ESP_SETTINGS = {
    Box = {
        OutlineColor = Color3.new(0, 0, 0),
        Color = Color3.new(1, 1, 1), 
        Enabled = false, -- Toggle for the box ESP
        Show = true, -- Show/hide the box
        Type = "2D" -- (2D, Corner)
    },
    Name = {
        Color = Color3.new(1, 1, 1), 
        Show = true
    },
    Health = {
        OutlineColor = Color3.new(0, 0, 0),
        HighColor = Color3.new(0, 1, 0),
        LowColor = Color3.new(1, 0, 0), 
        Show = true
    },
    Distance = {
        Show = true
    },
    Skeletons = {
        Show = false, 
        Color = Color3.new(1, 1, 1) 
    },
    Tracer = {
        Show = false, 
        Color = Color3.new(1, 1, 1), 
        Thickness = 2, 
        Position = "Bottom" -- (Top, Middle, Bottom)
    },
    General = {
        CharSize = Vector2.new(4, 6),
        Teamcheck = false, 
        WallCheck = false,
        Enabled = false,
        MaxDistance = 10000 -- Aumentado para 10000 studs
    }
}

local Custom_drawing_library = false
local Drawing_Library_Name = ""

local Drawing = loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGregs/Drawing_library/main/Drawing.lua"))()

if Drawing then
    Custom_drawing_library = true
    Drawing_Library_Name = "YellowGreg Drawing Library"
else
    Drawing_Library_Name = "Solara Executor Drawing Library"
end

print("Using:", Drawing_Library_Name)

local function create(class, properties)
    local drawing = Drawing.new(class)
    for property, value in pairs(properties) do
        drawing[property] = value
    end
    return drawing
end

local function createEsp(player)
    local esp = {
        boxOutline = create("Square", {
            Color = ESP_SETTINGS.Box.OutlineColor,
            Thickness = 3,
            Filled = false
        }),
        box = create("Square", {
            Color = ESP_SETTINGS.Box.Color,
            Thickness = 1,
            Filled = false
        }),
        name = create("Text", {
            Color = ESP_SETTINGS.Name.Color,
            Outline = true,
            Center = true,
            Size = 13
        }),
        healthOutline = create("Line", {
            Thickness = 3,
            Color = ESP_SETTINGS.Health.OutlineColor
        }),
        health = create("Line", {
            Thickness = 1
        }),
        distance = create("Text", {
            Color = Color3.new(1, 1, 1),
            Size = 12,
            Outline = true,
            Center = true,
            Visible = ESP_SETTINGS.Distance.Show
        }),
        tracer = create("Line", {
            Thickness = ESP_SETTINGS.Tracer.Thickness,
            Color = ESP_SETTINGS.Tracer.Color,
            Transparency = 1
        }),
        boxLines = {},
        skeletonLines = {}
    }

    cache[player] = esp
end

local function isPlayerBehindWall(player)
    local character = player.Character
    if not character then return false end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return false end

    local ray = Ray.new(camera.CFrame.Position, (rootPart.Position - camera.CFrame.Position).Unit * (rootPart.Position - camera.CFrame.Position).Magnitude)
    local hit, _ = workspace:FindPartOnRayWithIgnoreList(ray, {localPlayer.Character, character})
    
    return hit and hit:IsA("Part")
end

local function removeEsp(player)
    local esp = cache[player]
    if not esp then return end

    for _, drawing in pairs(esp) do
        if type(drawing) == "table" then
            for _, line in pairs(drawing) do
                line:Remove()
            end
        else
            drawing:Remove()
        end
    end

    cache[player] = nil
end

local function getBones(character)
    if character:FindFirstChild("UpperTorso") then
        return bonesR15
    else
        return bonesR6
    end
end

-- Função para atualizar ESP quando um jogador respawna
local function onCharacterAdded(player)
    if player ~= localPlayer then
        -- Remove ESP antiga se existir
        removeEsp(player)
        -- Cria nova ESP
        createEsp(player)
        
        -- Aguarda um frame para garantir que o personagem está totalmente carregado
        RunService.RenderStepped:Wait()
        
        -- Atualiza a ESP imediatamente
        local esp = cache[player]
        if esp then
            updateEsp()
        end
    end
end

-- Conectar eventos de personagem para todos os jogadores
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then
        player.CharacterAdded:Connect(function()
            onCharacterAdded(player)
        end)
    end
end

-- Conectar eventos para novos jogadores
Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then
        createEsp(player)
        player.CharacterAdded:Connect(function()
            onCharacterAdded(player)
        end)
    end
end)

-- Adicionar função de verificação de time
local function isTeamMate(player)
    if not ESP_SETTINGS.General.Teamcheck then
        return false
    end
    
    local playerTeam = player.Team
    local localTeam = localPlayer.Team
    
    if playerTeam and localTeam then
        return playerTeam == localTeam
    end
    
    return false
end

-- Função updateEsp corrigida
local function updateEsp()
    if not ESP_SETTINGS.General.Enabled then 
        -- Esconder todas as ESPs quando desativado
        for _, esp in pairs(cache) do
            for _, drawing in pairs(esp) do
                if type(drawing) ~= "table" then
                    drawing.Visible = false
                end
            end
        end
        return 
    end
    
    -- Atualizar para todos os jogadores
    for _, player in ipairs(Players:GetPlayers()) do
        if player == localPlayer then continue end
        
        local esp = cache[player]
        if not esp then
            createEsp(player)
            esp = cache[player]
        end
        
        local character = player.Character
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        local head = character and character:FindFirstChild("Head")
        local humanoid = character and character:FindFirstChild("Humanoid")
        
        -- Função para esconder ESP
        local function hideEsp()
            for _, drawing in pairs(esp) do
                if type(drawing) ~= "table" then
                    drawing.Visible = false
                end
            end
            for _, line in ipairs(esp.skeletonLines) do
                line[1].Visible = false
            end
            for _, line in ipairs(esp.boxLines) do
                line.Visible = false
            end
            esp.health.Visible = false
            esp.healthOutline.Visible = false
        end
        
        -- Verificar condições para mostrar ESP
        if not (character and rootPart and head and humanoid) then
            hideEsp()
            continue
        end
        
        -- Verificar distância
        local distance = (camera.CFrame.p - rootPart.Position).Magnitude
        if distance > ESP_SETTINGS.General.MaxDistance then
            hideEsp()
            continue
        end
        
        -- Verificar team
        if isTeamMate(player) then
            hideEsp()
            continue
        end
        
        -- Verificar se está na tela
        local position, onScreen = camera:WorldToViewportPoint(rootPart.Position)
        if not onScreen then
            hideEsp()
            continue
        end
        
        -- Resto do código de atualização da ESP...
    end
end

-- Função para lidar com personagem adicionado
local function onCharacterAdded(player)
    if player == localPlayer then return end
    
    -- Remover ESP antiga
    removeEsp(player)
    -- Criar nova ESP
    createEsp(player)
    
    -- Aguardar carregamento do personagem
    local character = player.Character
    if character then
        local humanoid = character:WaitForChild("Humanoid", 3)
        if humanoid then
            humanoid.Died:Connect(function()
                local esp = cache[player]
                if esp then
                    for _, drawing in pairs(esp) do
                        if type(drawing) ~= "table" then
                            drawing.Visible = false
                        end
                    end
                end
            end)
        end
    end
end

-- Conectar eventos atualizados
local function init()
    -- Limpar cache existente
    for player, esp in pairs(cache) do
        removeEsp(player)
    end
    
    -- Configurar para jogadores existentes
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            createEsp(player)
            player.CharacterAdded:Connect(function()
                onCharacterAdded(player)
            end)
        end
    end
    
    -- Configurar para novos jogadores
    Players.PlayerAdded:Connect(function(player)
        if player ~= localPlayer then
            createEsp(player)
            player.CharacterAdded:Connect(function()
                onCharacterAdded(player)
            end)
        end
    end)
    
    -- Configurar para jogadores removidos
    Players.PlayerRemoving:Connect(function(player)
        removeEsp(player)
    end)
    
    -- Conectar updateEsp
    RunService:UnbindFromRenderStep("ESP")
    RunService:BindToRenderStep("ESP", 1, updateEsp)
end

-- Atualizar função onRoundStateChanged
local function onRoundStateChanged()
    task.wait(1)
    init()
end

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then
        createEsp(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then
        createEsp(player)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    removeEsp(player)
end)

RunService.RenderStepped:Connect(updateEsp)

-- Adicionar listener para mudanças de round/mapa no Arsenal
if game.PlaceId == 286090429 then -- ID do Arsenal
    local roundState = game:GetService("ReplicatedStorage"):WaitForChild("wkspc"):WaitForChild("Status")
    roundState.Changed:Connect(onRoundStateChanged)
end

return ESP_SETTINGS
