repeat task.wait(0.1) until game:IsLoaded() and game:GetService("Players").LocalPlayer.Character

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/repo/NewLib.lua"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/NotificationLibrary.lua"))()
local sdfh__jidsfe3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/files/data.lua"))()
if syn then function print(v) printconsole(v, 0, 255, 255)end end
local Notify = NotifyLibrary.Notify
Libraryflags = Library.flags
local ScriptVersion = "2"
local executiontime = tick()
print("Library loaded")

players = game:GetService("Players")
speaker = players.LocalPlayer
Mouse = speaker:GetMouse()
char = speaker.Character

workspace = game:GetService("Workspace")
Camera = workspace.CurrentCamera


CGUI = game:GetService("CoreGui")
SGUI = game:GetService("StarterGui")
GUIS = game:GetService("GuiService")
ChatService = game:GetService("Chat")
Lighting = game:GetService("Lighting")
UIS = game:GetService("UserInputService")
RunService = game:GetService("RunService")
MS = game:GetService("MarketplaceService")
HttpService = game:GetService("HttpService")
CAS = game:GetService("ContextActionService")
SoundService = game:GetService("SoundService")
TweenService = game:GetService("TweenService")
NetworkClient = game:GetService("NetworkClient")
TeleportService = game:GetService("TeleportService")
MaterialService = game:GetService("MaterialService")
ReplicatedStorage = game:GetService("ReplicatedStorage")
ProximityPromptService = game:GetService("ProximityPromptService")

sethiddenproperty = sethiddenproperty or set_hidden_property or set_hidden_prop
gethiddenproperty = gethiddenproperty or get_hidden_property or get_hidden_prop
setsimulationradius = setsimulationradius or set_simulation_radius
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
function tools(plr)
	if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end
function isNumber(num)
	if tonumber(num) ~= nil or num == 'inf' then
		return true
	end
end
function copyTool(path)
	for i,c in pairs(path:GetChildren())do
		if c:IsA('Tool') or c:IsA('HopperBin') then
			c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
		end
		copyTool(c)
	end
end

function missingFunc(func)
	Notify({
		Title = "Missing Function",
		Description = "missing: "..tostring(func),
		Duration = 3
	})
end
function notification(title, Message)
	Notify({
		Title = tostring(title),
		Description = tostring(Message),
		Duration = 3
	})
end

local RunLoops = {
	RenderStepTable = {}, 
	StepTable = {}, 
	HeartTable = {}
}
do
	function RunLoops:BindToRenderStep(name, num, func)
		if RunLoops.RenderStepTable[name] == nil then
			RunLoops.RenderStepTable[name] = game:GetService("RunService").RenderStepped:Connect(func)
		end
	end

	function RunLoops:UnbindFromRenderStep(name)
		if RunLoops.RenderStepTable[name] then
			RunLoops.RenderStepTable[name]:Disconnect()
			RunLoops.RenderStepTable[name] = nil
		end
	end

	function RunLoops:BindToStepped(name, num, func)
		if RunLoops.StepTable[name] == nil then
			RunLoops.StepTable[name] = game:GetService("RunService").Stepped:Connect(func)
		end
	end

	function RunLoops:UnbindFromStepped(name)
		if RunLoops.StepTable[name] then
			RunLoops.StepTable[name]:Disconnect()
			RunLoops.StepTable[name] = nil
		end
	end

	function RunLoops:BindToHeartbeat(name, num, func)
		if RunLoops.HeartTable[name] == nil then
			RunLoops.HeartTable[name] = game:GetService("RunService").Heartbeat:Connect(func)
		end
	end

	function RunLoops:UnbindFromHeartbeat(name)
		if RunLoops.HeartTable[name] then
			RunLoops.HeartTable[name]:Disconnect()
			RunLoops.HeartTable[name] = nil
		end
	end
end

local function getCharacters() 
    local t = {}
    for i,v in next, players:GetPlayers() do 
        t[v.Name] = v.Character
    end
    return t
end
setreadonly(getgenv().table, false)

local table_combine = function(...) 
    local args = {...}
    local MasterTable = {}
    for i,v in next, args do 
        if type(v) == "table" then 
            for i2,v2 in next, v do 
                table.insert(MasterTable, v2)
            end
        else
            table.insert(MasterTable, v)
        end
    end

    return MasterTable
end

function randomString()
	local length = math.random(60, 190)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

function attach(speaker, target)
	if tools(speaker) then
		local char = speaker.Character
		local tchar = target
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = getRoot(speaker.Character)
		local hrp2 = getRoot(target)
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
	else
		Notify({
			Title = "Tool Required",
			Description = "you need a tool to do this",
			Duration = 2
		})
	end
end

clickTPVal_3849467e9876549876 = false
if game.PlaceId == 4483381587 then
	if speaker.UserId == 3869506227 or speaker.UserId == 4245281750 then
		clickTPVal_3849467e9876549876 = true
	end
end

array = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/arraylist.lua"))()
addons1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/main/addons/add%201.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/evon%20check.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/water%20mark.lua"))()
shared.CometConfigs = {Enabled = false}
print("Utilities loaded")

local Window = Library:CreateWindow({
	Name = 'gamesensicals',
	Themeable = {
		Info = 'Discord Server: https://discord.gg/JWsceXxy',
		Credit = true,
	},
})

print("Gui library loaded")
PlayerTab = Window:CreateTab({
	Name = 'Player'
})
VisualsTab = Window:CreateTab({
	Name = 'Visuals'
})
FunTab = Window:CreateTab({
	Name = 'Fun'
})
MiscTab = Window:CreateTab({
	Name = 'Misc'
})
CombatTab = Window:CreateTab({
	Name = 'Combat'
})
GameTab = Window:CreateTab({
	Name = 'Games'
})
CreditsTab = Window:CreateTab({
	Name = 'Others'
})

print("tabs loaded")
Player0 = PlayerTab:CreateSection({
	Name = 'Modifications',
	Side = 'left'
})
Player1 = PlayerTab:CreateSection({
	Name = 'Player',
	Side = 'left'
})
Player2 = PlayerTab:CreateSection({
	Name = 'Stuff',
	Side = 'Right'
})
Player3 = PlayerTab:CreateSection({
	Name = 'Body',
	Side = 'Right'
})
Player4 = PlayerTab:CreateSection({
	Name = 'Others',
	Side = 'Left'
})
Player5 = PlayerTab:CreateSection({
	Name = 'Health',
	Side = 'Right'
})
Player6 = PlayerTab:CreateSection({
	Name = 'Free Cam',
	Side = 'Right'
})

Visuals1 = VisualsTab:CreateSection({
	Name = 'World',
	Side = 'Left'
})
Visuals2 = VisualsTab:CreateSection({
	Name = 'Client Spoofer',
	Side = 'Right'
})
Visuals3 = VisualsTab:CreateSection({
	Name = 'Old Chams',
	Side = 'Right'
})
Visuals4 = VisualsTab:CreateSection({
	Name = 'Screen',
	Side = 'Right'
})
Visuals5 = VisualsTab:CreateSection({
	Name = 'Spectate',
	Side = 'Left'
})
Visuals6 = VisualsTab:CreateSection({
	Name = 'New Esp',
	Side = 'Left'
})
Visuals7 = VisualsTab:CreateSection({
	Name = 'Self',
	Side = 'Right'
})

Funny1 = FunTab:CreateSection({
	Name = 'Sex',
	Side = 'Left'
})
Funny2 = FunTab:CreateSection({
	Name = 'Funny Scripts',
	Side = 'Right'
})
Funny3 = FunTab:CreateSection({
	Name = 'FE Scripts',
	Side = 'Right'
})
Funny4 = FunTab:CreateSection({
	Name = 'Fling',
	Side = 'Left'
})
Funny5 = FunTab:CreateSection({
	Name = 'Misc',
	Side = 'Left'
})
Funny6 = FunTab:CreateSection({
	Name = 'Cosmetics',
	Side = 'Left'
})
Funny7 = FunTab:CreateSection({
	Name = 'Body Stuff',
	Side = 'Left'
})

Misc1 = MiscTab:CreateSection({
	Name = 'Waypoints',
	Side = 'Left'
})
Misc2 = MiscTab:CreateSection({
	Name = 'Bread Crumbs',
	Side = 'Right'
})
Misc3 = MiscTab:CreateSection({
	Name = 'Bread Crumbs 2',
	Side = 'Right'
})
Misc4 = MiscTab:CreateSection({
	Name = 'Misc',
	Side = 'Right'
})
Misc6 = MiscTab:CreateSection({
	Name = 'Chat Spammer',
	Side = 'Left'
})
Misc7 = MiscTab:CreateSection({
	Name = 'Game',
	Side = 'Right'
})
Misc8 = MiscTab:CreateSection({
	Name = 'Hide',
	Side = 'left'
})
Misc9 = MiscTab:CreateSection({
	Name = 'HitBox',
	Side = 'Right'
})

Aim1 = CombatTab:CreateSection({
	Name = 'Aimbot',
	Side = 'Left'
})
Aim2 = CombatTab:CreateSection({
	Name = 'Silent Aim',
	Side = 'Right'
})
Aim3 = CombatTab:CreateSection({
	Name = 'Trigger Bot',
	Side = 'Right'
})
Aim4 = CombatTab:CreateSection({
	Name = 'Auto Clicker',
	Side = 'Right'
})
Aim5 = CombatTab:CreateSection({
	Name = 'Reach',
	Side = 'Right'
})
Aim6 = CombatTab:CreateSection({
	Name = 'Kill Aura',
	Side = 'Right'
})

Game1 = GameTab:CreateSection({
	Name = 'Note',
	Side = 'Left'
})
Game2 = GameTab:CreateSection({
	Name = 'Arsenal',
	Side = 'Right'
})
Game3 = GameTab:CreateSection({
	Name = 'Tower Of Hell',
	Side = 'Left'
})
Game4 = GameTab:CreateSection({
	Name = 'Lucky Blocks Battle',
	Side = 'Right'
})
Game5 = GameTab:CreateSection({
	Name = 'Build a Boat',
	Side = 'Left'
})

Credits4 = CreditsTab:CreateSection({
	Name = 'Discord',
	Side = 'Right'
})
Credits5 = CreditsTab:CreateSection({
	Name = 'Info',
	Side = 'Right'
})
Credits6 = CreditsTab:CreateSection({
	Name = 'Executor Info',
	Side = 'Left'
})

print("sections loaded")
spoofingNotice = Player0:CreateLabel({
	Text = 'Spoofing Possible: Loading'
})
if hookmetamethod then
	spoofingNotice:SetText('Spoofing Possible: Yes')
else
	spoofingNotice:SetText('Spoofing Possible: No')
end


