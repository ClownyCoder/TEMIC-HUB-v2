local valid_keys = {
    "nncEGIHohcvnbVoinbfhNnbvnSLJf",
    "key2hier",
    "key3hier"
}

local script_key = getgenv().script_key
local unlocked = false

for _, v in ipairs(valid_keys) do
    if script_key == v then
        unlocked = true
        break
    end
end

if not unlocked then
    warn("[TEMIC HUB] Key is ongeldig. Script blijft gelockt.")
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
    Title = "✅ Script unlocked successfully!",
    Description = "Thank you for using TEMIC!",
    Time = 3,
})
