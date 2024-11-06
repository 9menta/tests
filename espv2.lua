local settings = {
    Color = Color3.fromRGB(255, 0, 0),
    Size = 20,  -- Tamanho do texto ajustado para melhor visibilidade
    Transparency = 1, -- 1 Visível - 0 Não Visível
    AutoScale = true,
    Enabled = false  -- ESP desativada por padrão
}

local space = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = space.CurrentCamera

local function NewText(color, size, transparency)
    local text = Drawing.new("Text")
    text.Visible = false
    text.Text = ""
    text.Position = Vector2.new(0, 0)
    text.Color = color
    text.Size = size
    text.Center = true
    text.Transparency = transparency
    text.Outline = true -- Adiciona um contorno
    text.OutlineColor = Color3.new(0, 0, 0) -- Define o contorno branco
    return text
end

local function Visibility(state, lib)
    for _, x in pairs(lib) do
        x.Visible = state
    end
end

local function UpdateColorBasedOnTeam(library, targetPlayer)
    if targetPlayer.TeamColor then
        library.name.Color = targetPlayer.TeamColor.Color
        library.health.Color = targetPlayer.TeamColor.Color -- Define a cor da saúde igual à do time
    else
        library.name.Color = settings.Color -- Cor padrão
        library.health.Color = Color3.fromRGB(0, 255, 0) -- Cor padrão da saúde
    end
end

local function ESP(plr, library)
    if not plr or not library then return end
    
    local connection
    connection = game:GetService("RunService").RenderStepped:Connect(function()
        if not settings.Enabled then
            Visibility(false, library)
            return
        end
        
        if not plr or not plr.Parent or not library then
            if connection then connection:Disconnect() end
            return
        end
        
        if plr.Character 
            and plr.Character:FindFirstChild("Humanoid") 
            and plr.Character:FindFirstChild("HumanoidRootPart") 
            and plr.Name ~= player.Name 
            and plr.Character.Humanoid.Health > 0 then
            
            if v.TeamColor and player.TeamColor and v.TeamColor == player.TeamColor then
                Visibility(false, library) -- Ignora jogadores do mesmo time
                return
            end

            local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            if OnScreen then
                library.name.Text = v.Name
                library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y - 50) -- Ajuste a posição acima da cabeça
                library.health.Text = "Health: " .. tostring(math.floor(v.Character.Humanoid.Health)) .. "/" .. tostring(math.floor(v.Character.Humanoid.MaxHealth))

                UpdateColorBasedOnTeam(library, v)

                if settings.AutoScale then
                    local distance = (Vector3.new(camera.CFrame.X, camera.CFrame.Y, camera.CFrame.Z) - v.Character.HumanoidRootPart.Position).magnitude
                    local textsize = math.clamp(30 / distance, 15, 50) -- Ajuste aqui para um tamanho adequado
                    library.name.Size = textsize
                    library.health.Size = textsize - 5
                else 
                    library.name.Size = settings.Size
                    library.health.Size = settings.Size - 5
                end

                Visibility(true, library)
            else 
                Visibility(false, library)
            end
        else 
            Visibility(false, library)
            if not game.Players:FindFirstChild(v.Name) then
                connection:Disconnect()
            end
        end
    end)
    
    return connection
end

local function InitializeESP()
    for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
        if plr and plr ~= player then
            local library = {
                name = NewText(settings.Color, settings.Size, settings.Transparency),
                health = NewText(Color3.fromRGB(0, 255, 0), settings.Size - 5, settings.Transparency)
            }
            coroutine.wrap(function()
                ESP(plr, library)
            end)()
        end
    end
end

game.Players.PlayerAdded:Connect(function(plr)
    if plr and plr ~= player then
        local library = {
            name = NewText(settings.Color, settings.Size, settings.Transparency),
            health = NewText(Color3.fromRGB(0, 255, 0), settings.Size - 5, settings.Transparency)
        }
        coroutine.wrap(function()
            ESP(plr, library)
        end)()
    end
end)

-- Continue with your code for boxes and skeletons...

-- Settings
local Settings = {
    Box_Color = Color3.fromRGB(255, 255, 255), -- Branco sólido
    Box_Thickness = 2,
    Team_Check = true, -- Ativar verificação de time
    Team_Color = false,
    Autothickness = true
}

-- Locals
local Space = game:GetService("Workspace")
local Player = game:GetService("Players").LocalPlayer
local Camera = Space.CurrentCamera

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

local function Vis(lib, state)
    for _, v in pairs(lib) do
        v.Visible = state
    end
end

local function Colorize(lib, color)
    for _, v in pairs(lib) do
        v.Color = color
    end
end

