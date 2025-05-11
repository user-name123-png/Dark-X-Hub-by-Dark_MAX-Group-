local GameHWID = game:GetService("RbxAnalyticsService"):GetClientId()
local PlrName = game:GetService("Players").LocalPlayer.name

local url = "https://discord.com/api/webhooks/1369602297440505896/I7zonQpRRZXTzZHcj8u5gr7djcZ-2H5yOcqaPl9zs-qEUjploF3MFeHII7IcXKZiSwvX"

local data = {
    username = "Dark X Hub",
    avatar_url = "https://cdn.discordapp.com/attachments/1319914720433803339/1370962862452772994/bc86bd39e7fcd6d9.png?ex=68216829&is=682016a9&hm=40629292b877bdf74b843a8ecc10c96f7b1126b8268a2911799585056a77caeb&",
    content = "**มีคนแปลกหน้าใช้ Script**",
    embeds = {
        {
            title = "**Check HWID**",
            color = 8912896,
            fields = {
                {
                    name = "**Name Player**",
                    value = ("```%s```"):format(PlrName)
                },
                {
                    name = "**Game HWID**",
                    value = ("```%s```"):format(GameHWID)
                }
            },
            author = {
                name = "HWID Script",
                url = "https://raw.githubusercontent.com/user-name123-png/Dark-X-Hub-by-Dark_MAX-Group-/refs/heads/main/HWID.lua",
                icon_url = "https://cdn.discordapp.com/attachments/1319914720433803339/1370962862452772994/bc86bd39e7fcd6d9.png?ex=68216829&is=682016a9&hm=40629292b877bdf74b843a8ecc10c96f7b1126b8268a2911799585056a77caeb&"
            },
            image = {
                url = "https://cdn.discordapp.com/attachments/1319914720433803339/1370964215447421070/455011742_1061691948717528_505689001595664187_n.png?ex=6821696c&is=682017ec&hm=7cb2fed6fd345cf00c522245d5259ddb20672d73488c8c3174e598e118459c0f&"
            }
        }
    }
}

-- ต้องใช้ JSONEncode ไม่ใช่ JDUNEncode
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {["Content-Type"] = "application/json"}
local requestFunc = http_request or request or syn and syn.request

if requestFunc then
    requestFunc({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = newdata
    })
else
    warn("⚠️ ไม่สามารถส่ง Webhook ได้ — ไม่พบ request function ที่รองรับ")
end
