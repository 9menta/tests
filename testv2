local import = {
    utility = function(name)
        return game:HttpGet('https://raw.githubusercontent.com/boop71/scripts/main/utilities/' .. name)
    end
}

local function getExploit()
    return syn and syn.run_secure_functions and 2 or request and 1 or 0
end
local req, notify = import.utility('requirements.json'), loadstring(import.utility('notification.lua'))()

table.foreach(game:service('HttpService'):JSONDecode(req), function(a, v)
    if game.PlaceId == tonumber(a) then
        if getExploit() ~= v then
            notify({
                Title = 'Unnamed project',
                Text = 'Your exploit does not allow us to run the script stable and without errors. (Exploit required: ' .. (v == 1 and 'KRNL or Synapse X)' or 'Synapse X)'),
                Options = {
                    'Ok',
                    'Continue anyway'
                },
                Callback = function(o)
                    if o == 'Ok' then
                        return
                    end
                    xpcall(function()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/boop71/scripts/main/games/' .. tostring(game.PlaceId) .. '.lua'))()
                    end, function(x)
                        return notify({
                            Title = 'Unnamed project',
                            Text = 'An error occured while trying to run the script: "' .. x .. '".',
                            Options = {
                                'Ok',
                                'Copy to clipboard'
                            },
                            Callback = function(o)
                                if o == 'Copy to clipboard' then
                                    xpcall(function()
                                        setclipboard(x)
                                    end, function(x2)
                                        return notify({
                                            Title = 'Unnamed project',
                                            Text = 'Could not copy the error ("setclipboard" function lacking).',
                                            Options = {
                                                'Ok',
                                            },
                                            CloseOnCallback = true,
                                            Duration = 10
                                        })
                                    end)
                                end
                            end,
                            Duration = 10,
                            CloseOnCallback = true
                        })
                    end)
                end,
                CloseOnCallback = true
            })
        end
    end
end)
