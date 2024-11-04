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

-- Função para criar ESP atualizada
local function createEsp(player)
    if cache[player] then return end -- Evita criar ESP duplicada
    
    local esp = {
        boxOutline = create("Square", {
            Color = ESP_SETTINGS.Box.OutlineColor,
            Thickness = 3,
            Filled = false,
            Visible = false
        }),
        box = create("Square", {
            Color = ESP_SETTINGS.Box.Color,
            Thickness = 1,
            Filled = false,
            Visible = false
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

-- Função isTeamMate corrigida
local function isTeamMate(player)
    if not ESP_SETTINGS.General.Teamcheck then
        return false
    end
    
    return player.Team and localPlayer.Team and player.Team == localPlayer.Team
end

-- Função updateEsp atualizada
local function updateEsp()
    if not ESP_SETTINGS.General.Enabled then return end -- Verificação inicial global
    
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
        
        local function hideEsp()
            if not esp then return end
            
            for _, drawing in pairs(esp) do
                if type(drawing) == "table" then
                    for _, line in pairs(drawing) do
                        if typeof(line) == "table" and line[1] then
                            line[1].Visible = false
                        elseif typeof(line) == "Instance" then
                            line.Visible = false
                        end
                    end
                elseif drawing.Visible ~= nil then
                    drawing.Visible = false
                end
            end
        end
        
        if not (character and rootPart and head and humanoid and ESP_SETTINGS.General.Enabled) then
            hideEsp()
            continue
        end
        
        local distance = (camera.CFrame.p - rootPart.Position).Magnitude
        if distance > ESP_SETTINGS.General.MaxDistance then
            hideEsp()
            continue
        end
        
        if isTeamMate(player) then
            hideEsp()
            continue
        end
        
        local position, onScreen = camera:WorldToViewportPoint(rootPart.Position)
        
        if not onScreen then
            hideEsp()
            continue
        end
        
        local hrp2D = camera:WorldToViewportPoint(rootPart.Position)
        local charSize = (camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3, 0)).Y - camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0, 2.6, 0)).Y) / 2
        local boxSize = Vector2.new(math.floor(charSize * 1.8), math.floor(charSize * 1.9))
        local boxPosition = Vector2.new(math.floor(hrp2D.X - charSize * 1.8 / 2), math.floor(hrp2D.Y - charSize * 1.6 / 2))

        -- Name ESP
        if ESP_SETTINGS.Name.Show then
            esp.name.Visible = true
            esp.name.Text = string.lower(player.Name)
            esp.name.Position = Vector2.new(boxSize.X / 2 + boxPosition.X, boxPosition.Y - 16)
            esp.name.Color = ESP_SETTINGS.Name.Color
        else
            esp.name.Visible = false
        end

        -- Box ESP
        if ESP_SETTINGS.Box.Show then
            if ESP_SETTINGS.Box.Type == "2D" then
                esp.boxOutline.Size = boxSize
                esp.boxOutline.Position = boxPosition
                esp.box.Size = boxSize
                esp.box.Position = boxPosition
                esp.box.Color = ESP_SETTINGS.Box.Color
                esp.box.Visible = true
                esp.boxOutline.Visible = true
                for _, line in ipairs(esp.boxLines) do
                    line:Remove()
                end
            elseif ESP_SETTINGS.Box.Type == "Corner" then
                local lineW = (boxSize.X / 5)
                local lineH = (boxSize.Y / 6)
                local lineT = 1

                if #esp.boxLines == 0 then
                    for _ = 1, 16 do
                        local boxLine = create("Line", {
                            Thickness = 1,
                            Color = ESP_SETTINGS.Box.Color,
                            Transparency = 1
                        })
                        table.insert(esp.boxLines, boxLine)
                    end
                end

                local boxLines = esp.boxLines

                -- corner box lines
                local lines = {
                    {boxPosition.X - lineT, boxPosition.Y - lineT, boxPosition.X + lineW, boxPosition.Y - lineT},
                    {boxPosition.X - lineT, boxPosition.Y - lineT, boxPosition.X - lineT, boxPosition.Y + lineH},
                    {boxPosition.X + boxSize.X - lineW, boxPosition.Y - lineT, boxPosition.X + boxSize.X + lineT, boxPosition.Y - lineT},
                    {boxPosition.X + boxSize.X + lineT, boxPosition.Y - lineT, boxPosition.X + boxSize.X + lineT, boxPosition.Y + lineH},
                    {boxPosition.X - lineT, boxPosition.Y + boxSize.Y - lineH, boxPosition.X - lineT, boxPosition.Y + boxSize.Y + lineT},
                    {boxPosition.X - lineT, boxPosition.Y + boxSize.Y + lineT, boxPosition.X + lineW, boxPosition.Y + boxSize.Y + lineT},
                    {boxPosition.X + boxSize.X - lineW, boxPosition.Y + boxSize.Y + lineT, boxPosition.X + boxSize.X + lineT, boxPosition.Y + boxSize.Y + lineT},
                    {boxPosition.X + boxSize.X + lineT, boxPosition.Y + boxSize.Y - lineH, boxPosition.X + boxSize.X + lineT, boxPosition.Y + boxSize.Y + lineT}
                }

                for i, lineData in ipairs(lines) do
                    local line = boxLines[i]
                    line.From = Vector2.new(lineData[1], lineData[2])
                    line.To = Vector2.new(lineData[3], lineData[4])
                    line.Visible = true
                end

                esp.box.Visible = false
                esp.boxOutline.Visible = false
            end
        else
            esp.box.Visible = false
            esp.boxOutline.Visible = false
            for _, line in ipairs(esp.boxLines) do
                line:Remove()
            end
            esp.boxLines = {}
        end

        -- Health ESP
        if ESP_SETTINGS.Health.Show then
            esp.healthOutline.Visible = true
            esp.health.Visible = true
            local healthPercentage = humanoid.Health / humanoid.MaxHealth
            esp.healthOutline.From = Vector2.new(boxPosition.X - 6, boxPosition.Y + boxSize.Y)
            esp.healthOutline.To = Vector2.new(esp.healthOutline.From.X, esp.healthOutline.From.Y - boxSize.Y)
            esp.health.From = Vector2.new((boxPosition.X - 5), boxPosition.Y + boxSize.Y)
            esp.health.To = Vector2.new(esp.health.From.X, esp.health.From.Y - healthPercentage * boxSize.Y)
            esp.health.Color = ESP_SETTINGS.Health.LowColor:Lerp(ESP_SETTINGS.Health.HighColor, healthPercentage)
        else
            esp.healthOutline.Visible = false
            esp.health.Visible = false
        end

        -- Distance ESP
        if ESP_SETTINGS.Distance.Show then
            local distance = (camera.CFrame.p - rootPart.Position).Magnitude
            esp.distance.Text = string.format("%.1f studs", distance)
            esp.distance.Position = Vector2.new(boxPosition.X + boxSize.X / 2, boxPosition.Y + boxSize.Y + 5)
            esp.distance.Visible = true
        else
            esp.distance.Visible = false
        end

        -- Skeleton ESP
        if ESP_SETTINGS.Skeletons.Show then
            if #esp.skeletonLines == 0 then
                local bones = getBones(character)
                for _, bonePair in ipairs(bones) do
                    local parentBone, childBone = bonePair[1], bonePair[2]
                    if character:FindFirstChild(parentBone) and character:FindFirstChild(childBone) then
                        local skeletonLine = create("Line", {
                            Thickness = 1,
                            Color = ESP_SETTINGS.Skeletons.Color,
                            Transparency = 1
                        })
                        table.insert(esp.skeletonLines, {skeletonLine, parentBone, childBone})
                    end
                end
            end

            for _, lineData in ipairs(esp.skeletonLines) do
                local skeletonLine = lineData[1]
                local parentBone, childBone = lineData[2], lineData[3]
                if character:FindFirstChild(parentBone) and character:FindFirstChild(childBone) then
                    local parentPosition = camera:WorldToViewportPoint(character[parentBone].Position)
                    local childPosition = camera:WorldToViewportPoint(character[childBone].Position)
                    skeletonLine.From = Vector2.new(parentPosition.X, parentPosition.Y)
                    skeletonLine.To = Vector2.new(childPosition.X, childPosition.Y)
                    skeletonLine.Color = ESP_SETTINGS.Skeletons.Color
                    skeletonLine.Visible = true
                else
                    skeletonLine:Remove()
                end
            end
        else
            for _, lineData in ipairs(esp.skeletonLines) do
                local skeletonLine = lineData[1]
                skeletonLine:Remove()
            end
            esp.skeletonLines = {}
        end

        -- Tracer ESP
        if ESP_SETTINGS.Tracer.Show then
            local tracerY
            if ESP_SETTINGS.Tracer.Position == "Top" then
                tracerY = 0
            elseif ESP_SETTINGS.Tracer.Position == "Middle" then
                tracerY = camera.ViewportSize.Y / 2
            else
                tracerY = camera.ViewportSize.Y
            end
            esp.tracer.Visible = true
            esp.tracer.From = Vector2.new(camera.ViewportSize.X / 2, tracerY)
            esp.tracer.To = Vector2.new(hrp2D.X, hrp2D.Y)
        else
            esp.tracer.Visible = false
        end
    else
        for _, drawing in pairs(esp) do
            drawing.Visible = false
        end
        for _, lineData in ipairs(esp.skeletonLines) do
            local skeletonLine = lineData[1]
            skeletonLine:Remove()
        end
        esp.skeletonLines = {}
        for _, line in ipairs(esp.boxLines) do
            line:Remove()
        end
        esp.boxLines = {}
    end