WalkSpeed = Player0:AddToggle({
	Name = 'Toggle Walk Speed',
	Flag = 'togglespeed1',
	Keybind = {
		Flag = 'togglespeed2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldspd = speaker.Character:WaitForChild('Humanoid').WalkSpeed
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "WalkSpeed" then
						return oldspd
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').WalkSpeed = WalkSpeedVal:Get()
				until WalkSpeed:Get() == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').WalkSpeed = WalkSpeedVal:Get()
				until WalkSpeed:Get() == false
			end
		else
			task.wait()
			speaker.Character:WaitForChild('Humanoid').WalkSpeed = oldspd
		end
	end
})

JumpPower = Player0:AddToggle({
	Name = 'Toggle Jump power',
	Flag = 'togglehp1',
	Keybind = {
		Flag = 'togglJHPd2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldjp = speaker.Character:WaitForChild('Humanoid').JumpPower
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "JumpPower" then
						return oldjp
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').JumpPower = jumpPowerVal:Get()
				until JumpPower:Get() == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').JumpPower = jumpPowerVal:Get()
				until Power:Get() == false
			end
		else
			task.wait()
			speaker.Character:WaitForChild('Humanoid').JumpPower = oldjp
		end
	end
})
Gravity = Player0:AddToggle({
	Name = 'Toggle Gravity',
	Flag = 'togglegrav1',
	Keybind = {
		Flag = 'togglgravity2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgr = game:GetService("Workspace").Gravity
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "Gravity" then
						return oldgr
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				game:GetService("Workspace").Gravity = GravityVal:Get()
			else
				game:GetService("Workspace").Gravity = GravityVal:Get()
			end
		else
			task.wait()
			game:GetService("Workspace").Gravity = oldgr
		end
	end
})
MaxSlopeAngle = Player0:AddToggle({
	Name = 'Toggle slope angle',
	Flag = 'toggmss1',
	Keybind = {
		Flag = 'togglgmLLKy2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldmsa = speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "MaxSlopeAngle" then
						return oldmsa
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle = MaxSlopeVal:Get()
				until MaxSlopeAngle:Get() == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle = MaxSlopeVal:Get()
				until MaxSlopeAngle:Get() == false
			end
		else
			task.wait()
			speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle = oldmsa
		end
	end
})
HipHeight = Player0:AddToggle({
	Name = 'Toggle Hip Height',
	Flag = 'togglehh1',
	Keybind = {
		Flag = 'togglghh2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldhh = speaker.Character:WaitForChild('Humanoid').HipHeight
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "HipHeight" then
						return oldhh
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').HipHeight = HipVal:Get()
				until HipHeight:Get() == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').HipHeight = HipVal:Get()
				until HipHeight:Get() == false
			end
		else
			task.wait()
			speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = oldhh
		end
	end
})
Fov = Player0:AddToggle({
	Name = 'Toggle FOV',
	Flag = 'togglefov1',
	Keybind = {
		Flag = 'togglgfov2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldfov = workspace.CurrentCamera.FieldOfView
			repeat task.wait()
				workspace.CurrentCamera.FieldOfView = FovVal:Get()
			until Fov:Get() == false
		else
			task.wait()
			workspace.CurrentCamera.FieldOfView = oldfov
		end
	end
})
WalkSpeedVal = Player0:AddTextbox({
	Name = 'Modify Speed',
	Flag = "WalkSpeedVal1",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed * 2,
	Callback = function() end
})
jumpPowerVal = Player0:AddTextbox({
	Name = 'Modify JumpPower',
	Flag = "jumpPowerVal1",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower * 2,
	Callback = function() end
})
GravityVal = Player0:AddTextbox({
	Name = 'Modify Gravity',
	Flag = "GravityVal1",
	Value = workspace.Gravity,
	Callback = function() end
})
MaxSlopeVal = Player0:AddTextbox({
	Name = 'Modify Max lope Angle',
	Flag = "MaxSlopeVal1",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle,
	Callback = function() end
})
HipVal = Player0:AddTextbox({
	Name = 'Modify Hip height',
	Flag = "HipVal1",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,
	Callback = function() end
})
FovVal = Player0:AddSlider({
	Name = 'Modify FOV',
	Flag = "FovVal1",
	Value = 120,
	Min = 0,
	Max = 120,
	Textbox = true,
	Callback = function() end
})

modorign1 = Player0:CreateLabel({
	Text = 'Original Speed: '.. char:FindFirstChildOfClass('Humanoid').WalkSpeed
})
modorign2 = Player0:CreateLabel({
	Text = 'Original JumpPower: '.. char:FindFirstChildOfClass('Humanoid').JumpPower
})
modorign3 = Player0:CreateLabel({
	Text = 'Original Gravity: '.. math.floor(workspace.Gravity)
})
modorign4 = Player0:CreateLabel({
	Text = 'Original Slope: '.. char:FindFirstChildOfClass('Humanoid').MaxSlopeAngle
})
modorign5 = Player0:CreateLabel({
	Text = 'Original hip: '.. math.floor(char:FindFirstChildOfClass('Humanoid').HipHeight)
})
modorign6 = Player0:CreateLabel({
	Text = 'Original Fov: '.. math.floor(workspace.CurrentCamera.FieldOfView)
})



noclip = Player1:AddToggle({
	Name = 'No Clip',
	Flag = 'noclip1',
	Keybind = {
		Flag = 'noclip2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			RunLoops:BindToStepped("Noclip", 1, function()
				if getRoot(speaker.Character) then
					for i,v in pairs(speaker.Character:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = false
						end
					end
				end
			end)
		else
			RunLoops:UnbindFromStepped("Noclip")
		end
	end
})
autowalk = Player1:AddToggle({
	Name = 'Auto Walk',
	Flag = 'autowalk1',
	Keybind = {
		Flag = 'autowalk2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			RunLoops:BindToRenderStep("autowalk", 1, function()
				if getRoot(char) then
					char.Humanoid:Move(Vector3.new(0, 0, -1), true)
				end
			end)
		else
			RunLoops:UnbindFromRenderStep("autowalk")
		end
	end	
})
SitWalk = Player1:AddToggle({
	Name = 'Sit Walk',
	Flag = 'SitWalk1',
	Keybind = {
		Flag = 'SitWalk2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			old_hh = speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight
			Ainm = speaker.Character:WaitForChild("Animate")
			sitAnim = Ainm:WaitForChild("sit"):FindFirstChildOfClass("Animation").AnimationId
			
			idle_Old = Ainm.idle:FindFirstChildOfClass("Animation").AnimationId
			walk_Old = Ainm.walk:FindFirstChildOfClass("Animation").AnimationId
			run_Old = Ainm.run:FindFirstChildOfClass("Animation").AnimationId
			jump_Old = Ainm.jump:FindFirstChildOfClass("Animation").AnimationId

			Ainm.idle:FindFirstChildOfClass("Animation").AnimationId = sitAnim
			Ainm.walk:FindFirstChildOfClass("Animation").AnimationId = sitAnim
			Ainm.run:FindFirstChildOfClass("Animation").AnimationId = sitAnim
			Ainm.jump:FindFirstChildOfClass("Animation").AnimationId = sitAnim
			if r15(speaker) then
				speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = 0.5
			else
				speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = -1.5
			end
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = old_hh

			Ainm.idle:FindFirstChildOfClass("Animation").AnimationId = idle_Old
			Ainm.walk:FindFirstChildOfClass("Animation").AnimationId = walk_Old
			Ainm.run:FindFirstChildOfClass("Animation").AnimationId = run_Old
			Ainm.jump:FindFirstChildOfClass("Animation").AnimationId = jump_Old
		end
	end	
})
Step = Player1:AddToggle({
	Name = 'Step',
	Flag = 'Step1',
	Keybind = {
		Flag = 'Step2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat wait()
			local currentTorso = nil
			function findT()
				if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					currentTorso = char.UpperTorso
				elseif char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
					currentTorso = char.Torso
				end
			end
			findT()
			if currentTorso == nil then
				findT()
			end
			currentTorso.Touched:Connect(function(hit)
				if step == true then
					if hit:IsA("BasePart") and hit.Position.Y > char.HumanoidRootPart.Position.Y - char.Humanoid.HipHeight then
						local findHRP = hit.Parent:FindFirstChild("HumanoidRootPart")
						if findHRP ~= nil then
							char.HumanoidRootPart.CFrame = hit.CFrame * CFrame.new(char.HumanoidRootPart.CFrame.lookVector.X,findHRP.Size.Z/2 + char.Humanoid.HipHeight,char.HumanoidRootPart.CFrame.lookVector.Z)
						elseif findHRP == nil then
							char.HumanoidRootPart.CFrame = hit.CFrame * CFrame.new(char.HumanoidRootPart.CFrame.lookVector.X,hit.Size.Y/2 + char.Humanoid.HipHeight,char.HumanoidRootPart.CFrame.lookVector.Z)
						end
					end
				end
			end)
		until Step:Get() == false
	end
})
Spider = Player1:AddToggle({
	Name = 'Spider',
	Flag = 'Spider1',
	Keybind = {
		Flag = 'Spider2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			RunLoops:BindToStepped("Spider", 1, function(time, dt)
				local param = RaycastParams.new()
				param.FilterDescendantsInstances = table_combine(getCharacters(), Camera:GetDescendants())
				param.FilterType = Enum.RaycastFilterType.Blacklist
				local ray = workspace:Raycast(speaker.Character.Head.Position - Vector3.new(0, 4, 0), speaker.Character.Humanoid.MoveDirection * 3, param)
				local ray2 = workspace:Raycast(speaker.Character.Head.Position, speaker.Character.Humanoid.MoveDirection * 3, param)

				if (ray and ray.Instance~=nil) or (ray2 and ray2.Instance~=nil) then
					local velo = Vector3.new(0, 40 / 100, 0)
					speaker.Character:TranslateBy(velo)
					local old = speaker.Character.HumanoidRootPart.Velocity
					speaker.Character.HumanoidRootPart.Velocity = Vector3.new(old.X, 0, old.Z)
				end
			end)
		else
			RunLoops:UnbindFromStepped("Spider")
		end
	end
})
bhopissodunny = Player1:AddToggle({
	Name = 'B Hop',
	Flag = 'nbhop24p',
	Keybind = {
		Flag = 'nobhpopdfip',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat
			wait()
			speaker.Character:WaitForChild("Humanoid").Jump = true
		until bhopissodunny:Get() == false
	end
})
local swimbeat
local swim = Player1:AddToggle({
	Name = 'Swim',
	Flag = 'sdwinfishfudhsSWIM',
	Keybind = {
		Flag = 'swinsd3rh7w98f',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgrav = workspace.Gravity
			if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
				workspace.Gravity = 0
				local swimDied = function()
					workspace.Gravity = oldgrav
					swimming = false
				end
				local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				gravReset = Humanoid.Died:Connect(swimDied)
				local enums = Enum.HumanoidStateType:GetEnumItems()
				table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
				for i, v in pairs(enums) do
					Humanoid:SetStateEnabled(v, false)
				end
				Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
				swimbeat = RunService.Heartbeat:Connect(function()
					pcall(function()
						speaker.Character.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and speaker.Character.HumanoidRootPart.Velocity or Vector3.new())
					end)
				end)
				swimming = true
			end
		else
			if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
				workspace.Gravity = oldgrav
				swimming = false
				if gravReset then
					gravReset:Disconnect()
				end
				if swimbeat ~= nil then
					swimbeat:Disconnect()
					swimbeat = nil
				end
				local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				local enums = Enum.HumanoidStateType:GetEnumItems()
				table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
				for i, v in pairs(enums) do
					Humanoid:SetStateEnabled(v, true)
				end
			end
		end
	end
})
flyjump = Player1:AddToggle({
	Name = 'Jet pack',
	Flag = 'flyjumplol',
	Keybind = {
		Flag = 'keybindflyjump',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if jetpack then jetpack:Disconnect() end
			jetpack = UIS.JumpRequest:Connect(function(Jump)
				char:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
			end)
		else
			if jetpack then jetpack:Disconnect() end
		end
	end
})

infjump = Player1:AddToggle({
	Name = 'Inf Jump',
	Flag = 'infjump1',
	Keybind = {
		Flag = 'infjump2',
		Mode = 'Toggle',
	},

	Callback = function()
		function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
		UIS.InputBegan:connect(function(UserInput)
			if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space and infjump:Get() == true then
				Action(speaker.Character.Humanoid, function(self)
					if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
						Action(self.Parent.HumanoidRootPart, function(self)
							self.Velocity = Vector3.new(0, 50, 0);
						end)
					end
				end)
			end
		end)
	end
})

local ClickTPRaycast = RaycastParams.new()
ClickTPRaycast.RespectCanCollide = true
ClickTPRaycast.FilterType = Enum.RaycastFilterType.Blacklist
clicktp = Player1:AddToggle({
	Name = 'Click Tp',
	Value = clickTPVal_3849467e9876549876,
	Flag = 'clicktp1',
	Keybind = {
		Flag = 'clicktp2',
		Mode = 'Toggle',
	},

	Callback = function()
		if getRoot(char) then
			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and clicktp:Get() == true then
					if Mouse then
						if getRoot(speaker.Character) then
							ClickTPRaycast.FilterDescendantsInstances = {speaker.Character, Camera}
							local ray = workspace:Raycast(Camera.CFrame.p, Mouse.UnitRay.Direction * 10000, ClickTPRaycast)
							local selectedPosition = ray and ray.Position + Vector3.new(0, speaker.character.Humanoid.HipHeight + (speaker.character.HumanoidRootPart.Size.Y / 2), 0)
							
							if selectedPosition then
								if getRoot(speaker.Character) then
									speaker.character.HumanoidRootPart.CFrame = CFrame.new(selectedPosition)
								end
							else
								Notify({
									Title = "Raycast Failure",
									Description = "no position found",
									Duration = 2
								})	
							end
						end
					else
						Notify({
							Title = "Click Tp",
							Description = "Mouse not found",
							Duration = 2
						})
					end
				end
			end)
		end 
	end
})

TweenSpeed = 3
local ClickTWeenRaycast = RaycastParams.new()
ClickTWeenRaycast.RespectCanCollide = true
ClickTWeenRaycast.FilterType = Enum.RaycastFilterType.Blacklist
clicktpween = Player1:AddToggle({
	Name = 'Click Tween',
	Flag = 'clicktpween1',
	Keybind = {
		Flag = 'clicktpween2',
		Mode = 'Toggle',
	},

	Callback = function( x )
		if ( x ) then
			oldgravy23 = workspace.Gravity
			oldveloolollo = speaker.Character.HumanoidRootPart.Velocity

			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and clicktpween:Get() == true then
					if Mouse then
						ClickTWeenRaycast.FilterDescendantsInstances = {speaker.Character, Camera}
						local ray = workspace:Raycast(Camera.CFrame.p, Mouse.UnitRay.Direction * 10000, ClickTPRaycast)
						local selectedPosition = ray and ray.Position + Vector3.new(0, speaker.character.Humanoid.HipHeight + (speaker.character.HumanoidRootPart.Size.Y / 2), 0)

						if selectedPosition then
							if getRoot(char) then
								workspace.Gravity = 0
								speaker.Character.HumanoidRootPart.Velocity = Vector3.zero
								_tweenTpzz_ = TweenService:Create(
									game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
									TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear),
									{CFrame = CFrame.new(selectedPosition)}
								)
								_tweenTpzz_:Play()
								workspace.Gravity = oldgravy23
							end
						else
							Notify({
								Title = "Raycast Failure",
								Description = "no position found",
								Duration = 2
							})
						end	
					else
						Notify({
							Title = "Click Tween",
							Description = "Mouse not found",
							Duration = 2
						})
					end
				end
			end)
		else
			speaker.Character.Humanoid:ChangeState(7)
			speaker.Character.HumanoidRootPart.Velocity = oldveloolollo
			if TargetzTween then TargetzTween:Destroy() end
			if _tweenTpzz_ then _tweenTpzz_:Cancel() end
		end
	end
})
clickCam = Player1:AddToggle({
	Name = 'Click Camera',
	Flag = 'clickCam1',
	Keybind = {
		Flag = 'clickCam2',
		Mode = 'Toggle',
	},

	Callback = function(state)
		if (state) then
			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and clickCam:Get() == true then
					if speaker.Character then
						if Mouse then
							camearaparting = Instance.new("Part", workspace)
							camearaparting.CFrame = CFrame.new(Mouse.Hit.p.X, Mouse.Hit.p.Y + 1.5, Mouse.Hit.p.Z)
							camearaparting.Transparency = 1
							camearaparting.Anchored = true 
							camearaparting.CanCollide = false
							game:GetService("Workspace").CurrentCamera.CameraSubject = camearaparting
						else
							Notify({
								Title = "Click Camera",
								Description = "Mouse not found",
								Duration = 2
							})						
						end
					end
				end
			end)
		else
			game:GetService("Workspace").CurrentCamera.CameraSubject = char
			if camearaparting then camearaparting:Destroy() end
		end
	end
})

gravityBoost = Player1:AddToggle({
	Name = 'Gravity Air Boost',
	Flag = 'gravityBoost1',
	Keybind = {
		Flag = 'gravityBoost2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat
			task.wait(0.1)
			speaker.character.HumanoidRootPart.Velocity = speaker.character.HumanoidRootPart.Velocity + Vector3.new(0, 35, 0)
		until gravityBoost:Get() == false
	end
})

FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1
function sFLY(vfly)
	repeat wait() until speaker and speaker.Character and getRoot(speaker.Character) and speaker.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until Mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(speaker.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and speaker.Character:FindFirstChildOfClass('Humanoid') then
					speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if speaker.Character:FindFirstChildOfClass('Humanoid') then
				speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if speaker.Character:FindFirstChildOfClass('Humanoid') then
		speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local iyfly = Player1:AddToggle({
	Name = 'Classic Fly',
	Flag = '54trfgius',
	Keybind = {
		Flag = 'cfe2aot21',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			NOFLY()
			task.wait()
			sFLY()
		else
			NOFLY()
		end
	end
})

local iyflyv2 = Player1:AddToggle({
	Name = 'Vehicle Fly',
	Flag = '54trfgius2',
	Keybind = {
		Flag = 'cfe2aot21vehi',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			NOFLY()
			task.wait()
			sFLY(true)
		else
			NOFLY()
		end
	end
})
CFspeedBypassFly = 10
local iyflyv3 = Player1:AddToggle({
	Name = 'Bypass Fly',
	Flag = '54trfgius22',
	Keybind = {
		Flag = 'cfe23vehi',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local Head = speaker.Character:WaitForChild("Head")
			Head.Anchored = true
			if CFloop then CFloop:Disconnect() end
			CFloop = RunService.Heartbeat:Connect(function(deltaTime)
				local moveDirection = speaker.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeedBypassFly * deltaTime)
				local headCFrame = Head.CFrame
				local cameraCFrame = workspace.CurrentCamera.CFrame
				local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
				cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
				local cameraPosition = cameraCFrame.Position
				local headPosition = headCFrame.Position
		
				local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
				Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
			end)
		else
			if CFloop then
				CFloop:Disconnect()
				local Head = speaker.Character:WaitForChild("Head")
				Head.Anchored = false
			end
		end
	end
})

Float = Player1:AddToggle({
	Name = 'Float',
	Flag = 'Float1',
	Keybind = {
		Flag = 'Float2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			floatthing = Instance.new("BodyVelocity", speaker.Character:WaitForChild("HumanoidRootPart")) or speaker.Character:WaitForChild("HumanoidRootPart")
			floatthing.Name = randomString()
			floatthing.MaxForce = Vector3.new(0,9e9,0)

			repeat
				speaker.Character:WaitForChild("Humanoid"):ChangeState(5)
				floatthing.Velocity = Vector3.new(0,0,0)
				task.wait()
				floatthing.Velocity = Vector3.new(0,0,0)
				task.wait()
			until Float:Get() == false
		else
			speaker.Character.Humanoid:ChangeState(8)
			if floatthing then floatthing:Destroy() end
		end
	end
})
TpHighJump = Player1:AddToggle({
	Name = 'TP High jump',
	Flag = 'TpHighJump1',
	Keybind = {
		Flag = 'TpHighJump2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat
			speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
			task.wait(0.05)
			speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
		until TpHighJump:Get() == false
	end
})
AirWalk = Player1:AddToggle({
	Name = 'Air Walk',
	Flag = 'AirWalk1',
	Keybind = {
		Flag = 'AirWalk2',
		Mode = 'Toggle',
	},

	Callback = function(state)
		if (state) then
			local floaty = Instance.new("Part", workspace)
			floaty.Anchored = true
			floaty.Name = "4-34-54-::3-4-E0r4i"
			floaty.Size = Vector3.new(10000, 0.1, 10000)
			floaty.CFrame = CFrame.new(speaker.Character.HumanoidRootPart.Position.X, speaker.Character.HumanoidRootPart.Position.Y - 3.5, speaker.Character.HumanoidRootPart.Position.Z)
			floaty.Transparency = 1
		else
			for i, v in pairs(workspace:GetChildren()) do
				if v.Name == "4-34-54-::3-4-E0r4i" then
					v:Destroy()
				end
			end
		end
	end
})
CloneFly = Player1:AddToggle({
	Name = 'Clone Fly',
	Flag = 'CloneFly1',
	Keybind = {
		Flag = 'CloneFly2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgg = workspace.Gravity
			speaker.Character.Archivable = true
			local clonethingy = speaker.Character:Clone()

			clonethingy.Name = "clonethingy"
			clonethingy:FindFirstChild("HumanoidRootPart").Transparency = 1
			clonethingy.Parent = workspace
			workspace.Camera.CameraSubject = clonethingy.Humanoid
			partthingy = Instance.new("Part",workspace)
			partthingy.Size = Vector3.new(2048,500,2048)
			partthingy.CFrame = clonethingy.HumanoidRootPart.CFrame * CFrame.new(0,-4,0)
			partthingy.Anchored = true
			partthingy.Transparency = 1
			partthingy.Name = "partthingy"

			RunLoops:BindToHeartbeat("BoostSilentFly", 1, function(delta)
				clonethingy.HumanoidRootPart.CFrame = CFrame.new(speaker.character.HumanoidRootPart.CFrame.X,clonethingy.HumanoidRootPart.CFrame.Y,speaker.character.HumanoidRootPart.CFrame.Z)
				clonethingy.HumanoidRootPart.Rotation = speaker.character.HumanoidRootPart.Rotation
			end)

			task.spawn(function()
				repeat
					task.wait(0.1)
					if CloneFly:Get() == false then break end
					speaker.character.HumanoidRootPart.Velocity = speaker.character.HumanoidRootPart.Velocity + Vector3.new(0,35,0)
				until CloneFly:Get() == false
			end)

			repeat
				task.wait(0.001)
				if CloneFly:Get() == false then break end
				clonethingy.HumanoidRootPart.CFrame = CFrame.new(speaker.character.HumanoidRootPart.CFrame.X,clonethingy.HumanoidRootPart.CFrame.Y,speaker.character.HumanoidRootPart.CFrame.Z)
			until testing == true
		else
			if workspace:FindFirstChild("clonethingy") or workspace:FindFirstChild("partthingy") then
				workspace:FindFirstChild("clonethingy"):Destroy()
				workspace:FindFirstChild("partthingy"):Destroy()
				RunLoops:UnbindFromHeartbeat("BoostSilentFly")
				testing = true
				workspace.Camera.CameraSubject = speaker.Character.Humanoid
			end
			workspace.Gravity = 99999999999345098345
			wait(1.5)
			workspace.Gravity = oldgg
		end
	end
})
csutoms45 = Player1:CreateLabel({
	Text = '-----  Advanced  --------------'
})
AdvancedSpeedTable = {
	Speed = 30;
	Mode = "Velocity";
	AddSpeed = 0;
	Enabled = false;
	AlwaysJump = false;
	Pulse = false;
}
FlightTableAd = {
	Enabled = false;
	Mode = "Velocity";
	Glide = 0;
	Speed = 50;
	VerticalSpeed = 70;
	Vertical = true;
	VerticalBind = "LShift";
} 

AdvancedSpede = Player1:AddToggle({
	Name = 'Speed',
	Value = false,
	Flag = 'speed_3r',
	Locked = false,
	Keybind = {
		Flag = 'adva3speed',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			AdvancedSpeedTable.Enabled = true
			if AdvancedSpeedTable.Enabled == true then

				RunLoops:BindToHeartbeat("SpeedAdvanced_BackGroundTasks", 1, function(dt)

					if not getRoot(speaker.Character) then 
                        return
                    end

					if AdvancedSpeedTable.AlwaysJump == true then 
                        local State = speaker.character.Humanoid:GetState()
                        local MoveDirection = speaker.character.Humanoid.MoveDirection
                        if State == Enum.HumanoidStateType.Running and MoveDirection ~= Vector3.zero then 
                            speaker.character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end

                    if AdvancedSpeedTable.Pulse == true then 
                        if AdvancedSpeedTable.AddSpeed > (AdvancedSpeedTable.Speed * 1.5) then
                            AdvancedSpeedTable.AddSpeed = -(AdvancedSpeedTable.Speed * 1.5)
                        else
                            AdvancedSpeedTable.AddSpeed = AdvancedSpeedTable.AddSpeed + 1
                        end
                    end

				end)

				RunLoops:BindToHeartbeat("SpeedAdvanced", 1, function(dt)

					if not getRoot(char) then 
                        return
                    end

					local Speed = AdvancedSpeedTable.Speed + AdvancedSpeedTable.AddSpeed
					local Humanoid = speaker.character.Humanoid
					local RootPart = speaker.character.HumanoidRootPart
					local MoveDirection = Humanoid.MoveDirection
					local Velocity = RootPart.Velocity
					local X, Z = MoveDirection.X * Speed, MoveDirection.Z * Speed

					if AdvancedSpeedTable.Mode == "Velocity" then

						RootPart.Velocity = Vector3.new(X, Velocity.Y, Z)

					elseif AdvancedSpeedTable.Mode == "CFrame" then

						local Factor = Speed - Humanoid.WalkSpeed
						local MoveDirection = (MoveDirection * Factor) * dt
						local NewCFrame = RootPart.CFrame + Vector3.new(MoveDirection.X, 0, MoveDirection.Z)

						RootPart.CFrame =  NewCFrame

					elseif AdvancedSpeedTable.Mode == "Linear Velocity" then

						LinearVelocity = speaker.character.HumanoidRootPart:FindFirstChildOfClass("LinearVelocity") or Instance.new("LinearVelocity", speaker.character.HumanoidRootPart)
						LinearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Line
						LinearVelocity.Attachment0 = speaker.character.HumanoidRootPart:FindFirstChildOfClass("Attachment")
						LinearVelocity.MaxForce = 9e9
						LinearVelocity.LineDirection = MoveDirection
						LinearVelocity.LineVelocity = (MoveDirection.X ~= 0 and MoveDirection.Z) and Speed or 0

					elseif AdvancedSpeedTable.Mode == "ASM Linear Velocity" then

						RootPart.AssemblyLinearVelocity = Vector3.new(X, Velocity.Y, Z)

					elseif AdvancedSpeedTable.Mode == "Body Velocity" then

						BodyVelocity = speaker.character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity") or Instance.new("BodyVelocity", speaker.character.HumanoidRootPart)
						BodyVelocity.Velocity = Vector3.new(X, 0, Z)
						BodyVelocity.MaxForce = Vector3.new(9e9, 0, 9e9)

					end

				end)

			end
		else
			AdvancedSpeedTable.Enabled = false

			if AdvancedSpeedTable.Enabled == false then

				AdvancedSpeedTable.AddSpeed = 0
				RunLoops:UnbindFromHeartbeat("SpeedAdvanced")
				RunLoops:UnbindFromHeartbeat("SpeedAdvanced_BackGroundTasks")

				if LinearVelocity then 
					LinearVelocity:Destroy()
					LinearVelocity = nil
				end
				if BodyVelocity then 
					BodyVelocity:Destroy()
					BodyVelocity = nil
				end

			end

		end
	end
})

local flyup
local flydown
local flydownconnection
local flyupconnection
Advancedflight = Player1:AddToggle({
	Name = 'Flight',
	Flag = 'flight3dsa',
	Keybind = {
		Flag = 'adva3speed2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgravvvvv = workspace.Gravity
			workspace.Gravity = 0
			RunLoops:BindToStepped("Flight", 1, function(time, dt)

				if not getRoot(speaker.Character) then return end



				local dt = FlightTableAd.Mode == "Velocity" and 1 or dt
                local updirection = 0 - FlightTableAd.Glide

				if UIS:GetFocusedTextBox() == nil then
					updirection = (flyup and FlightTableAd.VerticalSpeed or flydown and - FlightTableAd.VerticalSpeed or 0 - FlightTableAd.Glide ) * dt
				end

				local MoveDirection = speaker.Character.Humanoid.MoveDirection * (FlightTableAd.Speed * dt)

				if FlightTableAd.Mode == "Velocity" then

					speaker.Character.HumanoidRootPart.Velocity = Vector3.new(MoveDirection.X, FlightTableAd.Vertical and (updirection) or 0 - FlightTableAd.Glide, MoveDirection.Z)

				elseif FlightTableAd.Mode == "CFrame" then

					speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(MoveDirection.X, FlightTableAd.Vertical and (updirection) or 0 - FlightTableAd.Glide, MoveDirection.Z)
					speaker.Character.HumanoidRootPart.Velocity = Vector3.new()

				end

			end)

			flyupconnection = UIS.InputBegan:connect(function(input)
				if input.KeyCode == Enum.KeyCode.Space then
					flyup = true
				end
				if input.KeyCode == (FlightTableAd.VerticalBind == "LShift" and Enum.KeyCode.LeftShift or Enum.KeyCode.LeftControl) then
					flydown = true
				end
			end)
			flydownconnection = UIS.InputEnded:connect(function(input)
				if input.KeyCode == Enum.KeyCode.Space then
					flyup = false
				end
				if input.KeyCode == (FlightTableAd.VerticalBind == "LShift" and Enum.KeyCode.LeftShift or Enum.KeyCode.LeftControl) then
					flydown = false
				end
			end)

		else

			flyup = false
            flydown = false
			workspace.Gravity = oldgravvvvv
			RunLoops:UnbindFromStepped("Flight")

            if flyupconnection then flyupconnection:Disconnect() end
			if flydownconnection then flydownconnection:Disconnect() end

		end
	end
})
csutomsd2 = Player1:CreateLabel({
	Text = '-------------------------------'
})
AdvancedSpeedSliderMOdes = Player1:AddDropdown({
	Name = 'Speed Mode',
	Flag = "4trg2",
	List = {"Velocity", "CFrame", "Linear Velocity", "ASM Linear Velocity", "Body Velocity"},
	Callback = function( x )
		AdvancedSpeedTable.Mode = x
		if AdvancedSpeedTable.Enabled == true then
			AdvancedSpeedTable.Enabled = false
			AdvancedSpeedTable.Enabled = true
		end
	end
})
AdvancedSpeedVar = Player1:AddSlider({
	Name = 'Speed Value',
	Flag = "Advancder",
	Value = AdvancedSpeedTable.Speed,
	Min = 0,
	Max = 230,
	Textbox = true,
	Callback = function(x)
		AdvancedSpeedTable.Speed = x
	end
})
alwaysjumpimg = Player1:AddToggle({
	Name = 'Keep Jump',
	Flag = 'alwaysjumpimg2',

	Callback = function( x )
		AdvancedSpeedTable.AlwaysJump = x
	end
})
pulsefgorthesaped = Player1:AddToggle({
	Name = 'Pulse',
	Flag = 'pulsefgorthesaped3',

	Callback = function( x )
		AdvancedSpeedTable.Pulse = x
	end
})

csutomsd25 = Player1:CreateLabel({
	Text = '-------------------------------'
})

lfightmodeee = Player1:AddDropdown({
	Name = 'Fly Mode',
	Flag = "4trg23",
	List = {"Velocity", "CFrame"},
	Callback = function(x) 
		FlightTableAd.Mode = x
	end
})
fligthspeed = Player1:AddSlider({
	Name = 'Fly Speed',
	Flag = "Advancder324",
	Value = FlightTableAd.Speed,
	Min = 0,
	Max = 500,
	Textbox = true,
	Callback = function(x)
		FlightTableAd.Speed = x
	end
})
fligthspeed = Player1:AddSlider({
	Name = 'Vertical Fly Speed',
	Flag = "2nc24",
	Value = FlightTableAd.VerticalSpeed,
	Min = 0,
	Max = 500,
	Textbox = true,
	Callback = function(x)
		FlightTableAd.VerticalSpeed = x
	end
})
fligthspeed = Player1:AddSlider({
	Name = 'Fly Glide',
	Flag = "2nc24222",
	Value = FlightTableAd.Glide,
	Min = -120,
	Max = 120,
	Textbox = true,
	Callback = function(x)
		FlightTableAd.Glide = x
	end
})
flighrtgsdf = Player1:AddDropdown({
	Name = 'Vertical Bind',
	Flag = "4trg",
	List = {"LShift", "LCtrl"},
	Callback = function( x )
		FlightTableAd.VerticalBind = x
	end
})

csutomsd = Player1:CreateLabel({
	Text = '-------------------------------'
})
classicflyspeed = Player1:AddSlider({
	Name = 'Classic fly speed',
	Flag = "speed_cframe_cfly",
	Value = 1,
	Min = 1,
	Max = 300,
	llegalInput = true,
	Textbox = true,
	Callback = function(x)
		iyflyspeed = x
	end
})
cehicalflysped = Player1:AddSlider({
	Name = 'Vehicle fly speed',
	Flag = "speed_cframe_vfly",
	Value = 1,
	Min = 1,
	Max = 300,
	llegalInput = true,
	Textbox = true,
	Callback = function(x)
		vehicleflyspeed = x
	end
})
bypassflyspeed = Player1:AddSlider({
	Name = 'Bypass fly speed',
	Flag = "speed_cframe_bfly",
	Value = 10,
	Min = 1,
	Max = 20,
	llegalInput = true,
	Textbox = true,
	Callback = function(x)
		CFspeedBypassFly = x
	end
})
tweendelayclick = Player1:AddSlider({
	Name = 'Click Tween Delay',
	Flag = "tweendelayclick1",
	Value = 3,
	Min = 0.1,
	Max = 10,
	Decimals = 2,
	llegalInput = true,
	Textbox = true,
	Callback = function(x)
		TweenSpeed = x
	end
})

connectionsyffif = Player2:CreateLabel({
	Text = 'Property Changed Signals'
})

function DisAll()
	for _,c in pairs(getconnections(char.DescendantAdded)) do c:Disable() end
	for _,c in pairs(getconnections(char:WaitForChild('HumanoidRootPart'):GetPropertyChangedSignal("Velocity"))) do c:Disable() end
	for _,c in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("WalkSpeed"))) do c:Disable() end
	for _,c in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("JumpPower"))) do c:Disable() end
	for _,c in pairs(getconnections(char.ChildRemoved)) do c:Disable() end
end

function EnAll()
	for _,c in pairs(getconnections(char.DescendantAdded)) do c:Enable() end
	for _,c in pairs(getconnections(char:WaitForChild('HumanoidRootPart'):GetPropertyChangedSignal("Velocity"))) do c:Enable() end
	for _,c in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("WalkSpeed"))) do c:Enable() end
	for _,c in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("JumpPower"))) do c:Enable() end
	for _,c in pairs(getconnections(char.ChildRemoved)) do c:Enable() end
end

dis1 = Player2:AddToggle({
	Name = 'Disable Walkspeed',
	Flag = 'walksspeed_discbke',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("WalkSpeed"))) do 
					v:Disable() 
				end
			else
				dis1:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("WalkSpeed"))) do 
				v:Enable() 
			end
		end
	end
})
dis2 = Player2:AddToggle({
	Name = 'Disable JumpPower',
	Flag = 'jumppower_discbke',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("JumpPower"))) do 
					v:Disable() 
				end
			else
				dis2:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("JumpPower"))) do 
				v:Enable() 
			end
		end
	end
})
dis3 = Player2:AddToggle({
	Name = 'Disable Velocity',
	Flag = 'velocitryy_discbke',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char:WaitForChild('HumanoidRootPart'):GetPropertyChangedSignal("Velocity"))) do 
					v:Disable() 
				end
			else
				dis3:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char:WaitForChild('HumanoidRootPart'):GetPropertyChangedSignal("Velocity"))) do 
				v:Enable() 
			end
		end
	end
})
dis4 = Player2:AddToggle({
	Name = 'Disable Slop Angle',
	Flag = 'slopangle_discbke',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("MaxSlopeAngle"))) do 
					v:Disable() 
				end
			else
				dis4:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("MaxSlopeAngle"))) do 
				v:Enable() 
			end
		end
	end
})
dis5 = Player2:AddToggle({
	Name = 'Disable Hip Height',
	Flag = 'hipheight_discbke',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("HipHeight"))) do 
					v:Disable() 
				end
			else
				dis5:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char:WaitForChild('Humanoid'):GetPropertyChangedSignal("HipHeight"))) do 
				v:Enable() 
			end
		end
	end
})
dis6 = Player2:AddToggle({
	Name = 'Disable Decendant Added',
	Flag = 'decendantadded_discbke',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char.DescendantAdded)) do 
					v:Disable() 
				end
			else
				dis6:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char.DescendantAdded)) do 
				v:Enable() 
			end
		end
	end
})
dis7 = Player2:AddToggle({
	Name = 'Disable Child Removed',
	Flag = 'takeThECHild',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				for _,v in pairs(getconnections(char.ChildRemoved)) do
					v:Disable() 
				end
			else
				dis7:Set(false)
				missingFunc("getconnections")
			end
		else
			for _,v in pairs(getconnections(char.ChildRemoved)) do
				v:Enable() 
			end
		end
	end
})

dis10 = Player2:AddToggle({
	Name = 'Disable All',
	Flag = 'ALLLLLL',

	Callback = function( state )
		if ( state ) then
			if getconnections then
				EnAll()
				dis1:Set(false)
				dis2:Set(false)
				dis3:Set(false)
				dis4:Set(false)
				dis5:Set(false)
				dis6:Set(false)
				dis7:Set(false)
				DisAll()
			else
				dis8:Set(false)
				missingFunc("getconnections")
			end
		else
			EnAll()
		end
	end
})

toollabel2 = Player2:CreateLabel({
	Text = 'B-Tools'
})
btools = Player2:AddButton({
	Name = "Spawn BTools",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/btools.lua"))()
	end
})
btoolsno = Player2:AddButton({
	Name = "Destroy BTools",
	Callback = function()
		speaker.Character:WaitForChild('Humanoid'):UnequipTools()
		task.wait()
		for _,e in pairs(speaker.Backpack:GetDescendants()) do
			if e:IsA("Tool") and e.Name == "F3X" then
				e:Destroy()
			end
		end
	end
})

toollabel21 = Player2:CreateLabel({
	Text = 'Tools'
})

