if game.GameId == 73885730 then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Prison Life | Jeux45", "DarkTheme")
local ThemeTab = Window:NewTab("Customization")
local ThemeSection = ThemeTab:NewSection("Select Your Theme Before Using The Script")
ThemeSection:NewDropdown("Themes", "Select a theme before Starting!", {"LightTheme", "DarkTheme", "GrapeTheme", "BloodTheme", "Ocean", "Midnight", "Sentinel", "Synapse"}, function(Theme)
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Prison Life | Jeux45", Theme)
    local MainTab = Window:NewTab("Main")
    local GunSection = MainTab:NewSection("Gun Giver")
    GunSection:NewDropdown("Gun Giver", "Giver you a Selected Gun", {"M9", "Remington 870", "AK-47"}, function(Gun)
local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild(Gun).ITEMPICKUP
}

workspace.Remote.ItemHandler:InvokeServer(unpack(args))

    end)

    GunSection:NewDropdown("Item Giver", "Giver other Items", {"Crude Knife", "Hammer"}, function(Item)
        local args = {
            [1] = workspace.Prison_ITEMS.single:FindFirstChild(Item).ITEMPICKUP
        }
        
        workspace.Remote.ItemHandler:InvokeServer(unpack(args))
    end)
    local PlayerTab = Window:NewTab("Player")
    local PlayerSection = PlayerTab:NewSection("LocalPlayer")

    PlayerSection:NewSlider("WalkSpeed", "Changes Your WalkSpeed", 300, 16, function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)

    PlayerSection:NewSlider("JumpPower", "Changes Your JumpPower, JumpHeight", 300, 50, function(Val)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Val
    end)
end)
else
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Prison Life Script",
        Text = "Sorry, The Game is NOT Supported"
    })
end
