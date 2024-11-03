local notification = loadstring(game:HttpGet('https://raw.githubusercontent.com/9menta/tests/refs/heads/main/notification.lua'))()
    notification({
        Title = 'Cappuccino',
        Text = 'very cool notification for gaming',
        Image = 'rbxassetid://6353325673',    --optional
        Options = {                           --optional 
            'Yes',
            'No',
            'Cheese',
            'Cancel',
        },
        CloseOnCallback = true,               --optional
        Duration = 10,                        --optional
        Callback = function(o)
            print('Option '..o..' was chosen')
        end,
    })