getalltools = Player2:AddButton({
	Name = "Get All Tools",
	Callback = function()
		copyTool(Lighting)
		copyTool(ReplicatedStorage)
		Notify({
			Title = "Get All Tools",
			Description = "Given all tools in Lighting and ReplicatedStorage",
			Duration = 4
		})
	end
})
destroytools = Player2:AddButton({
	Name = "Destroy All Tools",
	Callback = function()
		for _,e in pairs(speaker.Backpack:GetDescendants()) do
			if e:IsA("Tool") or e:IsA("HopperBin") then
				e:Destroy()
			end
		end
	end
})
droptools = Player2:AddButton({
	Name = "Drop Tools",
	Callback = function()
		for i,v in pairs(speaker.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = speaker.Character
			end
		end
		wait()
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = workspace
			end
		end
	end
})
tooldroptrue = Player2:AddButton({
	Name = "Make Tools Droppable",
	Callback = function()
		if speaker.Character then
			for _,obj in pairs(speaker.Character:GetChildren()) do
				if obj:IsA("Tool") then
					obj.CanBeDropped = true
				end
			end
		end
		if speaker:FindFirstChildOfClass("Backpack") then
			for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
				if obj:IsA("Tool") then
					obj.CanBeDropped = true
				end
			end
		end
	end
})
equiptools = Player2:AddButton({
	Name = "Equip All Tools",
	Callback = function()
		for i,v in pairs(speaker:WaitForChild("Backpack"):GetChildren()) do
			if v:IsA("Tool") or v:IsA("HopperBin") then
				v.Parent = speaker.Character
			end
		end
	end
})
unequiptools = Player2:AddButton({
	Name = "Un-Equip Tools",
	Callback = function()
		speaker.Character:WaitForChild('Humanoid'):UnequipTools()
	end
})
toglleequiptols = Player2:AddToggle({
	Name = 'Toggle Equip Tools',
	Flag = 'Free43sd',
	Keybind = {
		Flag = 'c4rfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(speaker:WaitForChild("Backpack"):GetChildren()) do
				if v:IsA("Tool") or v:IsA("HopperBin") then
					v.Parent = speaker.Character
				end
			end
		else
			speaker.Character:WaitForChild('Humanoid'):UnequipTools()
		end
	end
})
killplayers = Player2:AddTextbox({
	Name = 'Kill Player',
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						if firetouchinterest then
							if tools(speaker) then
								speaker.Character.Humanoid.Name = 1
								local l = speaker.Character["1"]:Clone()
								l.Parent = speaker.Character
								l.Name = "Humanoid"
								wait(.2)
								speaker.Character["1"]:Destroy()
								workspace.CurrentCamera.CameraSubject = speaker.Character
								speaker.Character.Humanoid.DisplayDistanceType = "None"
								speaker.Character.Humanoid:UnequipTools()

								local tl = speaker.Backpack:FindFirstChildOfClass("Tool")
								tl.Parent = speaker.Character
								tl.Parent = speaker.Character.HumanoidRootPart

								firetouchinterest(v.HumanoidRootPart, tl.Handle, 0)
								firetouchinterest(v.HumanoidRootPart, tl.Handle, 1)

								pcall(function() 
									speaker.Character.HumanoidRootPart.CFrame = CFrame.new(0, workspace.FallenPartsDestroyHeight + 5, 0) 
								end)

								wait(0.3)
								speaker.Character:Remove()
								speaker.CharacterAdded:Wait()
							else
								Notify({
									Title = "Tool Required",
									Description = "you need a tool to do this",
									Duration = 2
								})
							end
						else
							missingFunc("firetouchinterest")
						end
					end
				end
			end
		end
	end
})
kigbringers = Player2:AddTextbox({
	Name = 'Bring Player',
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						if firetouchinterest then
							if tools(speaker) then
								speaker.Character.Humanoid.Name = 1
								local l = speaker.Character["1"]:Clone()
								l.Parent = speaker.Character
								l.Name = "Humanoid"
								wait(.2)
								speaker.Character["1"]:Destroy()
								workspace.CurrentCamera.CameraSubject = speaker.Character
								speaker.Character.Humanoid.DisplayDistanceType = "None"
								speaker.Character.Humanoid:UnequipTools()

								local tl = speaker.Backpack:FindFirstChildOfClass("Tool")
								tl.Parent = speaker.Character
								tl.Parent = speaker.Character.HumanoidRootPart

								firetouchinterest(v.HumanoidRootPart, tl.Handle, 0)
								firetouchinterest(v.HumanoidRootPart, tl.Handle, 1)

								wait(0.3)
								speaker.Character:Remove()
								speaker.CharacterAdded:Wait()
							else
								Notify({
									Title = "Tool Required",
									Description = "you need a tool to do this",
									Duration = 2
								})
							end
						else
							missingFunc("firetouchinterest")
						end
					end
				end
			end
		end
	end
})
kigivethetoolsayers = Player2:AddTextbox({
	Name = 'Give tool',
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						if firetouchinterest then
							if tools(speaker) then
								speaker.Character.Humanoid.Name = 1
								local l = speaker.Character["1"]:Clone()
								l.Parent = speaker.Character
								l.Name = "Humanoid"
								wait(.2)
								speaker.Character["1"]:Destroy()
								workspace.CurrentCamera.CameraSubject = speaker.Character
								speaker.Character.Humanoid.DisplayDistanceType = "None"
								speaker.Character.Humanoid:UnequipTools()

								local tl = speaker.Backpack:FindFirstChildOfClass("Tool")
								tl.Parent = speaker.Character
								tl.Parent = speaker.Character.HumanoidRootPart

								firetouchinterest(v.HumanoidRootPart, tl.Handle, 0)
								firetouchinterest(v.HumanoidRootPart, tl.Handle, 1)

								wait(0.3)
								speaker.Character:Remove()
								speaker.CharacterAdded:Wait()
							else
								Notify({
									Title = "Tool Required",
									Description = "you need a tool to do this",
									Duration = 2
								})
							end
						else
							missingFunc("firetouchinterest")
						end
					end
				end
			end
		end
	end
})
kigbringers2 = Player2:AddTextbox({
	Name = 'Attach to Player',
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						attach(speaker,v)
					end
				end
			end
		end
	end
})

local hatslable = Player2:CreateLabel({
	Text = 'Hats'
})
local drophats = Player2:AddButton({
	Name = "Drop Hats",
	Callback = function()
		if speaker.Character then
			for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
				v.Parent = workspace
			end
		end	
	end
})
local deletehats = Player2:AddButton({
	Name = "Destroy Hats",
	Callback = function()
		for i,v in next, speaker.Character:GetDescendants() do
			if v:IsA("Accessory") then
				for i,p in next, v:GetDescendants() do
					if p:IsA("Weld") then
						p:Destroy()
					end
				end
			end
		end
	end
})


local animlable = Player3:CreateLabel({
	Text = 'Animations'
})

Freezeanims = Player3:AddToggle({
	Name = 'Freeze Animations',
	Flag = 'Freezeaniumsd',
	Keybind = {
		Flag = '54rfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			repeat
				wait()
				local Humanoidzzz_stupid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
				for _, v in pairs(Humanoidzzz_stupid:GetPlayingAnimationTracks()) do
					v:AdjustSpeed(0)
				end
			until Freezeanims:Get() == false
		else
			local Humanoidzzz_stupid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
			for _, v in pairs(Humanoidzzz_stupid:GetPlayingAnimationTracks()) do
				v:AdjustSpeed(1)
			end
		end
	end
})
Disableanims = Player3:AddToggle({
	Name = 'Disable Animations',
	Flag = 'DisableAnimations',
	Keybind = {
		Flag = 'c43rerf3di1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			CAS:BindAction("freezeMovement", function()
				return Enum.ContextActionResult.Sink
				end,
				false,
				unpack(Enum.PlayerActions:GetEnumItems())
			)
			task.wait(0.5)
			CAS:UnbindAction("freezeMovement")
			speaker.Character.HumanoidRootPart.Anchored = true
			wait()
			speaker.Character.HumanoidRootPart.Anchored = false
			speaker.Character.Animate.Disabled = true
		else
			speaker.Character.Animate.Disabled = false
		end
	end
})
i2Disableanims = Player3:AddToggle({
	Name = 'Spasm',
	Flag = 'DisableAnimations2',
	Keybind = {
		Flag = 'c43rerfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if r15(speaker) then
				Notify({
					Title = "Invalid Rig type",
					Description = "You Need to be in R6",
					Duration = 2
				})
				i2Disableanims:Set(false)
			else
				local pchar=speaker.Character
				local AnimationId = "33796059"
				SpasmAnim = Instance.new("Animation")
				SpasmAnim.AnimationId = "rbxassetid://"..AnimationId
				Spasm = pchar:FindFirstChildOfClass('Humanoid'):LoadAnimation(SpasmAnim)
				Spasm:Play()
				Spasm:AdjustSpeed(99)
			end
		else
			if Spasm then Spasm:Stop(); SpasmAnim:Destroy() end
		end
	end
})

Customanim = Player3:AddDropdown({
	Name = 'Custom Animation',
	Flag = "customani2",
	List = {
		"Default",
		"toy",
		"pirate",
		"knight",
		"astronaut",
		"vampire",
		"robot",
		"levitation",
		"bubbly",
		"werewolf",
		"stylish",
		"mage",
		"cartoony",
		"zombie",
		"superhero",
		"ninja",
		"elder",
		"oldschool",
		"popstar",
		"patrol",
		"princess",
		"cowboy",
		"toilet",
		"sneaky"
	},
	Callback = function( animpack )
		if animpack == "sneaky" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1132500520"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1132506407"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
		elseif animpack == "Default" then
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=387947158"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=387947464"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=387947975"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=382460631"
		elseif animpack == "toy" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=782844582"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=782845186"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
		elseif animpack == "pirate" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=750784579"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=750785176"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
		elseif animpack == "knight" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=657560551"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=657557095"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
		elseif animpack == "astronaut" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=891639666"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=891663592"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
		elseif animpack == "vampire" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083464683"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083467779"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		elseif animpack == "robot" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
		elseif animpack == "levitation" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		elseif animpack == "bubbly" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=909997997"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
		elseif animpack == "werewolf" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083222527"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083225406"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		elseif animpack == "stylish" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616143378"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616144772"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
		elseif animpack == "mage" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=707876443"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=707894699"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
		elseif animpack == "cartoony" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=742639220"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=742639812"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
		elseif animpack == "zombie" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616165109"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616166655"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		elseif animpack == "superhero" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616119360"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616120861"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
		elseif animpack == "ninja" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=656119721"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=656121397"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
		elseif animpack == "elder" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=845401742"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=845403127"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
		elseif animpack == "oldschool" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=5319816685"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=5319841935"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=5319844329"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=5319850266"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=5319852613"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=5319847204"
		elseif animpack == "confident" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1070009914"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1070012133"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
		elseif animpack == "popstar" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1212852603"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1212998578"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
		elseif animpack == "patrol" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1151204998"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1151221899"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
		elseif animpack == "princess" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=941018893"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=941025398"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
		elseif animpack == "cowboy" then
			char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
			char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
			char.Animate.idle.Animation1.Weight.Value = "9"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
			char.Animate.idle.Animation2.Weight.Value = "1"
			char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
			char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1014406523"
			char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1014411816"
			char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
		elseif animpack == "toilet" then
			char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
			char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
			char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4417979645"
		end	
	end
})

local animlable = Player3:CreateLabel({
	Text = 'Body'
})
spammingSit = false
spamsit = Player3:AddToggle({
	Name = 'Spam Sit',
	Flag = 'spamsit2',
	Keybind = {
		Flag = 'spamsit34',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			spammingSit = true
			repeat
				char:FindFirstChildOfClass("Humanoid").Sit = true
				wait()
				char:FindFirstChildOfClass("Humanoid").Sit = false
			until spammingSit == false
		else
			spammingSit = false
		end
	end
})
function RotateTheBody()
	local Human = speaker.Character and speaker.Character:FindFirstChildOfClass('Humanoid')
	if not Human then
		return
	end
	Human.Sit = true
	task.wait(.1)
	Human.RootPart.CFrame = Human.RootPart.CFrame * CFrame.Angles(math.pi * .5, 0, 0)
	for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end
spamrotta = Player3:AddToggle({
	Name = 'Spam Rotate',
	Flag = 'spamsit234',
	Keybind = {
		Flag = 'spmsit34345',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			spammingTheRot = true
			repeat 
				RotateTheBody()
				wait(rotatedelay:Get())
			until spammingTheRot == false
		else
			spammingTheRot = false
		end
	end
})
rotatedelay = Player3:AddSlider({
	Name = 'Rotate Delay',
	Flag = "RotateDelay",
	Value = 0,
	Min = 0,
	Max = 2,
	Decimals = 2,
	Textbox = true,
	Callback = function() end
})
local sit = Player3:AddButton({
	Name = "Sit",
	Callback = function()
		speaker.Character:FindFirstChildOfClass("Humanoid").Sit = true
	end
})
local lay = Player3:AddButton({
	Name = "Lay/Rotate Body",
	Callback = function()
		RotateTheBody()
	end
})
local nolimbs = Player3:AddButton({
	Name = "No limbs",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperLeg" or
					v.Name == "LeftUpperLeg" or
					v.Name == "RightUpperArm" or
					v.Name == "LeftUpperArm" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Leg" or
					v.Name == "Left Leg" or
					v.Name == "Right Arm" or
					v.Name == "Left Arm" then
					v:Destroy()
				end
			end
		end
	end
})
local nohead = Player3:AddButton({
	Name = "No Head",
	Callback = function()
		if setsimulationradius then
			if speaker.Character:FindFirstChild "Head" then
				char.Archivable = true
				local new = char:Clone()
				new.Parent = workspace
				speaker.Character = new
				wait(2)
				local oldhum = char:FindFirstChildWhichIsA "Humanoid"
				local newhum = oldhum:Clone()
				newhum.Parent = char
				newhum.RequiresNeck = false
				oldhum.Parent = nil
				wait(2)
				speaker.Character = char
				new:Destroy()
				wait(1)
				newhum:GetPropertyChangedSignal("Health"):Connect(
				function()
					if newhum.Health <= 0 then
						oldhum.Parent = speaker.Character
						wait(1)
						oldhum:Destroy()
					end
				end)
				workspace.CurrentCamera.CameraSubject = char
				if char:FindFirstChild "Animate" then
					char.Animate.Disabled = true
					wait(.1)
					char.Animate.Disabled = false
				end
				speaker.Character:FindFirstChild "Head":Destroy()
			end
			if simulationradius then
				RunService.Heartbeat:Connect(function()
					setsimulationradius(1/0,1/0)
				end)
			end
		else
			missingFunc("setsimulationradius")
		end
	end
})
local noarms = Player3:AddButton({
	Name = "No Arms",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperArm" or
					v.Name == "LeftUpperArm" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Arm" or
					v.Name == "Left Arm" then
					v:Destroy()
				end
			end
		end
	end
})
local nolegs = Player3:AddButton({
	Name = "No Legs",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperLeg" or
					v.Name == "LeftUpperLeg" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Leg" or
					v.Name == "Left Leg" then
					v:Destroy()
				end
			end
		end
	end
})
local nofacelkao = Player3:AddButton({
	Name = "No Face",
	Callback = function()
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v:IsA("Decal") and v.Name == 'face' then
				v:Destroy()
			end
		end
	end
})
local split = Player3:AddButton({
	Name = "Split Body",
	Callback = function()
		if r15(speaker) then
			speaker.Character.UpperTorso.Waist:Destroy()
		else
			Notify({
				Title = "Invalid Rig type",
				Description = "You Need to be in R15",
				Duration = 2
			})
		end
	end
})
local nudesnaked = Player3:AddButton({
	Name = "Become Naked",
	Callback = function()
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
				v:Destroy()
			end
		end
	end
})

function FuckVelocity()
	local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
	delay(1, function()
		BeenASecond = true
	end)
	while not BeenASecond do
		for _, v in ipairs(speaker.Character:GetDescendants()) do
			if v.IsA(v, "BasePart") then
				v.Velocity, v.RotVelocity = V3, V3
			end
		end
		wait()
	end
end

tpplayer = Player4:AddTextbox({
	Name = 'Teleport to Player',
	Flag = "tptoplay8rs",
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						speaker.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(3,1,0)
						FuckVelocity()
					end
				end
			end
		end	
	end
})
tpplayer = Player4:AddTextbox({
	Name = 'Loop Teleport to Player',
	Flag = "tptoplayers",
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						RunLoops:BindToStepped("LoopTeleport", 1, function()
							speaker.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
						end)
					end
				end
			end
		end	
	end
})
tpplayer2 = Player4:AddTextbox({
	Name = 'Tween to Player',
	Flag = "tptoplayers2",
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						TweenService:Create(speaker.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear), {CFrame = v.HumanoidRootPart.CFrame + Vector3.new(3,1,0)}):Play()
					end
				end
			end
		end
	end
})

walkto = false
walksperjds = Player4:AddTextbox({
	Name = 'walk to Player',
	Flag = "walktpplauetr",
	Value = speaker.Name,
	Callback = function( plrTar )
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						walkto = true
						repeat wait()
							speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(v).Position)
						until v == nil or not getRoot(v) or walkto == false
					end
				end
			end
		end
	end
})
tpplayer = Player4:AddButton({
	Name = "Stop Walking to player",
	Callback = function()
		walkto = false
	end
})
tpplayer = Player4:AddButton({
	Name = "Stop Loop teleport",
	Callback = function()
		RunLoops:UnbindFromStepped("LoopTeleport")
	end
})
tpplayer = Player4:AddButton({
	Name = "Go to Random Player",
	Callback = function()
		local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

		speaker.Character.HumanoidRootPart.CFrame = CFrame.new(
			Vector3.new(
				randomPlayer.Character.Head.Position.X,
				randomPlayer.Character.Head.Position.Y,
				randomPlayer.Character.Head.Position.Z
			)
		)
	end
})


local breakvelocity2 = Player4:AddButton({
	Name = "break Velocity",
	Callback = function()
		FuckVelocity()
	end
})
function gmode()
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end
local godmode = Player4:AddButton({
	Name = "GodMode",
	Callback = function()
		gmode()
	end
})
local spamgmode = Player4:AddToggle({
	Name = 'Spam Godmode',
	Flag = 'spamgmodesdf',

	Callback = function( state )
		spamgmode = state
		repeat
			gmode()
			wait()
		until spamgmode == false
	end
})


local function skipFrame() 
    return RunService.Heartbeat:Wait()
end

TimerSpeed = 50
timer = Player4:AddToggle({
	Name = 'Timer',
	Flag = 'nderfgd1',
	Keybind = {
		Flag = 'nivc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			Timer = true
			oldg = workspace.Gravity
			oldws = speaker.Character.Humanoid.WalkSpeed
			if hookmetamethod then

				--// walk speed
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "WalkSpeed" then
						return oldws
					end
					return OldIndex(Self, Key)
				end))

				--// gravity
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "Gravity" then
						return oldg
					end
					return OldIndex(Self, Key)
				end))

				-- // main
				workspace.Gravity = workspace.Gravity * (timervalue:Get() / 10)
				speaker.Character.Humanoid.WalkSpeed = speaker.Character.Humanoid.WalkSpeed * (timervalue:Get() / 10)

				spawn(function()
					repeat skipFrame()
						for i,v in next, speaker.Character.Humanoid:GetPlayingAnimationTracks() do 
							v:AdjustSpeed((timervalue:Get() / 10))
						end
					until Timer == false
				end)
			else
				workspace.Gravity = workspace.Gravity * (timervalue:Get() / 10)
				speaker.Character.Humanoid.WalkSpeed = speaker.Character.Humanoid.WalkSpeed * (timervalue:Get() / 10)

				spawn(function()
					repeat skipFrame()
						for i,v in next, speaker.Character.Humanoid:GetPlayingAnimationTracks() do 
							v:AdjustSpeed((timervalue:Get() / 10))
						end
					until Timer == false
				end)
			end
		else
			Timer = false
			workspace.Gravity = oldg
			speaker.Character.Humanoid.WalkSpeed = oldws
		end
	end
})

timervalue = Player4:AddTextbox({
	Name = 'Timer Value',
	Flag = "pdfsadrgtrdfro_flag",
	Value = 60,
	Callback = function() end
})

function respawn(plr)
	if invisRunning then TurnVisible() end
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end
local refreshCmd = false
function refresh(plr)
	refreshCmd = true
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
		refreshCmd = false
	end)
end

invis = Player4:AddToggle({
	Name = 'Invisible',
	Flag = 'Invisible3rew',
	Keybind = {
		Flag = 'niInvisiblefvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			addons1:Invisible(true)
			Notify({
				Title = "Invisible",
				Description = "You are now invisible to other players",
				Duration = 2
			})
			for i,m in pairs(speaker.Character:GetChildren()) do
				if m:IsA("Part") or m:IsA("MeshPart") then
					if m.Name ~= "HumanoidRootPart" and m.Name ~= "Handle" or m:IsA("Part")then
						m.Material = "ForceField" m.Color = Color3.fromRGB(0, 26, 255)
					end
				end
			end
		else
			addons1:Invisible(false)
		end
	end
})
local invisv2 = Player4:AddToggle({
	Name = 'Invisible v2',
	Flag = 'gj4r8333',
	Keybind = {
		Flag = 'niInv2c2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local touched = false
			local tpdback = false
			local box = Instance.new('Part', workspace)
			box.Anchored = true
			box.Name = "HU9843984-=_+393(*(*34hu(3+++++#4ju___34)))"
			box.CanCollide = true
			box.Size = Vector3.new(10,1,10)
			box.Position = Vector3.new(0,10000,0)
			local boxTouched = box.Touched:connect(function(part)
				if (part.Parent.Name == Players.LocalPlayer.Name) then
					if touched == false then
						touched = true
						local function apply()
							local no = char.HumanoidRootPart:Clone()
							wait(.25)
							char.HumanoidRootPart:Destroy()
							no.Parent = char
							char:MoveTo(loc)
							touched = false
						end
						if char then
							apply()
						end
					end
				end
			end)
			repeat wait() until char
			local cleanUp
			cleanUp = Players.LocalPlayer.CharacterAdded:connect(function(char)
				if not getRoot(char) then
					return
				end
				boxTouched:Disconnect()
				box:Destroy()
				cleanUp:Disconnect()
			end)
			loc = char.HumanoidRootPart.Position
			char:MoveTo(box.Position + Vector3.new(0,.5,0))
		else
			refresh(speaker)
			for i, x in pairs(workspace:GetDescendants()) do
				if x.Name == "HU9843984-=_+393(*(*34hu(3+++++#4ju___34)))" then
					x:Destroy()
				end
			end
		end
	end
})

vclip = Player4:AddToggle({
	Name = 'V-Clip',
	Flag = 'stunfunn2i',
	Keybind = {
		Flag = 'syu3tun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if clipmode:Get() == "Down" then
				if clipammountv:Get() > 1 then
					speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, - clipammountv:Get(), 0)
					vclip:Set(false)
					Notify({
						Title = "V-Clip",
						Description = "cliped you "..clipammountv:Get().. " studs down",
						Duration = 4
					})
				else
					speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, - clipammountv:Get(), 0)
					vclip:Set(false)
					Notify({
						Title = "V-Clip",
						Description = "cliped you "..clipammountv:Get().. " stud down",
						Duration = 4
					})
				end
			else
				if clipammountv:Get() > 1 then
					speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, clipammountv:Get(), 0)
					vclip:Set(false)
					Notify({
						Title = "V-Clip",
						Description = "cliped you "..clipammountv:Get().. " studs up",
						Duration = 4
					})
				else
					speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, clipammountv:Get(), 0)
					vclip:Set(false)
					Notify({
						Title = "V-Clip",
						Description = "cliped you "..clipammountv:Get().. " stud up",
						Duration = 4
					})
				end
			end
		end
	end
})
clipammountv = Player4:AddSlider({
	Name = 'Clip ammount',
	Flag = "vclip_amount",
	Value = 10,
	Min = 1,
	Max = 100,
	Decimals = 1,
	Textbox = true,
	llegalInput = true,
	Callback = function() end
})
clipmode = Player4:AddDropdown({
	Name = 'Mode',
	Flag = "vclip_mode",
	List = {"Down", "Up"},
	Callback = function() end
})
local triplol = Player4:AddButton({
	Name = "Trip",
	Callback = function()
		if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
			local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
			local root = getRoot(speaker.Character)
			hum:ChangeState(0)
			root.Velocity = root.CFrame.LookVector * 30
		end
	end
})

local Reset = Player4:AddButton({
	Name = "Reset",
	Callback = function()
		speaker.Character:BreakJoints()
	end
})
local Respawn = Player4:AddButton({
	Name = "Respawn",
	Callback = function()
		respawn(speaker)
	end
})
local Refresh = Player4:AddButton({
	Name = "Refresh",
	Callback = function()
		refresh(speaker)
	end
})

