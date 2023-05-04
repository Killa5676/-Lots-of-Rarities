--Rebirth auto
getgenv().autoteleportrebirth = false
getgenv().autoteleportrebirthupgrades = false
--Prestige auto
getgenv().autoteleportprestige = false
getgenv().autoteleportprestigeupgrades = false




local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

function getcurrentPlayerPOS()
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        return plyr.Character.HumanoidRootPart.Position
    end
    return false
end

function teleporto(placeCframe)
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCframe
    end
end

local function autoTeleportRebirth()
    spawn(function()
        while getgenv().autoteleportrebirth == true do 
                teleporto(CFrame.new(53.272117614746094, 4.080388069152832, 8.54381275177002)) --roll
                wait(5)

                teleporto(CFrame.new(53.5582275390625, 3.6850311756134033, 34.35844802856445)) --rebirth
                wait(1)
        end
    end)
end

local function autoTeleportRebirthUpgrades()
    spawn(function()
        while getgenv().autoTeleportRebirth == true do
                teleporto(CFrame.new(53.272117614746094, 4.080388069152832, 8.54381275177002))   --roll
                wait(5)-- change roll time if u want lol

                teleporto(CFrame.new(53.5582275390625, 3.6850311756134033, 34.35844802856445))   -- rebirth
                wait(1)

                teleporto(CFrame.new(54.4811897277832, 3.6850311756134033, 45.05955505371094))   --upgrade1
                wait(1)

                teleporto(CFrame.new(53.402488708496094, 3.6850311756134033, 53.95044708251953)) --upgrade2
                wait(1)

                teleporto(CFrame.new(53.50069046020508, 3.6850311756134033, 65.40721893310547))  --upgrade3
                wait(1)

                teleporto(CFrame.new(53.66569900512695, 3.6850311756134033, 74.15584564208984))  --upgrade4
                wait(1)
        end
    end)
end

local function autoTeleportPrestige()
    spawn(function()
        while getgenv().autoteleportprestige == true do 
                teleporto(CFrame.new(53.272117614746094, 4.080388069152832, 8.54381275177002)) -- rol;
                wait(10) -- change roll time if u want lol

                teleporto(CFrame.new(53.5582275390625, 3.6850311756134033, 34.35844802856445)) -- rebirth
                wait(1)

                teleporto(CFrame.new(28.91379165649414, 3.6850435733795166, -25.550302505493164)) -- prestige
                wait(1)
        end
    end)
end

local function autoTeleportPrestigeUpgrades()
    spawn(function()
        while getgenv().autoteleportprestigeupgrades == true do 
                teleporto(CFrame.new(53.272117614746094, 4.080388069152832, 8.54381275177002))      --roll
                wait(10) -- change roll time if u want lol

                teleporto(CFrame.new(53.5582275390625, 3.6850311756134033, 34.35844802856445))      -- rebirth
                wait(1)

                teleporto(CFrame.new(28.91379165649414, 3.6850435733795166, -25.550302505493164))   -- prestige
                wait(1)

                teleporto(CFrame.new(19.12222671508789, 3.6850435733795166, -24.704416275024414))   -- upgrade 1
                wait(1)

                teleporto(CFrame.new(9.010854721069336, 3.6850435733795166, -25.987096786499023))   -- upgrade 2
                wait(1)

                teleporto(CFrame.new(-1.3199734687805176, 3.6850435733795166, -25.760038375854492)) -- upgrade 3
                wait(1)

                teleporto(CFrame.new(-11.400854110717773, 3.6850435733795166, -25.53847312927246))  -- upgrade 4
                wait(1)

                teleporto(CFrame.new(-20.72136688232422, 3.6850435733795166, -25.925817489624023))  -- upgrade 5
                wait(1)
        end
    end)
end

local function teleportRarity()
    spawn(function()
        teleporto(CFrame.new(49.56317138671875, 4.080388069152832, 8.04309368133545))
        end)
    end

local function teleportRebirth()
    spawn(function()
        teleporto(CFrame.new(53.5582275390625, 3.6850311756134033, 34.35844802856445))
        wait(1)
    end)
end

local function teleportPrestige()
    spawn(function()
        teleporto(CFrame.new(28.91379165649414, 3.6850435733795166, -25.550302505493164))
        wait(1)
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
 
 local Section = Tab:CreateSection("AutoFarmRebirths")
 local Toggle = Tab:CreateToggle({
    Name = "AutoFarmRebirths",
    CurrentValue = false,
    Flag = "AutoFarmRebirths",
    Callback = function(bool)
       getgenv().autoteleportrebirth = bool
       print("Auto rebirth is", bool)
       if bool then 
        autoTeleportRebirth()
       end
    end
})
local Toggle = Tab:CreateToggle({
    Name = "AutoFarmRebirths + Rebirth Upgrades",
    CurrentValue = false,
    Flag = "AutoFarmRebirths + Rebirth Upgrades",
    Callback = function(bool)
        getgenv().autoteleportrebirthupgrades = bool 
        print("AutoFarmRebirths + Rebirth Upgrades is", bool)
        if bool then 
            autoTeleportRebirthUpgrades()
        end
    end
})

local Section = Tab:CreateSection("AutoFarmPrestige")
local Toggle = Tab:CreateToggle({
    Name = "AutoFarmPrestige",
    CurrentValue = false,
    Flag = "AutoFarmPrestige",
    Callback = function(bool)
        getgenv().autoteleportprestige = bool 
        print("AutoFarmPrestige", bool)
        if bool then 
            autoTeleportPrestige()
        end
    end
})
local Toggle = Tab:CreateToggle({
    Name = "AutoFarmPrestige + Upgrades",
    CurrentValue = false,
    Flag = "AutoFarmPrestige + Upgrades",
    Callback = function(bool)
        getgenv().autoteleportprestigeupgrades = bool 
        print("AutoFarmPrestige + Upgrades", bool)
        if bool then 
            autoTeleportPrestigeUpgrades()
        end
    end
})



local Tab = Window:CreateTab("Buttons", 4483362458)

local Section = Tab:CreateSection("Teleport Buttons")
local Button = Tab:CreateButton({
    Name = "Teleport Rarity Roll",
    Callback = function()
        teleportRarity()
    end
})
local Button = Tab:CreateButton({
    Name = "Teleport Rebirth",
    Callback = function()
        teleportRebirth()
    end
})
local Button = Tab:CreateButton({
    Name = "Teleport Prestige",
    Callback = function()
        teleportPrestige()
    end
})







