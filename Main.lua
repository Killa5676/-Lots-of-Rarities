--Rebirth auto
getgenv().autoteleportrebirth = false
getgenv().autoteleportrebirthupgrades = false
--Prestige auto
getgenv().autoteleportprestige = false
getgenv().autoteleportprestigeupgrades = false
--ascension auto
getgenv().autoteleportascension = false
getgenv().autoteleportascensionupgrades = false




local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local teleport_table = {
    roll = Vector3.new(53.272117614746094, 4.080388069152832, 8.54381275177002),
    rebirth = Vector3.new(53.5582275390625, 3.6850311756134033, 34.35844802856445),
    upgrade1 = Vector3.new(54.4811897277832, 3.6850311756134033, 45.0595550537594),
    upgrade2 = Vector3.new(53.402488708496094, 3.6850311756134033, 53.95044708251953),
    upgrade3 = Vector3.new(53.5006904605508, 3.6850311756134033, 65.4072189335547),
    upgrade4 = Vector3.new(53.66569900512695, 3.6850311756134033, 74.1558456458984),
    prestige = Vector3.new(28.91379165649414, 3.6850435733795166, -25.550302505493164),
    prestige_upgrade1 = Vector3.new(19.12222671508789, 3.6850435733795166, -24.704416275024414),
    prestige_upgrade2 = Vector3.new(9.0585472569336, 3.6850435733795166, -23.850398063659668),
    prestige_upgrade3 = Vector3.new(-1.6244397163391113, 3.6850435733795166, -23.568157196044922),
    prestige_upgrade4 = Vector3.new(-12.07236099243164, 3.6850435733795166, -24.785995483398438),
    prestige_upgrade5 = Vector3.new(-22.42530059814453, 3.6850435733795166, -26.54501155385742),
    prestige_upgrade6 = Vector3.new(-32.78213119506836, 3.6850435733795166, -29.060957153353),
    ascension = Vector3.new(-82.2553759765625, 2.379570484161377, -23.78355032348633),
    ascension_upgrade1 = Vector3.new(-82.04621124267578, 2.3805317878723145, -14.021196365356445),
    ascension_upgrade2 = Vector3.new(-82.65816497802734, 2.3805317878723145, -3.748478412628174),
    ascension_upgrade3 = Vector3.new(-83.20120239257812, 2.3805317878723145, 5.332100868225098),
    ascension_upgrade4 = Vector3.new(-82.90728759765625, 2.3805317878723145, 15.923547744750977),
    ascension_upgrade5 = Vector3.new(-82.44547271728516, 2.3805317878723145, 25.712718963623047)
}

local tween_s = game:GetService('TweenService')
local tween_info = TweenInfo.new(1, Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tween_info, {CFrame = cf})
        a:Play()
        -- a.Completed:Wait()
        -- print('Teleporting Done!')
    end
end

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
            bypass_teleport(teleport_table.roll)    
            wait(10)

            bypass_teleport(teleport_table.rebirth) 
            wait(1)

            bypass_teleport(teleport_table.roll)     
            wait(1)
        end
    end)
end

local function autoTeleportRebirthUpgrades()
    spawn(function()
        while getgenv().autoteleportrebirthupgrades == true do
            bypass_teleport(teleport_table.roll)     
            wait(10)

            bypass_teleport(teleport_table.rebirth)  
            wait(1)

            bypass_teleport(teleport_table.upgrade1) 
            wait(1)

            bypass_teleport(teleport_table.upgrade2) 
            wait(1)

            bypass_teleport(teleport_table.upgrade3) 
            wait(1)

            bypass_teleport(teleport_table.upgrade4) 
            wait(1)

            bypass_teleport(teleport_table.roll)     
            wait(1)
        end
    end)
end

local function autoTeleportPrestige()
    spawn(function()
        while getgenv().autoteleportprestige == true do 
            bypass_teleport(teleport_table.roll)      
            wait(10)

            bypass_teleport(teleport_table.rebirth)   
            wait(1)

            bypass_teleport(teleport_table.upgrade1) 
            wait(1)

            bypass_teleport(teleport_table.upgrade2) 
            wait(1)

            bypass_teleport(teleport_table.upgrade3) 
            wait(1)

            bypass_teleport(teleport_table.upgrade4) 
            wait(1)

            bypass_teleport(teleport_table.prestige)  
            wait(1)

            bypass_teleport(teleport_table.roll)     
            wait(1)
        end
    end)
end