KeepPos = false
local antiafk2 = Player4:AddToggle({
	["Name"] = 'Keep Position',
	["Flag"] = 'keeppos21',
	["Keybind"] = {
		["Flag"] = 'keepsopos212',
		["Mode"] = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			KeepPos = true
			oldKeep = speaker.Character.HumanoidRootPart.CFrame
			while KeepPos == true do
				task.wait()
				speaker.Character.HumanoidRootPart.CFrame = oldKeep
			end
		else
			KeepPos = false
		end
	end
})
local nilchar = Player4:AddToggle({
	Name = 'Nil Character',
	Flag = 'nilchar1',
	Keybind = {
		Flag = 'nilll1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if speaker.Character ~= nil then
				speaker.Character.Parent = nil
			end
		else
			if speaker.Character ~= nil then
				speaker.Character.Parent = workspace
			end
		end
	end
})

local nilchar2 = Player4:AddToggle({
	Name = 'Spam Nil Character',
	Flag = 'nilchar12',
	Keybind = {
		Flag = 'nill22222l1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			spamNilChar = true
			while spamNilChar == true do
				wait()
				if speaker.Character ~= nil then
					speaker.Character.Parent = nil
				end
				wait()
				if speaker.Character ~= nil then
					speaker.Character.Parent = workspace
				end
			end
		else
			spamNilChar = false
		end
	end
})

local freeze = Player4:AddToggle({
	Name = 'Freeze',
	Flag = 'freezeisfunni',
	Keybind = {
		Flag = '4r8uijkfdfdgdfgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = true
				end
			end
		else
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
		end
	end
})
spamfreeze = false
local randomfreeze = Player4:AddToggle({
	Name = 'Freeze Lag',
	Flag = 'freezeisfunni2',
	Keybind = {
		Flag = '4r8uifgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			spamfreeze = true
			while spamfreeze == true do
				wait()
				for i,v in pairs(speaker.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Anchored = true
					end
				end
				wait(math.random(0.002,0.5))
				for i,v in pairs(speaker.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Anchored = false
					end
				end
			end
		else
			spamfreeze = false
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
		end
	end
})
local stun = Player4:AddToggle({
	Name = 'Stun',
	Flag = 'stunfunni',
	Keybind = {
		Flag = 'syuuf_stun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		addons1:stun(state) 
	end
})

stun2 = Player4:AddToggle({
	Name = 'Become Retarded',
	Flag = 'stunfunni1',
	Keybind = {
		Flag = 'syuufs_stun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		spamstun = state
		repeat
			char:FindFirstChildOfClass('Humanoid').PlatformStand = true
			wait(0.6)
			char:FindFirstChildOfClass('Humanoid').PlatformStand = false
		until spamstun == false
	end
})
stun2 = Player4:AddToggle({
	Name = 'Become Debris',
	Flag = 'stui1',
	Keybind = {
		Flag = 'becomdebries',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgg3 = workspace.Gravity
			workspace.Gravity = 0

			repeat task.wait() until getRoot(char)
			char:WaitForChild("Humanoid").PlatformStand = true
		else
			repeat task.wait() until getRoot(char)
			char:WaitForChild("Humanoid").PlatformStand = false
			workspace.Gravity = oldgg3
		end
	end
})


local HumanModCons = {}
autopar = Player4:AddToggle({
	Name = 'Auto Parkour',
	Flag = 'autopar2',
	Keybind = {
		Flag = 'autopar254',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local Char = speaker.Character
			local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
			local state
			local laststate
			local lastcf
			local function edgejump()
				if Char and Human then
					laststate = state
					state = Human:GetState()
					if laststate ~= state and state == Enum.HumanoidStateType.Freefall and laststate ~= Enum.HumanoidStateType.Jumping then
						Char.HumanoidRootPart.CFrame = lastcf
						Char.HumanoidRootPart.Velocity = Vector3.new(Char.HumanoidRootPart.Velocity.X, Human.JumpPower or Human.JumpHeight, Char.HumanoidRootPart.Velocity.Z)
					end
					lastcf = Char.HumanoidRootPart.CFrame
				end
			end
			edgejump()
			HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or RunService.RenderStepped:Connect(edgejump)
			HumanModCons.ejCA = (HumanModCons.ejCA and HumanModCons.ejCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
				Char, Human = nChar, nChar:WaitForChild("Humanoid")
				edgejump()
				HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or RunService.RenderStepped:Connect(edgejump)
			end)
		else
			HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or nil
			HumanModCons.ejCA = (HumanModCons.ejCA and HumanModCons.ejCA:Disconnect() and false) or nil
		end
	end
})
AutoAvoid = Player4:AddToggle({
	Name = 'Auto Avoid',
	Flag = 'AutoAvoid1',
	Keybind = {
		Flag = 'AutoAvoid2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local Char = speaker.Character
			local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
			local function autoJump()
				if Char and Human then
					local check1 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position-Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
					local check2 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position+Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
					if check1 or check2 then
						Human.Jump = true
					end
				end
			end
			autoJump()
			HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or RunService.RenderStepped:Connect(autoJump)
			HumanModCons.ajCA = (HumanModCons.ajCA and HumanModCons.ajCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
				Char, Human = nChar, nChar:WaitForChild("Humanoid")
				autoJump()
				HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or RunService.RenderStepped:Connect(autoJump)
			end)
		else
			HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or nil
			HumanModCons.ajCA = (HumanModCons.ajCA and HumanModCons.ajCA:Disconnect() and false) or nil
		end
	end
})


Light = Player4:AddToggle({
	Name = 'Light',
	Flag = 'Light1',
	Keybind = {
		Flag = 'Light2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			light = Instance.new("PointLight", getRoot(speaker.Character))
			light.Range = 30
			light.Brightness = 5
		else
			if light then light:Destroy() end
		end
	end
})
local BAV
SpinBot = Player4:AddToggle({
	Name = 'Spin Bot',
	Flag = 'SpinBot1',
	Keybind = {
		Flag = 'SpinBot2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			repeat task.wait() until getRoot(char)
			BAV = Instance.new("BodyAngularVelocity", speaker.character.HumanoidRootPart)
			BAV.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
			repeat task.wait()
				if BAV then
					BAV.AngularVelocity = Vector3.new(
						SpinX:Get() == true and SpinVal:Get() or 0,
						SpinY:Get() == true and SpinVal:Get() or 0,
						SpinZ:Get() == true and SpinVal:Get() or 0
					)
					BAV.P = SpinVal:Get()
				end
			until SpinBot:Get() == false
		else
			if BAV then 
				BAV:Destroy()
				BAV = nil
			end
		end
	end
})

SpinX = Player4:AddToggle({
	Name = 'Spin X',
	Flag = 'SpinX1',
	Callback = function() end
})
SpinY = Player4:AddToggle({
	Name = 'Spin Y',
	Flag = 'SpinY1',
	Value = true,
	Callback = function() end
})
SpinZ = Player4:AddToggle({
	Name = 'Spin Z',
	Flag = 'SpinZ1',
	Callback = function() end
})
SpinVal = Player4:AddSlider({
	Name = 'Spin Speed',
	Value = 20,
	Min = 1,
	Max = 1000,
	Textbox = true,
	Callback = function() end
})

AntiTool = Player4:AddToggle({
	Name = 'Anti Tool',
	Flag = 'AntiTool1',
	Keybind = {
		Flag = 'AntiTool2',
		Mode = 'Toggle',
	},

	Callback = function()
		speaker.Character.ChildAdded:Connect(function(rg)
			if rg:IsA("Tool") and AntiTool:Get() == true then
				task.wait()
				rg:Destroy()
			end
		end)
	end
})
AntiSit = Player4:AddToggle({
	Name = 'Anti Sit',
	Flag = 'AntiSit1',
	Keybind = {
		Flag = 'AntiSit2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat task.wait()
			if speaker.Character.Humanoid.Sit == true then
				wait(0.1)
				speaker.Character.Humanoid.Sit = false
			end
		until AntiSit:Get() == false
	end
})
AntiState = Player4:AddToggle({
	Name = 'Anti State',
	Flag = 'AntiState1',
	Keybind = {
		Flag = 'AntiState2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat task.wait()
			char:WaitForChild("Humanoid"):ChangeState(8)
		until AntiState:Get() == false
	end
})
antifling = false
antifling = Player4:AddToggle({
	Name = 'Anti Fling',
	Flag = 'antifling2',
	Keybind = {
		Flag = 'ahfu843',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antifling = true
			local function Collisionless(person)
				if antifling == true and person.Character then
					for _,child in pairs(person.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide then
							child.CanCollide = false
						end
					end
				end
			end
			for _,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= speaker then
					local antifling = game:GetService('RunService').Stepped:connect(function()
						Collisionless(v)
					end)
				end
			end
			game:GetService("Players").PlayerAdded:Connect(function()
				if v ~= speaker and antifling == true then
					local antifling = game:GetService('RunService').Stepped:connect(function()
						Collisionless(v)
					end)
				end
			end)
		else
			antifling = false
		end
	end
})
antinetorkclaim = Player4:AddToggle({
	Name = 'Anti Network Claim',
	Flag = 'antinetorkclaim',
	Keybind = {
		Flag = 'antinetorkclaim2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			DHSaved = workspace.FallenPartsDestroyHeight
			workspace.FallenPartsDestroyHeight = math.huge - math.huge
		else
			workspace.FallenPartsDestroyHeight = DHSaved
		end
	end
})
antivoid = Player4:AddToggle({
	Name = 'Anti Void',
	Flag = 'antinetorkclaimNO',
	Keybind = {
		Flag = 'antinetorkclaim3',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "_+-=3549+#4../dsf9jg9ieDf--{sADi9==(3|dfsd)" then
					v:Destroy()
				end
			end

			if getRoot(speaker.Character) then
				local antivoidpart = Instance.new("Part", Workspace)
				antivoidpart.Name = "_+-=3549+#4../dsf9jg9ieDf--{sADi9==(3|dfsd)"
				antivoidpart.Size = Vector3.new(50, 20, 50)
				antivoidpart.Transparency = 0.4
				antivoidpart.Color = Color3.fromRGB(1, 255, 255)
				antivoidpart.Material = 272
				antivoidpart.Anchored = true

				avcon = RunService.Stepped:Connect(function()
					local faggotWhyTheFuckItKeepErroring = speaker.Character.HumanoidRootPart.Position
					antivoidpart.CFrame = CFrame.new(faggotWhyTheFuckItKeepErroring.X, workspace.FallenPartsDestroyHeight + 10, faggotWhyTheFuckItKeepErroring.Z)
				end)
			

				antivoidpart.Touched:connect(function(nig)
					if nig.Parent:WaitForChild("Humanoid") and nig.Parent.Name == speaker.Name then
						local tppoijt = workspace.FallenPartsDestroyHeight
						speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, - tppoijt, 0)
						char.Humanoid:ChangeState("Jumping")
						wait(0.2)
						char.Humanoid:ChangeState("Jumping")
						wait(0.2)
						char.Humanoid:ChangeState("Jumping")
						wait(0.2)
						char.Humanoid:ChangeState("Jumping")
					end
				end)
			else
				antivoid:Set(false)
				Notify({
					Title = "Anti Void",
					Description = "no character found",
					Duration = 4
				})
			end
		else
			if avcon then avcon:Disconnect() end
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "_+-=3549+#4../dsf9jg9ieDf--{sADi9==(3|dfsd)" then
					v:Destroy()
				end
			end
		end
	end
})

antirender = Player4:AddToggle({
	Name = 'Anti Render',
	Flag = 'antirender',
	Keybind = {
		Flag = 'antirender2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			RunService:Set3dRenderingEnabled(false)
		else
			RunService:Set3dRenderingEnabled(true)
		end
	end
})
antirotation = Player4:AddToggle({
	Name = 'Anti Rotate',
	Flag = 'antirotation',
	Keybind = {
		Flag = 'antirotation2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate = false
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate = true
		end 
	end
})
antifreeze = Player4:AddToggle({
	Name = 'Anti Freeze',
	Flag = 'antifreeze1',
	Keybind = {
		Flag = 'antifreeze2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			RunLoops:BindToStepped("Anti Freeze", 1, function()
				if getRoot(speaker.Character) then
					for i,v in pairs(speaker.Character:GetChildren()) do
						if v:IsA("BasePart") then
							v.Anchored = false
						end
					end
				end
			end)
		else
			RunLoops:UnbindFromStepped("Anti Freeze")
		end
	end
})
antiafk = Player4:AddToggle({
	Name = 'Anti Afk',
	Flag = 'anticajsd',
	Keybind = {
		Flag = 'ant4ion2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			pcall(function()
				for i,v in next, getconnections(speaker.Idled) do
					v:Disable()
				end
			end)
		else
			pcall(function()
				for i,v in next, getconnections(speaker.Idled) do
					v:Enable()
				end
			end)
		end
	end
})
antiafk2 = Player4:AddToggle({
	Name = 'Anti Windows Afk',
	Flag = 'anticajsd2',
	Keybind = {
		Flag = 'ant4ion22',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if cpuAssist:Get() == true then
				antiafk2:Set(false)
				Notify({
					Title = "Anti Windows Afk",
					Description = "CPU Assist is active",
					Duration = 2
				})
				return
			end
			for _,v in pairs(getconnections(UIS.WindowFocused)) do v:Disable() end
			for _,v in pairs(getconnections(UIS.WindowFocusReleased)) do v:Disable() end
		else
			for _,v in pairs(getconnections(UIS.WindowFocused)) do v:Enable() end
			for _,v in pairs(getconnections(UIS.WindowFocusReleased)) do v:Enable() end
		end
	end
})

AutoReset = Player5:AddToggle({
	Name = "Auto Reset",
	Flag = "AutoReset1",
	Keybind = {
		Flag = 'AutoReset2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat wait()
			if speaker.Character:WaitForChild("Humanoid").Health < HealthTresh:Get() then
				speaker.Character:BreakJoints()
			end
		until AutoReset:Get() == false
	end
})
AutoRefresh = Player5:AddToggle({
	Name = "Auto Refresh",
	Flag = "AutoRefresh1",
	Keybind = {
		Flag = 'AutoRefresh2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat wait()
			if speaker.Character:WaitForChild("Humanoid").Health < HealthTresh:Get() then
				refresh(speaker)
			end
		until AutoReset:Get() == false
	end
})


HealthShow = Player5:AddToggle({
	Name = 'Display Health',
	Flag = 'HealthShow1',
	Keybind = {
		Flag = 'HealthShow2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			HealthText = Drawing.new("Text")
			HealthText.Size = 20
			HealthText.Text = [[100 HP]]
			HealthText.Position = Vector2.new(0, 0)
			HealthText.Color = Color3.fromRGB(0, 255, 0)
			HealthText.Center = true
			HealthText.Visible = true

			repeat
				if getRoot(char) then
					HealthText.Text = tostring(math.round(speaker.character.Humanoid.Health)).." HP"
					HealthText.Color = Color3.fromHSV(math.clamp(speaker.character.Humanoid.Health / speaker.character.Humanoid.MaxHealth, 0, 1) / 2.5, 0.89, 1)
				end
				HealthText.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2 + 70)
				task.wait(0.1)
			until HealthShow:Get() == false
		else
			if HealthText then HealthText:Remove() end
		end
	end
})

local SetUpHeaven
local function onState(old, new)
	if new == Enum.HumanoidStateType.Dead then
		repeat
			task.wait()
			speaker.Character.HumanoidRootPart.Anchored = true
			speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0)
		until ({pcall(function() return not speaker.Character.Humanoid:GetState() == Enum.HumanoidStateType.Dead end)})[2] == true
	end
end

local function DoHeaven()
	if not speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		repeat
			task.wait()
		until speaker.Character:FindFirstChildWhichIsA("Humanoid")
	end
	SetUpHeaven = speaker.Character:FindFirstChildWhichIsA("Humanoid").StateChanged:Connect(function(old, new)
		if heaven:Get() == true then
			pcall(onState, old, new)
			SetUpHeaven:Disconnect()
			DoHeaven()
		end
	end)
end


heaven = Player5:AddToggle({
	Name = 'Heaven',
	Flag = 'heaven1',
	Keybind = {
		Flag = 'heaven2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			repeat
				task.wait()
			until getRoot(char)
			pcall(DoHeaven)
		else
			SetUpHeaven:Disconnect()
		end
	end
})

HealthTresh = Player5:AddSlider({
	Name = 'Health Treshold',
	Value = speaker.Character:WaitForChild("Humanoid").MaxHealth / 2,
	Min = 1,
	Max = speaker.Character:WaitForChild("Humanoid").MaxHealth - 1,
	Callback = function() end
})

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}

NAV_GAIN = Vector3.new(1, 1, 1) * 64
PAN_GAIN = Vector2.new(0.75, 1) * 8
FOV_GAIN = 300

PITCH_LIMIT = math.rad(90)

VEL_STIFFNESS = 1.5
PAN_STIFFNESS = 1.0
FOV_STIFFNESS = 4.0

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos * 0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f * 2 * math.pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = math.exp(- f * dt)

		local p1 = goal + (v0 * dt - offset * (f * dt + 1)) * decay
		local v1 = (f * dt * (offset * f - v0) + v0) * decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

cameraPos = Vector3.new()
cameraRot = Vector2.new()
cameraFov = 0

velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
fovSpring = Spring.new(FOV_STIFFNESS, 0)

Input = {} do
	local thumbstickCurve do
		K_CURVATURE = 2.0
		K_DEADZONE = 0.15

		function fCurve(x)
			return (math.exp(K_CURVATURE * x) - 1) / (math.exp(K_CURVATURE) - 1)
		end

		function fDeadzone(x)
			return fCurve((x - K_DEADZONE) / (1 - K_DEADZONE))
		end

		function thumbstickCurve(x)
			return math.sign(x) * math.clamp(fDeadzone(math.abs(x)), 0, 1)
		end
	end

	gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1) -- speed
	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1) -- speed
	PAN_MOUSE_SPEED    = Vector2.new(1, 1) * (math.pi / 64) -- sensitivity
	PAN_GAMEPAD_SPEED  = Vector2.new(1, 1) * (math.pi / 8) -- sensitivity
	FOV_WHEEL_SPEED    = 1.0 -- fov mult
	FOV_GAMEPAD_SPEED  = 0.25 -- idk
	NAV_ADJ_SPEED      = 0.75 -- idk
	NAV_SHIFT_MUL      = 0.25 -- shift slow

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = math.clamp(navSpeed + dt * (keyboard.Up - keyboard.Down) * NAV_ADJ_SPEED, 0.01, 4)

		kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.x),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve( - gamepad.Thumbstick1.y)
		) * NAV_GAMEPAD_SPEED

		kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		) * NAV_KEYBOARD_SPEED

		shift = UIS:IsKeyDown(Enum.KeyCode.LeftShift) or UIS:IsKeyDown(Enum.KeyCode.RightShift)

		return (kGamepad + kKeyboard) * (navSpeed * (shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.y),
			thumbstickCurve( - gamepad.Thumbstick2.x)
		) * PAN_GAMEPAD_SPEED
		kMouse = mouse.Delta * PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		kGamepad = (gamepad.ButtonX - gamepad.ButtonY) * FOV_GAMEPAD_SPEED
		kMouse = mouse.MouseWheel * FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			delta = input.Delta
			mouse.Delta = Vector2.new(- delta.y, - delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
		end

		function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
		end

		function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = - input.Position.z
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			CAS:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
				Enum.KeyCode.W, Enum.KeyCode.U,
				Enum.KeyCode.A, Enum.KeyCode.H,
				Enum.KeyCode.S, Enum.KeyCode.J,
				Enum.KeyCode.D, Enum.KeyCode.K,
				Enum.KeyCode.E, Enum.KeyCode.I,
				Enum.KeyCode.Q, Enum.KeyCode.Y,
				Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			CAS:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			CAS:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			CAS:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			CAS:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			CAS:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			CAS:UnbindAction("FreecamKeyboard")
			CAS:UnbindAction("FreecamMousePan")
			CAS:UnbindAction("FreecamMouseWheel")
			CAS:UnbindAction("FreecamGamepadButton")
			CAS:UnbindAction("FreecamGamepadTrigger")
			CAS:UnbindAction("FreecamGamepadThumbstick")
		end
	end
end

function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2 * math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset * znear
			local _, hit = Workspace:FindPartOnRay(Ray.new(origin, offset.unit * minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end
	return fz:Dot(minVect) * minDist
end

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))

	local zoomFactor = math.sqrt(math.tan(math.rad(70 / 2)) / math.tan(math.rad(cameraFov / 2)))

	cameraFov = math.clamp(cameraFov + fov * FOV_GAIN * (dt/zoomFactor), 1, 120)
	cameraRot = cameraRot + pan * PAN_GAIN * (dt/zoomFactor)
	cameraRot = Vector2.new(math.clamp(cameraRot.x, - PITCH_LIMIT, PITCH_LIMIT), cameraRot.y% (2 * math.pi))

	local cameraCFrame = CFrame.new(cameraPos) * CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0) * CFrame.new(vel * NAV_GAIN * dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame * CFrame.new(0, 0, - GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView =  ""
	screenGuis = {}

	function PlayerState.Push()
		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UIS.MouseIconEnabled
		UIS.MouseIconEnabled = true

		mouseBehavior = UIS.MouseBehavior
		UIS.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		Camera.FieldOfView = 70

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UIS.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UIS.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

function StartFreecam(p)
	local cameraCFrame = Camera.CFrame
	if p then
		cameraCFrame = p
	end
	cameraRot = Vector2.new()
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

function StopFreecam()
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
end

FreecamOn = false
FreeCam = Player6:AddToggle({
	Name = 'Enabled',
	Flag = 'FreeCam1',
	Keybind = {
		Flag = 'FreeCam2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			StartFreecam()
			wait(0.1)
			FreecamOn = true
		else
			StopFreecam()
			wait(0.1)
			FreecamOn = false
		end
	end
})

FC_Speed = Player6:AddSlider({
	Name = 'Speed',
	Value = 3,
	Min = 1,
	Max = 250,
	Textbox = true,
	Callback = function(x)
		NAV_GAMEPAD_SPEED  = Vector3.new(x, x, x) 
		NAV_KEYBOARD_SPEED = Vector3.new(x, x, x) 
	end
})
FC_Sensitivity = Player6:AddSlider({
	Name = 'Sensitivity',
	Value = 1,
	Min = 1,
	Max = 30,
	Textbox = true,
	Callback = function(x)
		PAN_MOUSE_SPEED   = Vector2.new(x, x) * (math.pi / 64)
		PAN_GAMEPAD_SPEED = Vector2.new(x, x) * (math.pi / 8)
	end
})
FC_FovScroll = Player6:AddSlider({
	Name = 'Fov Scroll Speed',
	Value = 1.0,
	Min = 1.0,
	Max = 9.0,
	Textbox = true,
	Callback = function(x)
		FOV_WHEEL_SPEED = x
	end
})
FC_FovScroll = Player6:AddSlider({
	Name = 'Shift Speed',
	Value = 0.20,
	Min = 0.10,
	Max = 3.0,
	Textbox = true,
	Callback = function(x)
		NAV_SHIFT_MUL = x
	end
})


unlockcam = Visuals1:AddToggle({
	Name = 'Unlock Camera',
	Flag = 'unlockcam2',
	Keybind = {
		Flag = 'unlockcam5',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			origin_CameraMaxZoomDistance = speaker.CameraMaxZoomDistance
			origin_CameraMinZoomDistance = speaker.CameraMinZoomDistance

			speaker.CameraMaxZoomDistance = math.huge
			speaker.CameraMinZoomDistance = 0
		else
			speaker.CameraMinZoomDistance = origin_CameraMinZoomDistance
			speaker.CameraMaxZoomDistance = origin_CameraMaxZoomDistance
		end
	end
})
lockfp = Visuals1:AddToggle({
	Name = 'First Person',
	Flag = 'lockfp2',
	Keybind = {
		Flag = 'lockfp3',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.CameraMode = "LockFirstPerson"
		else
			speaker.CameraMode = "Classic"
		end
	end
})
viewclip = Visuals1:AddToggle({
	Name = 'View Clip',
	Flag = 'rdfgsgdygdf',
	Keybind = {
		Flag = 'viewclip67',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.DevCameraOcclusionMode = "Invisicam"
		else
			speaker.DevCameraOcclusionMode = "Zoom"
		end
	end
})
nobuyshit = Visuals1:AddToggle({
	Name = 'No Purchase Prompt',
	Flag = 'nobuyshit2',

	Callback = function( state )
		addons1:NoPayPrompt(state)
	end
})
textures20223 = Visuals1:AddToggle({
	Name = [[2022 Materials]],
	Flag = 'mmatsi3rfjsdf',

	Callback = function( state )
		if ( state ) then
			if sethiddenproperty then
				sethiddenproperty(MaterialService, "Use2022Materials", true)
			else
				textures20223:Set(false)
				missingFunc("sethiddenproperty")
			end
		else
			sethiddenproperty(MaterialService, "Use2022Materials", false)
		end
	end
})

local lightstuff = Visuals1:CreateLabel({
	Text = 'Lighting'
})

local fb1 = Visuals1:AddButton({
	Name = "Full Bright",
	Callback = function()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end
})
fb1 = Visuals1:AddToggle({
	Name = 'Loop Full Bright',
	Flag = 'loopb2',
	Keybind = {
		Flag = 'loopb2f',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if brightLoop then
				brightLoop:Disconnect()
			end
			local function brightFunc()
				Lighting.Brightness = 2
				Lighting.ClockTime = 14
				Lighting.FogEnd = 100000
				Lighting.GlobalShadows = false
				Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			end
		
			brightLoop = RunService.RenderStepped:Connect(brightFunc)
		else
			if brightLoop then
				brightLoop:Disconnect()
			end
		end
	end
})
dgs = Visuals1:AddToggle({
	Name = 'Disable Global Shadows',
	Value = false,
	Flag = 'fgh743',
	Locked = false,

	Callback = function( state )
		Lighting.GlobalShadows = state
	end
})
local nofog = Visuals1:AddButton({
	Name = "No Fog",
	Callback = function()
		Lighting.FogEnd = 100000
		for i,v in pairs(Lighting:GetDescendants()) do
			if v:IsA("Atmosphere") then
				v:Destroy()
			end
		end
	end
})
SavedLightingSettings = {
	abt = Lighting.Ambient,
	oabt = Lighting.OutdoorAmbient,
	brt = Lighting.Brightness,
	time = Lighting.ClockTime,
	fe = Lighting.FogEnd,
	fs = Lighting.FogStart,
	gs = Lighting.GlobalShadows
}
local restorelighting = Visuals1:AddButton({
	Name = "Save Lighting",
	Callback = function()
		SavedLightingSettings.abt = Lighting.Ambient
		SavedLightingSettings.oabt = Lighting.OutdoorAmbient
		SavedLightingSettings.brt = Lighting.Brightness
		SavedLightingSettings.time = Lighting.ClockTime
		SavedLightingSettings.fe = Lighting.FogEnd
		SavedLightingSettings.fs = Lighting.FogStart
		SavedLightingSettings.gs = Lighting.GlobalShadows
	end
})
local lightstuff222 = Visuals1:CreateLabel({
	Text = 'if you have not clicked '
})
local lightstuff222z = Visuals1:CreateLabel({
	Text = 'Save Lighting, '
})
local lightstuff222z1 = Visuals1:CreateLabel({
	Text = 'it will restore lighting '
})
local restorelighting = Visuals1:AddButton({
	Name = "Load Lighting",
	Callback = function()
		Lighting.Ambient = SavedLightingSettings.abt
		Lighting.OutdoorAmbient = SavedLightingSettings.oabt
		Lighting.Brightness = SavedLightingSettings.brt
		Lighting.ClockTime = SavedLightingSettings.time
		Lighting.FogEnd = SavedLightingSettings.fe
		Lighting.FogStart = SavedLightingSettings.fs
		Lighting.GlobalShadows = SavedLightingSettings.gs
	end
})


local lightstuff = Visuals1:CreateLabel({
	Text = 'World'
})
local removeskybox = Visuals1:AddButton({
	Name = "Remove Sky Box",
	Callback = function()
		for i, v in pairs(game.Lighting:GetDescendants()) do
			if v:IsA("Sky") then
				v.Parent:Destroy()
			end
		end
	end
})
local day1 = Visuals1:AddButton({
	Name = "Day",
	Callback = function()
		Lighting.ClockTime = 14
	end
})
local night1 = Visuals1:AddButton({
	Name = "Night",
	Callback = function()
		Lighting.ClockTime = 0
	end
})

CustomTime = Visuals1:AddSlider({
	Name = 'Custom Time',
	Flag = "custom_ytime",
	Value = math.floor(Lighting.ClockTime),
	Min = 0,
	Max = 25,
	Decimals = 2,
	Textbox = true,
	Callback = function(x)
		Lighting.ClockTime = x
	end
})

femboymodeuwu = Visuals1:AddToggle({
	Name = 'Femboy Mode',
	Flag = 'femodeuwu2',
	Keybind = {
		Flag = 'fembeuwu54',
		Mode = 'Toggle',
	},

	Callback = function( state )
		addons1:FemMode(state)
	end
})

function lesslag()
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		coroutine.wrap(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end)
end

local lesslag = Visuals1:AddButton({
	Name = "Less lag",
	Callback = function()
		lesslag()
	end
})

local fixcam = Visuals1:AddButton({
	Name = "Fix Camera",
	Callback = function()
		StopFreecam()
		freecam3:Set(false)
		workspace.CurrentCamera:remove()
		wait(.1)
		repeat wait() until speaker.Character ~= nil
		workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
		workspace.CurrentCamera.CameraType = "Custom"
		speaker.CameraMinZoomDistance = 0.5
		speaker.CameraMaxZoomDistance = 400
		speaker.CameraMode = "Classic"
		speaker.Character.Head.Anchored = false
	end
})


local shownParts = {}
local invisparts = Visuals1:AddToggle({
	Name = 'Show invis Parts',
	Flag = 'infidsd87y',
	Keybind = {
		Flag = 'asfr453eernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and v.Transparency == 1 then
					if not table.find(shownParts,v) then
						table.insert(shownParts,v)
					end
					v.Transparency = 0
				end
			end
		else
			for i,v in pairs(shownParts) do
				v.Transparency = 1
			end
			shownParts = {}
		end
	end
})

local transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = xraychams:Get()
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end
XRay = Visuals1:AddToggle({
	Name = 'XRay',
	Flag = 'XRay1',
	Keybind = {
		Flag = 'XRay2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			transparent = true
			x(transparent)
		else
			transparent = false
			x(transparent)
		end
	end
})
xraychams = Visuals1:AddSlider({
	Name = 'Xray Transparency',
	Flag = "s5tg_yoiDMldni4s",
	Value = 0.5,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function() end
})

local RemoveAds2 = Visuals1:AddButton({
	Name = "Remove Surface Guis",
	Callback = function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("SurfaceGui") then
				v:Destroy()
			end
		end
	end
})
local RemoveAds3 = Visuals1:AddButton({
	Name = "Remove Billboard Guis",
	Callback = function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BillboardGui") then
				v:Destroy()
			end
		end
	end
})
local RemoveAds = Visuals1:AddButton({
	Name = "Remove Paid Ads",
	Callback = function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("PackageLink") then
				v.Parent:Destroy()
			end
		end
	end
})

function clear_custom_skybox()
	for i,v in pairs(Lighting:GetChildren()) do
		if v.Name == "Night_Sky_OUT" or
		v.Name == "BIG_BLACK_DUDE_OUT" or
		v.Name == "ORANGE_SUNSET_OUT" or
		v.Name == "SNOWY_SKY_OUT" or
		v.Name == "VOIDAL_OUT" or
		v.Name == "PURPLE_SUNSET_OUT" or
		v.Name == "SPACE_SKYBOX_BACLK_OUT" or
		v.Name == "NIGULA_OUT" or
		v.Name == "NIGULA2_OUT" or
		v.Name == "STORMMY_OUT" or
		v.Name == "JEFF_THE_NIGGA_OUT" or
		v.Name == "LONG_NOSE_NIGGA" then
			v:Destroy()
		end
	end
end

local skybox = Visuals1:AddDropdown({
	Name = 'Custom SkyBox',
	Flag = "sdsfsdfsue",
	List = {
		"No Skybox",
		"Night Sky",
		"Orange Sunset",
		"Snowy Sky",
		"Void Sky",
		"Purple Sunset",
		"Purple Nebula",
		"Green Nebula",
		"Stormy",
		":)))))))))",
		"QUANDALE DINGLE",
		"Big Black ̶n̶i̶g̶g̶a̶  dude"
	},
	Callback = function( skybox )
		if skybox == "Night Sky" then
			clear_custom_skybox()
			local nightsky_skybox = Instance.new("Sky")
			nightsky_skybox.Parent = Lighting
			nightsky_skybox.Name = "Night_Sky_OUT"
			nightsky_skybox.CelestialBodiesShown = false
			nightsky_skybox.MoonAngularSize = 11
			nightsky_skybox.SkyboxBk = "http://www.roblox.com/Asset/?ID=12064107"
			nightsky_skybox.SkyboxDn = "http://www.roblox.com/Asset/?ID=12064152"
			nightsky_skybox.SkyboxFt = "http://www.roblox.com/Asset/?ID=12064121"
			nightsky_skybox.SkyboxLf = "http://www.roblox.com/Asset/?ID=12063984"
			nightsky_skybox.SkyboxRt = "http://www.roblox.com/Asset/?ID=12064115"
			nightsky_skybox.SkyboxUp = "http://www.roblox.com/Asset/?ID=12064131"
			nightsky_skybox.StarCount = 0
			nightsky_skybox.SunAngularSize = 21

		elseif skybox == "Big Black ̶n̶i̶g̶g̶a̶  dude" then
			clear_custom_skybox()
			local blackdude_skybox = Instance.new("Sky")
			blackdude_skybox.Parent = Lighting
			blackdude_skybox.Name = "BIG_BLACK_DUDE_OUT"
			blackdude_skybox.CelestialBodiesShown = true
			blackdude_skybox.MoonAngularSize = 11
			blackdude_skybox.MoonTextureId = "rbxassetid://10017359424"
			blackdude_skybox.SunTextureId = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxBk = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxDn = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxFt = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxLf = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxRt = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxUp = "rbxassetid://10017359424"
			blackdude_skybox.StarCount = 3000
			blackdude_skybox.SunAngularSize = 21

		elseif skybox == "Orange Sunset" then
			clear_custom_skybox()
			local OrangeSunset_skybox = Instance.new("Sky")
			OrangeSunset_skybox.Parent = Lighting
			OrangeSunset_skybox.Name = "ORANGE_SUNSET_OUT"
			OrangeSunset_skybox.CelestialBodiesShown = true
			OrangeSunset_skybox.MoonAngularSize = 11
			OrangeSunset_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			OrangeSunset_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			OrangeSunset_skybox.SkyboxBk = "rbxassetid://600830446"
			OrangeSunset_skybox.SkyboxDn = "rbxassetid://600831635"
			OrangeSunset_skybox.SkyboxFt = "rbxassetid://600832720"
			OrangeSunset_skybox.SkyboxLf = "rbxassetid://600886090"
			OrangeSunset_skybox.SkyboxRt = "rbxassetid://600833862"
			OrangeSunset_skybox.SkyboxUp = "rbxassetid://600835177"
			OrangeSunset_skybox.StarCount = 3000
			OrangeSunset_skybox.SunAngularSize = 21

		elseif skybox == "Snowy Sky" then
			clear_custom_skybox()
			local SnowySky_skybox = Instance.new("Sky")
			SnowySky_skybox.Parent = Lighting
			SnowySky_skybox.Name = "SNOWY_SKY_OUT"
			SnowySky_skybox.CelestialBodiesShown = false
			SnowySky_skybox.MoonAngularSize = 11
			SnowySky_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			SnowySky_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			SnowySky_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=155657655"
			SnowySky_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=155674246"
			SnowySky_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=155657609"
			SnowySky_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=155657671"
			SnowySky_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=155657619"
			SnowySky_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=155674931"
			SnowySky_skybox.StarCount = 3000
			SnowySky_skybox.SunAngularSize = 21

		elseif skybox == "Void Sky" then
			clear_custom_skybox()
			local voidal_skybox = Instance.new("Sky")
			voidal_skybox.Parent = Lighting
			voidal_skybox.Name = "VOIDAL_OUT"
			voidal_skybox.CelestialBodiesShown = true
			voidal_skybox.MoonAngularSize = 11
			voidal_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			voidal_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			voidal_skybox.SkyboxBk = "rbxassetid://6847661057"
			voidal_skybox.SkyboxDn = "rbxassetid://6847661380"
			voidal_skybox.SkyboxFt = "rbxassetid://6847661671"
			voidal_skybox.SkyboxLf = "rbxassetid://6847661950"
			voidal_skybox.SkyboxRt = "rbxassetid://6847665479"
			voidal_skybox.SkyboxUp = "rbxassetid://6847663751"
			voidal_skybox.StarCount = 3000
			voidal_skybox.SunAngularSize = 21

		elseif skybox == "Purple Sunset" then
			clear_custom_skybox()
			local PurpleSunset_skybox = Instance.new("Sky")
			PurpleSunset_skybox.Parent = Lighting
			PurpleSunset_skybox.Name = "PURPLE_SUNSET_OUT"
			PurpleSunset_skybox.CelestialBodiesShown = false
			PurpleSunset_skybox.MoonAngularSize = 11
			PurpleSunset_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			PurpleSunset_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			PurpleSunset_skybox.SkyboxBk = "rbxassetid://264908339"
			PurpleSunset_skybox.SkyboxDn = "rbxassetid://264907909"
			PurpleSunset_skybox.SkyboxFt = "rbxassetid://264909420"
			PurpleSunset_skybox.SkyboxLf = "rbxassetid://264909758"
			PurpleSunset_skybox.SkyboxRt = "rbxassetid://264908886"
			PurpleSunset_skybox.SkyboxUp = "rbxassetid://264907379"
			PurpleSunset_skybox.StarCount = 3000
			PurpleSunset_skybox.SunAngularSize = 21

		elseif skybox == "Green Nebula" then
			clear_custom_skybox()
			local Nebula2_skybox = Instance.new("Sky")
			Nebula2_skybox.Parent = Lighting
			Nebula2_skybox.Name = "NIGULA2_OUT"
			Nebula2_skybox.CelestialBodiesShown = false
			Nebula2_skybox.MoonAngularSize = 11
			Nebula2_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Nebula2_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Nebula2_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159248188"
			Nebula2_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159248183"
			Nebula2_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159248187"
			Nebula2_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159248173"
			Nebula2_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159248192"
			Nebula2_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159248176"
			Nebula2_skybox.StarCount = 0
			Nebula2_skybox.SunAngularSize = 21

		elseif skybox == "Purple Nebula" then
			clear_custom_skybox()
			local Nebula_skybox = Instance.new("Sky")
			Nebula_skybox.Parent = Lighting
			Nebula_skybox.Name = "NIGULA_OUT"
			Nebula_skybox.CelestialBodiesShown = false
			Nebula_skybox.MoonAngularSize = 11
			Nebula_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Nebula_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Nebula_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159454299"
			Nebula_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159454296"
			Nebula_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159454293"
			Nebula_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159454286"
			Nebula_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159454300"
			Nebula_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
			Nebula_skybox.StarCount = 0
			Nebula_skybox.SunAngularSize = 21

		elseif skybox == "Stormy" then
			clear_custom_skybox()
			local Stormy_skybox = Instance.new("Sky")
			Stormy_skybox.Parent = Lighting
			Stormy_skybox.Name = "STORMMY_OUT"
			Stormy_skybox.CelestialBodiesShown = false
			Stormy_skybox.MoonAngularSize = 11
			Stormy_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Stormy_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Stormy_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=48015734"
			Stormy_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=48015300"
			Stormy_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=48015344"
			Stormy_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=48015327"
			Stormy_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=48015359"
			Stormy_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=48015387"
			Stormy_skybox.StarCount = 3000
			Stormy_skybox.SunAngularSize = 21

		elseif skybox == ":)))))))))" then
			clear_custom_skybox()
			local scarry_skybox = Instance.new("Sky")
			scarry_skybox.Parent = Lighting
			scarry_skybox.Name = "JEFF_THE_NIGGA_OUT"
			scarry_skybox.CelestialBodiesShown = false
			scarry_skybox.MoonAngularSize = 11
			scarry_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			scarry_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			scarry_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.StarCount = 3000
			scarry_skybox.SunAngularSize = 21

		elseif skybox == "QUANDALE DINGLE" then
			clear_custom_skybox()
			local QUANDALE_skybox = Instance.new("Sky")
			QUANDALE_skybox.Parent = Lighting
			QUANDALE_skybox.Name = "LONG_NOSE_NIGGA"
			QUANDALE_skybox.CelestialBodiesShown = true
			QUANDALE_skybox.MoonAngularSize = 11
			QUANDALE_skybox.MoonTextureId = "rbxassetid://9065554720"
			QUANDALE_skybox.SunTextureId = "rbxassetid://6196665106"
			QUANDALE_skybox.SkyboxBk = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxDn = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxFt = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxLf = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxRt = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxUp = "rbxassetid://9065554720"
			QUANDALE_skybox.StarCount = 3000
			QUANDALE_skybox.SunAngularSize = 11
			
		elseif skybox == "No Skybox" then
			clear_custom_skybox()
		end
	end
})

iconsMouse = Visuals1:AddDropdown({
	Name = 'Custom Crosshair',
	Flag = "mousieidvd",
	List = {"None", "CSGO", "Dot", "Three", "Tri", "Cross", "Chevron"},
	Callback = function(crosshair)
		if crosshair == "None" then
			Mouse.Icon = ""
		elseif crosshair == "CSGO" then
			Mouse.Icon = "rbxassetid://9942607125"
		elseif crosshair == "Dot" then
			Mouse.Icon = "rbxassetid://9943092654"
		elseif crosshair == "Three" then
			Mouse.Icon = "rbxassetid://9943167055"
		elseif crosshair == "Tri" then
			Mouse.Icon = "rbxassetid://9948357128"
		elseif crosshair == "Cross" then
			Mouse.Icon = "rbxassetid://9943168532"
		elseif crosshair == "Chevron" then
			Mouse.Icon = "rbxassetid://9948124812"
		end
	end
})


spoof_notifs = false
nickfer = Visuals2:AddTextbox({
	Name = 'Dislay Name',
	Value = speaker.DisplayName,
	Multiline = true,
	Callback = function( x )
		speaker.DisplayName = x
		if spoof_notifs == true then
			Notify({
				Title = "Spoofer",
				Description = "Your Display Name is now " .. tostring(x).." \nHover over leaderboard to see change",
				Duration = 4
			})
		end
	end
})
namespoofer = Visuals2:AddTextbox({
	Name = 'User Name',
	Value = speaker.Name,
	Multiline = true,
	Callback = function( x )
		speaker.Name = x
		if spoof_notifs == true then
			Notify({
				Title = "Spoofer",
				Description = "Your User Name is now " .. tostring(x).." \nHover over leaderboard to see change",
				Duration = 4
			})
		end
	end
})
osspoofers = Visuals2:AddTextbox({
	Name = 'Operating system',
	Value = speaker.OsPlatform,
	Multiline = true,
	Callback = function( x )
		speaker.OsPlatform = x
		if spoof_notifs == true then
			Notify({
				Title = "Spoofer",
				Description = "Your Operating system is now " .. tostring(x),
				Duration = 4
			})
		end
	end
})
cvhamslable = Visuals2:CreateLabel({
	Text = 'contant change my break'
})
spoofhwids2 = Visuals2:AddButton({
	Name = "Spoof Client Id",
	Callback = function()
		Library.Prompt({
			Name = "Spoof Client Id",
			Text = "clicking this more that once WILL CRASH",
			Buttons = {
				Yes = function()
					local spoofedid = math.random(1,1000000000)
					Notify({
						Title = "Spoofer",
						Description = "Your Client Id is now "..spoofedid,
						Duration = 4
					})
					local mt = getrawmetatable(game)
					_G.clid = mt.__namecall
					setreadonly(mt, false)
					local genid = spoofedid
					mt.__namecall = newcclosure(function(self, ...)
						if getnamecallmethod() == 'GetClientId' then 
							return genid
						end
							return _G.clid(self, ...)
					end)
					setreadonly(mt, true)
				end,
				No = function()
					return
				end
			}
		})	
	end
})
cvhamslabl2e = Visuals2:CreateLabel({
	Text = 'ONLY CLICK THIS ONCE'
})

spoof_notifs = true
local cvhamslable = Visuals3:CreateLabel({
	Text = 'Chams'
})
local ChamSettings = {
	FillColor = Color3.new(1, 0.666667, 0);
	FillTransparency = 0;
	OutlineColor = Color3.new(1, 0.333333, 1);
	OutlineTransparency = 0;
};

cgamesopCHAMS = Visuals3:AddToggle({
	Name = 'Chams',
	Value = false,
	Flag = 'rdiuygdf',
	Locked = false,
	Keybind = {
		Flag = 'as546frug453eerndf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local players = game.Players:GetPlayers()
			for i,v in pairs(players) do
			 	local espCHAMS__OLD = Instance.new("Highlight")
			 	espCHAMS__OLD.Name = "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf"
			 	espCHAMS__OLD.FillTransparency = ChamSettings.FillTransparency
			 	espCHAMS__OLD.FillColor = ChamSettings.FillColor
			 	espCHAMS__OLD.OutlineColor = ChamSettings.OutlineColor
			 	espCHAMS__OLD.OutlineTransparency = ChamSettings.OutlineTransparency
			 	espCHAMS__OLD.Parent = v.Character
			end
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v.Name == "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf" then
					v:Destroy()
				end
			end
		end
	end
})
CockerChalorPimdfu = Visuals3:AddColorPicker({
	Name = "Fill Color",
	Value = ChamSettings.FillColor,
	Callback = function( color )
		ChamSettings.FillColor = color
	end
})
CeroChamdfkloru = Visuals3:AddColorPicker({
	Name = "Outline Color",
	Value = ChamSettings.OutlineColor,
	Callback = function( color )
		ChamSettings.OutlineColor = color
	end
})
chamtransda1 = Visuals3:AddSlider({
	Name = 'Fill Transparency',
	Flag = "sli45tgdn_yoDMis",
	Value = ChamSettings.FillTransparency,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		ChamSettings.FillTransparency = y
	end
})
chamtransda2 = Visuals3:AddSlider({
	Name = 'Outline Transparency',
	Flag = "sl4tooi8ytrr_DMs",
	Value = ChamSettings.OutlineTransparency,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		ChamSettings.OutlineTransparency = y
	end
})
--[[
i4rdgdhgdfgh = Visuals3:CreateLabel({
	Text = 'Old Esp'
})

ESPboxToggle4 = Visuals3:AddToggle({
	Name = 'Boxes',
	Value = false,
	Flag = '54r',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Boxes = true
		else
			ESP.Boxes = false
		end
	end
})

ESPboxToggle3 = Visuals3:AddToggle({
	Name = 'Tracers',
	Value = false,
	Flag = 'rdvf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Tracers = true
		else
			ESP.Tracers = false
		end
	end
})

ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'Names',
	Value = false,
	Flag = 'h6rhfgch1',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Names = true
		else
			ESP.Names = false
		end
	end
})


ColorPicker = Visuals3:AddColorPicker({
	Name = "Esp color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		ESP.Color = x
	end
})

ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'FaceCamera',
	Value = false,
	Flag = 'h6rhfgch',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.FaceCamera = true
		else
			ESP.FaceCamera = false
		end
	end
})


local ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'Use Team Color',
	Value = false,
	Flag = 'h6rhfgch2',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.TeamColor = true
		else
			ESP.TeamColor = false
		end
	end
})

local ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'TeamMates',
	Value = true,
	Flag = 'h6rhfgch3',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.TeamMates = true
		else
			ESP.TeamMates = false
		end
	end
})

i4rddfg2h = Visuals3:CreateLabel({
	Text = 'Classic Esp'
})
function Create(xPlayer, xHead)
	local ESP = Instance.new("BillboardGui", speaker.PlayerGui)
	local ESPSquare = Instance.new("Frame", ESP)
	local ESPText = Instance.new("TextLabel", ESP)
	ESP.Name = "ESP"..xPlayer.Name
	ESP.Adornee = xHead
	ESP.AlwaysOnTop = true
	ESP.ExtentsOffset = Vector3.new(0, 1, 0)
	ESP.Size = UDim2.new(0, 5, 0, 5)
	for i,v in pairs(xPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") then
			local a = Instance.new("BoxHandleAdornment", ESP)
			a.Name = xPlayer.Name
			a.Adornee = v
			a.AlwaysOnTop = true
			a.ZIndex = 0
			a.Size = v.Size
			a.Transparency = 0.5
			a.Color = xPlayer.TeamColor
			v.Material = "ForceField"
		end
	end
	ESPText.Name = "NAME"
	ESPText.BackgroundColor3 = Color3.new(255, 255, 255)
	ESPText.BackgroundTransparency = 1
	ESPText.BorderSizePixel = 0
	ESPText.Position = UDim2.new(0, 0, 0, -40)
	ESPText.Size = UDim2.new(1, 0, 10, 0)
	ESPText.Visible = true
	ESPText.ZIndex = 10
	ESPText.Font = Enum.Font.SourceSansSemibold
	ESPText.TextStrokeTransparency = 0.6
	ESPText.TextSize = 20
	ESPText.Text = xPlayer.Name.." | "..xPlayer.Character.Humanoid.Health.."/"..xPlayer.Character.Humanoid.MaxHealth.." | "..math.floor((getRoot(speaker.Character).Position - getRoot(xPlayer.Character).Position).magnitude).." studs"
	ESPText.TextColor = xPlayer.TeamColor
end
function Clear()
	for _,v in pairs(speaker.PlayerGui:GetChildren()) do
		if v.Name:sub(1,3) == "ESP" and v:IsA("BillboardGui") then
			v:Destroy()
		end
	end
end
function Find()
	Clear()
	Track = true
	while wait() do
		if Track then
			Clear() 
			for i,v in pairs(players:GetPlayers()) do
				if v ~= speaker then
					if v.Character and v.Character:FindFirstChild("Head") then
						Create(v, v.Character.Head, true)
					end
				end
			end
		end
		wait(1)
	end
end
function IESP(v)
	spawn(function()
		for i,n in pairs(speaker.PlayerGui:GetChildren()) do
			if n.Name == v:GetFullName()..'_IESP' then
				n:Destroy()
			end
		end
		wait()
		IESPholder = Instance.new("Folder", speaker.PlayerGui)
		IESPholder.Name = v:GetFullName()..'_IESP'
		local a = Instance.new("BoxHandleAdornment", IESPholder)
		a.Name = v.Name
		a.Adornee = v
		a.AlwaysOnTop = true
		a.ZIndex = 0
		a.Size = v.Size
		a.Transparency = 0.8
		a.Color = v.BrickColor
		local BillboardGui = Instance.new("BillboardGui", IESPholder)
		local TextLabel = Instance.new("TextLabel", getParent)
		BillboardGui.Adornee = v
		BillboardGui.Name = v.Name
		BillboardGui.Size = UDim2.new(0, 100, 0, 150)
		BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
		BillboardGui.AlwaysOnTop = true
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 0, -60)
		TextLabel.Size = UDim2.new(0, 100, 0, 100)
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.TextSize = 20
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextStrokeTransparency = 0.6
		TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabel.Text = v.Name
	end)
end
function ESP(plr)
	spawn(function()
		for _,v in pairs(speaker.PlayerGui:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= cmdp.LocalPlayer.Name and not cmdp.LocalPlayer.PlayerGui:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder", speaker.PlayerGui)
			ESPholder.Name = plr.Name..'_ESP'
			for b,n in pairs(plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment", ESPholder)
					a.Name = plr.Name
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 0
					a.Size = n.Size
					a.Transparency = 0.8
					for i,m in pairs(plr.Character:GetChildren()) do
						if m:IsA("Part") or m:IsA("MeshPart") then
							if m.Name ~= "HumanoidRootPart" and m.Name ~= "Handle" or (m:IsA("Part")) then
								m.Material = "ForceField"
								a.Color = m.BrickColor
							end
						end
					end
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui", ESPholder)
				local TextLabel = Instance.new("TextLabel", getParent)
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -60)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0.6
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						ESPholder:Destroy()
						repeat 
							wait(1) 
						until plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid')
						ESP(plr)
					end
				end)
				local function espLoop()
					if speaker.PlayerGui:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid') then
							TextLabel.Text = plr.Name.."|Studs: ".. math.floor((speaker.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude).."|Health: "..plr.Character.Humanoid.Health
						end
					else
						espLoopFunc:Disconnect()
					end
				end
				espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
			end
		end
	end)
end

ESPEnabled = false
CliassicEsp = Visuals3:AddToggle({
	Name = 'Enabled',
	Value = false,
	Flag = 'hwfer8hu4ch2',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			Find()
			ESPEnabled = true
			repeat
				wait()
				if ESPEnabled == true then
					Find()
				end
			until ESPEnabled == false
		else
			ESPEnabled = false
			Track = false
			for i = 1,10 do
				for i,v in pairs(players:GetPlayers()) do
					for x,y in pairs(v.Character:GetChildren()) do
						if y:IsA("BasePart") then
							y.Material = "Plastic"
						end
					end
				end
				Clear()
				wait()
			end
		end
	end
})

]]

guisshit = Visuals4:CreateLabel({
	Text = 'Guis'
})

local invisGUIS = {}
local hiddenGUIS = {}

guisshit1 = Visuals4:AddToggle({
	Name = 'Show all Guis',
	Value = false,
	Flag = 'shoallguis',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(speaker:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
				if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
					v.Visible = true
					if not table.find(invisGUIS,v) then
						table.insert(invisGUIS,v)
					end
				end
			end
		else
			for i,v in pairs(invisGUIS) do
				v.Visible = false
			end
			invisGUIS = {}
		end
	end
})
guisshit2 = Visuals4:AddToggle({
	Name = 'Hide Guis',
	Flag = 'shoallguis2',

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(speaker:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
				if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and v.Visible then
					v.Visible = false
					if not table.find(hiddenGUIS,v) then
						table.insert(hiddenGUIS,v)
					end
				end
			end
		else
			for i,v in pairs(hiddenGUIS) do
				v.Visible = true
			end
			hiddenGUIS = {}
		end
	end
})

proximitypromptslabel = Visuals4:CreateLabel({
	Text = 'proximity prompts'
})
local PromptButtonHoldBegan = nil
instantproxpromts = Visuals4:AddToggle({
	Name = 'Instant proximity prompts',
	Value = false,
	Flag = 'rd4erfdygdf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			if fireproximityprompt then
				if PromptButtonHoldBegan ~= nil then
					PromptButtonHoldBegan:Disconnect()
					PromptButtonHoldBegan = nil
				end
				wait()
				PromptButtonHoldBegan = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
					fireproximityprompt(prompt)
				end)
			else
				instantproxpromts:Set(false)
				missingFunc("fireproximityprompt")
			end
		else
			if PromptButtonHoldBegan ~= nil then
				PromptButtonHoldBegan:Disconnect()
				PromptButtonHoldBegan = nil
			end
		end
	end
})
noproximitypromptlimits = Visuals4:AddButton({
	Name = "No Proximity prompt limit",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ProximityPrompt") then
				v.MaxActivationDistance = math.huge
			end
		end
	end
})
fireproximityprompts = Visuals4:AddButton({
	Name = "Fire Proximity prompts",
	Callback = function()
		if fireproximityprompt then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ProximityPrompt") then
					fireproximityprompt(v)
				end
			end
		else
			missingFunc("fireproximityprompt")
		end
	end
})

local proximitypromptslabel = Visuals4:CreateLabel({
	Text = 'Click Detectors'
})

fireclickdetectors = Visuals4:AddButton({
	Name = "Fire Click Detectors",
	Callback = function()
		if fireclickdetector then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") then
					fireclickdetector(v)
				end
			end
		else
			missingFunc("fireproximityprompt")
		end
	end
})
noclickdetectorlimits = Visuals4:AddButton({
	Name = "No Click Detector limit",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ClickDetector") then
				v.MaxActivationDistance = math.huge
			end
		end
	end
})

spectate = false
spectateasd = Visuals5:AddTextbox({
	Name = 'Player',
	Flag = "hfgchgdfhgg",
	Value = "",
	Callback = function(plrTar)
		if getRoot(speaker.Character) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name:lower() == plrTar:lower() then
					if speaker.Character ~= v then
						spectate = true
						workspace.CurrentCamera.CameraSubject = v
					end
				end
			end
		end
	end
})
noclickdetectorlimits = Visuals5:AddButton({
	Name = "Stop Spectating",
	Callback = function()
		if spectate == true then
			workspace.CurrentCamera.CameraSubject = speaker.Character
			spectate = false
		end
	end
})

-- // load
getgenv().AirHub = {}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/NewEspLibrary.lua"))()
local Aimbot, WallHack = getgenv().AirHub.Aimbot, getgenv().AirHub.WallHack
local Parts, Fonts, TracersType = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}, {"UI", "System", "Plex", "Monospace"}, {"Bottom", "Center", "Mouse"}


mainserrky = Visuals6:CreateLabel({
	Text = 'Main Settings'
})

Visuals6:AddToggle({
	Name = "Team Check",
	Value = WallHack.Settings.TeamCheck,
	Callback = function(New, Old)
		WallHack.Settings.TeamCheck = New
	end
}).Default = WallHack.Settings.TeamCheck

Visuals6:AddToggle({
	Name = "Alive Check",
	Value = WallHack.Settings.AliveCheck,
	Callback = function(New, Old)
		WallHack.Settings.AliveCheck = New
	end
}).Default = WallHack.Settings.AliveCheck

heatecxtniggd = Visuals6:CreateLabel({
	Text = 'Head Esp Settings'
})

Visuals6:AddToggle({
	Name = "Enabled",
	Value = WallHack.Visuals.ESPSettings.Enabled,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.Enabled = New
	end
}).Default = WallHack.Visuals.ESPSettings.Enabled

Visuals6:AddToggle({
	Name = "Outline",
	Value = WallHack.Visuals.ESPSettings.Outline,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.Outline = New
	end
}).Default = WallHack.Visuals.ESPSettings.Outline

Visuals6:AddToggle({
	Name = "Display Distance",
	Value = WallHack.Visuals.ESPSettings.DisplayDistance,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.DisplayDistance = New
	end
}).Default = WallHack.Visuals.ESPSettings.DisplayDistance

Visuals6:AddToggle({
	Name = "Display Health",
	Value = WallHack.Visuals.ESPSettings.DisplayHealth,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.DisplayHealth = New
	end
}).Default = WallHack.Visuals.ESPSettings.DisplayHealth

Visuals6:AddToggle({
	Name = "Display Name",
	Value = WallHack.Visuals.ESPSettings.DisplayName,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.DisplayName = New
	end
}).Default = WallHack.Visuals.ESPSettings.DisplayName

Visuals6:AddSlider({
	Name = "Offset",
	Value = WallHack.Visuals.ESPSettings.Offset,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.Offset = New
	end,
	Min = -30,
	Max = 30
}).Default = WallHack.Visuals.ESPSettings.Offset

Visuals6:AddColorpicker({
	Name = "Text Color",
	Value = WallHack.Visuals.ESPSettings.TextColor,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.TextColor = New
	end
}).Default = WallHack.Visuals.ESPSettings.TextColor

Visuals6:AddColorpicker({
	Name = "Outline Color",
	Value = WallHack.Visuals.ESPSettings.OutlineColor,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.OutlineColor = New
	end
}).Default = WallHack.Visuals.ESPSettings.OutlineColor

Visuals6:AddSlider({
	Name = "Text Transparency",
	Value = WallHack.Visuals.ESPSettings.TextTransparency,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.TextTransparency = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = WallHack.Visuals.ESPSettings.TextTransparency

Visuals6:AddSlider({
	Name = "Text Size",
	Value = WallHack.Visuals.ESPSettings.TextSize,
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.TextSize = New
	end,
	Min = 8,
	Max = 24
}).Default = WallHack.Visuals.ESPSettings.TextSize

Visuals6:AddDropdown({
	Name = "Text Font",
	Value = Fonts[WallHack.Visuals.ESPSettings.TextFont + 1],
	Callback = function(New, Old)
		WallHack.Visuals.ESPSettings.TextFont = Drawing.Fonts[New]
	end,
	List = Fonts,
	Nothing = "UI"
}).Default = Fonts[WallHack.Visuals.ESPSettings.TextFont + 1]

heatecxtniggd2 = Visuals6:CreateLabel({
	Text = 'Box Esp Settings'
})

Visuals6:AddToggle({
	Name = "Enabled",
	Value = WallHack.Visuals.BoxSettings.Enabled,
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Enabled = New
	end
}).Default = WallHack.Visuals.BoxSettings.Enabled

Visuals6:AddSlider({
	Name = "Transparency",
	Value = WallHack.Visuals.BoxSettings.Transparency,
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = WallHack.Visuals.BoxSettings.Transparency

Visuals6:AddSlider({
	Name = "Thickness",
	Value = WallHack.Visuals.BoxSettings.Thickness,
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Thickness = New
	end,
	Min = 1,
	Max = 5
}).Default = WallHack.Visuals.BoxSettings.Thickness

Visuals6:AddSlider({
	Name = "Scale Increase (For 3D)",
	Value = WallHack.Visuals.BoxSettings.Increase,
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Increase = New
	end,
	Min = 1,
	Max = 5
}).Default = WallHack.Visuals.BoxSettings.Increase

Visuals6:AddColorpicker({
	Name = "Color",
	Value = WallHack.Visuals.BoxSettings.Color,
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Color = New
	end
}).Default = WallHack.Visuals.BoxSettings.Color

Visuals6:AddDropdown({
	Name = "Type",
	Value = WallHack.Visuals.BoxSettings.Type == 1 and "3D" or "2D",
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Type = New == "3D" and 1 or 2
	end,
	List = {"3D", "2D"},
	Nothing = "3D"
}).Default = WallHack.Visuals.BoxSettings.Type == 1 and "3D" or "2D"

Visuals6:AddToggle({
	Name = "Filled (2D Square)",
	Value = WallHack.Visuals.BoxSettings.Filled,
	Callback = function(New, Old)
		WallHack.Visuals.BoxSettings.Filled = New
	end
}).Default = WallHack.Visuals.BoxSettings.Filled

heatecxtniggd2324 = Visuals6:CreateLabel({
	Text = 'Chams Settings'
})

Visuals6:AddToggle({
	Name = "Enabled",
	Value = WallHack.Visuals.ChamsSettings.Enabled,
	Callback = function(New, Old)
		WallHack.Visuals.ChamsSettings.Enabled = New
	end
}).Default = WallHack.Visuals.ChamsSettings.Enabled

Visuals6:AddToggle({
	Name = "Filled",
	Value = WallHack.Visuals.ChamsSettings.Filled,
	Callback = function(New, Old)
		WallHack.Visuals.ChamsSettings.Filled = New
	end
}).Default = WallHack.Visuals.ChamsSettings.Filled

Visuals6:AddToggle({
	Name = "Entire Body (For R15 Rigs)",
	Value = WallHack.Visuals.ChamsSettings.EntireBody,
	Callback = function(New, Old)
		WallHack.Visuals.ChamsSettings.EntireBody = New
	end
}).Default = WallHack.Visuals.ChamsSettings.EntireBody

Visuals6:AddSlider({
	Name = "Transparency",
	Value = WallHack.Visuals.ChamsSettings.Transparency,
	Callback = function(New, Old)
		WallHack.Visuals.ChamsSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = WallHack.Visuals.ChamsSettings.Transparency

Visuals6:AddSlider({
	Name = "Thickness",
	Value = WallHack.Visuals.ChamsSettings.Thickness,
	Callback = function(New, Old)
		WallHack.Visuals.ChamsSettings.Thickness = New
	end,
	Min = 0,
	Max = 3
}).Default = WallHack.Visuals.ChamsSettings.Thickness

Visuals6:AddColorpicker({
	Name = "Color",
	Value = WallHack.Visuals.ChamsSettings.Color,
	Callback = function(New, Old)
		WallHack.Visuals.ChamsSettings.Color = New
	end
}).Default = WallHack.Visuals.ChamsSettings.Color

heatecdsh72324 = Visuals6:CreateLabel({
	Text = 'Tracer Settings'
})

Visuals6:AddToggle({
	Name = "Enabled",
	Value = WallHack.Visuals.TracersSettings.Enabled,
	Callback = function(New, Old)
		WallHack.Visuals.TracersSettings.Enabled = New
	end
}).Default = WallHack.Visuals.TracersSettings.Enabled

Visuals6:AddSlider({
	Name = "Transparency",
	Value = WallHack.Visuals.TracersSettings.Transparency,
	Callback = function(New, Old)
		WallHack.Visuals.TracersSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = WallHack.Visuals.TracersSettings.Transparency

Visuals6:AddSlider({
	Name = "Thickness",
	Value = WallHack.Visuals.TracersSettings.Thickness,
	Callback = function(New, Old)
		WallHack.Visuals.TracersSettings.Thickness = New
	end,
	Min = 1,
	Max = 5
}).Default = WallHack.Visuals.TracersSettings.Thickness

Visuals6:AddColorpicker({
	Name = "Color",
	Value = WallHack.Visuals.TracersSettings.Color,
	Callback = function(New, Old)
		WallHack.Visuals.TracersSettings.Color = New
	end
}).Default = WallHack.Visuals.TracersSettings.Color

Visuals6:AddDropdown({
	Name = "Start Point",
	Value = TracersType[WallHack.Visuals.TracersSettings.Type],
	Callback = function(New, Old)
		WallHack.Visuals.TracersSettings.Type = table.find(TracersType, New)
	end,
	List = TracersType,
	Nothing = "Bottom"
}).Default = Fonts[WallHack.Visuals.TracersSettings.Type + 1]


hea3224 = Visuals6:CreateLabel({
	Text = 'Head Dot Settings'
})

Visuals6:AddToggle({
	Name = "Enabled",
	Value = WallHack.Visuals.HeadDotSettings.Enabled,
	Callback = function(New, Old)
		WallHack.Visuals.HeadDotSettings.Enabled = New
	end
}).Default = WallHack.Visuals.HeadDotSettings.Enabled

Visuals6:AddToggle({
	Name = "Filled",
	Value = WallHack.Visuals.HeadDotSettings.Filled,
	Callback = function(New, Old)
		WallHack.Visuals.HeadDotSettings.Filled = New
	end
}).Default = WallHack.Visuals.HeadDotSettings.Filled

Visuals6:AddSlider({
	Name = "Transparency",
	Value = WallHack.Visuals.HeadDotSettings.Transparency,
	Callback = function(New, Old)
		WallHack.Visuals.HeadDotSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = WallHack.Visuals.HeadDotSettings.Transparency

Visuals6:AddSlider({
	Name = "Thickness",
	Value = WallHack.Visuals.HeadDotSettings.Thickness,
	Callback = function(New, Old)
		WallHack.Visuals.HeadDotSettings.Thickness = New
	end,
	Min = 1,
	Max = 5
}).Default = WallHack.Visuals.HeadDotSettings.Thickness

Visuals6:AddSlider({
	Name = "Sides",
	Value = WallHack.Visuals.HeadDotSettings.Sides,
	Callback = function(New, Old)
		WallHack.Visuals.HeadDotSettings.Sides = New
	end,
	Min = 3,
	Max = 60
}).Default = WallHack.Visuals.HeadDotSettings.Sides

Visuals6:AddColorpicker({
	Name = "Color",
	Value = WallHack.Visuals.HeadDotSettings.Color,
	Callback = function(New, Old)
		WallHack.Visuals.HeadDotSettings.Color = New
	end
}).Default = WallHack.Visuals.HeadDotSettings.Color

heatlsbar = Visuals6:CreateLabel({
	Text = 'Health Bar Settings'
})

Visuals6:AddToggle({
	Name = "Enabled",
	Value = WallHack.Visuals.HealthBarSettings.Enabled,
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.Enabled = New
	end
}).Default = WallHack.Visuals.HealthBarSettings.Enabled

Visuals6:AddDropdown({
	Name = "Position",
	Value = WallHack.Visuals.HealthBarSettings.Type == 1 and "Top" or WallHack.Visuals.HealthBarSettings.Type == 2 and "Bottom" or WallHack.Visuals.HealthBarSettings.Type == 3 and "Left" or "Right",
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.Type = New == "Top" and 1 or New == "Bottom" and 2 or New == "Left" and 3 or 4
	end,
	List = {"Top", "Bottom", "Left", "Right"},
	Nothing = "Left"
}).Default = WallHack.Visuals.HealthBarSettings.Type == 1 and "Top" or WallHack.Visuals.HealthBarSettings.Type == 2 and "Bottom" or WallHack.Visuals.HealthBarSettings.Type == 3 and "Left" or "Right"

Visuals6:AddSlider({
	Name = "Transparency",
	Value = WallHack.Visuals.HealthBarSettings.Transparency,
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = WallHack.Visuals.HealthBarSettings.Transparency

Visuals6:AddSlider({
	Name = "Size",
	Value = WallHack.Visuals.HealthBarSettings.Size,
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.Size = New
	end,
	Min = 2,
	Max = 10
}).Default = WallHack.Visuals.HealthBarSettings.Size

Visuals6:AddSlider({
	Name = "Blue",
	Value = WallHack.Visuals.HealthBarSettings.Blue,
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.Blue = New
	end,
	Min = 0,
	Max = 255
}).Default = WallHack.Visuals.HealthBarSettings.Blue

Visuals6:AddSlider({
	Name = "Offset",
	Value = WallHack.Visuals.HealthBarSettings.Offset,
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.Offset = New
	end,
	Min = -30,
	Max = 30
}).Default = WallHack.Visuals.HealthBarSettings.Offset

Visuals6:AddColorpicker({
	Name = "Outline Color",
	Value = WallHack.Visuals.HealthBarSettings.OutlineColor,
	Callback = function(New, Old)
		WallHack.Visuals.HealthBarSettings.OutlineColor = New
	end
}).Default = WallHack.Visuals.HealthBarSettings.OutlineColor


cumball = Funny3:AddButton({
	Name = "Become Ball",	
	Callback = function()

	 	SPEED_MULTIPLIER = 30
		JUMP_POWER = 60
		JUMP_GAP = 0.3

		local character = speaker.Character

		for i,v in ipairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end

		local ball = character.HumanoidRootPart
		ball.Shape = Enum.PartType.Ball
		ball.Size = Vector3.new(5,5,5)
		local humanoid = character:WaitForChild("Humanoid")
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Blacklist
		params.FilterDescendantsInstances = {character}

		local tc = RunService.RenderStepped:Connect(function(delta)
			ball.CanCollide = true
			humanoid.PlatformStand = true
			if UIS:GetFocusedTextBox() then
				return 
			end
			if UIS:IsKeyDown("W") then
				ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UIS:IsKeyDown("A") then
				ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
			if UIS:IsKeyDown("S") then
				ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UIS:IsKeyDown("D") then
				ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
		end)

		UIS.JumpRequest:Connect(function()
			local result = workspace:Raycast(ball.Position, Vector3.new(0, -((ball.Size.Y / 2) + JUMP_GAP), 0), params)
			if result then
				ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
			end
		end)

		Camera.CameraSubject = ball
		humanoid.Died:Connect(function() tc:Disconnect() end)	
	end
})
hathub = Funny3:AddButton({
	Name = "Hat hub",
	Callback = function()
		if r15(speaker) then
			Notify({
				Title = "Invalid Rig type",
				Description = "You Need to be in R6",
				Duration = 2
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/fe%20extentions/hat%20hub%20v2.lua'))()
		end
	end
})

hathub1 = Funny3:CreateLabel({
	Text = '.orbit (plr)'
})
hathub2 = Funny3:CreateLabel({
	Text = '.speed (number)'
})
hathub3 = Funny3:CreateLabel({
	Text = '.offset (number)'
})
hathub4 = Funny3:CreateLabel({
	Text = '.mode (number)'
})
hathub5 = Funny3:CreateLabel({
	Text = '.angular (number)'
})

raybeamyesyeyse = Funny3:AddButton({
	Name = "Ray Beam",
	Callback = function()
		if r15(speaker) then

			TypeOfFling = 1
			DeleteArm = true
			SayDramaticStuff = false
			FlingVelocity = 9000

			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = 0

			if DeleteArm then
				speaker.Character.RightUpperArm:Destroy()
			end

			if SayDramaticStuff then
				AnimationId = "3303161675"
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://"..AnimationId
				local k = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
				k:Play()
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("UNLEASH POWER OF HEAVEN","All")
				k:AdjustSpeed(1)
				wait(4.7)
			end

			local Noclipping = nil
			local Clip = true
			wait(0.1)
			local function NoclipLoop()
			if Clip then
					if speaker.Character ~= nil then
						for _, child in pairs(speaker.Character:GetDescendants()) do
							if child:IsA("BasePart") and child.CanCollide == true then
								child.CanCollide = false
							end
						end
					end
				end
			end

			Noclipping = RunService.Stepped:Connect(NoclipLoop)
			wait(0.3)
			for i, x in pairs(speaker.Character:GetDescendants()) do
				if x:IsA("BasePart") and not x.Anchored then
					x.Anchored = true
				end
			end

			if SayDramaticStuff then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE POWER OF HEAVEN CHEATS.","All")
				wait(3)
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("POWER OF DIMENSIONAL DIVERSION.","All")
				wait(2.3)
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("HEAVEN SKILL, SUPERNOVA!!","All")
			end

			local IsFlying = true
			local flyv
			local flyg
			local Speed = 70

			local LastSpeed = Speed
			local IsRunning = false
			local f = 1

			flyv = Instance.new("BodyVelocity")
				
			flyv.Parent = speaker.Character:FindFirstChild('Torso') or speaker.Character:FindFirstChild('UpperTorso')
			flyv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				
			flyg = Instance.new("BodyGyro")
			flyg.Parent = speaker.Character:FindFirstChild('Torso') or speaker.Character:FindFirstChild('UpperTorso')
			flyg.MaxTorque = Vector3.new(9e9,9e9,9e9)
			flyg.P = 1000
			flyg.D = 50
			speaker.Character:WaitForChild('Humanoid').PlatformStand = true

			spawn(function()
				while true do
					wait()
					if IsFlying then
						flyg.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(-math.rad((f+0)*50*Speed),0,0) 
						flyv.Velocity = workspace.CurrentCamera.CoordinateFrame.LookVector * Speed
					else
						f = 0
					end
					if IsRunning then
						Speed = LastSpeed
					else
						if not Speed == 0 then
							LastSpeed = Speed
						end 
						Speed = 0
					end
				end
			end)

			speaker.Character.Humanoid.Changed:Connect(function()
				if speaker.Character.Humanoid.Health == 0 then
					if IsFlying then
						Noclipping:Disconnect()
						Clip = false
						flyg:Destroy()
						flyv:Destroy()
					end
				end
			end)

			speaker.CharacterAdded:Connect(function()
				if isFlying then
					Noclipping:Disconnect()
					Clip = false
					flyg:Destroy()
					flyv:Destroy()
				end
			end)

			speaker.Character.Humanoid.Changed:Connect(function(Prop)
				if speaker.Character.Humanoid.MoveDirection == Vector3.new(0,0,0) then
					IsRunning = false
				else
					IsRunning = true
				end	
			end)

			wait(0.3)

			local char = speaker.Character
			function helpmeget(char)
				local c4 = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
				return c4
			end

			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "SpinnerVelocity"
			Spin.Parent = helpmeget(speaker.Character)
			Spin.MaxTorque = Vector3.new(0, math.huge, 0) 
			Spin.AngularVelocity = Vector3.new(0,FlingVelocity,0)

			wait(0.3)

			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			if TypeOfFling == 1 then
				speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
				speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
				speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
			elseif TypeOfFling == 2 then
				speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
			else
				speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
			end

			loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize'))()

			wait(0.4)

			for i, x in pairs(speaker.Character:GetDescendants()) do
				if x:IsA("BasePart") and x.Anchored then
					x.Anchored = false
				end
			end

		else
			Notify({
				Title = "Invalid Rig type",
				Description = "You Need to be in R15",
				Duration = 2
			})
		end
	end
})
raybeam1 = Funny3:CreateLabel({
	Text = 'layer clothing recommended'
})

heartattack = Funny3:AddButton({
	Name = "Heart Attack",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/fe%20extentions/heart%20attack.lua'))()
	end
})
heartaytta1 = Funny3:CreateLabel({
	Text = 'click Z to toggle'
})

rewinfsds3 = Funny3:AddButton({
	Name = "Rewind",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/fe%20extentions/rewind.lua'))()
	end
})
rewinfsds3text = Funny3:CreateLabel({
	Text = 'Hold Down E to rewind'
})

kill1 = Funny3:AddToggle({
	Name = 'kill Avery',
	Flag = 'killavetr',

	Callback = function( state )
		if ( state ) then
			task.spawn(function()
				local newtab = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/Json%20data/averyy.json'))
				local obj = Instance.new("HumanoidDescription")
				for i,v in pairs(newtab) do 
					if typeof(v) == "table" then 
						obj[i] = Color3.new(v.R, v.G, v.B)
					else
						obj[i] = v
					end
				end
				game.Players.LocalPlayer.Character.Archivable = true 
				clone = game.Players.LocalPlayer.Character:Clone()
				clone.Parent = workspace
				for i,v in pairs(clone:GetChildren()) do 
					if v:IsA("Accessory") then v:Destroy() end
				end
				clone.Humanoid:ApplyDescriptionClientServer(obj)
				clone.Humanoid.DisplayName = "averyy"
				gun = game:GetObjects("rbxassetid://10154175130")[1]
				gun.Parent = game.Players.LocalPlayer.Backpack
				local shooting = false
				local ignored = {}
				gun.Activated:Connect(function()
					shooting = true
					repeat
						task.wait(0.1)
						local rayparams = RaycastParams.new()
						rayparams.FilterDescendantsInstances = {speaker.Character, Camera, unpack(ignored)}
						rayparams.FilterType = Enum.RaycastFilterType.Blacklist
						local dir = (Camera.CFrame.lookVector + Vector3.new((math.random(1, 6) - 3) / 100, (math.random(1, 6) - 3) / 100, (math.random(1, 6) - 3) / 100))
						local ray = workspace:Raycast(Camera.CFrame.p, dir * 1000, rayparams)
						if ray then 
							local part = Instance.new("Part")
							part.Color = Color3.new(1, 1, 0)
							part.Material = Enum.Material.Neon
							part.Transparency = 0.9
							part.Size = Vector3.new(0.1, 0.1, (Camera.CFrame.p - ray.Position).Magnitude)
							part.CFrame = CFrame.new(Camera.CFrame.p + ((ray.Position - Camera.CFrame.p) / 2) - Vector3.new(0, 1, 0), ray.Position)
							part.CanCollide = false
							part.Anchored = true
							part.Parent = workspace
							table.insert(ignored, part)
							game:GetService("Debris"):AddItem(part, 0.5)
							if ray.Instance:IsDescendantOf(clone) then 
								local part2 = Instance.new("Part")
								part2.Parent = workspace
								part2.Anchored = false
								part2.Velocity = dir * 40
								part2.CanCollide = false
								part2.Transparency = 1
								part2.Size = Vector3.new(1, 1, 1)
								part2.Color = Color3.new(1, 0, 0)
								part2.Position = ray.Position
								local parte = Instance.new("ParticleEmitter")
								parte.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(0.5, 0, 0))
								parte.Size = NumberSequence.new(0.5)
								parte.Transparency = NumberSequence.new(0.5)
								parte.Rate = 2000
								parte.Enabled = true
								parte.Texture = "rbxassetid://1927066320"
								parte.Speed = NumberRange.new(2)
								parte.SpreadAngle = Vector2.new(100, 100)
								parte.Parent = part2
								parte:Emit()
								table.insert(ignored, part2)
								game:GetService("Debris"):AddItem(part2, 0.5)
								clone.Humanoid:TakeDamage(10)
							end
						end
					until not shooting
				end)
				gun.Deactivated:Connect(function()
					shooting = false
				end)	
			end)
		else
			gun:Destroy()
			clone:Destroy()
		end
	end
})

indfsdf = Funny4:AddToggle({
	Name = 'Invis Fling',
	Value = false,
	Flag = 'invidikdsf',
	Locked = true,
	Keybind = {
		Flag = 'd34r___0',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local ch = speaker.Character
			local prt = Instance.new("Model")
			prt.Parent = speaker.Character
			local z1 = Instance.new("Part")
			z1.Name = "Torso"
			z1.CanCollide = false
			z1.Anchored = true
			local z2 = Instance.new("Part")
			z2.Name = "Head"
			z2.Parent = prt
			z2.Anchored = true
			z2.CanCollide = false
			local z3 = Instance.new("Humanoid")
			z3.Name = "Humanoid"
			z3.Parent = prt
			z1.Position = Vector3.new(0,9999,0)
			speaker.Character = prt
			wait(3)
			speaker.Character = ch
			wait(3)
			local Hum = Instance.new("Humanoid")
			z2:Clone()
			Hum.Parent = speaker.Character
			local root =  getRoot(speaker.Character)
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v ~= root and v.Name ~= "Humanoid" then
					v:Destroy()
				end
			end
			root.Transparency = 0
			root.Color = Color3.new(1, 1, 1)
			local invisflingStepped
			invisflingStepped = RunService.Stepped:Connect(function()
				if speaker.Character and getRoot(speaker.Character) then
					getRoot(speaker.Character).CanCollide = false
				else
					invisflingStepped:Disconnect()
				end
			end)
			sFLY()
			workspace.CurrentCamera.CameraSubject = root
			local bambam = Instance.new("BodyThrust")
			bambam.Parent = getRoot(speaker.Character)
			bambam.Force = Vector3.new(99999,99999*10,99999)
			bambam.Location = getRoot(speaker.Character).Position
		else
			refresh(speaker)
		end
	end
})
function stopFling()
	if nocliplooping3 then 
		nocliplooping3:Disconnect() 
	end
	if flingDied then
		flingDied:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then 
		return 
	end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end
flinging = false
indfsdf2 = Funny4:AddToggle({
	Name = 'Fling',
	Value = false,
	Flag = 'invidikdsf2',
	Locked = false,
	Keybind = {
		Flag = 'd34r___02',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			flinging = false
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") then
					child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
				end
			end
			nocliplooping3 = RunService.Stepped:Connect(function()
				for i,v in pairs(speaker.Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end)
			wait(.1)
			local bambam = Instance.new("BodyAngularVelocity")
			bambam.Name = "sdh99354_+340I#_-------#-44jf"
			bambam.Parent = getRoot(speaker.Character)
			bambam.AngularVelocity = Vector3.new(0,99999,0)
			bambam.MaxTorque = Vector3.new(0,math.huge,0)
			bambam.P = math.huge
			local Char = speaker.Character:GetChildren()
			for i, v in next, Char do
				if v:IsA("BasePart") then
					v.CanCollide = false
					v.Massless = true
					v.Velocity = Vector3.new(0, 0, 0)
				end
			end
			flinging = true
			local function flingDiedF()
				stopFling()
			end
			flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
			repeat
				bambam.AngularVelocity = Vector3.new(0,99999,0)
				wait(.2)
				bambam.AngularVelocity = Vector3.new(0,0,0)
				wait(.1)
			until flinging == false
		else
			stopFling()
		end
	end
})


local fucktard
headfire = Funny6:AddToggle({
	Name = 'Head Fire',
	Flag = 'headfire1',
	Keybind = {
		Flag = 'headfire2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if fucktard == nil then
				local fucktard2 = Instance.new("Fire", speaker.Character.Head)
				while state == true do
					fucktard2.Name = "faggot this shit givving me so many errors >:("
					fucktard2.SecondaryColor = fucktardset2:Get()
					fucktard2.Size = sizeugsdfsdfs:Get()
					fucktard2.Heat = heatsajhafs:Get()
					task.wait()
					fucktard2.Color = fucktardset1:Get()
				end
			end
		else
			if fucktard then fucktard = nil end
			for i,v in pairs(speaker.Character.Head:GetChildren()) do
				if v.Name == "faggot this shit givving me so many errors >:(" then
					v:Destroy()
				end
			end
		end
	end
})

fucktardset1 = Funny6:AddColorPicker({
	Name = "Primary Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function() end
})
fucktardset2 = Funny6:AddColorPicker({
	Name = "Secondary Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function() end
})
heatsajhafs = Funny6:AddSlider({
	Name = 'Fire Heat',
	Flag = "slidds",
	Value = 13,
	Min = 0,
	Max = 1000,
	Decimals = 2,
	llegalInput = false,
	Callback = function() end
})
sizeugsdfsdfs = Funny6:AddSlider({
	Name = 'Fire Size',
	Flag = "s82",
	Value = 5,
	Min = 1,
	Max = 30,
	Decimals = 2,
	llegalInput = false,
	Callback = function() end
})

local chinahattrail
local chinahatattachment

chinahat = Funny6:AddToggle({
	Name = 'China Hat',
	Flag = 'chinahat1',
	Keybind = {
		Flag = 'chinahat2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			ChinaHatLoop = game.RunService.RenderStepped:Connect(function()
				if chinahattrail == nil or chinahattrail.Parent == nil then
					chinahattrail = Instance.new("Part")
					chinahattrail.CFrame = speaker.character.Head.CFrame * CFrame.new(0, 1.1, 0)
					chinahattrail.Size = Vector3.new(3, 0.7, 3)
					chinahattrail.Name = randomString()
					chinahattrail.Material = Enum.Material.Neon
					chinahattrail.CanCollide = false
					chinahattrail.Transparency = 0.3
					local chinahatmesh = Instance.new("SpecialMesh")
					chinahatmesh.Parent = chinahattrail
					chinahatmesh.MeshType = "FileMesh"
					chinahatmesh.MeshId = "http://www.roblox.com/asset/?id=1778999"
					chinahatmesh.Scale = Vector3.new(3, 0.6, 3)
					chinahattrail.Parent = workspace.Camera
				end
				chinahattrail.CFrame = speaker.character.Head.CFrame * CFrame.new(0, 1.1, 0)
				chinahattrail.Velocity = Vector3.zero
				chinahattrail.LocalTransparencyModifier = ((workspace.CurrentCamera.CFrame.Position - workspace.CurrentCamera.Focus.Position).Magnitude <= 0.6 and 1 or 0)
				chinahattrail.Color = chinacolor:Get()
			end)
		else
			if ChinaHatLoop then
				ChinaHatLoop:Disconnect()
			end
			task.wait()
			if chinahattrail then 
				chinahattrail:Destroy()
				chinahattrail = nil
			end
		end
	end
})
chinacolor = Funny6:AddColorPicker({
	Name = "Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function() end
})

local DisguiseDescription
function Disguisechar(char2)
	task.spawn(function()
		if not char2 then return end
		local hum = char2:WaitForChild("Humanoid", 9e9)
		char2:WaitForChild("Head", 9e9)

		local DisguiseDescription
		if DisguiseDescription == nil then
			local suc = false
			repeat
				suc = pcall(function()
					DisguiseDescription = players:GetHumanoidDescriptionFromUserId(usertodusgise:Get() == "" and 1353938077 or tonumber(usertodusgise:Get()))
				end)
				if suc then break end
				task.wait(1)
			until suc or (Disguise54:Get() == false)
		end

		if (Disguise54:Get() == false) then return end
		local desc = hum:WaitForChild("HumanoidDescription", 2) or {HeightScale = 1, SetEmotes = function() end, SetEquippedEmotes = function() end}
		DisguiseDescription.HeightScale = desc.HeightScale
		char2.Archivable = true
		local Disguiseclone = char2:Clone()
		Disguiseclone.Name = "Disguisechar"
		Disguiseclone.Parent = workspace

		for i,v in pairs(Disguiseclone:GetChildren()) do 
			if v:IsA("Accessory") or v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") then  
				v:Destroy()
			end
		end
		Disguiseclone.Humanoid:ApplyDescriptionClientServer(DisguiseDescription)
		for i,v in pairs(char2:GetChildren()) do 
			if (v:IsA("Accessory") and v:GetAttribute("InvItem") == nil and v:GetAttribute("ArmorSlot") == nil) or v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") or v:IsA("Folder") or v:IsA("Model") then 
				v.Parent = game
			end
		end
		char2.ChildAdded:Connect(function(v)
			if ((v:IsA("Accessory") and v:GetAttribute("InvItem") == nil and v:GetAttribute("ArmorSlot") == nil) or v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors")) and v:GetAttribute("Disguise") == nil then 
				repeat task.wait() v.Parent = game until v.Parent == game
			end
		end)
		for i,v in pairs(Disguiseclone:WaitForChild("Animate"):GetChildren()) do 
			v:SetAttribute("Disguise", true)
			local real = char2.Animate:FindFirstChild(v.Name)
			if v:IsA("StringValue") and real then 
				real.Parent = game
				v.Parent = char2.Animate
			end
		end
		for i,v in pairs(Disguiseclone:GetChildren()) do 
			v:SetAttribute("Disguise", true)
			if v:IsA("Accessory") then  
				for i2,v2 in pairs(v:GetDescendants()) do 
					if v2:IsA("Weld") and v2.Part1 then 
						v2.Part1 = char2[v2.Part1.Name]
					end
				end
				v.Parent = char2
			elseif v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then  
				v.Parent = char2
			elseif v.Name == "Head" and char2.Head:IsA("MeshPart") then 
				char2.Head.MeshId = v.MeshId
			end
		end

		local localface = char2:FindFirstChild("face", true)
		local cloneface = Disguiseclone:FindFirstChild("face", true)
		if localface and cloneface then localface.Parent = game cloneface.Parent = char.Head end
		desc:SetEmotes(DisguiseDescription:GetEmotes())
		desc:SetEquippedEmotes(DisguiseDescription:GetEquippedEmotes())
		Disguiseclone:Destroy()
	end)
end

local Disguiseconnection
Disguise54 = Funny7:AddToggle({
	Name = 'Disguise',
	Flag = 'Disguise2',
	Keybind = {
		Flag = 'Disguise542',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			Disguising = true
			Disguiseconnection = speaker.CharacterAdded:Connect(Disguisechar)
			Disguisechar(speaker.Character)
		else
			Notify({
				Title = "Disguise",
				Description = "Reset",
				Duration = 2
			})			
			Disguising = false
			if Disguiseconnection then 
				Disguiseconnection:Disconnect()
			end
		end
	end
})
usertodusgise = Funny7:AddTextbox({
	Name = 'User Id',
	Flag = "duisgesy",
	Value = "1353938077",
	Callback = function()
		if Disguising == true then
			Disguiseconnection = speaker.CharacterAdded:Connect(Disguisechar)
			Disguisechar(speaker.Character)
		end
	end
})

local playedanim
AnimationPlayer = Funny7:AddToggle({
	Name = 'Animation Player',
	Flag = 'AnimationPlayer1',
	Keybind = {
		Flag = 'AnimationPlayer2',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if getRoot(char) then
				if playedanim then playedanim:Stop() playedanim = nil end
				local anim = Instance.new("Animation")

				local suc, id = pcall(function() return string.match(game:GetObjects("rbxassetid://"..animId:Get())[1].AnimationId, "%?id=(%d+)") end)
				if not suc then
					id = animId:Get()
				end

				anim.AnimationId = "rbxassetid://"..id
				local suc, res = pcall(function() playedanim = char.Humanoid.Animator:LoadAnimation(anim) end)
				if suc then
					playedanim.Priority = Enum.AnimationPriority.Action4
					playedanim.Looped = true
					playedanim:Play()
					while AnimationPlayer:Get() == true do
						playedanim:AdjustSpeed(AnimSpeed:Get() / 10)
						task.wait()
					end
				else
					Notify({
						Title = "Animation Player",
						Description =  "failed to load anim: "..(res or "invalid animation id"),
						Duration = 5
					})
				end
			end
		else
			if playedanim then playedanim:Stop() playedanim = nil end
		end
	end
})
animId = Funny7:AddTextbox({
	Name = 'ANimation Id',
	Flag = "anim2",
	Value = "11309263077",
	Callback = function() end
})
AnimSpeed = Funny7:AddSlider({
	Name = 'Animaion Speed',
	Flag = "speed_anim",
	Value = 10,
	Min = 1,
	Max = 40,
	Textbox = true,
	Callback = function() end
})

settingslabelwaypoint = Misc1:CreateLabel({
	Text = 'Settings'
})
WayTrans = Misc1:AddSlider({
	Name = 'Transparency',
	Flag = "slide_in_transs_pussy",
	Value = 0.5,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function()end
})
WayTweenMode = Misc1:AddToggle({
	Name = 'Tween Mode',
	Flag = 'WayTweenMode1',
	Value = false,

	Callback = function()end
})
WayTween = Misc1:AddSlider({
	Name = 'Tween delay',
	Flag = "WayTween1",
	Value = 3,
	Min = 1,
	Max = 30,
	Decimals = 2,
	Callback = function()end
})
function waypoint1()
	local waypoint1 = Instance.new("Part", workspace)
	waypoint1.Name = "wayPoint1_NIGGA_SEX_FUCKER"
	waypoint1.CFrame = speaker.Character.HumanoidRootPart.CFrame
	waypoint1.Anchored = true
	waypoint1.CanCollide = false
	waypoint1.Transparency = WayTrans:Get()
	waypoint1.Size = Vector3.new(0.5, 0.5, 0.5)
	niggawaypoint1 = workspace:WaitForChild("wayPoint1_NIGGA_SEX_FUCKER")
end
function waypoint2()
	local waypoint2 = Instance.new("Part", workspace)
	waypoint2.Name = "wayPoint2_NIGGA_SEX_FUCKER"
	waypoint2.CFrame = speaker.Character.HumanoidRootPart.CFrame
	waypoint2.Anchored = true
	waypoint2.CanCollide = false
	waypoint2.Transparency = WayTrans:Get()
	waypoint2.Size = Vector3.new(0.5, 0.5, 0.5)
end
function waypoint3()
	local waypoint3 = Instance.new("Part", workspace)
	waypoint3.Name = "wayPoint3_NIGGA_SEX_FUCKER"
	waypoint3.CFrame = speaker.Character.HumanoidRootPart.CFrame
	waypoint3.Anchored = true
	waypoint3.CanCollide = false
	waypoint3.Transparency = WayTrans:Get()
	waypoint3.Size = Vector3.new(0.5, 0.5, 0.5)
end

local createlabelwaypoint = Misc1:CreateLabel({
	Text = 'Create'
})

local createwayPoint1 = Misc1:AddButton({
	Name = "Create Waypoint 1",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint1_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
		wait()
		waypoint1()
	end
})
local createwayPoint2 = Misc1:AddButton({
	Name = "Create Waypoint 2",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint2_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
		wait()
		waypoint2()
	end
})
local createwayPoint3 = Misc1:AddButton({
	Name = "Create Waypoint 3",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint3_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
		wait()
		waypoint3()
	end
})

local destroylabelwaypoint = Misc1:CreateLabel({
	Text = 'Destroy'
})

local noPoint1 = Misc1:AddButton({
	Name = "Destroy Waypoint 1",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint1_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
	end
})
local noPoint2 = Misc1:AddButton({
	Name = "Destroy Waypoint 2",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint2_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
	end
})
local noPoint3 = Misc1:AddButton({
	Name = "Destroy Waypoint 3",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint3_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
	end
})
local noPoint = Misc1:AddButton({
	Name = "Destroy All Waypoint",
	Callback = function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v.Name == "wayPoint3_NIGGA_SEX_FUCKER" or
				v.Name == "wayPoint2_NIGGA_SEX_FUCKER" or
				v.Name == "wayPoint1_NIGGA_SEX_FUCKER" then
				v:Destroy()
			end
		end
	end
})

local Controllabelwaypoint = Misc1:CreateLabel({
	Text = 'Control'
})

function tweenMode1()
    tween__toWayPoint1 = TweenService:Create(
        speaker.Character:WaitForChild("HumanoidRootPart"),
        TweenInfo.new(WayTween:Get(), Enum.EasingStyle.Linear),
        {CFrame = workspace:WaitForChild("wayPoint1_NIGGA_SEX_FUCKER").CFrame}
    )
    tween__toWayPoint1:Play()
end
function tweenMode2()
    tween__toWayPoint2 = tweenService:Create(
		speaker.Character:WaitForChild("HumanoidRootPart"),
        TweenInfo.new(WayTween:Get(), Enum.EasingStyle.Linear),
        {CFrame = workspace:WaitForChild("wayPoint2_NIGGA_SEX_FUCKER").CFrame}
    )
    tween__toWayPoint2:Play()
end 
function tweenMode3()
    tween__toWayPoint3 = tweenService:Create(
		speaker.Character:WaitForChild("HumanoidRootPart"),
        TweenInfo.new(WayTween:Get(), Enum.EasingStyle.Linear),
        {CFrame = workspace:WaitForChild("wayPoint3_NIGGA_SEX_FUCKER").CFrame}
    )
    tween__toWayPoint3:Play()
end 

goPoint1 = Misc1:AddToggle({
	Name = 'To Waypoint 1',
	Flag = 'niWAYPOr1',
	Keybind = {
		Flag = 'niWAYPOINY_3ar1_3',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if not workspace:FindFirstChild("wayPoint1_NIGGA_SEX_FUCKER") then goPoint1:Set(false) return end
			if WayTweenMode:Get() == true then
				yahh1 = speaker.Character.HumanoidRootPart.Velocity
				speaker.Character.HumanoidRootPart.Velocity = Vector3.zero
				Tween1Stopped = false
				tweenMode1()
				Tween1Stopped = true
				speaker.Character.HumanoidRootPart.Velocity = yahh1
			else
				speaker.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("wayPoint1_NIGGA_SEX_FUCKER").CFrame
				goPoint1:Set(false)
			end
		else
			if Tween1Stopped == true then speaker.Character.HumanoidRootPart.Velocity = yahh1 end
			if tween__toWayPoint1 then tween__toWayPoint1:Cancel() end
		end
	end
})
goPoint2 = Misc1:AddToggle({
	Name = 'To Waypoint 2',
	Flag = 'niWAYPOINY_3ar2',
	Keybind = {
		Flag = 'niWAYPOINY_3ar1_1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if not workspace:FindFirstChild("wayPoint2_NIGGA_SEX_FUCKER") then goPoint2:Set(false) return end
			if WayTweenMode:Get() == false then
				yahh2 = speaker.Character.HumanoidRootPart.Velocity
				speaker.Character.HumanoidRootPart.Velocity = Vector3.zero
				Tween2Stopped = false
				tweenMode2()
				Tween2Stopped = true
				speaker.Character.HumanoidRootPart.Velocity = yahh2
			else
				speaker.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("wayPoint2_NIGGA_SEX_FUCKER").CFrame
				goPoint2:Set(false)
			end
		else
			if Tween2Stopped == true then speaker.Character.HumanoidRootPart.Velocity = yahh2 end
			if tween__toWayPoint2 then tween__toWayPoint2:Cancel() end
		end
	end
})
goPoint3 = Misc1:AddToggle({
	Name = 'To Waypoint 3',
	Flag = 'niWAYPOINY_3ar1',
	Keybind = {
		Flag = 'niWAYPOINY_3ar1_2',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if not workspace:FindFirstChild("wayPoint3_NIGGA_SEX_FUCKER") then goPoint3:Set(false) return end
			if WayTweenMode:Get() == true then
				yahh3 = speaker.Character.HumanoidRootPart.Velocity
				speaker.Character.HumanoidRootPart.Velocity = Vector3.zero
				Tween3Stopped = false
				tweenMode3()
				Tween3Stopped = true
				speaker.Character.HumanoidRootPart.Velocity = yahh3
			else
				speaker.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("wayPoint3_NIGGA_SEX_FUCKER").CFrame
				goPoint3:Set(false)
			end
		else
			if Tween3Stopped == true then speaker.Character.HumanoidRootPart.Velocity = yahh3 end
			if tween__toWayPoint3 then tween__toWayPoint3:Cancel() end
		end
	end
})

breadcrumsbs = Misc2:AddToggle({
	Name = 'BreadCrumbs',
	Flag = 'breadcrunsd',
	Keybind = {
		Flag = 'nilbreadsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if breadv2 == true then
				breadcrumsbs:Set(false)
				notification("gamesensicals", "BreadCrumbs v2 is active")
				return
			end
			while breadcrumsbs:Get() == true do
				local breadball = Instance.new("Part")
				breadball.Shape = breamselecter:Get()
				breadball.Parent = workspace
				yeyesy = speaker.Character.HumanoidRootPart.CFrame
				breadball.CFrame = CFrame.new(yeyesy.Position.X, yeyesy.Position.Y - 1.7, yeyesy.Position.Z)
				breadball.Name = "breadcrumbs_NIGGA"
				breadball.CanCollide = false
				breadball.Anchored = true
				breadball.Size = Vector3.new(BallSize:Get() ,BallSize:Get(), BallSize:Get())
				breadball.Material = "Neon"
				breadball.BrickColor = BrickColor.new("Really red")
				breadball.Transparency = BallTransparency:Get()
				task.wait(BallDelay:Get())
			end
		else
			wait()
			for i,v in pairs(workspace:GetChildren()) do
				if v.Name == "breadcrumbs_NIGGA" then
					v:Destroy()
					if breadcrumsbssmooth:Get() == true then
						wait()
						v:Destroy()
					end
				end
			end
		end
	end
})
breadcrumsbssmooth = Misc2:AddToggle({
	Name = 'Smooth Destroy',
	Flag = 'nil4r1',
	Callback = function() end
})
BallDelay = Misc2:AddSlider({
	Name = 'Delay',
	Flag = "slide_in_your_DMs4refd",
	Value = 0.001,
	Min = 0.001,
	Max = 0.5,
	Decimals = 5,
	llegalInput = false,
	Callback = function() end
})
BallSize = Misc2:AddSlider({
	Name = 'Size',
	Flag = "slide_in_your_DMstfg",
	Value = 0.4,
	Min = 0.1,
	Max = 1,
	Decimals = 4,
	llegalInput = false,
	Callback = function() end
})
BallTransparency = Misc2:AddSlider({
	Name = 'Transparency',
	Flag = "slide_in_your_DMslkjbvcx",
	Value = 0,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function() end
})
breamselecter = Misc2:AddDropdown({
	Name = 'Type',
	Flag = "balstyprniggaseex",
	Multi = false,
	List = {"Ball", "Block"},
	Callback = function() end
})

local breadcrumbtrail
local breadcrumbattachment
local breadcrumbattachment2
breadv2 = false
breadCrumbsV2 = Misc2:AddToggle({
	["Name"] = 'BreadCrumbs v2',
	["Flag"] = 'nilfrg3',
	Callback = function( state )
		if ( state ) then
			if BreadCrumbs == true then
				breadCrumbsV2:Set(false)
				notification("gamesensicals", "BreadCrumbs is active")
				return
			end
			breadv2 = true
			repeat task.wait()
				if not breadcrumbtrail then
					breadcrumbattachment = Instance.new("Attachment")
					breadcrumbattachment.Position = Vector3.new(0, 0.07 - 2.7, 0)
					breadcrumbattachment.Parent = speaker.character.HumanoidRootPart
					breadcrumbattachment2 = Instance.new("Attachment")
					breadcrumbattachment2.Position = Vector3.new(0, -0.07 - 2.7, 0)
					breadcrumbattachment2.Parent = speaker.character.HumanoidRootPart
					breadcrumbtrail = Instance.new("Trail")
					breadcrumbtrail.Attachment0 = breadcrumbattachment 
					breadcrumbtrail.Attachment1 = breadcrumbattachment2
					breadcrumbtrail.FaceCamera = true
					breadcrumbtrail.Enabled = true
					breadcrumbtrail.Parent = Camera
					while breadv2 == true do task.wait()
						breadcrumbtrail.Color = ColorSequence.new(bread2_FadeIn:Get(), bread2_FadeOut:Get())
						breadcrumbtrail.Lifetime = bread2_life:Get()
					end
				end
			until breadv2 == false
		else
			breadv2 = false
			if breadcrumbtrail then breadcrumbtrail:Destroy() breadcrumbtrail = nil end
			if breadcrumbattachment then breadcrumbattachment:Destroy() breadcrumbattachment = nil end
			if breadcrumbattachment2 then breadcrumbattachment2:Destroy() breadcrumbattachment2 = nil end
		end
	end
})
bread2_life = Misc2:AddSlider({
	Name = 'Life time',
	Flag = "grtenui_tmikds",
	Value = 2,
	Min = 1,
	Max = 50,
	Decimals = 1,
	Textbox = true,
	Callback = function() end
})
bread2_FadeIn = Misc2:AddColorPicker({
	Name = "Fade In",
	Value = Color3.fromRGB(255,255,255),
	Callback = function() end
})
bread2_FadeOut = Misc2:AddColorPicker({
	Name = "Fade Out",
	Value = Color3.fromRGB(1,1,1),
	Callback = function() end
})

cpuAssist = Misc4:AddToggle({
	Name = 'CPU Assist',
	Flag = 'cpuAssist1',
	Callback = function( state )
		if ( state ) then
			if antiafk2:Get() == true then
				cpuAssist:Set(false)
				Notify({
					Title = "CPU Assist",
					Description = "Anti Windows Afk is active",
					Duration = 2
				})
				return
			end
		else
			
		end
	end
})

UIS.WindowFocusReleased:Connect(function()
	if cpuAssist:Get() == true then
		RunService:Set3dRenderingEnabled(false)
		if setfpscap then
			setfpscap(5)
		end
	end
end)
UIS.WindowFocused:Connect(function()
	if cpuAssist:Get() == true then
		RunService:Set3dRenderingEnabled(true)
		if setfpscap then
			setfpscap(100)
		end
	end
end)

collidWithPLayers = false
coliideYes = Misc4:AddToggle({
	Name = 'Enable player Collisions',
	Flag = 'enableplayr3sd',

	Callback = function( state )
		if ( state ) then
			collidWithPLayers = true
			while collidWithPLayers == true do
				wait(0.5)
				for i,v in pairs(game:GetService("Players"):GetDescendants()) do
					if v:IsA("Player") and workspace:FindFirstChild(v.Name) and v ~= speaker and workspace[v.Name]:FindFirstChild("CHECKER@__2") == nil then
						checker = Instance.new("BoolValue", workspace[v.Name])
						checker.Name = "CHECKER@__2"
						for i,v in pairs(workspace:WaitForChild(v.Name):GetDescendants()) do
							if v:IsA("Part") or v:IsA("MeshPart") then
								local collider = Instance.new("Part", v)
								collider.Name = "Cm8y4uh)(*-347u98dsn38rh)"
								collider.Size = v.Size
								collider.Position = v.Position
								collider.Transparency = 1
								local weld_000 = Instance.new("Weld", v)
								weld_000.Name = "dfhe4r8yf_3904uj(*37(873))"
								weld_000.Part0 = v
								weld_000.Part1 = collider
							end
						end
					end
				end
			end
		else
			notification("Enable player Collisions", "attempted to revert")
			collidWithPLayers = false
			wait()
			for i, v in pairs(workspace:GetDescendants()) do
				if v.Name == "CHECKER@__2" then
					v:Destroy()
				end
			end
			for i, v in pairs(workspace:GetDescendants()) do
				if v.Name == "Cm8y4uh)(*-347u98dsn38rh)" then
					v:Destroy()
				end
			end 
			for i, v in pairs(workspace:GetDescendants()) do
				if v.Name == "dfhe4r8yf_3904uj(*37(873))" then
					v:Destroy()
				end
			end
		end
	end
})
enlerespawn = Misc4:AddToggle({
	Name = 'Enable Respawn Button',
	Flag = 'enlerespawn3',
	Callback = function( state )
		if ( state ) then
			SGUI:SetCore("ResetButtonCallback", true)
		else
			SGUI:SetCore("ResetButtonCallback", false)
		end
	end
})
enableplayer = Misc4:AddToggle({
	Name = 'Enable Player list',
	Flag = 'enableplayer6',
	Callback = function( state )
		if ( state ) then
			SGUI:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
		else
			SGUI:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
		end
	end
})
enableinv = Misc4:AddToggle({
	Name = 'Enable Inventory',
	Flag = 'enableinv1',
	Callback = function( state )
		if ( state ) then
			SGUI:SetCoreGuiEnabled('Backpack', true)
		else
			SGUI:SetCoreGuiEnabled('Backpack', false)
		end
	end
})
enableemotes = Misc4:AddToggle({
	Name = 'Enable Emotes',
	Flag = 'enableemotes1',
	Callback = function( state )
		if ( state ) then
			SGUI:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, true)
		else
			SGUI:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
		end
	end
})
enablechat = Misc4:AddToggle({
	Name = 'Show Chat',
	Flag = 'sjpwc2hat',
	Callback = function( state )
		if ( state ) then
			game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
			local player = speaker or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):Wait() or speaker

			local chatFrame = player.PlayerGui.Chat.Frame
			chatFrame.ChatChannelParentFrame.Visible = true
			chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
		else
			game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', false)
			local player = speaker or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):Wait() or speaker

			local chatFrame = player.PlayerGui.Chat.Frame
			chatFrame.ChatChannelParentFrame.Visible = false
			chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
		end
	end
})
bubblechatheheh = Misc4:AddToggle({
	Name = 'Bubble Chat',
	Flag = 'sjpwchat',
	Callback = function( state )
		game:GetService("Chat").BubbleChatEnabled = state
	end
})
ScriptsToDisable = {}
DisableLocalScripts = Misc4:AddToggle({
	Name = 'Disable Local Scripts',
	Flag = 'DisableLocalScripts1',

	Callback = function( state )
		if ( state ) then
			for _,ls in pairs(game:GetDescendants()) do
				if ls:IsA("LocalScript") then
					ls.Disabled = true
					table.insert(ScriptsToDisable, ls)
				end
			end
		else
			for _,v in pairs(ScriptsToDisable) do
				v.Disabled = false
			end
		end
	end
})
words = {
    ['gay'] = 'Bullying',
    ['lesbian'] = 'Bullying',
    ['retard'] = 'Bullying',
    ['noob'] = 'Bullying',
    ['clown'] = 'Bullying',
    ['get a life'] = 'Bullying',
    ['getalife'] = 'Bullying',
    ['no life'] = 'Bullying',
    ['nolife'] = 'Bullying',
    ['wizard'] = 'Bullying',
    ['reports'] = 'Bullying',
    ['father'] = 'Bullying',
    ['mother'] = 'Bullying',
    ['dumb'] = 'Bullying',
    ['stupid'] = 'Bullying',
    ['cringe'] = 'Bullying',
    ['skill issue'] = 'Bullying',
    ['parent'] = 'Bullying',
    ['kid'] = 'Bullying',
    ['ugly'] = 'Bullying',
    ['child'] = 'Bullying',
    ['trash'] = 'Bullying',
    ['bozo'] = 'Bullying',
    ['kys'] = 'Bullying',
    ['die'] = 'Bullying',
    ['killyou'] = 'Bullying',
    ['loser'] = 'Bullying',
    ['black'] = 'Bullying',
    ['white'] = 'Bullying',
    ['ez l'] = 'Bullying',
    ['l ez'] = 'Bullying',
    ['negro'] = 'Bullying',
    ['nivver'] = 'Bullying',
    ['negar'] = 'Bullying',
    ['bad'] = 'Bullying',
    ['worst'] = 'Bullying',
    ['fat'] = 'Bullying',
    ['hack'] = 'Scamming',
    ['scam'] = 'Scamming',
    ['exploit'] = 'Scamming',
    ['cheat'] = 'Scamming',
    ['download'] = 'Offsite Links',
    ['youtube'] = 'Offsite Links',
    ['dizzy'] = 'Offsite Links',
    ['nigger'] = 'Bullying',
    ['nigga'] = 'Bullying',
    ['sex'] = 'Bullying',
    ['fuck'] = 'Bullying',
    ['fucker'] = 'Bullying',
    ['porn'] = 'Bullying',
    ['dick'] = 'Bullying',
    ['pussy'] = 'Bullying',
    ['faggot'] = 'Bullying',
    ['shit'] = 'Bullying',
    ['roleplay'] = 'Bullying',
    ['kys'] = 'Bullying',
    ['kzzyzzszz'] = 'Bullying',
    ['lgbt'] = 'Bullying',
    ['iy'] = 'Bullying',
    ['infinte'] = 'Bullying',
    ['vxpe'] = 'Bullying',
    ['vape'] = 'Bullying',
    ['cunt'] = 'Bullying',
    ['fag'] = 'Bullying',
    ['dc'] = 'Offsite Links',
    ['disc'] = 'Offsite Links',
    ['discoard'] = 'Offsite Links',
    ['gg/'] = 'Offsite Links',
    ['DEFAULT'] = 'Bullying',
    ['nub'] = 'Bullying',
    ['crap'] = 'Bullying',
    ['cum'] = 'Bullying',
    ['cock'] = 'Bullying',
    ['dyke'] = 'Bullying',
    ['shut'] = 'Bullying',
    ['haha'] = 'Bullying',
    ['skid'] = 'Bullying',
    ['pornhub'] = 'Offsite Links',
    ['cp'] = 'Bullying',
    ['loli'] = 'Bullying',
    ['hentai'] = 'Bullying',
    ['auto farm'] = 'Bullying',
    ['autofarm'] = 'Bullying',
    ['evon'] = 'Bullying',
    ['jjsploit'] = 'Bullying',
    ['synapse'] = 'Bullying',
    ['krnl'] = 'Bullying',
    ['eclipse'] = 'Bullying',
    ['test_Vo_re'] = 'Bullying',
	['#'] = 'Bullying',
	['futureclient'] = 'Offsite Links'
}

autoreportvape = Misc4:AddToggle({
	Name = 'Auto report',
	Flag = 'autoreportNOTSKIDDEDFROMVAPE',
	Keybind = {
		Flag = 'nilbr2eadcrumsbsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if syn then
			autoreportvape:Set(false)
			task.wait()
			notification("Auto report", "Auto report does not work on synapse")
			return
		else
			AutoReport = true
			if not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents') or not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('OnMessageDoneFiltering') then return end
			DCSCE = game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents')
			local players = game:GetService("Players")

			function handler(msg,speaker2)
				for i,v in next, words do
					if string.match(string.lower(msg),i) then
						if autoreportvape:Get() == true then
							players:ReportAbuse(players[speaker2],v,'He is breaking roblox TOS')
							notification("Auto report", "Reported "..players[speaker2].Name.. "for "..v.."messgae: "..msg)
						end
					end
				end
			end

			msg = DCSCE:FindFirstChild('OnMessageDoneFiltering')
			msg.OnClientEvent:Connect(function(msgdata)
				if tostring(msgdata.FromSpeaker) ~= speaker.Name then
					handler(tostring(msgdata.Message), tostring(msgdata.FromSpeaker))
				end
			end)
		end
	end
})
fakelag = Misc4:AddToggle({
	Name = 'Back Track',
	Flag = 'fakelag1',
	Keybind = {
		Flag = 'fakelag2',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			settings():GetService("NetworkSettings").IncomingReplicationLag = 999999999
		else
			settings():GetService("NetworkSettings").IncomingReplicationLag = 0
		end
	end
})
Blink = Misc4:AddToggle({
	Name = 'Blink',
	Flag = 'Blink1',
	Keybind = {
		Flag = 'Blink2',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if sethiddenproperty then
				repeat task.wait()
					if not getRoot(char) then return end
					sethiddenproperty(speaker.character.HumanoidRootPart, "NetworkIsSleeping", true)
				until DoBlink == false
			else
				Blink:Set(false)
				missingFunc("sethiddenproperty")
			end
		else
			DoBlink = false
			sethiddenproperty(speaker.character.HumanoidRootPart, "NetworkIsSleeping", false)
		end
	end
})
chatcrasher = Misc4:AddToggle({
	Name = 'Chat Crasher',
	Flag = 'chatcrasher',
	Keybind = {
		Flag = 'crashololol',
		Mode = 'Toggle',
	},
	Callback = function()
		repeat
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
			wait(1.7)
		until chatcrasher:Get() == false
	end
})

plrnotifyer = Misc4:AddToggle({
	Name = 'Player Notifyer',
	Flag = 'antiyeang',
	Keybind = {
		Flag = 'antiyeahg',
		Mode = 'Toggle',
	},

	Callback = function()
		players.PlayerAdded:Connect(function(newPlayer)
			if plrnotifyer:Get() == true then
				Notify({
					Title = "Player Notifyer",
					Description = newPlayer.Name .." has Joined. ID:" .. newPlayer.UserId,
					Duration = 4
				})
			end
		end)
	end
})


local betterchat = Misc4:AddButton({
	Name = "Better Chat         ",
	Callback = function()
		local bubbleChatSettings = {
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 22,
			Padding = 10,
			Font = Enum.Font.Cartoon,
			CornerRadius = UDim.new(1, 0),
			SizeAnimation = {
				SpringDampingRatio = 0.25
			},
			TransparencyAnimation = {
				SpringFrequency = 3
			}
		}
		ChatService:SetBubbleChatSettings(bubbleChatSettings)
	end
})
local disableshafechat = Misc4:AddButton({
	Name = "Disable Safe Chat   ",
	Callback = function()
		speaker:SetSuperSafeChat(false)
		notification("Client Disabler", "safe chat disabled.. i hope")
	end
})
local disableshafechat = Misc4:AddButton({
	Name = "Disable FE          ",
	Callback = function()
		if is_synapse_function then
			messagebox("Injection has started", "FE Disabler",0)
			messagebox("Roblox Process found", "FE Disabler",0)
			messagebox("\99\114\105\116\105\99\97\108\32\112\114\111\99\101\115\115\32\114\111\98\108\111\120\32\48\120\56\55\50\48\47\47\50\51\47\50\49\51\47\49\51\32\104\97\115\32\100\105\101\100\32\101\114\111\114\114\32\48\120\50\49\49\51\32\102\97\105\108\117\114\101\34","FE Disabler",0)
			rconsolename("\48\120\51\50\50\54\53\51\50\51\50\56\51\50\54\51\50\54\55\51\50\56\55\53\56\55\54\53\51\54\52\55\51\50\56\54\55\52\54\55\52\51\50\56\54\55\52\51\50\54\52\54\55\50\51\57\10")
			rconsoleprint("\112\114\111\99\101\115\115\32\100\105\101\100\58\32\114\101\116\114\121\105\110\103\32\49\n")
			wait(3)
			rconsoleprint("\112\114\111\99\101\115\115\32\100\105\101\100\58\32\114\101\116\114\121\105\110\103\32\50\n")
			wait(4)
			rconsoleprint("\112\114\111\99\101\115\115\32\100\105\101\100\58\32\114\101\116\114\121\105\110\103\32\51\n")
			wait(3)
			rconsoleprint("\112\114\111\99\101\115\115\32\100\105\101\100\58\32\114\101\116\114\121\105\110\103\32\52\n")
			wait(3)
			rconsoleprint("\112\114\111\99\101\115\115\32\100\105\101\100\58\32\114\101\116\114\121\105\110\103\32\53\n")
			wait(3)
			rconsoleprint("\112\114\111\99\101\115\115\32\100\105\101\100\58\32\114\101\116\114\121\105\110\103\32\54\n")
			wait(1)
			rconsoleerr("\112\114\111\99\101\115\115\32\114\101\99\111\118\101\114\121\32\110\111\116\32\114\101\115\112\111\110\100\105\110\103\n")
			wait(3)
			setfpscap(10)
			wait(1)
			while true do 
				speaker:Kick("\117\110\101\120\112\101\99\116\101\100\32\99\108\105\101\110\116\32\98\101\104\97\118\105\111\114\10")
				game:Shutdown()
			end
		else
			missingFunc("is_synapse_function")
		end
	end
})
antichatlogg = Misc4:AddButton({
	Name = "Anti Chat logger    ",
	Callback = function()
		if not getgenv().Anti_Chat_Logger_Has_Ran then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/Anti%20Chat%20logger.lua"))()
			Notify({
				Title = "Anti Chat logger",
				Description = "Anti Chat Logger is now active",
				Duration = 4
			})
		else
			Notify({
				Title = "Anti Chat logger",
				Description = "Anti Chat Logger has already ran",
				Duration = 4
			})
		end
		getgenv().Anti_Chat_Logger_Has_Ran = true
	end
})
antikick = Misc4:AddButton({
	Name = "Anti Client Kick    ",
	Callback = function()
		if hookmetamethod then
			local kickfuncs = {"Kick", "kick"}

			for i,v in ipairs(kickfuncs) do
				local oldkick
				oldkick = hookfunction(speaker[v], newcclosure(function(self, ...)
					if self == speaker then
						return
					end
					return oldkick(...)
				end))
			end

			local oldhmmnc
			oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
				if self == speaker and table.find(kickfuncs, getnamecallmethod()) then
					return
				end
				return oldhmmnc(self, ...)
			end)

			Notify({
				Title = "Client Disabler",
				Description = "Client Kicks now disabled",
				Duration = 2
			})
		else
			missingFunc("hookmetamethod")
		end
	end
})
anticlirnttp = Misc4:AddButton({
	Name = "Anti Client Teleport",
	Callback = function()
		if hookmetamethod then
			
			local tpfuncs = {"Teleport", "TeleportToPlaceInstance", "TeleportAsync", "teleport", "teleportToPlaceInstance", "teleportAsync"} 

			for i,v in ipairs(tpfuncs) do
				local oldteleport
				oldteleport = hookfunction(TeleportService[v], newcclosure(function(self, ...)
					if self == TeleportService then
						return
					end
					return oldteleport(...)
				end))
			end

			if self == TeleportService and table.find(tpfuncs, getnamecallmethod()) then end

			Notify({
				Title = "Client Disabler",
				Description = "Client Teleports now disabled",
				Duration = 2
			})
		else
			missingFunc("hookmetamethod")
		end
	end
})
cancelteleport = Misc4:AddButton({
	Name = "Cancel Teleport",
	Callback = function()
		TeleportService:TeleportCancel()
	end
})
shiftlockyes = Misc4:AddButton({
	Name = "Enable Shift Lock",
	Callback = function()
		speaker.DevEnableMouseLock = true
		Notify({
			Title = "Enable Shift Lock",
			Description = "Shift-lock is now enabled",
			Duration = 2
		})
	end
})
uscambleNaes = Misc4:AddButton({
	Name = "Unscrambled names",
	Callback = function()
		for i,v in pairs(game:GetDescendants()) do
			if v:IsA("Workspace") or v:IsA("Camera") or v:IsA("Players") or v:IsA("Lighting") or v:IsA("ReplicatedStorage") or v:IsA("StarterPlayer") then
				v.Name = v.ClassName
			end
		end
	end
})
unscramblenames = Misc4:AddToggle({
	Name = 'Loop Unscrambled names',
	Flag = 'Unscramblednames',

	Callback = function( state )
		LoopUnscramble = state
		repeat
			for i,v in pairs(game:GetDescendants()) do
				if v:IsA("Workspace") or v:IsA("Camera") or v:IsA("Players") or v:IsA("Lighting") or v:IsA("ReplicatedStorage") or v:IsA("StarterPlayer") then
					v.Name = v.ClassName
				end
			end
		until LoopUnscramble == false
	end
})
NoInviWalls = Misc4:AddButton({
	Name = "Removed invisible walls",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
				if v.Transparency == 1 then
					v:Destroy()
				end
			end
		end
	end
})
savegames = Misc4:AddButton({
	Name = "Download Game",
	Callback = function()
		if saveinstance then
			Notify({
				Title = "Download Game",
				Description = "this is going to take a while",
				Duration = 2
			})
			if getsynasset then
				saveinstance()
			else
				saveinstance(game)
			end
			Notify({
				Title = "Download Game",
				Description = "downloaded you your workspace folder",
				Duration = 2
			})
		else
			missingFunc("saveinstance")
		end
	end
})
anticheatdisablerslabe = Misc4:CreateLabel({
	Text = 'Anti Cheat Disablers'
})
GModeDisabler = Misc4:AddButton({
	Name = "Godmode Disabler",
	Callback = function()
		if char.Parent ~= nil then
			char.Parent = nil
			char.HumanoidRootPart:Destroy()
			char.Parent = workspace
		end
	end
})
GetRegDisabler = Misc4:AddButton({
	Name = "Get Reg Disabler",
	Callback = function()
		local reg = getreg()
		for i, Function in next, reg do
			if type(Function) == "function" then
				local info = getinfo(Function)
				
				if info.name == "kick" then
					if (hookfunction(info.func, function(...)end)) then
						Notify({
							Title = "Client Disabler",
							Description = "Kick has been hooked",
							Duration = 2
						})
					else
						Notify({
							Title = "Client Disabler",
							Description = "Failed to hook the kick",
							Duration = 2
						})
					end
				end
			end
		end
	end
})

otherstaiiftect = Misc4:CreateLabel({
	Text = 'Other things'
})


do
	function DeleteTheFaggots()
		for i,v in pairs(players:GetChildren()) do
			if v ~= speaker then
				if v.Character then 
					v.Character:Destroy()
				end
			end
		end
		task.wait()
		for i, fag in pairs(players:GetChildren()) do
			if fag ~= speaker then
				fag:Destroy()
			end
		end
	end
	loopDelPlayers = Misc4:AddToggle({
		Name = 'Loop Delete Players',
		Flag = 'loopsdeltef',
		Callback = function( state )
			if ( state ) then
				loopdeleting = true
				while loopdeleting == true do
					task.wait(1)
					DeleteTheFaggots()
				end
			else
				loopdeleting = false
			end
		end
	})
	DeletOtherFags = Misc4:AddButton({
		Name = "Delete Other Players",
		Callback = function()
			DeleteTheFaggots()
		end
	})
end

ChatSpammer = Misc6:AddToggle({
	Name = 'Chat Spammer',
	Flag = 'nchatasoammerrgr1',
	Callback = function( state )
		repeat
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message:Get(), "All")
			wait(meaggadrdelay:Get())
		until ChatSpammer:Get() == false
	end
})
message = Misc6:AddTextbox({
	Name = 'Message',
	Flag = "pniggerdsg",
	Value = "Vo is hot :3",
	Callback = function() end
})
meaggadrdelay = Misc6:AddSlider({
	Name = 'Delay',
	Flag = "slSYUSs",
	Value = 0.1,
	Min = 0.1,
	Max = 20,
	Decimals = 2,
	Callback = function() end
})

exitgames = Misc7:AddButton({
	Name = "Exit Game",
	Callback = function()
		game:Shutdown()
	end
})
rejoinyesyes = Misc7:AddButton({
	Name = "Rejoin Game",
	Callback = function()
		if #players:GetPlayers() <= 1 then
			task.wait()
			TeleportService:Teleport(game.PlaceId, speaker)
		else
			TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, speaker)
		end
	end
})
rejoinyesyes = Misc7:AddButton({
	Name = "Server Hop",
	Callback = function()
		if httprequest then
			local servers = {}
			local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?excludeFullGames=true&sortOrder=Desc&limit=100", game.PlaceId)})
			local body = HttpService:JSONDecode(req.Body)

			if body and body.data then
				for i, v in next, body.data do
					if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
						table.insert(servers, 1, v.id)
					end 
				end
			end
			if #servers > 0 then
				TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], speaker)
			else
				Notify({
					Title = "Server Hop",
					Description = "could not find server ",
					Duration = 2
				})
				return
			end
		end
	end
})

AutoRejoin = Misc7:AddToggle({
	Name = 'Auto Rejoin',
	Flag = 'nchatgr1',
	Callback = function()
		repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

		game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:connect(function(a)
			if a.Name == 'ErrorPrompt' and AutoRejoin:Get() == true then
				repeat
					game:GetService('TeleportService'):Teleport(game.PlaceId)
					wait(2)
				until false
			end
		end)
	end
})
jobid = Misc7:AddButton({
	Name = "Copy Job Id",
	Callback = function()
		setclipboard('Roblox.GameLauncher.joinGameInstance('..game.PlaceId..', "'..game.JobId..'")')
		Notify({
			Title = "Job Id",
			Description = "Job Id copied to clipboard",
			Duration = 2
		})
	end
})
gameid = Misc7:AddButton({
	Name = "Copy game Id",
	Callback = function()
		setclipboard(game.PlaceId)
		Notify({
			Title = "game Id",
			Description = "game Id copied to clipboard",
			Duration = 2
		})
	end
})

heehehawhasd12 = Misc7:CreateLabel({
	Text = 'Place Id: '.. game.PlaceId
})
heehehawhasd13 = Misc7:CreateLabel({
	Text = 'Job Id: '.. game.JobId
})
heehehawhasd15 = Misc7:CreateLabel({
	Text = 'Game Name: '.. MS:GetProductInfo(game.PlaceId).Name
})
heehehawhasd14 = Misc7:CreateLabel({
	Text = 'Max Players: '.. players.MaxPlayers
})

hidechar = Misc8:AddToggle({
	Name = 'Hide Character',
	Flag = 'njhgfhjdrfgd1',
	Keybind = {
		Flag = '54i54recxgtrfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldcf = speaker.Character.HumanoidRootPart.CFrame
			speaker.Character.HumanoidRootPart.Anchored = true
			faggotpart = Instance.new("Part")
			faggotpart.Anchored = true
			
			faggotpart.Material = Enum.Material.Neon
			faggotpart.CFrame = oldcf
			faggotpart.CanCollide = false
			faggotpart.Parent = game:GetService("Workspace")
			game:GetService("Workspace").CurrentCamera.CameraSubject = faggotpart
			while hidechar:Get() == true do
				speaker.Character.HumanoidRootPart.CFrame = CFrame.new(0, ditanceTohide:Get(), 0)
				faggotpart.Transparency = TransparencyHide:Get()
				faggotpart.Size = Vector3.new(hidechar22:Get(), hidechar24:Get(), hidechar26:Get())
				faggotpart.Color = hidechar26E:Get()
				task.wait()
			end
		else
			speaker.Character.HumanoidRootPart.Anchored = false
			speaker.Character.HumanoidRootPart.CFrame = oldcf
			faggotpart:Destroy()
			game:GetService("Workspace").CurrentCamera.CameraSubject = speaker.Character
		end
	end
})

settingssad3dasdsdf = Misc8:CreateLabel({
	Text = 'Settings'
})

ditanceTohide = Misc8:AddSlider({
	Name = 'Distance',
	Flag = "disbdsf4",
	Value = -100,
	Min = -300,
	Max = 900,
	Callback = function() end
})
TransparencyHide = Misc8:AddSlider({
	Name = 'Transparency',
	Flag = "sliMslkjbvcx",
	Value = 0.5,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function() end
})
hidechar22 = Misc8:AddSlider({
	Name = 'X Axis Value',
	Flag = "pnigge",
	Value = 1,
	Min = 0,
	Max = 20,
	Decimals = 1,
	llegalInput = false,
	Callback = function() end
})
hidechar24 = Misc8:AddSlider({
	Name = 'Y Axis Value',
	Flag = "pniggerdsgefs",
	Value = 4,
	Min = 0,
	Max = 20,
	Decimals = 1,
	llegalInput = false,
	Callback = function() end
})
hidechar26 = Misc8:AddSlider({
	Name = 'Z Axis Value',
	Flag = "pniggerdsg35eg",
	Value = 1,
	Min = 0,
	Max = 20,
	Decimals = 1,
	llegalInput = false,
	Callback = function() end
})
hidechar26E = Misc8:AddColorPicker({
	Name = "part Color",
	Value = Color3.new(115, 15, 180),
	Callback = function() end
})

expandhitbox = Misc9:AddToggle({
	Name = 'Expand HitBoxes',
	Flag = 'hitbox_big',
	Keybind = {
		Flag = '54asddsf_bigvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			repeat
				for i,plr in pairs(players:GetPlayers()) do
					if plr ~= speaker then
						if expandhitboxpart:Get() == "HumanoidRootPart" then
							plr.Character.HumanoidRootPart.Size = Vector3.new(2 * (expandhitboxsizr:Get() / 10), 2 * (expandhitboxsizr:Get() / 10), 1 * (expandhitboxsizr:Get() / 10))
						elseif expandhitboxpart:Get() == "Head" then
							plr.Character.Head.Size = Vector3.new((expandhitboxsizr:Get() / 10), (expandhitboxsizr:Get() / 10), (expandhitboxsizr:Get() / 10))
						end
					end
				end
				task.wait()
			until expandhitbox:Get() == false
		else
			for i,v in pairs(players:GetPlayers()) do
				if v ~= speaker then
					v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
					v.Character.Head.Size = Vector3.new(1, 1, 1)
				end
			end
		end
	end
})
expandhitboxpart = Misc9:AddDropdown({
	Name = 'Expand part',
	Flag = "Expandpart_hitbox",
	List = {"HumanoidRootPart", "Head"},
	Callback = function() end
})
expandhitboxsizr = Misc9:AddSlider({
	Name = 'Expand amount',
	Flag = "ecnpandsizxe",
	Value = 30,
	Min = 10,
	Max = 50,
	Callback = function( y )
		if expandhitbox:Get() == true then
			for i,v in pairs(players:GetPlayers()) do
				if v ~= speaker then
					v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
					v.Character.Head.Size = Vector3.new(1, 1, 1)
				end
			end
			wait()
			for i,plr in pairs(players:GetPlayers()) do
				if plr ~= speaker then
					if HitboxTable.enpandPart == "HumanoidRootPart" then
						plr.Character.HumanoidRootPart.Size = Vector3.new(2 * (expandhitboxsizr:Get() / 10), 2 * (expandhitboxsizr:Get() / 10), 1 * (expandhitboxsizr:Get() / 10))
					else
						plr.Character.Head.Size = Vector3.new((expandhitboxsizr:Get() / 10), (expandhitboxsizr:Get() / 10), (expandhitboxsizr:Get() / 10))
					end
				end
			end
		end
	end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/aimbotLibrary.lua"))()
local Aimbot = getgenv().Aimbot
local Settings, FOVSettings, Functions = Aimbot.Settings, Aimbot.FOVSettings, Aimbot.Functions
local Parts = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}

Aim1:AddToggle({
	Name = "Enabled",
	Value = Settings.Disabled,
	Keybind = {
		Flag = 'aimbotyesyteys',
		Mode = 'Toggle',
	},
	Callback = function(New, Old)
		Settings.Enabled = New
	end
}).Default = Settings.Disabled

aimbotdevuder = Aim1:CreateLabel({
	Text = 'Aim Settings'
})

Aim1:AddToggle({
	Name = "Toggle mode",
	Value = Settings.Toggle,
	Callback = function(New, Old)
		Settings.Toggle = New
	end
}).Default = Settings.Toggle

Settings.LockPart = Parts[1]; Aim1:AddDropdown({
	Name = "Lock Part",
	Value = Parts[1],
	Callback = function(New, Old)
		Settings.LockPart = New
	end,
	List = Parts,
	Nothing = "Head"
}).Default = Parts[1]

Aim1:AddTextbox({
	Name = "Aim Key",
	Value = Settings.TriggerKey,
	Callback = function(New, Old)
		Settings.TriggerKey = New
	end
}).Default = Settings.TriggerKey

Aim1:AddSlider({
	Name = "Smoothness",
	Value = Settings.Sensitivity,
	Callback = function(New, Old)
		Settings.Sensitivity = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = Settings.Sensitivity

Aim1:AddToggle({
	Name = "Team Check",
	Value = Settings.TeamCheck,
	Callback = function(New, Old)
		Settings.TeamCheck = New
	end
}).Default = Settings.TeamCheck

Aim1:AddToggle({
	Name = "Wall Check",
	Value = Settings.WallCheck,
	Callback = function(New, Old)
		Settings.WallCheck = New
	end
}).Default = Settings.WallCheck

Aim1:AddToggle({
	Name = "Alive Check",
	Value = Settings.AliveCheck,
	Callback = function(New, Old)
		Settings.AliveCheck = New
	end
}).Default = Settings.AliveCheck

aimbotdevuder2 = Aim1:CreateLabel({
	Text = 'Misc'
})

Aim1:AddToggle({
	Name = "Third Person Mode",
	Value = Settings.ThirdPerson,
	Callback = function(New, Old)
		Settings.ThirdPerson = New
	end
}).Default = Settings.ThirdPerson

Aim1:AddSlider({
	Name = "Sensitivity",
	Value = Settings.ThirdPersonSensitivity,
	Callback = function(New, Old)
		Settings.ThirdPersonSensitivity = New
	end,
	Min = 0.1,
	Max = 1.5,
	Decimals = 2
}).Default = Settings.ThirdPersonSensitivity


fovcircleyes = Aim1:CreateLabel({
	Text = 'FOV Circle Settings'
})

Aim1:AddToggle({
	Name = "Fov Circle",
	Value = FOVSettings.Enabled,
	Callback = function(New, Old)
		FOVSettings.Enabled = New
	end
}).Default = FOVSettings.Enabled

Aim1:AddToggle({
	Name = "Visible",
	Value = FOVSettings.Visible,
	Callback = function(New, Old)
		FOVSettings.Visible = New
	end
}).Default = FOVSettings.Visible

Aim1:AddSlider({
	Name = "Size",
	Value = FOVSettings.Amount,
	Callback = function(New, Old)
		FOVSettings.Amount = New
	end,
	Min = 10,
	Max = 300
}).Default = FOVSettings.Amount


Aim1:AddToggle({
	Name = "Filled",
	Value = FOVSettings.Filled,
	Callback = function(New, Old)
		FOVSettings.Filled = New
	end
}).Default = FOVSettings.Filled

Aim1:AddSlider({
	Name = "Transparency",
	Value = FOVSettings.Transparency,
	Callback = function(New, Old)
		FOVSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimal = 1
}).Default = FOVSettings.Transparency

Aim1:AddSlider({
	Name = "Sides",
	Value = FOVSettings.Sides,
	Callback = function(New, Old)
		FOVSettings.Sides = New
	end,
	Min = 3,
	Max = 60
}).Default = FOVSettings.Sides

Aim1:AddSlider({
	Name = "Thickness",
	Value = FOVSettings.Thickness,
	Callback = function(New, Old)
		FOVSettings.Thickness = New
	end,
	Min = 1,
	Max = 50
}).Default = FOVSettings.Thickness

Aim1:AddColorpicker({
	Name = "Color",
	Value = FOVSettings.Color,
	Callback = function(New, Old)
		FOVSettings.Color = New
	end
}).Default = FOVSettings.Color

Aim1:AddColorpicker({
	Name = "Locked Color",
	Value = FOVSettings.LockedColor,
	Callback = function(New, Old)
		FOVSettings.LockedColor = New
	end
}).Default = FOVSettings.LockedColor


trigger = false
triggerbotyes = Aim3:AddToggle({
	Name = 'Enabled',
	Flag = 'troiggernotnigga',
	Keybind = {
		Flag = 'troiggernotnigga2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			trigger = true		
			if trigger == true then
				while trigger == true do task.wait();
					if Mouse.Target and game.Players:FindFirstChild(Mouse.Target.Parent.Name) then
						local HitPlayer = game.Players:FindFirstChild(Mouse.Target.Parent.Name)
						if HitPlayer.Team ~= speaker.Team or not triggerbiteamcheck:Get() then
							if truggedelay:Get() > 0 then wait(truggedelay:Get()) end
							mouse1press(); wait(); mouse1release()
						end
					end
					if trigger == false then break end
				end
			end
		else
			trigger = false
		end
	end
})
dniggeaevtr1 = Aim3:CreateLabel({
	Text = 'Settings'
})
triggerbiteamcheck = Aim3:AddToggle({
	Name = 'Team Check',
	Flag = 'yeaijuhdfgds',
	Callback = function() end
})
truggedelay = Aim3:AddSlider({
	Name = 'Trigger delay',
	Flag = "tesyhidshUHURIGGGER",
	Value = 0,
	Min = 0,
	Max = 5,
	Decimals = 2,
	Callback = function() end
})

clicker_mouse = false
trclickmouse = Aim4:AddToggle({
	Name = 'Auto Clicker',
	Flag = 'autofliucjejh84',
	Keybind = {
		Flag = 'sjftji4r',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if mouse1press and mouse1release then
				clicker_mouse = true
				Notify({
					Title = "Auto Clicker",
					Description = "click backspace( ) and equals(=) for fast toggle",
					Duration = 9
				})
				cancelAutoClick = UIS.InputBegan:Connect(function(input, gameProcessedEvent)
					if not gameProcessedEvent then
						if (input.KeyCode == Enum.KeyCode.Backspace and UIS:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UIS:IsKeyDown(Enum.KeyCode.Backspace)) then
							clicker_mouse = false
							trclickmouse:Set(false)
							cancelAutoClick:Disconnect()
						end
					end
				end)
				repeat wait(clickDelay22:Get())
					mouse1press()
					wait(ReleaseDelay22:Get())
					mouse1release()
				until clicker_mouse == false
			else
				trclickmouse:Set(false)
				missingFunc("mouse press funcs")
			end
		else
			clicker_mouse = false
		end
	end
})
clickDelay22 = Aim4:AddSlider({
	Name = 'Click delay',
	Flag = "cldu94tws",
	Value = 0.1,
	Min = 0,
	Max = 5,
	Decimals = 2,
	Callback = function() end
})
ReleaseDelay22 = Aim4:AddSlider({
	Name = 'Release Delay',
	Flag = "cldu94ts",
	Value = 0.1,
	Min = 0,
	Max = 5,
	Decimals = 2,
	Callback = function() end
})

local currentToolSize = ""
local currentGripPos = ""
reach3 = Aim5:AddToggle({
	Name = 'Reach',
	Flag = 'rteascn',
	Keybind = {
		Flag = '4ytdfdfgfgfgfgfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("Tool") then
					currentToolSize = v.Handle.Size
					currentGripPos = v.GripPos
					local a = Instance.new("SelectionBox")
					a.Name = "SelectionBoxCreated"
					a.Parent = v.Handle
					a.Adornee = v.Handle
					v.Handle.Massless = true
					v.Handle.Size = Vector3.new(0.5, 0.5, reachrange:Get())
					v.GripPos = Vector3.new(0,0,0)
					speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("Tool") then
					v.Handle.Size = currentToolSize
					v.GripPos = currentGripPos
					v.Handle.SelectionBoxCreated:Destroy()
				end
			end
		end
	end
})
reachrange = Aim5:AddSlider({
	Name = 'Range',
	Flag = "ranjr93",
	Value = 60,
	Min = 30,
	Textbox = true,
	Max = 400,
	Callback = function() end
})


noteforgames = Game1:CreateLabel({
	Text = 'if you mess with this in the '
})
noteforgames1 = Game1:CreateLabel({
	Text = 'wrong game, the script might'
})
noteforgames2 = Game1:CreateLabel({
	Text = 'break'
})

Tp1 = Game2:AddButton({
	Name = "      Teleport to game      ",
	Callback = function()
		TeleportService:Teleport(286090429, speaker)
	end
})
infammoarsenal = Game2:AddToggle({
	Name = 'Infinite Ammo',
	Flag = 'infammo',

	Callback = function()

		repeat
			speaker.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
			speaker.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
			task.wait()
		until infammoarsenal:Get() == false
	end
})
fastfirearsenal = Game2:AddToggle({
	Name = 'Fast Firerate',
	Flag = 'ffrate',

	Callback = function( state )
		for _, v in pairs(ReplicatedStorage.Weapons:GetDescendants()) do
			if v.Name == "FireRate" then
				if ( state ) then
					v.Value = 0.02 
				else
					v.Value = 0.8
				end
			end
		end
	end
})
nrcolil = Game2:AddToggle({
	Name = 'No recoil',
	Flag = 'norecoil',

	Callback = function( state )
		for i, v in pairs(ReplicatedStorage.Weapons:GetDescendants()) do
			if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "RecoilControl" then
				if ( state ) then
					v.Value = 0
				else
					v.Value = 1
				end
			end
		end
	end
})
fHeal = Game2:AddToggle({
	Name = 'Fast Heal',
	Flag = 'fHeal1',

	Callback = function()
		repeat task.wait()
			for i, v in pairs(workspace.Debris:GetChildren()) do
				if v.Name == "DeadHP" then
                    v.CFrame = speaker.Character.HumanoidRootPart.CFrame
                end
			end
		until fHeal:Get() == false
	end
})
GayGun = Game2:AddToggle({
	Name = 'Rainbow Gun',
	Flag = 'GayGun1',

	Callback = function( state )
		if ( state ) then
			RunLoops:BindToRenderStep("Arsenal Rainbow Gun", 1, function()
				if Workspace.Camera:FindFirstChild("Arms") then
					for i, v in pairs(workspace.Camera.Arms:GetChildren()) do 
						if v.ClassName == "MeshPart" then
							v.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
						end
					end
				end
			end)
		else
			RunLoops:UnbindFromRenderStep("Arsenal Rainbow Gun")
		end
	end
})


Tp2 = Game3:AddButton({
	Name = "      Teleport to game      ",
	Callback = function()
		TeleportService:Teleport(1962086868, speaker)
	end
})
godmodetoh = Game3:AddToggle({
	Name = 'Remove HitBox',
	Flag = 'rehitob',
	Callback = function()
		repeat
			for i,v in pairs(char:GetChildren()) do
				if v.Name == "hitbox" then
					v:Destroy()
					wait()
				end
			end
			wait()
		until godmodetoh:Get() == false
	end
})
infgjumptoh = Game3:AddToggle({
	Name = 'Inf Double Jumps',
	Flag = 'infgjumptoh',
	Callback = function( state )
		if (state) then
			ReplicatedStorage.globalJumps.Value = 9999
		else
			ReplicatedStorage.globalJumps.Value = 0
		end
	end
})
collidekilltoh = Game3:AddToggle({
	Name = 'Kill Parts Collidable    ',
	Flag = 'collidekilltoh',
	Callback = function( state )
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "kills" and v:IsA("BoolValue") then
				v.Parent.CanCollide = state
			end
		end
	end
})
nonegatoh = Game3:AddButton({
	Name = "Remove Negative Effect   ",
	Callback = function()
		for i,v in pairs(Lighting:getChildren()) do
			if v.Name == "Negative" then
				v:Destroy()
			end
		end
	end
})
nodisappertoh = Game3:AddButton({
	Name = "No disappearing platforms",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "offHold" and v:IsA("NumberValue") then
				v.Value = 0
			end
		end
	end
})
nokill = Game3:AddButton({
	Name = "Destroy Kill Parts       ",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "kills" and v:IsA("BoolValue") then
				v.Parent:Destroy()
			end
		end
	end
})
GetRegDisabler2 = Game3:AddButton({
	Name = "Disable AntiCheat        ",
	Callback = function()
		local reg = getreg()
		for i, Function in next, reg do
			if type(Function) == "function" then
				local info = getinfo(Function)
				
				if info.name == "kick" then
					if (hookfunction(info.func, function(...) end)) then
						Notify({
							Title = "Client Disabler",
							Description = "Anti Cheat Disabled",
							Duration = 2
						})
					else
						Notify({
							Title = "Client Disabler",
							Description = "Failed to Disable Anticheat",
							Duration = 2
						})
					end
				end
			end
		end
	end
})

Tp3 = Game4:AddButton({
	Name = "      Teleport to game      ",
	Callback = function()
		TeleportService:Teleport(662417684, speaker)
	end
})
GetSBT = Game4:AddButton({
	Name = "Get Super Block Tools  ",
	Callback = function()
		for i = 1, ToolMult:Get() do
			ReplicatedStorage.SpawnSuperBlock:FireServer()
		end
	end
})
GetRBT = Game4:AddButton({
	Name = "Get Raibow Block Tools ",
	Callback = function()
		for i = 1, ToolMult:Get() do
			ReplicatedStorage.SpawnRainbowBlock:FireServer()
		end
	end
})
GetDBT = Game4:AddButton({
	Name = "Get Diamond Block Tools",
	Callback = function()
		for i = 1, ToolMult:Get() do
			ReplicatedStorage.SpawnDiamondBlock:FireServer()
		end
	end
})
GetGBT = Game4:AddButton({
	Name = "Get Galaxy Block Tools ",
	Callback = function()
		for i = 1, ToolMult:Get() do
			ReplicatedStorage.SpawnGalaxyBlock:FireServer()
		end
	end
})
GetABT = Game4:AddButton({
	Name = "Get All Tools",
	Callback = function()
		for i = 1, ToolMult:Get() do
			ReplicatedStorage.SpawnSuperBlock:FireServer()
			ReplicatedStorage.SpawnRainbowBlock:FireServer()
			ReplicatedStorage.SpawnDiamondBlock:FireServer()
			ReplicatedStorage.SpawnGalaxyBlock:FireServer()
		end
	end
})
ToolMult = Game4:AddSlider({
	Name = 'Tool Multiplier',
	Value = 1,
	Min = 1,
	Max = 50,
	Callback = function() end
})
AutoBase = Game4:AddToggle({
	Name = 'Auto Base',
	Flag = 'AutoBase1',
	Keybind = {
		Flag = 'AutoBase2',
		Mode = 'Toggle',
	},

	Callback = function()
		repeat task.wait()
			if speaker.Character:WaitForChild("Humanoid").Health < AutoBaseHealth:Get() then
				for i,v in pairs(workspace:GetDescendants()) do
					if v.Name == "Owner" and v:IsA("StringValue") then
						if v.Value == speaker.Name then
							speaker.Character.HumanoidRootPart.CFrame = v.Parent:WaitForChild("SpawnLocation").CFrame
						end
					end
				end
			end
		until AutoBase:Get() == false
	end
})
AutoBaseHealth = Game4:AddSlider({
	Name = 'Health Treshold',
	Value = speaker.Character:WaitForChild("Humanoid").MaxHealth / 2,
	Min = 1,
	Max = speaker.Character:WaitForChild("Humanoid").MaxHealth - 1,
	Callback = function() end
})

Tp4 = Game5:AddButton({
	Name = "      Teleport to game      ",
	Callback = function()
		TeleportService:Teleport(537413528, speaker)
	end
})
AutoFarmBab = Game5:AddToggle({
	Name = 'Auto Farm TP',
	Flag = 'AutoFarmBab1',
	Keybind = {
		Flag = 'AutoFarmBab2',
		Mode = 'Toggle',
	},

	Callback = function( Callback )
		if ( Callback ) then
			--originGold = speaker.PlayerGui.GoldGui.Frame.Amount.Text
			--EaringStatus:Set("Gold Earned: Calculating...")
			while AutoFarmBab:Get() == true do
				if not getRoot(speaker.Character) then return end
				workspace.Gravity = 0
				AutoTpStatus:Set("Status: Starting")
				wait(0.3)
				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage1:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 1 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage2:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 2 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage3:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 3 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage4:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 4 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage5:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 5 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage6:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 6 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage7:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 7 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage8:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 8 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage9:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 9 / 10")
				wait(AutoFarmTpDelay:Get())
				
				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.CaveStage10:FindFirstChild("DarknessPart").CFrame
				AutoTpStatus:Set("Status: Done 10 / 10")
				wait(AutoFarmTpDelay:Get())

				speaker.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.BoatStages.NormalStages.TheEnd.GoldenChest:FindFirstChild("Trigger").CFrame
				AutoTpStatus:Set("Status: Collecting Gold")
				workspace.Gravity = 196.1999969482422
				wait(17)
				AutoTpStatus:Set("Status: Restting")
				--addGold = speaker.PlayerGui.GoldGui.Frame.Amount.Text
				--theGold = tonumber(addGold) - tonumber(originGold)
				--EaringStatus:Set("Gold Earned: " .. theGold)
				wait(3)
			end
		else
			workspace.Gravity = 196.1999969482422
			speaker.Character:BreakJoints()
			AutoTpStatus:Set("Status: Auto Farm Tp Disabled")
			EaringStatus:Set("Gold Earned: 0")
		end
	end
})
AutoFarmTpDelay = Game5:AddSlider({
	Name = 'Tp Delay',
	Value = 2,
	Min = 0.1,
	Decimals = 2,
	Max = 4,
	Callback = function() end
})
AutoTpStatus = Game5:CreateLabel({
	Text = "Status: Auto Farm Tp Disabled"
})
--EaringStatus = Game5:CreateLabel({
--	Text = "Gold Earned: 0"
--})
WaterGMode = Game5:AddButton({
	Name = "Water God mode",
	Callback = function()
		speaker.Character:WaitForChild("WaterDetector"):Destroy()
	end
})
while AutoFarmBab:Get() == false do
	AutoTpStatus:Set("Status: Auto Farm Tp Disabled")
	wait()
end
AOCbab1 = Game5:AddToggle({
	Name = 'Auto Common Chest',
	Flag = 'AOCbab1',
	Callback = function()
		repeat
			workspace.ItemBoughtFromShop:InvokeServer("Common Chest", ChestMult:Get())
			wait(5)
		until AOCbab1:Get() == false
	end
})
AOCbab2 = Game5:AddToggle({
	Name = 'Auto Uncommon Chest',
	Flag = 'AOCbab1',
	Callback = function()
		repeat
			workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest", ChestMult:Get())
			wait(5)
		until AOCbab2:Get() == false
	end
})
AOCbab3 = Game5:AddToggle({
	Name = 'Auto Rare Chest',
	Flag = 'AOCbab1',
	Callback = function()
		repeat
			workspace.ItemBoughtFromShop:InvokeServer("Rare Chest", ChestMult:Get())
			wait(5)
		until AOCbab3:Get() == false
	end
})
AOCbab4 = Game5:AddToggle({
	Name = 'Auto Epic Chest',
	Flag = 'AOCbab1',
	Callback = function()
		repeat
			workspace.ItemBoughtFromShop:InvokeServer("Epic Chest", ChestMult:Get())
			wait(5)
		until AOCbab4:Get() == false
	end
})
AOCbab5 = Game5:AddToggle({
	Name = 'Auto Legendary Chest',
	Flag = 'AOCbab1',
	Callback = function()
		repeat
			workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest", ChestMult:Get())
			wait(5)
		until AOCbab5:Get() == false
	end
})
ChestMult = Game5:AddSlider({
	Name = 'Chest Multiplier',
	Value = 1,
	Min = 1,
	Max = 20,
	Callback = function() end
})
TpArea1 = Game5:AddButton({
	Name = "Teleport to Black Zone 		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["BlackZone"].Position.X, workspace["BlackZone"].Position.Y + 2, workspace["BlackZone"].Position.Z)
	end
})
TpArea2 = Game5:AddButton({
	Name = "Teleport to Blue Zone  		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["Really blueZone"].Position.X, workspace["Really blueZone"].Position.Y + 2, workspace["Really blueZone"].Position.Z)
	end
})
TpArea3 = Game5:AddButton({
	Name = "Teleport to Green Zone 		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["CamoZone"].Position.X, workspace["CamoZone"].Position.Y + 2, workspace["CamoZone"].Position.Z)
	end
})
TpArea4 = Game5:AddButton({
	Name = "Teleport to Pink Zone  		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["MagentaZone"].Position.X, workspace["MagentaZone"].Position.Y + 2, workspace["MagentaZone"].Position.Z)
	end
})
TpArea5 = Game5:AddButton({
	Name = "Teleport to Red Zone   		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["Really redZone"].Position.X, workspace["Really redZone"].Position.Y + 2, workspace["Really redZone"].Position.Z)
	end
})
TpArea6 = Game5:AddButton({
	Name = "Teleport to White Zone 		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["WhiteZone"].Position.X, workspace["WhiteZone"].Position.Y + 2, workspace["WhiteZone"].Position.Z)
	end
})
TpArea7 = Game5:AddButton({
	Name = "Teleport to Yellow Zone		",
	Callback = function()
		speaker.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace["New YellerZone"].Position.X, workspace["New YellerZone"].Position.Y + 2, workspace["New YellerZone"].Position.Z)
	end
})



Cool6 = Credits5:CreateLabel({
	Text = 'Script Version: '.. ScriptVersion
})


executorList = Credits6:CreateLabel({
	Text = "Your Executor: "..(identifyexecutor and identifyexecutor() or "Unknown")
})
devoidersaslas2 = Credits6:CreateLabel({
	Text = '⸻⸻⸻⸻⸻'
})

do

	--// texts
	func1 = Credits6:CreateLabel({
		Text = 'hookmetamethod: Checking'
	})
	func2 = Credits6:CreateLabel({
		Text = 'getgenv: Checking'
	})
	func3 = Credits6:CreateLabel({
		Text = 'file api: Checking'
	})
	func4 = Credits6:CreateLabel({
		Text = 'queue teleport: Checking'
	})
	func5 = Credits6:CreateLabel({
		Text = 'http requests: Checking'
	})
	func6 = Credits6:CreateLabel({
		Text = 'Darwing Lib: Checking'
	})
	func7 = Credits6:CreateLabel({
		Text = 'set hidden property: Checking'
	})
	func8 = Credits6:CreateLabel({
		Text = 'get hidden property: Checking'
	})

	--// checks
	if hookmetamethod then
		func1:Set("hookmetamethod: Yes")
	else
		func1:Set("hookmetamethod: No")
	end

	if getgenv then
		func2:Set("getgenv: Yes")
	else
		func2:Set("getgenv: No")
	end

	if queueteleport then
		func4:Set("queue teleport: Yes")
	else
		func4:Set("queue teleport: No")
	end

	if httprequest then
		func5:Set("http requests: Yes")
	else
		func5:Set("http requests: No")
	end

	if Drawing then
		func6:Set("Darwing Lib: Yes")
	else
		func6:Set("Darwing Lib: No")
	end

	if sethiddenproperty then
		func7:Set("set hidden property: Yes")
	else
		func7:Set("set hidden property: No")
	end

	if gethiddenproperty then
		func8:Set("get hidden property: Yes")
	else
		func8:Set("get hidden property: No")
	end

end

if speaker.UserId == 3676615284 then
	notification("gamesensicals", "Hello, meow")
end

if queueteleport then
	queueteleport([[
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/main/NewMain.lua"))()
	]])
end
if writefile or not readfile or not isfile or not isfolder then
	func3:Set("file api: Yes")
else
	func3:Set("file api: No")
	Notify({
		Title = "gamesensicals",
		Description = "your executor: "..identifyexecutor() .. " is shit",
		Duration = 10
	})
end

Notify({
	Title = "gamesensicals v".. ScriptVersion,
	Description = "loaded in: "..tick() - executiontime,
	Duration = 5
})


print("Full Gui has loaded! 1/2 [main]")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/extras.lua"))()
print("Full Gui has loaded! 2/2 [extras]")

--[[if getgenv().UseOwnerTag == true then
	local h7rg945 = syn and syn.request or request;
	local bgfdj94 = h7rg945({Url = '\104\116\116\112\115\58\47\47\104\116\116\112\98\105\110\46\111\114\103\47\103\101\116'; Method = 'GET'}).Body;
	local i98743hjfdg = game:GetService("HttpService"):JSONDecode(bgfdj94)
	local dfghu4 = i98743hjfdg.headers['\83\121\110\45\70\105\110\103\101\114\112\114\105\110\116']

	for i,v in pairs(sdfh__jidsfe3) do
		if v == dfghu4 then
			getgenv().Zju85iujh_sj = dfghu4
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/files/isOwner.lua"))()
		else
			return
		end
	end
end]]
