--[[

	This file is part of 'Masque: LiteStep', an add-on for World of Warcraft. For license information,
	please see the included License.txt file.

	* File....: Skins.lua
	* Authors.: StormFX, Saynt

	LiteStep Skins
]]

-- GLOBALS: GetAddOnMetadata, LibStub

local MSQ = LibStub and LibStub("Masque", true)
if not MSQ then return end

----------------------------------------
-- Locals
----------------------------------------

local AddOn, Core = ...

-- Locale
local L = Core.Locale

-- Skin Info
local Version = GetAddOnMetadata(AddOn, "Version")
local Authors = {"StormFX", "|cff999999Saynt|r"}
local Websites = {
	"https://github.com/stormfx/masque_litestep",
	"https://www.wowace.com/projects/masque-litestep",
	"https://www.curseforge.com/wow/addons/masque-litestep",
	"https://www.wowinterface.com/downloads/info8882",
}

----------------------------------------
-- LiteStep
----------------------------------------

MSQ:AddSkin("LiteStep", {
	Shape = "Square",
	Group = "LiteStep",
	Order = 1,
	Version = Version,
	Authors = Authors,
	Websites = Websites,
	Description = L["A port of the original LiteStep skin by Saynt."],
	Masque_Version = 80000,
	Backdrop = {
		Width = 36,
		Height = 36,
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Backdrop]],
	},
	Icon = {
		Width = 32,
		Height = 32,
		TexCoords = {0.07,0.93,0.07,0.93},
	},
	Flash = {
		Width = 36,
		Height = 36,
		Color = {1, 0, 0, 0.3},
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Overlay]],
	},
	Pushed = {
		Width = 36,
		Height = 36,
		Color = {0, 0, 0, 0.5},
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Overlay]],
	},
	Normal = {
		Width = 36,
		Height = 36,
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Normal]],
	},
	Disabled = {
		Hide = true,
	},
	Checked = {
		Width = 36,
		Height = 36,
		BlendMode = "BLEND",
		Color = {0, 0.7, 0.9, 0.7},
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Border]],
	},
	Border = {
		Width = 36,
		Height = 36,
		BlendMode = "BLEND",
		Color = {0, 1, 0, 0.5},
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Border]],
	},
	Gloss = {
		Width = 36,
		Height = 36,
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Gloss]],
	},
	AutoCastable = {
		Width = 64,
		Height = 64,
		OffsetX = 0.5,
		OffsetY = -0.5,
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
	},
	Highlight = {
		Width = 36,
		Height = 36,
		BlendMode = "ADD",
		Color = {1, 1, 1, 0.5},
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Border]],
	},
	Name = {
		Width = 36,
		Height = 10,
		OffsetY = 4,
	},
	Count = {
		Width = 36,
		Height = 10,
		OffsetX = -1,
		OffsetY = 4,
	},
	HotKey = {
		Width = 36,
		Height = 10,
		OffsetX = -2,
		OffsetY = -5,
	},
	Duration = {
		Width = 36,
		Height = 10,
		OffsetY = -2,
	},
	Cooldown = {
		Width = 30,
		Height = 30,
		Color = {0, 0, 0, 0.7},
	},
	ChargeCooldown = {
		Width = 30,
		Height = 30,
	},
	Shine = {
		Width = 32,
		Height = 32,
		OffsetX = 1,
		OffsetY = -1,
	},
}, true)

----------------------------------------
-- LiteStep - XLT
----------------------------------------

MSQ:AddSkin("LiteStep - XLT", {
	Title = "XLT",
	Order = 2,
	Template = "LiteStep",
	Description = L["An alternate version of LiteStep without borders."],
	Normal = {
		Width = 36,
		Height = 36,
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Lite]],
	},
}, true)