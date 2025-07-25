local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()

local Window = Library:CreateWindow({
    Title = "TEMIC HUB",
    Footer = "version: 1.0.0",
})

local Tabs = {
    Main = Window:AddTab("Main"),
}

local Tabs = {
    Combat = Window:AddTab("Combat"),
}

local Tabs = {
    Blatant = Window:AddTab("Blatant"),
}

local Tabs = {
    Utility = Window:AddTab("Utility"),
}

local Tabs = {
    Render = Window:AddTab("Render"),
}

Library:Notify({
            Title = "✅ Script unlocked successfully!",
            Description = "Thank you for using TEMIC!",
            Time = 3,
        })
