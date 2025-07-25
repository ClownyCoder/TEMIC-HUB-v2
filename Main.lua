local script_key = "nncEGIHohcvnbVoinbfhNnbvnSLJf"
local valid_keys = {
    "nncEGIHohcvnbVoinbfhNnbvnSLJf",
    "key2hier",
    "key3hier"
}

local function isValidKey(key)
    for _, v in pairs(valid_keys) do
        if v == key then
            return true
        end
    end
    return false
end

if not isValidKey(script_key) then
    game.StarterGui:SetCore("SendNotification", {
        Title = "❌ Invalid Key",
        Text = "Jij hebt geen geldige key. Fix je toegang.",
        Duration = 5
    })
    return
end

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()

local Window = Library:CreateWindow({
    Title = "TEMIC HUB",
    Footer = "version: 1.0.0",
})

local Tabs = {
    Main = Window:AddTab("Main"),
    Combat = Window:AddTab("Combat"),
    Blatant = Window:AddTab("Blatant"),
    Utility = Window:AddTab("Utility"),
    Render = Window:AddTab("Render"),
}

Library:Notify({
    Title = "✅ Script unlockedfully!",
    Description = "Thank you for using TEMIC!",
    Time = 3,
})
