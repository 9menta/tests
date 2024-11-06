local ESPModule = {}

-- Serviços
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Configurações
local settings = {
    Enabled = false,
    Names_Enabled = false,
    Boxes_Enabled = false,
    Health_Enabled = false,
    Color = Color3.fromRGB(255, 0, 0),
    Size = 20,
    Transparency = 1
}

-- Funções de criação de elementos
local function CreateDrawing(type, properties)
    local drawing = Drawing.new(type)
    for property, value in pairs(properties) do
        drawing[property] = value
    end
    return drawing
end

-- Função principal do ESP
local function SetupESP(plr)
    if plr == player then return end
    
    -- Criar elementos do ESP
    local esp = {
        name = CreateDrawing("Text", {
            Text = plr.Name,
            Size = settings.Size,
            Center = true,
            Outline = true,
            OutlineColor = Color3.new(0, 0, 0),
            Visible = false
        }),
        
        health = CreateDrawing("Text", {
            Size = settings.Size - 2,
            Center = true,
            Outline = true,
            OutlineColor = Color3.new(0, 0, 0),
            Visible = false
        })
    }
    
    -- Conexão de atualização
    local connection = RunService.RenderStepped:Connect(function()
        if not settings.Enabled then
            esp.name.Visible = false
            esp.health.Visible = false
            return
        end
        
        if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then
            esp.name.Visible = false
            esp.health.Visible = false
            return
        end
        
        local humanoid = plr.Character:FindFirstChild("Humanoid")
        local hrp = plr.Character.HumanoidRootPart
        
        local pos, onScreen = camera:WorldToViewportPoint(hrp.Position)
        
        if onScreen and humanoid and humanoid.Health > 0 then
            -- Atualizar nome
            if settings.Names_Enabled then
                esp.name.Position = Vector2.new(pos.X, pos.Y - 40)
                esp.name.Visible = true
                esp.name.Color = settings.Color
            else
                esp.name.Visible = false
            end
            
            -- Atualizar vida
            if settings.Health_Enabled then
                esp.health.Text = math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)
                esp.health.Position = Vector2.new(pos.X, pos.Y - 25)
                esp.health.Visible = true
                esp.health.Color = Color3.fromRGB(0, 255, 0)
            else
                esp.health.Visible = false
            end
        else
            esp.name.Visible = false
            esp.health.Visible = false
        end
    end)
    
    -- Limpar quando o jogador sair
    plr.AncestryChanged:Connect(function()
        connection:Disconnect()
        esp.name:Remove()
        esp.health:Remove()
    end)
end

-- Configurar ESP para jogadores existentes
for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= player then
        SetupESP(plr)
    end
end

-- Configurar ESP para novos jogadores
Players.PlayerAdded:Connect(SetupESP)

-- Interface do módulo
ESPModule.settings = settings
ESPModule.ESP = {
    Toggle = function(state)
        settings.Enabled = state
    end,
    ToggleNames = function(state)
        settings.Names_Enabled = state
    end,
    ToggleHealth = function(state)
        settings.Health_Enabled = state
    end,
    SetColor = function(color)
        settings.Color = color
    end
}

return ESPModule