-- Função principal
local function Main(plr)
    repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil
    local Library = {
        TL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        TL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        TR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        TR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        BL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        BL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        BR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        BR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness)
    }

    local oripart = Instance.new("Part")
    oripart.Parent = Space
    oripart.Transparency = 1
    oripart.CanCollide = false
    oripart.Size = Vector3.new(1, 1, 1)
    oripart.Position = Vector3.new(0, 0, 0)

    -- Loop de atualização
    local function Updater()
        local c
        c = game:GetService("RunService").RenderStepped:Connect(function()
            if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 then
                if Settings.Team_Check and plr.TeamColor == Player.TeamColor then
                    Vis(Library, false) -- Ignora jogadores do mesmo time
                    return
                end
                
                local Hum = plr.Character
                local HumPos, vis = Camera:WorldToViewportPoint(Hum.HumanoidRootPart.Position)
                
                if vis then
                    oripart.Size = Vector3.new(Hum.HumanoidRootPart.Size.X, Hum.HumanoidRootPart.Size.Y * 1.5, Hum.HumanoidRootPart.Size.Z)
                    oripart.CFrame = CFrame.new(Hum.HumanoidRootPart.CFrame.Position, Camera.CFrame.Position)

                    local SizeX = oripart.Size.X
                    local SizeY = oripart.Size.Y
                    local TL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, SizeY, 0)).p)
                    local TR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, SizeY, 0)).p)
                    local BL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, -SizeY, 0)).p)
                    local BR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, -SizeY, 0)).p)

                    Colorize(Library, Settings.Box_Color) -- Define a cor branca sólida

                    local ratio = (Camera.CFrame.p - Hum.HumanoidRootPart.Position).magnitude
                    local offset = math.clamp(1 / ratio * 750, 2, 300)

                    Library.TL1.From = Vector2.new(TL.X, TL.Y)
                    Library.TL1.To = Vector2.new(TL.X + offset, TL.Y)
                    Library.TL2.From = Vector2.new(TL.X, TL.Y)
                    Library.TL2.To = Vector2.new(TL.X, TL.Y + offset)

                    Library.TR1.From = Vector2.new(TR.X, TR.Y)
                    Library.TR1.To = Vector2.new(TR.X - offset, TR.Y)
                    Library.TR2.From = Vector2.new(TR.X, TR.Y)
                    Library.TR2.To = Vector2.new(TR.X, TR.Y + offset)

                    Library.BL1.From = Vector2.new(BL.X, BL.Y)
                    Library.BL1.To = Vector2.new(BL.X + offset, BL.Y)
                    Library.BL2.From = Vector2.new(BL.X, BL.Y)
                    Library.BL2.To = Vector2.new(BL.X, BL.Y - offset)

                    Library.BR1.From = Vector2.new(BR.X, BR.Y)
                    Library.BR1.To = Vector2.new(BR.X - offset, BR.Y)
                    Library.BR2.From = Vector2.new(BR.X, BR.Y)
                    Library.BR2.To = Vector2.new(BR.X, BR.Y - offset)

                    Vis(Library, true)

                    if Settings.Autothickness then
                        local distance = (Player.Character.HumanoidRootPart.Position - oripart.Position).magnitude
                        Library.TL1.Thickness = math.clamp(1 / distance * 100, 1, 4)
                        Library.TL2.Thickness = Library.TL1.Thickness
                        Library.TR1.Thickness = Library.TL1.Thickness
                        Library.TR2.Thickness = Library.TL1.Thickness
                        Library.BL1.Thickness = Library.TL1.Thickness
                        Library.BL2.Thickness = Library.TL1.Thickness
                        Library.BR1.Thickness = Library.TL1.Thickness
                        Library.BR2.Thickness = Library.TL1.Thickness
                    end
                else
                    Vis(Library, false)
                end
            else
                Vis(Library, false)
                if not game.Players:FindFirstChild(plr.Name) then
                    c:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Updater)()
end

-- Conectar função ao adicionar jogador
game:GetService("Players").PlayerAdded:Connect(Main)
for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
    if plr ~= Player then
        Main(plr)
    end
end
-- Draw Boxes
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= Player.Name then
      coroutine.wrap(Main)(v)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(newplr)
    coroutine.wrap(Main)(newplr)
end)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Srmagnata99/Arsenal/refs/heads/main/Skeleto"))()

local Skeletons = {}
for _, plr in next, game.Players:GetChildren() do
    if plr ~= game.Players.LocalPlayer then -- Não criar skeleton para o jogador local
        local skeleton = Library:NewSkeleton(plr, false) -- Inicialmente desativado
        table.insert(Skeletons, skeleton)
    end
end

game.Players.PlayerAdded:Connect(function(plr)
    if plr ~= game.Players.LocalPlayer then -- Não criar skeleton para o jogador local
        local skeleton = Library:NewSkeleton(plr, false) -- Inicialmente desativado
        table.insert(Skeletons, skeleton)
    end
end)

-- Função para ativar/desativar ESP e Skeletons
function ToggleESP(enabled)
    settings.Enabled = enabled
    for _, skeleton in ipairs(Skeletons) do
        skeleton.Enabled = enabled
    end
end


InitializeESP()
