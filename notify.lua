local notification = loadstring(game:HttpGet('https://raw.githubusercontent.com/9menta/tests/refs/heads/main/notification.lua'))()
    notification({
        Title = 'Elixir Client',
        Text = 'Thx for using Elixir Client',
        Image = 'rbxassetid://72671288986713',    --optional
        Options = {                           --optional 
            'No Problem'
        },
        CloseOnCallback = true,               --optional
        Duration = 20,                        --optional
        Callback = function(o)
            print('Option '..o..' was chosen')
        end,
    })
