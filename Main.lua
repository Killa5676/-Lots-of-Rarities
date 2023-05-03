getgenv().autoteleport = false

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

function teleporto(placeCframe)
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCframe
    end
end

local function autoTeleport()
    spawn(function()
        while getgenv().autoteleport == true do
            for i = 1, 15 do 
                teleporto(workspace.Buttons.Roll.Rarities.CFrame)
                wait(5) -- wait for the player to finish teleporting before moving on

                teleporto(CFrame.new(53.5582275390625, 3.6850311756134033, 34.35844802856445))
                wait(1)

                teleporto(CFrame.new(54.4811897277832, 3.6850311756134033, 45.05955505371094))
                wait(1)

                teleporto(CFrame.new(53.402488708496094, 3.6850311756134033, 53.95044708251953))
                wait(1)

                teleporto(CFrame.new(53.50069046020508, 3.6850311756134033, 65.40721893310547))
                wait(1)

                teleporto(CFrame.new(53.66569900512695, 3.6850311756134033, 74.15584564208984))
                wait(1)
            end

            teleporto(CFrame.new(29.27072525024414, 3.6850435733795166, -25.7006893157959))
            wait(1)
        end
    end)
end

local Window = Rayfield:CreateWindow({
    Name = "[SACRIFICING] Lots of Rarities",
    LoadingTitle = "[SACRIFICING] Lots of Rarities",
    LoadingSubtitle = "by Killa#2836",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "Killa", -- Create a custom folder for your hub/game
       FileName = "Killa Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })
 
 local Tab = Window:CreateTab("Farming", 4483362458)
 
 local Section = Tab:CreateSection("AutoFarm")
 local Toggle = Tab:CreateToggle({
    Name = "AutoFarm i guess",
    CurrentValue = false,
    Flag = "AutoFarm i guess",
    Callback = function(bool)
        getgenv().autoteleport = bool
        print("Auto tap is", bool)
        if bool then 
            autoTeleport() 
        end
    end
 })
