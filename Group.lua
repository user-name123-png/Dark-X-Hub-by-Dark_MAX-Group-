--[[
         ____    _    ____  _  __    __  __     __  __    _    __  __
        |  _ \  / \  |  _ \| |/ /    \ \/ /    |  \/  |  / \   \ \/ /
        | | | |/ _ \ | |_) | ' /      \  /     | |\/| | / _ \   \  / 
        | |_| / ___ \|  _ <| . \      /  \     | |  | |/ ___ \  /  \ 
        |____/_/   \_\_| \_\_|\_\    /_/\_\    |_|  |_/_/   \_\/_/\_\
        \
         \__อีแก่มึงมาทำอะไรใน Script กูเหนี่ยไอสัตว์ มึงคัดลอกทั้งผมสิอีเหี้ย
]]--

local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local allowedHWIDs = loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX-Group-/refs/heads/main/HWID.lua"))()

local function isAllowed()
    for _, v in ipairs(allowedHWIDs) do
        if v == hwid then
            return true
        end
    end
    return false
end

if not isAllowed() then
    game.Players.LocalPlayer:Kick("ถ้าจะเปลี่ยนตัวรันหรือเปลี่ยนเครื่องคอมมึงก็บอกกูดิอีเหี้ย กูจะได้แก้ให้ไอสัตว์ ควย")
    return
end

-- ฟังก์ชันรันสคริปต์ที่ต้องการ
local function Kick()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    LocalPlayer:Kick("แมพนี้ยังไม่ได้มีการทำscript อยากให้ทำแมพไหนก็บอกดิอีแก่")
end

local function DeadRails()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Dead%20Rails.lua"))()
end

local function NinjaLegends()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Ninja%20Legands.lua"))()
end

local function TheStrongestBattlegrounds()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/The%20Strongest%20Battlegrounds.lua"))()
end

local function Forsaken()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Forsaken.lua"))()
end

local function GunGroundsFFA()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Gun%20Grounds%20FFA.lua"))()
end

local function BuildABoat()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Build%20A%20Boat.lua"))()
end

-- ฟังก์ชันตรวจสอบโฟลเดอร์และรันสคริปต์ที่เหมาะสม
local function checkAndRunScripts()
    local placeId = game.PlaceId

    if placeId == 70876832253163 then
        DeadRails()
    elseif placeId == 3956818381 then
        NinjaLegends()
    elseif placeId == 10449761463 then
        TheStrongestBattlegrounds()
    elseif placeId == 18687417158 then
        Forsaken()
    elseif placeId == 12137249458 then
        GunGroundsFFA()
    elseif placeId == 537413528 then
        BuildABoat()
    else
        Kick()
    end
end

-- ตรวจสอบเมื่อเริ่มเกม
checkAndRunScripts()