end

-- Inicialização atualizada
local function init()
    -- Limpar cache existente
    for player, esp in pairs(cache) do
        removeEsp(player)
    end
    
    -- Criar ESP para jogadores existentes
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            createEsp(player)
        end
    end
    
    -- Conectar eventos
    Players.PlayerAdded:Connect(function(player)
        if player ~= localPlayer then
            createEsp(player)
        end
    end)
    
    Players.PlayerRemoving:Connect(function(player)
        removeEsp(player)
    end)
    
    -- Conectar updateEsp ao RenderStepped
    RunService:UnbindFromRenderStep("ESP") -- Remove conexão anterior se existir
    RunService:BindToRenderStep("ESP", 1, updateEsp)
end

-- Chamar inicialização
init()

-- Atualizar função onRoundStateChanged
local function onRoundStateChanged()
    task.wait(1)
    init() -- Reinicializa toda a ESP
end

-- Conectar ao evento de mudança de round (específico para Arsenal)
if game.PlaceId == 286090429 then -- ID do Arsenal
    local roundState = game:GetService("ReplicatedStorage"):WaitForChild("wkspc"):WaitForChild("Status")
    roundState.Changed:Connect(onRoundStateChanged)
    
    -- Adicionar conexão para quando o mapa muda
    workspace.ChildAdded:Connect(function(child)
        if child.Name == "Map" then
            task.wait(2)
            onRoundStateChanged()
        end
    end)
end

return ESP_SETTINGS
