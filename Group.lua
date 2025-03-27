local workspace = game:GetService("Workspace")

-- ฟังก์ชันรันสคริปต์ที่ต้องการ
local function DeadRails()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Dead%20Rails.lua"))()
end

local function NinjaLegends()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/Ninja%20Legands.lua"))()
end

local function TheStrongestBattlegrounds()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX/refs/heads/main/The%20Strongest%20Battlegrounds.lua"))()
end

-- ฟังก์ชันตรวจสอบโฟลเดอร์และรันสคริปต์ที่เหมาะสม
local function checkAndRunScripts()
    if workspace:FindFirstChild("RuntimeItems") then
        DeadRails()
    elseif workspace:FindFirstChild("Hoops") then
        NinjaLegends()
    elseif workspace:FindFirstChild("Cutscenes") then
        TheStrongestBattlegrounds()
    end
end

-- ตรวจสอบเมื่อเริ่มเกม
checkAndRunScripts()
