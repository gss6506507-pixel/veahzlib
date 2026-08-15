--[[
	Vaehz UI Library - Example Usage Script
	Demonstrates all components available in Vaehz UI.
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/gss6506507-pixel/veahzlib/refs/heads/main/VaehzUI/VaehzUI/src/VaehzUI.lua"))()

-- Create Window
local Window = Library:CreateWindow({
	Title = "Vaehz UI | Painel de Exemplo",
	Accent = Color3.fromRGB(100, 160, 255),
	YouTube = "https://youtube.com/@vaehz",
	DiscordInvite = "https://discord.gg/vaehz",
	DiscordCode = "vaehz",
})

-- Welcome Notification
Library:Notify({
	Title = "Bem-vindo!",
	Content = "A Vaehz UI foi carregada com sucesso.",
	Duration = 4,
})

--------------------------------------------------------------------------------
-- Tab 1: Principal (Main)
--------------------------------------------------------------------------------
local MainTab = Window:CreateTab({
	Name = "Principal",
	Icon = "house",
})

MainTab:CreateWarning("Aviso importante: Certifique-se de usar esta biblioteca apenas em ambientes permitidos.")

MainTab:CreateLabel("Bem-vindo ao painel de demonstração da Vaehz UI. Abaixo estão os principais elementos.")

MainTab:CreateButton({
	Name = "Clique para Notificação",
	Callback = function()
		Library:Notify({
			Title = "Ação Executada",
			Content = "Você clicou no botão principal!",
			Duration = 3,
		})
	end,
})

local myToggle = MainTab:CreateToggle({
	Name = "Ativar Funcionalidade",
	Default = false,
	Callback = function(state)
		print("Toggle alterado para:", state)
		Library:Notify({
			Title = "Toggle",
			Content = "Estado: " .. tostring(state),
			Duration = 2,
		})
	end,
})

local myStat = MainTab:CreateStat({
	Name = "Status do Servidor",
	Value = "Online",
})

--------------------------------------------------------------------------------
-- Tab 2: Configurações (Settings)
--------------------------------------------------------------------------------
local SettingsTab = Window:CreateTab({
	Name = "Ajustes",
	Icon = "gear",
})

SettingsTab:CreateLabel("Ajuste os parâmetros abaixo conforme sua preferência.")

local mySlider = SettingsTab:CreateSlider({
	Name = "Velocidade (WalkSpeed)",
	Min = 16,
	Max = 250,
	Increment = 1,
	Default = 16,
	Callback = function(value)
		print("Slider alterado:", value)
	end,
})

local myTextbox = SettingsTab:CreateTextbox({
	Name = "Nome Personalizado",
	Placeholder = "Digite algo...",
	Default = "Player123",
	MinWidth = 80,
	MaxWidth = 160,
	Callback = function(text)
		Library:Notify({
			Title = "Textbox",
			Content = "Texto salvo: " .. text,
			Duration = 3,
		})
	end,
})

local myColorPicker = SettingsTab:CreateColorPicker({
	Name = "Cor do Tema",
	Default = Color3.fromRGB(100, 160, 255),
	Callback = function(color)
		print("Cor escolhida:", color)
	end,
})

local myDropdown = SettingsTab:CreateDropdown({
	Name = "Modo de Jogo",
	Options = {"Casual", "Competitivo", "Hardcore", "Personalizado"},
	Default = "Casual",
	Multi = false,
	Callback = function(selected)
		Library:Notify({
			Title = "Dropdown",
			Content = "Selecionado: " .. tostring(selected),
			Duration = 3,
		})
	end,
})
