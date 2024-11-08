-- ESP Module
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Cache services
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer and LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local LocalHumanoidRootPart = LocalCharacter:WaitForChild("HumanoidRootPart")

local ESP = {}
ESP.__index = ESP

function ESP.new()
    local self = setmetatable({}, ESP)
    self.espCache = {}
    self.enabled = false
    self.showNames = false
    self.showBoxes = false
    self.showHealth = false
    self.showTracers = false
    self.showDistance = false
    self.showItems = false
    self.showSkeleton = false
    self.teamCheck = true
    self.boxColor = Color3.fromRGB(255, 255, 255)
    self.teamColor = Color3.fromRGB(0, 255, 0)
    self.enemyColor = Color3.fromRGB(255, 0, 0)
    return self
end

function ESP:createDrawing(type, properties)
    local drawing = Drawing.new(type)
    for prop, val in pairs(properties) do
        drawing[prop] = val
    end
    return drawing
end

function ESP:createComponents()
    return {
        Box = self:createDrawing("Square", {
            Thickness = 1,
            Transparency = 1,
            Color = Color3.fromRGB(255, 255, 255),
            Filled = false
        }),
        Tracer = self:createDrawing("Line", {
            Thickness = 1,
            Transparency = 1,
            Color = Color3.fromRGB(255, 255, 255)
        }),
        DistanceLabel = self:createDrawing("Text", {
            Size = 18,
            Center = true,
            Outline = true,
            Color = Color3.fromRGB(255, 255, 255),
            OutlineColor = Color3.fromRGB(0, 0, 0)
        }),
        NameLabel = self:createDrawing("Text", {
            Size = 18,
            Center = true,
            Outline = true,
            Color = Color3.fromRGB(255, 255, 255),
            OutlineColor = Color3.fromRGB(0, 0, 0)
        }),
        HealthBar = {
            Outline = self:createDrawing("Square", {
                Thickness = 1,
                Transparency = 1,
                Color = Color3.fromRGB(0, 0, 0),
                Filled = false
            }),
            Health = self:createDrawing("Square", {
                Thickness = 1,
                Transparency = 1,
                Color = Color3.fromRGB(0, 255, 0),
                Filled = true
            })
        },
        ItemLabel = self:createDrawing("Text", {
            Size = 18,
            Center = true,
            Outline = true,
            Color = Color3.fromRGB(255, 255, 255),
            OutlineColor = Color3.fromRGB(0, 0, 0)
        }),
        SkeletonLines = {}
    }
end

local bodyConnections = {
    R15 = {
        {"Head", "UpperTorso"},
        {"UpperTorso", "LowerTorso"},
        {"LowerTorso", "LeftUpperLeg"},
        {"LowerTorso", "RightUpperLeg"},
        {"LeftUpperLeg", "LeftLowerLeg"},
        {"LeftLowerLeg", "LeftFoot"},
        {"RightUpperLeg", "RightLowerLeg"},
        {"RightLowerLeg", "RightFoot"},
        {"UpperTorso", "LeftUpperArm"},
        {"UpperTorso", "RightUpperArm"},
        {"LeftUpperArm", "LeftLowerArm"},
        {"LeftLowerArm", "LeftHand"},
        {"RightUpperArm", "RightLowerArm"},
        {"RightLowerArm", "RightHand"}
    },
    R6 = {
        {"Head", "Torso"},
        {"Torso", "Left Arm"},
        {"Torso", "Right Arm"},
        {"Torso", "Left Leg"},
        {"Torso", "Right Leg"}
    }
}

