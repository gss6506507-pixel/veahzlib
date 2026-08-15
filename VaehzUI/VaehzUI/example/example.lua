--[[
	GROSS HUB - Example Usage Script
	Demonstrates all components including Sub-Tabs.
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/gss6506507-pixel/veahzlib/refs/heads/main/VaehzUI/VaehzUI/src/VaehzUI.lua"))()

-- Create Window
local Window = Library:CreateWindow({
	Title = "GROSS HUB | Painel de Exemplo",
	Accent = Color3.fromRGB(100, 160, 255),
	DiscordInvite = "https://discord.gg/grosshub",
	DiscordCode = "grosshub",
})

-- Welcome Notification
Library:Notify({
	Title = "GROSS HUB",
	Content = "Carregado com sucesso! Use o botão flutuante para abrir/fechar.",
	Duration = 4,
})

--------------------------------------------------------------------------------
-- Tab 1: Combat (Demonstrating Sub-Tabs)
--------------------------------------------------------------------------------
local CombatTab = Window:CreateTab({
	Name = "Combat",
	Icon = "swords",
})

-- Sub-Tab: Aimbot
local AimbotSub = CombatTab:CreateSubTab({ Name = "Aimbot" })
AimbotSub:CreateToggle({
	Name = "Enabled",
	Default = false,
	Callback = function(v) print("Aimbot:", v) end,
})
AimbotSub:CreateSlider({
	Name = "FOV Radius",
	Min = 0, Max = 800, Default = 100,
	Callback = function(v) print("FOV:", v) end,
})

-- Sub-Tab: Hitbox
local HitboxSub = CombatTab:CreateSubTab({ Name = "Hitbox" })
HitboxSub:CreateToggle({
	Name = "Extend Hitbox",
	Default = false,
})
HitboxSub:CreateDropdown({
	Name = "Target Part",
	Options = {"Head", "HumanoidRootPart", "Torso"},
	Default = "Head",
})

--------------------------------------------------------------------------------
-- Tab 2: Visuals
--------------------------------------------------------------------------------
local VisualsTab = Window:CreateTab({
	Name = "Visuals",
	Icon = "eye",
})

local EspSub = VisualsTab:CreateSubTab({ Name = "ESP" })
EspSub:CreateToggle({ Name = "Box ESP", Default = true })
EspSub:CreateColorPicker({
	Name = "ESP Color",
	Default = Color3.fromRGB(255, 255, 255),
})

local WorldSub = VisualsTab:CreateSubTab({ Name = "World" })
WorldSub:CreateSlider({ Name = "Brightness", Min = 0, Max = 10, Default = 2 })

--------------------------------------------------------------------------------
-- Tab 3: Misc (Normal Tab without Sub-Tabs)
--------------------------------------------------------------------------------
local MiscTab = Window:CreateTab({
	Name = "Misc",
	Icon = "box",
})

MiscTab:CreateButton({
	Name = "Rejoin Server",
	Callback = function() print("Rejoining...") end,
})

MiscTab:CreateTextbox({
	Name = "Custom Message",
	Placeholder = "Type here...",
})
