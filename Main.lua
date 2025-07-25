local valid_keys = {
    "nncEGIHohcvnbVoinbfhNnbvnSLJf",
    "key2hier",
    "key3hier"
}

local key = getgenv().script_key

if not key or key == "" then
    warn("[TEMIC HUB] Geen key ontvangen via console.")
    return
end

local unlocked = false
for _, v in ipairs(valid_keys) do
    if v == key then
        unlocked = true
        break
    end
end

if not unlocked then
    warn("[TEMIC HUB] Key gevonden in console, maar ongeldig.")
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
