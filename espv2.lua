local ESPModule = {}

local settings = {
    Enabled = false,
    Names_Enabled = false,
    Boxes_Enabled = false,
    Health_Enabled = false,
    Color = Color3.fromRGB(255, 0, 0),
    Size = 20,
    Transparency = 1,
    AutoScale = false,
    Box_Color = Color3.fromRGB(255, 255, 255),
    Box_Thickness = 2,
    Team_Check = false,
    Team_Color = false,
    Autothickness = true
}

local space = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = space.CurrentCamera

-- Funções auxiliares para Drawing
local function NewText(color, size, transparency)
    local text = Drawing.new("Text")
    text.Visible = false
    text.Text = ""
    text.Position = Vector2.new(0, 0)
    text.Color = color
    text.Size = size
    text.Center = true
    text.Transparency = transparency
    text.Outline = true
    text.OutlineColor = Color3.new(0, 0, 0)
    return text
end

local function NewLine(color, thickness)
    local line = Drawing.new("Line")
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(0, 0)
    line.Color = color
    line.Thickness = thickness
    line.Transparency = 1
    return line
end

local function Visibility(state, lib)
    for _, x in pairs(lib) do
        x.Visible = state
    end
end

local function UpdateColorBasedOnTeam(library, targetPlayer)
    if settings.Team_Color and targetPlayer.TeamColor then
        library.name.Color = targetPlayer.TeamColor.Color
        library.health.Color = targetPlayer.TeamColor.Color
    else
        library.name.Color = settings.Color
        library.health.Color = Color3.fromRGB(0, 255, 0)
    end
end

-- Criar ESP para cada jogador
local function CreateESP(v)
    if v == player then return end
    
    local library = {
        name = NewText(settings.Color, settings.Size, settings.Transparency),
        health = NewText(Color3.fromRGB(0, 255, 0), settings.Size - 5, settings.Transparency),
        boxTL1 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxTL2 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxTR1 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxTR2 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxBL1 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxBL2 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxBR1 = NewLine(settings.Box_Color, settings.Box_Thickness),
        boxBR2 = NewLine(settings.Box_Color, settings.Box_Thickness)
    }

    game:GetService("RunService").RenderStepped:Connect(function()
        if not settings.Enabled then
            Visibility(false, library)
            return
        end

        if v and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health > 0 then
            if settings.Team_Check and v.TeamColor and player.TeamColor and v.TeamColor == player.TeamColor then
                Visibility(false, library)
                return
            end

            local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            
            if OnScreen then
                -- Nome
                if settings.Names_Enabled then
                    library.name.Text = v.Name
                    library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y - 50)
                    library.name.Visible = true
                else
                    library.name.Visible = false
                end

                -- Vida
                if settings.Health_Enabled then
                    local humanoid = v.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        library.health.Text = "Health: " .. math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)
                        library.health.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y - 35)
                        library.health.Visible = true
                    end
                else
                    library.health.Visible = false
                end

                -- Boxes
                if settings.Boxes_Enabled then
                    local head = v.Character:FindFirstChild("Head")
                    if head then
                        local rootPos = v.Character.HumanoidRootPart.Position
                        local headPos = head.Position
                        local torsoHeight = (headPos - rootPos).Magnitude
                        
                        local TL = camera:WorldToViewportPoint((rootPos + Vector3.new(-1, torsoHeight, 0)))
                        local TR = camera:WorldToViewportPoint((rootPos + Vector3.new(1, torsoHeight, 0)))
                        local BL = camera:WorldToViewportPoint((rootPos + Vector3.new(-1, -torsoHeight, 0)))
                        local BR = camera:WorldToViewportPoint((rootPos + Vector3.new(1, -torsoHeight, 0)))

                        -- Atualizar posições das linhas
                        library.boxTL1.From = Vector2.new(TL.X, TL.Y)
                        library.boxTL1.To = Vector2.new(TL.X + 5, TL.Y)
                        library.boxTL2.From = Vector2.new(TL.X, TL.Y)
                        library.boxTL2.To = Vector2.new(TL.X, TL.Y + 5)

                        -- Repetir para as outras linhas...

                        -- Tornar todas as linhas visíveis
                        for _, line in pairs({library.boxTL1, library.boxTL2, library.boxTR1, library.boxTR2,
                                            library.boxBL1, library.boxBL2, library.boxBR1, library.boxBR2}) do
                            line.Visible = true
                        end
                    end
                else
                    -- Esconder todas as linhas
                    for _, line in pairs({library.boxTL1, library.boxTL2, library.boxTR1, library.boxTR2,
                                        library.boxBL1, library.boxBL2, library.boxBR1, library.boxBR2}) do
                        line.Visible = false
                    end
                end

                UpdateColorBasedOnTeam(library, v)

                if settings.AutoScale then
                    local distance = (camera.CFrame.Position - v.Character.HumanoidRootPart.Position).Magnitude
                    local textsize = math.clamp(30 / distance * 10, 15, 50)
                    library.name.Size = textsize
                    library.health.Size = textsize - 5
                end
            else
                Visibility(false, library)
            end
        else
            Visibility(false, library)
        end
    end)
end

-- Criar ESP para jogadores existentes
for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= player then
        CreateESP(v)
    end
end

-- Criar ESP para novos jogadores
game:GetService("Players").PlayerAdded:Connect(CreateESP)

-- Interface do módulo
ESPModule.settings = settings
ESPModule.ESP = {
    Toggle = function(state)
        settings.Enabled = state
    end,
    ToggleNames = function(state)
        settings.Names_Enabled = state
    end,
    ToggleBoxes = function(state)
        settings.Boxes_Enabled = state
    end,
    ToggleHealth = function(state)
        settings.Health_Enabled = state
    end,
    SetTeamCheck = function(state)
        settings.Team_Check = state
    end,
    SetSize = function(value)
        settings.Size = value
    end,
    SetColor = function(color)
        settings.Color = color
    end
}

return ESPModule
