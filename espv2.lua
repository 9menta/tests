local ESPModule = {}

local settings = {
    -- Configurações gerais
    Enabled = false,
    TeamCheck = true,
    
    -- Configurações de nome
    Names = {
        Enabled = false,
        Size = 20,
        Color = Color3.fromRGB(255, 0, 0),
        Transparency = 1,
        AutoScale = true,
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

-- Função atualizada para desenhar box
local function UpdateBox(boxLib, character, onScreen)
    if not settings.Boxes.Enabled then
        Visibility(false, boxLib)
        return
    end
    
    local pos = GetPlayerPosition(character)
    if not pos then return end
    
    -- Calcular tamanho do box baseado na distância, não no hitbox
    local distance = (camera.CFrame.Position - pos).Magnitude
    local size = Vector2.new(
        math.clamp(1000 / distance, 30, 200),
        math.clamp(2000 / distance, 60, 400)
    )
    
    -- Atualizar posições do box...
end

-- Função atualizada para nomes e vida
local function UpdateNameAndHealth(library, character, onScreen)
    if not (settings.Names.Enabled or settings.Health.Enabled) then
        Visibility(false, library)
        return
    end
    
    local pos = GetPlayerPosition(character)
    if not pos then return end
    
    local screenPos = camera:WorldToViewportPoint(pos)
    
    -- Atualizar nome
    if settings.Names.Enabled then
        library.name.Position = Vector2.new(
            screenPos.X,
            screenPos.Y - 40
        )
    end
    
    -- Atualizar vida
    if settings.Health.Enabled then
        library.health.Position = Vector2.new(
            screenPos.X,
            screenPos.Y - 25
        )
    end
end

-- Resto do seu código ESP aqui...

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
