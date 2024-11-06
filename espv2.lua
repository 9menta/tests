local ESPModule = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local localPlayer = Players.LocalPlayer

local settings = {
    -- Configurações gerais
    Enabled = false,
    TeamCheck = false,
    
    -- Configurações de nome
    Names = {
        Enabled = false,
        Size = 20,
        Color = Color3.fromRGB(255, 0, 0),
        Transparency = 1,
        AutoScale = false,
        ShowDistance = true
    },
    
    -- Configurações de vida
    Health = {
        Enabled = false,
        Size = 18, -- Ligeiramente menor que o nome
        Color = Color3.fromRGB(0, 255, 0),
        Transparency = 1,
        AutoScale = true
    },
    
    -- Configurações de box
    Boxes = {
        Enabled = false,
        Color = Color3.fromRGB(255, 255, 255),
        Thickness = 2,
        Transparency = 1,
        AutoThickness = true,
        ShowTeamColor = false
    }
}

-- Função para calcular posição mesmo com hitbox modificado
local function GetPlayerPosition(character)
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    
    -- Usar a posição original do HRP, ignorando modificações de tamanho
    local originalPos = hrp.Position
    local head = character:FindFirstChild("Head")
    
    if head then
        -- Usar a cabeça como referência para altura
        return Vector3.new(originalPos.X, head.Position.Y, originalPos.Z)
    end
    
    return originalPos
end

-- Função para criar elementos de desenho
local function CreateDrawings()
    return {
        box = Drawing.new("Square"),
        name = Drawing.new("Text"),
        health = Drawing.new("Text")
    }
end

-- Configurar propriedades iniciais
local function SetupDrawing(drawing, type)
    if type == "box" then
        drawing.Thickness = settings.Boxes.Thickness
        drawing.Filled = false
        drawing.Transparency = settings.Boxes.Transparency
        drawing.Color = settings.Boxes.Color
        drawing.Visible = false
    elseif type == "text" then
        drawing.Size = settings.Names.Size
        drawing.Center = true
        drawing.Outline = true
        drawing.Visible = false
    end
end

-- Armazenar os drawings para cada jogador
local playerDrawings = {}

-- Função principal do ESP
local function UpdateESP()
    for _, player in ipairs(Players:GetPlayers()) do
        if player == localPlayer then continue end
        
        -- Criar drawings se não existirem
        if not playerDrawings[player] then
            playerDrawings[player] = CreateDrawings()
            SetupDrawing(playerDrawings[player].box, "box")
            SetupDrawing(playerDrawings[player].name, "text")
            SetupDrawing(playerDrawings[player].health, "text")
        end
        
        local drawings = playerDrawings[player]
        
        -- Verificar se o ESP está ativo
        if not settings.Enabled then
            drawings.box.Visible = false
            drawings.name.Visible = false
            drawings.health.Visible = false
            continue
        end
        
        -- Verificar character
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            drawings.box.Visible = false
            drawings.name.Visible = false
            drawings.health.Visible = false
            continue
        end
        
        -- Team Check
        if settings.TeamCheck and player.Team == localPlayer.Team then
            drawings.box.Visible = false
            drawings.name.Visible = false
            drawings.health.Visible = false
            continue
        end
        
        local character = player.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local humanoid = character:FindFirstChild("Humanoid")
        local head = character:FindFirstChild("Head")
        
        if not humanoidRootPart or not humanoid or not head then continue end
        
        local pos = GetPlayerPosition(character)
        local screenPos, onScreen = camera:WorldToViewportPoint(pos)
        
        if not onScreen then
            drawings.box.Visible = false
            drawings.name.Visible = false
            drawings.health.Visible = false
            continue
        end
        
        -- Atualizar Box
        if settings.Boxes.Enabled then
            local size = GetBoxSize(character)
            drawings.box.Size = size
            drawings.box.Position = Vector2.new(screenPos.X - size.X/2, screenPos.Y - size.Y/2)
            drawings.box.Color = settings.Boxes.Color
            drawings.box.Visible = true
        else
            drawings.box.Visible = false
        end
        
        -- Atualizar Nome
        if settings.Names.Enabled then
            drawings.name.Text = player.Name
            drawings.name.Position = Vector2.new(screenPos.X, screenPos.Y - 40)
            drawings.name.Color = settings.Names.Color
            drawings.name.Size = settings.Names.Size
            drawings.name.Visible = true
        else
            drawings.name.Visible = false
        end
        
        -- Atualizar Vida
        if settings.Health.Enabled then
            drawings.health.Text = math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)
            drawings.health.Position = Vector2.new(screenPos.X, screenPos.Y - 25)
            drawings.health.Color = settings.Health.Color
            drawings.health.Size = settings.Health.Size
            drawings.health.Visible = true
        else
            drawings.health.Visible = false
        end
    end
end

-- Limpar drawings quando jogador sai
Players.PlayerRemoving:Connect(function(player)
    if playerDrawings[player] then
        for _, drawing in pairs(playerDrawings[player]) do
            drawing:Remove()
        end
        playerDrawings[player] = nil
    end
end)

-- Iniciar o loop de atualização
RunService.RenderStepped:Connect(UpdateESP)

ESPModule.settings = settings
ESPModule.ESP = {
    Toggle = function(state)
        settings.Enabled = state
    end,
    SetTeamCheck = function(state)
        settings.TeamCheck = state
    end,
    SetNames = function(state)
        settings.Names.Enabled = state
    end,
    SetBoxes = function(state)
        settings.Boxes.Enabled = state
    end,
    SetHealth = function(state)
        settings.Health.Enabled = state
    end,
    SetNameSize = function(value)
        settings.Names.Size = value
    end,
    SetBoxColor = function(color)
        settings.Boxes.Color = color
    end,
    SetNameColor = function(color)
        settings.Names.Color = color
    end
}

return ESPModule
