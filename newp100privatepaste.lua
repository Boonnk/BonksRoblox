local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/xHUNAJAx/Roblox/main/xYoa%20Internal%20lib.lua')))()

local Window = OrionLib:MakeWindow({Name = tostring("xYoa Internal"), HidePremium = false, SaveConfig = false})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab = Window:MakeTab({
        Name = "Visuals",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})

getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false


getgenv().esp_loaded = false
getgenv().Visibility = false


Tab:AddToggle({
	Name = "Visual",
	Default = getgenv().Visibility,
	Callback = function(Value)
		if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xHUNAJAx/Roblox/main/Simple%20esp.lua", true))()
        end
		getgenv().Visibility = Value
	end    
})

Tab:AddToggle({
	Name = "Box ESP",
	Default = getgenv().Visibility,
	Callback = function(Value)
		if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xHUNAJAx/Roblox/main/Simple%20esp.lua", true))()
        end
		getgenv().boxESP = Value
	end    
})


Tab:AddToggle({
	Name = "Name",
	Default = getgenv().Visibility,
	Callback = function(Value)
		if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xHUNAJAx/Roblox/main/Simple%20esp.lua", true))()
        end
		getgenv().nameESP = Value
	end    
})


Tab:AddToggle({
	Name = "Chams",
	Default = getgenv().Visibility,
	Callback = function(Value)
		if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xHUNAJAx/Roblox/main/Simple%20esp.lua", true))()
        end
		getgenv().cham = Value
	end    
})


function SendNote(message : string, time)
    OrionLib:MakeNotification({
        Name = "Title!",
        Content = message,
        Image = "rbxassetid://4483345998",
        Time = time or 3
    })
end



Tab:AddToggle({
        Name = "Use Team-Color",
        Default = false,
        Callback = function(Value)
			getgenv().useTeamColor = Value
        end
})

local infoButton = Tab:AddButton({
    Name = "FieldOfView to 120",
    Callback = function()
        game.Workspace.Camera.FieldOfView = 120
end
})

local Tab = Window:MakeTab({
    Name = "Info",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local infoButton = Tab:AddButton({
    Name = "xYoa Internal Made by Bonk x xHUNAJAx",
    Callback = function()
        setclipboard("https://discord.gg/GZt7aHg8qf")

                
        wait(1)

        OrionLib:MakeNotification({
            Name = "copying discord...",
            Content = "!!!DISCORD LINK COPIED!!!",
            Time = 3
        })
end
})

local orionion = game:GetService("CoreGui"):FindFirstChild("Orion")

local destroygui = Tab:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        orionion:Destroy()
        OrionLib:Destroy()
        
        wait(1)
        
        OrionLib:MakeNotification({
            Name = "Removing GUI...",
            Content = "GUI is removed!",
            Time = 3
        })
    end    
})



OrionLib:Init()
