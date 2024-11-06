local settings = {
    Color = Color3.fromRGB(255, 0, 0),
    Size = 20,
    Transparency = 1,
    AutoScale = true,
    Enabled = false
}

local space = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = space.CurrentCamera

-- Funções auxiliares
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

local function Visibility(state, lib)
    if not lib then return end
    for _, x in pairs(lib) do
        if x then x.Visible = state end
    end
end

-- Função ESP principal
local function CreateESP(plr)
    if not plr or plr == player then return end
    
    local library = {
        name = NewText(settings.Color, settings.Size, settings.Transparency),
        health = NewText(Color3.fromRGB(0, 255, 0), settings.Size - 5, settings.Transparency)
    }
    
    local connection
    connection = game:GetService("RunService").RenderStepped:Connect(function()
        if not settings.Enabled then
            Visibility(false, library)
            return
        end
        
        if not plr or not plr.Parent then
            Visibility(false, library)
            if connection then connection:Disconnect() end
            return
        end
        
        if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then
            Visibility(false, library)
            return
        end
        
        local humanoid = plr.Character:FindFirstChild("Humanoid")
        if not humanoid then
            Visibility(false, library)
            return
        end
        
        local pos, onScreen = camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
        
        if onScreen then
            library.name.Text = plr.Name
            library.name.Position = Vector2.new(pos.X, pos.Y - 50)
            library.health.Position = Vector2.new(pos.X, pos.Y - 35)
            library.health.Text = "Health: " .. math.floor(humanoid.Health)
            Visibility(true, library)
        else
            Visibility(false, library)
        end
    end)
    
    return connection
end

-- Inicialização
local function InitializeESP()
    for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
        if plr ~= player then
            CreateESP(plr)
        end
    end
end

-- Eventos
game:GetService("Players").PlayerAdded:Connect(function(plr)
    if plr ~= player then
        CreateESP(plr)
    end
end)

-- Função de controle
function ToggleESP(enabled)
    settings.Enabled = enabled
end

-- Iniciar ESP
InitializeESP()
