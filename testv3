local Admin = loadstring(game:HttpGet("https://raw.githubusercontent.com/boop71/customizable-admin/main/module.lua"))()
local Admin2 = Admin.load(getgenv().themes.dark, "Project name here", true) 
Admin2.addCommand({name = "testCommand",desc = "this is a command!",callback = function(v)
    local m = Instance.new("Message",workspace)
    m.Text = v
    wait(1)
    m:Destroy()
end})
Admin2.addCommand({name = "goto",desc = "teleports you to the target!",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v2.Character.HumanoidRootPart.Position+Vector3.new(0,0,3))
        end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