function ESP:updateComponents(components, character, player)
    if not self.enabled then
        self:hideComponents(components)
        return
    end

    -- Verificação de time
    if self.teamCheck then
        local isTeammate = player.Team == LocalPlayer.Team
        if isTeammate then
            -- Se for do mesmo time, não mostrar ESP
            self:hideComponents(components)
            return
        end
    end

    local hrp = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChild("Humanoid")

    if hrp and humanoid then
        local hrpPosition, onScreen = Camera:WorldToViewportPoint(hrp.Position)

        -- Define tracer starting position at the bottom center of the screen
        local screenWidth, screenHeight = Camera.ViewportSize.X, Camera.ViewportSize.Y
        local tracerStart = Vector2.new(screenWidth / 2, screenHeight)

        if onScreen then
            local factor = 1 / (hrpPosition.Z * math.tan(math.rad(Camera.FieldOfView * 0.5)) * 2) * 100
            local width, height = math.floor(screenHeight / 25 * factor), math.floor(screenWidth / 27 * factor)
            local distanceFromPlayer = math.floor((LocalHumanoidRootPart.Position - hrp.Position).magnitude)
            
            -- Determinar cor baseado no time
            local espColor
            if self.teamCheck then
                espColor = player.Team == LocalPlayer.Team and self.teamColor or self.enemyColor
            else
                espColor = self.boxColor
            end

            if self.showBoxes then
                components.Box.Size = Vector2.new(width, height)
                components.Box.Position = Vector2.new(hrpPosition.X - width / 2, hrpPosition.Y - height / 2)
                components.Box.Color = espColor
                components.Box.Visible = true
            else
                components.Box.Visible = false
            end

            if self.showTracers then
                components.Tracer.From = tracerStart
                components.Tracer.To = Vector2.new(hrpPosition.X, hrpPosition.Y + height / 2)
                components.Tracer.Color = espColor
                components.Tracer.Visible = true
            else
                components.Tracer.Visible = false
            end

            if self.showDistance then
                components.DistanceLabel.Text = string.format("[%dM]", distanceFromPlayer)
                components.DistanceLabel.Position = Vector2.new(hrpPosition.X, hrpPosition.Y + height / 2 + 15)
                components.DistanceLabel.Visible = true
            else
                components.DistanceLabel.Visible = false
            end

            if self.showNames then
                local teamColor = player.Team and player.Team.TeamColor.Color or Color3.fromRGB(255, 255, 255)
                components.NameLabel.Text = string.format("[%s]", player.Name)
                components.NameLabel.Position = Vector2.new(hrpPosition.X, hrpPosition.Y - height / 2 - 15)
                components.NameLabel.Color = espColor
                components.NameLabel.Visible = true
            else
                components.NameLabel.Visible = false
            end

            if self.showHealth then
                local healthBarHeight = height
                local healthBarWidth = 5
                local healthFraction = humanoid.Health / humanoid.MaxHealth

                components.HealthBar.Outline.Size = Vector2.new(healthBarWidth, healthBarHeight)
                components.HealthBar.Outline.Position = Vector2.new(components.Box.Position.X - healthBarWidth - 2, components.Box.Position.Y)
                components.HealthBar.Outline.Visible = true

                components.HealthBar.Health.Size = Vector2.new(healthBarWidth - 2, healthBarHeight * healthFraction)
                components.HealthBar.Health.Position = Vector2.new(components.HealthBar.Outline.Position.X + 1, components.HealthBar.Outline.Position.Y + healthBarHeight * (1 - healthFraction))
                components.HealthBar.Health.Visible = true
            else
                components.HealthBar.Outline.Visible = false
                components.HealthBar.Health.Visible = false
            end

            if self.showItems then
                local backpack = player.Backpack
                local tool = backpack:FindFirstChildOfClass("Tool") or character:FindFirstChildOfClass("Tool")
                if tool then
                    components.ItemLabel.Text = string.format("[Holding: %s]", tool.Name)
                else
                    components.ItemLabel.Text = "[Holding: No tool]"
                end
                components.ItemLabel.Position = Vector2.new(hrpPosition.X, hrpPosition.Y + height / 2 + 35)
                components.ItemLabel.Visible = true
            else
                components.ItemLabel.Visible = false
            end

            if self.showSkeleton then
                local connections = bodyConnections[humanoid.RigType.Name] or {}
                for _, connection in ipairs(connections) do
                    local partA = character:FindFirstChild(connection[1])
                    local partB = character:FindFirstChild(connection[2])
                    if partA and partB then
                        local line = components.SkeletonLines[connection[1] .. "-" .. connection[2]] or self:createDrawing("Line", {Thickness = 1, Color = Color3.fromRGB(255, 255, 255)})
                        local posA, onScreenA = Camera:WorldToViewportPoint(partA.Position)
                        local posB, onScreenB = Camera:WorldToViewportPoint(partB.Position)
                        if onScreenA and onScreenB then
                            line.From = Vector2.new(posA.X, posA.Y)
                            line.To = Vector2.new(posB.X, posB.Y)
                            line.Visible = true
                            components.SkeletonLines[connection[1] .. "-" .. connection[2]] = line
                        else
                            line.Visible = false
                        end
                    end
                end
            else
                for _, line in pairs(components.SkeletonLines) do
                    line.Visible = false
                end
            end
        else
            self:hideComponents(components)
        end
    else
        self:hideComponents(components)
    end
end

function ESP:hideComponents(components)
    components.Box.Visible = false
    components.Tracer.Visible = false
    components.DistanceLabel.Visible = false
    components.NameLabel.Visible = false
    components.HealthBar.Outline.Visible = false
    components.HealthBar.Health.Visible = false
    components.ItemLabel.Visible = false

    for _, line in pairs(components.SkeletonLines) do
        line.Visible = false
    end
end

function ESP:removeEsp(player)
    local components = self.espCache[player]
    if components then
        components.Box:Remove()
        components.Tracer:Remove()
        components.DistanceLabel:Remove()
        components.NameLabel:Remove()
        components.HealthBar.Outline:Remove()
        components.HealthBar.Health:Remove()
        components.ItemLabel:Remove()
        for _, line in pairs(components.SkeletonLines) do
            line:Remove()
        end
        self.espCache[player] = nil
    end
end

local espInstance = ESP.new()

RunService.RenderStepped:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            -- Verificar se o jogador está no mesmo time
            if player.Team == LocalPlayer.Team then
                -- Se estiver no mesmo time, pular para o próximo jogador 
                if espInstance.espCache[player] then
                    espInstance:hideComponents(espInstance.espCache[player])
                end
                continue
            end

            local character = player.Character
            if character then
                local components = espInstance.espCache[player]

                -- Se os componentes ESP ainda não foram criados para este jogador, crie-os
                if not components then
                    components = espInstance:createComponents()
                    espInstance.espCache[player] = components
                end

                -- Atualize os componentes ESP para o personagem do jogador
                espInstance:updateComponents(components, character, player)
            else
                -- Se o personagem do jogador não existir, oculte os componentes
                if espInstance.espCache[player] then
                    espInstance:hideComponents(espInstance.espCache[player])
                end
            end
        end
    end

    -- Remover jogadores que saíram do jogo do cache ESP
    for player, components in pairs(espInstance.espCache) do
        if not Players:FindFirstChild(player.Name) then
            espInstance:removeEsp(player)
        end
    end
end)

-- Remover ESP para um jogador que sai do jogo
Players.PlayerRemoving:Connect(function(player)
    espInstance:removeEsp(player)
end)

return espInstance