local function autoTeleportPrestigeUpgrades()
    spawn(function()
        while getgenv().autoteleportprestigeupgrades == true do 
            bypass_teleport(teleport_table.roll)     
            wait(10)

            bypass_teleport(teleport_table.rebirth)  
            wait(1)

            bypass_teleport(teleport_table.upgrade1) 
            wait(1)

            bypass_teleport(teleport_table.upgrade2) 
            wait(1)

            bypass_teleport(teleport_table.upgrade3) 
            wait(1)

            bypass_teleport(teleport_table.upgrade4) 
            wait(1)

            bypass_teleport(teleport_table.prestige)  
            wait(1)
        
            bypass_teleport(teleport_table.prestige_upgrade1)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade2)
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade3)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade4)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade5)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade6)  
            wait(1)

            bypass_teleport(teleport_table.roll)     
            wait(1)
        end
    end)
end

local function autoTeleportAscension()
    spawn(function()
        while getgenv().autoteleportascension == true do 
            bypass_teleport(teleport_table.roll)     
            wait(10)

            bypass_teleport(teleport_table.rebirth)  
            wait(1)

            bypass_teleport(teleport_table.upgrade1) 
            wait(1)

            bypass_teleport(teleport_table.upgrade2) 
            wait(1)

            bypass_teleport(teleport_table.upgrade3) 
            wait(1)

            bypass_teleport(teleport_table.upgrade4) 
            wait(1)

            bypass_teleport(teleport_table.prestige)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade1)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade2)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade3)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade4)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade5)  
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade6)  
            wait(1)
        
            bypass_teleport(teleport_table.ascension)  
            wait(1)

            bypass_teleport(teleport_table.roll)     
            wait(1) 
        end
    end)
end

local function autoTeleportAscensionUpgrades()
    spawn(function()
        while getgenv().autoteleportascensionupgrades == true do 
            bypass_teleport(teleport_table.roll)     
            wait(10)

            bypass_teleport(teleport_table.rebirth)  
            wait(1)

            bypass_teleport(teleport_table.upgrade1) 
            wait(1)

            bypass_teleport(teleport_table.upgrade2)            
            wait(1)

            bypass_teleport(teleport_table.upgrade3)            
            wait(1)

            bypass_teleport(teleport_table.upgrade4)            
            wait(1)

            bypass_teleport(teleport_table.prestige)            
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade1)   
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade2)   
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade3)   
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade4)   
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade5)   
            wait(1)

            bypass_teleport(teleport_table.prestige_upgrade6)   
            wait(1)
        
            bypass_teleport(teleport_table.ascension)           
            wait(1)

            bypass_teleport(teleport_table.ascension_upgrade1)  
            wait(1)

            bypass_teleport(teleport_table.ascension_upgrade2)  
            wait(1)

            bypass_teleport(teleport_table.ascension_upgrade3)  
            wait(1)

            bypass_teleport(teleport_table.ascension_upgrade4)  
            wait(1)

            bypass_teleport(teleport_table.ascension_upgrade5)  
            wait(1)

            bypass_teleport(teleport_table.roll)                
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
local function teleportAscension()
    spawn(function()
        teleporto(CFrame.new(-81.06825256347656, 2.379570484161377, -23.473291397094727))
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
    Name = "AutoFarmPrestige + PresitigeUpgrades",
    CurrentValue = false,
    Flag = "AutoFarmPrestige + PresitigeUpgrades",
    Callback = function(bool)
        getgenv().autoteleportprestigeupgrades = bool 
        print("AutoFarmPrestige + Upgrades", bool)
        if bool then 
            autoTeleportPrestigeUpgrades()
        end
    end
})
local Section = Tab:CreateSection("AutoFarmAscension")
local Toggle = Tab:CreateToggle({
    Name = "AutoFarmAscension",
    CurrentValue = false,
    Flag = "AutoFarmAscension",
    Callback = function(bool)
        getgenv().autoteleportascension = bool 
        print("AutoFarmAscension", bool)
        if bool then 
            autoTeleportAscension()
        end
    end
})
local Toggle = Tab:CreateToggle({
    Name = "AutoFarmAscension + Upgrades",
    CurrentValue = false,
    Flag = "AutoFarmAscension + Upgrades",
    Callback = function(bool)
        getgenv().autoteleportascensionupgrades = bool 
        print("AutoFarmAscension + Upgrades", bool)
        if bool then 
            autoTeleportAscensionUpgrades()
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
local Button = Tab:CreateButton({
    Name = "Teleport Acension",
    Callback = function()
        teleportAscension()
    end
})







