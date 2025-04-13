local workspace = game:GetService("Workspace")

-- ฟังก์ชันรันสคริปต์ที่ต้องการ
local function infiniteyield()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end

local function DeadRails()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Dead%20Rails.lua"))()
    infiniteyield()
end

local function NinjaLegends()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Ninja%20Legands.lua"))()
    infiniteyield()
end

local function TheStrongestBattlegrounds()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/The%20Strongest%20Battlegrounds.lua"))()
    infiniteyield()
end

local function Forsaken()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Forsaken.lua"))()
    infiniteyield()
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
    else
        infiniteyield()
    end
end

-- ตรวจสอบเมื่อเริ่มเกม
checkAndRunScripts()
