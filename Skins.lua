--[[

	This file is part of 'Masque: LiteStep', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_LiteStep.

	* File....: Skins.lua
	* Authors.: StormFX, Saynt

	LiteStep Skins

]]

local Masque = LibStub and LibStub("Masque", true)
if not Masque then return end

local _, Core = ...

----------------------------------------
-- Internal
---

local L = Core.Locale

----------------------------------------
-- Locals
---

local API_VERSION = 110208

-- Skin Info
local Authors = {"StormFX", "|cff999999Saynt|r"}
local Version = "@project-version@"
local Websites = {
	"https://github.com/SFX-WoW/Masque_LiteStep",
	"https://www.curseforge.com/wow/addons/masque-litestep",
	"https://addons.wago.io/addons/masque-litestep",
	"https://www.wowinterface.com/downloads/info8882",
}

local PATH_BACKDROP = [[Interface\AddOns\Masque\Textures\Backdrop\]]

local PATH_BASE = [[Interface\AddOns\Masque_LiteStep\Textures\Base\]]
local PATH_BORDER = PATH_BASE.."Border"
local PATH_GLOW = PATH_BASE.."Glow"

----------------------------------------
-- LiteStep
---

Masque:AddSkin("LiteStep", {
	API_VERSION = API_VERSION,
	Shape = "Square",

	-- [ Info ]
	Authors = Authors,
	Description = L["A port of the original LiteStep skin by Saynt."],
	Discord = "https://discord.gg/7MTWRgDzz8",
	Version = Version,
	Websites = Websites,

	-- [ UI ]
	Group = "LiteStep",
	Order = 1,

	-- [ Skin ]
	-- Mask = nil,
	Backdrop = {
		Texture = PATH_BACKDROP.."Action",
		Width = 40,
		Height = 40,
		Item = {
			Texture = PATH_BACKDROP.."Item",
			Width = 40,
			Height = 40,
		},
		Pet = {
			Texture = PATH_BACKDROP.."Pet",
			Width = 40,
			Height = 40,
		},
	},
	Icon = {
		Backpack = [[Interface\Icons\INV_Misc_Bag_08]],
		TexCoords = {0.07,0.93,0.07,0.93},
		Width = 32,
		Height = 32,
	},
	-- Shadow = Default.Shadow,
	Normal = {
		Texture = PATH_BASE.."Normal",
	},
	-- Disabled = Default.Disabled,
	Pushed = {
		Color = {0, 0, 0, 0.6},
		DrawLayer = "BORDER",
		DrawLevel = 1,
		Width = 32,
		Height = 32,
		UseColor = true,
	},
	Flash = {
		Color = {1, 0, 0, 0.3},
		BlendMode = "ADD",
		DrawLayer = "BORDER",
		DrawLevel = 0,
		Width = 32,
		Height = 32,
		UseColor = true,
	},
	Checked = {
		Texture = PATH_BORDER,
		Color = {0, 0.7, 0.9, 1},
		BlendMode = "ADD",
	},
	SlotHighlight = "Checked",
	Border = {
		Texture = PATH_BORDER,
		Width = 36,
		Height = 36,
	},
	DebuffBorder = "Border",
	EnchantBorder = "Border",
	IconBorder = "Border",
	Gloss = {
		Texture = PATH_BASE.."Gloss",
		Color = {1, 1, 1, 0.5},
	},
	NewAction = {
		Texture = PATH_GLOW,
		Color = {1, 1, 0.8, 1},
		Width = 36,
		Height = 36,
	},
	SpellHighlight = "NewAction",
	IconOverlay = {
		Atlas = "AzeriteIconFrame",
	},
	IconOverlay2 = {
		Atlas = "ConduitIconFrame-Corners",
	},
	NewItem = {
		Texture = PATH_GLOW,
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 36,
		Height = 36,
	},
	QuestBorder = {
		Border = PATH_BASE.."Quest",
		Texture = PATH_BORDER,
		Color = {1, 0.8, 0, 1},
	},
	UpgradeIcon = {
		Atlas = "bags-greenarrow",
		Width = 15,
		Height = 16,
		OffsetY = -1,
	},
	ContextOverlay = {
		Color = {0, 0, 0, 0.7},
		Width = 36,
		Height = 36,
		UseColor = true,
	},
	SearchOverlay = "ContextOverlay",
	JunkIcon = {
		Atlas = "bags-junkcoin",
		Width = 16,
		Height = 16,
		OffsetX = 2,
		OffsetY = -1,
	},
	Duration = {
		OffsetY = -3,
	},
	Name = {
		OffsetY = 3,
	},
	Highlight = {
		Texture = PATH_BORDER,
		Color = {1, 1, 1, 0.5},
	},
	-- [ TextOverlayContainer (Retail) ]
	Count = {
		OffsetX = -3,
		OffsetY = 3,
	},
	HotKey = {
		OffsetX = -3,
		OffsetY = -3,
		Pet = {
			OffsetX = -2,
			OffsetY = -2,
		},
	},
	-- [ AutoCastShine (Classic) ]
	AutoCastable = {
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
		Width = 66,
		Height = 66,
		OffsetX = 0.5,
		OffsetY = -0.5,
	},
	AutoCastShine = {
		Width = 34,
		Height = 34,
		OffsetX = 1,
		OffsetY = -1,
	},
	-- [ AutoCastOverlay (Retail) ]
	-- AutoCast_Frame = Default.AutoCast_Frame,
	-- AutoCast_Shine = Default.AutoCast_Shine,
	AutoCast_Mask = {
		Texture = [[Interface\AddOns\Masque\Textures\Square\AutoCast-Mask]],
		Width = 28,
		Height = 28,
	},
	AutoCast_Corners = {
		Atlas = "UI-HUD-ActionBar-PetAutoCast-Corners",
		Width = 32,
		Height = 32,
	},
	-- [ Cooldowns ]
	Cooldown = {
		Texture = [[Interface\AddOns\Masque\Textures\Square\Mask]],
		EdgeTexture = [[Interface\AddOns\Masque\Textures\Square\Edge]],
		Color = {0, 0, 0, 0.7},
		Width = 32,
		Height = 32,
	},
	CooldownLoC = "Cooldown",
	ChargeCooldown = {
		EdgeTexture = [[Interface\AddOns\Masque\Textures\Square\Edge]],
		Width = 30,
		Height = 30,
	},
	-- [ SpellAlert ]
	SpellAlert = {
		Height = 36,
		Width = 36,
		AltGlow = {
			Height = 46.5,
			Width = 46.5,
		},
		Classic = {
			Height = 32,
			Width = 32,
		},
		Modern = {
			Height = 32,
			Width = 32,
		},
		["Modern-Lite"] = {
			Height = 33,
			Width = 33,
		},
	},
	-- [ AssistedCombatHighlight ]
	AssistedCombatHighlight = {
		Width = 46.5,
		Height = 46.5,
	},
})

----------------------------------------
-- LiteStep - XLT
---

Masque:AddSkin("LiteStep - XLT", {
	-- API_VERSION = Template.API_VERSION,
	-- Shape = Template.Shape,
	Template = "LiteStep",

	-- [ Info ]
	Description = L["An alternate version of LiteStep without borders."],

	-- [ UI ]
	Order = 2,
	Title = "XLT",

	-- [ Skin ]
	Normal = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\XLT\Normal]],
		UseStates = true,
	},
	-- [ SpellAlerts ]
	SpellAlert = {
		Height = 36,
		Width = 36,
		AltGlow = {
			Height = 44,
			Width = 44,
		},
		Classic = {
			Height = 30,
			Width = 30,
		},
		Modern = {
			Height = 30,
			Width = 30,
		},
		["Modern-Lite"] = {
			Height = 31.5,
			Width = 31.5,
		},
	},
	AssistedCombatHighlight = {
		Width = 44,
		Height = 44,
	},
})
