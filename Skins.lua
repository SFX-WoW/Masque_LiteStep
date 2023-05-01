--[[

	This file is part of 'Masque: LiteStep', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_LiteStep.

	* File....: Skins.lua
	* Authors.: StormFX, Saynt

	LiteStep Skins

]]

local MSQ = LibStub and LibStub("Masque", true)
if not MSQ then return end

local AddOn, Core = ...

----------------------------------------
-- Internal
---

local L = Core.Locale

----------------------------------------
-- Local
---

local API_VERSION = 100005

-- Skin Info
local Version = GetAddOnMetadata(AddOn, "Version")
local Authors = {"StormFX", "|cff999999Saynt|r"}
local Websites = {
	"https://github.com/SFX-WoW/Masque_LiteStep",
	"https://www.curseforge.com/wow/addons/masque-litestep",
	"https://addons.wago.io/addons/masque-litestep",
	"https://www.wowinterface.com/downloads/info8882",
}

----------------------------------------
-- LiteStep
---

MSQ:AddSkin("LiteStep", {
	API_VERSION = API_VERSION,
	Shape = "Square",

	-- Info
	Authors = Authors,
	Description = L["A port of the original LiteStep skin by Saynt."],
	Version = Version,
	Websites = Websites,

	-- UI
	Group = "LiteStep",
	Order = 1,

	-- Skin
	-- Mask = nil,
	Backdrop = {
		Texture = [[Interface\AddOns\Masque\Textures\Backdrop\Action]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "BACKGROUND",
		DrawLevel = -1,
		Width = 40,
		Height = 40,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseColor = nil,
		Item = {
			Texture = [[Interface\AddOns\Masque\Textures\Backdrop\Item]],
			-- TexCoords = {0, 1, 0, 1},
			-- Color = {1, 1, 1, 1},
			BlendMode = "BLEND",
			DrawLayer = "BACKGROUND",
			DrawLevel = -1,
			Width = 40,
			Height = 40,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0,
			OffsetY = 0,
			-- SetAllPoints = nil,
			-- UseColor = nil,
		},
		Pet = {
			Texture = [[Interface\AddOns\Masque\Textures\Backdrop\Pet]],
			-- TexCoords = {0, 1, 0, 1},
			-- Color = {1, 1, 1, 1},
			BlendMode = "BLEND",
			DrawLayer = "BACKGROUND",
			DrawLevel = -1,
			Width = 40,
			Height = 40,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0,
			OffsetY = 0,
			-- SetAllPoints = nil,
			-- UseColor = nil,
		},
	},
	Icon = {
		Texture = [[Interface\Icons\INV_Misc_Bag_08]],
		TexCoords = {0.07,0.93,0.07,0.93},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "BACKGROUND",
		DrawLevel = 0,
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SlotIcon = "Icon",
	-- Shadow = Default.Shadow,
	Normal = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Normal]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		-- EmptyTexture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Normal]],
		-- EmptyCoords = {0, 1, 0, 1},
		-- EmptyColor = {1, 1, 1, 0.5},
		BlendMode = "BLEND",
		DrawLayer = "ARTWORK",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseStates = nil,
	},
	-- Disabled = Default.Disabled,
	Pushed = {
		-- Texture = [[Interface\Buttons\UI-Quickslot-Depress]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {0, 0, 0, 0.6},
		BlendMode = "BLEND",
		DrawLayer = "BORDER",
		DrawLevel = 1,
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		UseColor = true,
	},
	Flash = {
		-- Texture = [[Interface\Buttons\UI-QuickslotRed]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 0, 0, 0.3},
		BlendMode = "ADD",
		DrawLayer = "BORDER",
		DrawLevel = 0,
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		UseColor = true,
	},
	HotKey = {
		JustifyH = "RIGHT",
		JustifyV = "MIDDLE",
		DrawLayer = "ARTWORK",
		Width = 32,
		Height = 0,
		Point = "TOPRIGHT",
		RelPoint = "TOPRIGHT",
		OffsetX = -3,
		OffsetY = -3,
		Pet = {
			JustifyH = "RIGHT",
			JustifyV = "MIDDLE",
			DrawLayer = "ARTWORK",
			Width = 0,
			Height = 0,
			Point = "TOPRIGHT",
			RelPoint = "TOPRIGHT",
			OffsetX = -2,
			OffsetY = -2,
		},
	},
	Count = {
		JustifyH = "RIGHT",
		JustifyV = "MIDDLE",
		DrawLayer = "ARTWORK",
		Width = 0,
		Height = 0,
		Point = "BOTTOMRIGHT",
		RelPoint = "BOTTOMRIGHT",
		OffsetX = -3,
		OffsetY = 3,
	},
	Duration = {
		JustifyH = "CENTER",
		JustifyV = "MIDDLE",
		DrawLayer = "ARTWORK",
		Width = 32,
		Height = 0,
		Point = "TOP",
		RelPoint = "BOTTOM",
		OffsetX = 0,
		OffsetY = -3,
	},
	Checked = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Border]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {0, 0.7, 0.9, 0.7},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SlotHighlight = "Checked",
	Name = {
		JustifyH = "CENTER",
		JustifyV = "MIDDLE",
		DrawLayer = "OVERLAY",
		Width = 32,
		Height = 0,
		Point = "BOTTOM",
		RelPoint = "BOTTOM",
		OffsetX = 0,
		OffsetY = 3,
	},
	Border = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Border]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	DebuffBorder = "Border",
	EnchantBorder = "Border",
	IconBorder = "Border",
	Gloss = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Gloss]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 0.5},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	NewAction = {
		-- Atlas = "bags-newitem",
		-- UseAtlasSize = false,
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Glow]],
		Color = {1, 1, 0.8, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 1,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SpellHighlight = "NewAction",
	AutoCastable = {
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 1,
		Width = 66,
		Height = 66,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0.5,
		OffsetY = -0.5,
		-- SetAllPoints = nil,
	},
	IconOverlay = {
		-- Atlas = "AzeriteIconFrame",
		-- UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 1,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	UpgradeIcon = {
		Atlas = "bags-greenarrow",
		UseAtlasSize = false, -- true
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 15,
		Height = 16,
		Point = "TOPLEFT",
		RelPoint = "TOPLEFT",
		OffsetX = 0,
		OffsetY = -1,
		-- SetAllPoints = nil,
	},
	IconOverlay2 = {
		-- Atlas = "ConduitIconFrame-Corners",
		-- UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	QuestBorder = {
		Border = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Quest]],
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Border]],
		Color = {1, 0.8, 0, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	NewItem = {
		-- Atlas = "bags-glow-white",
		-- UseAtlasSize = false,
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Glow]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SearchOverlay = {
		-- Texture = nil,
		-- TexCoords = {0, 1, 0, 1},
		Color = {0, 0, 0, 0.7},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 4,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = true,
		UseColor = true,
	},
	ContextOverlay = "SearchOverlay",
	JunkIcon = {
		Atlas = "bags-junkcoin",
		UseAtlasSize = false, -- true
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 5,
		Width = 16,
		Height = 16,
		Point = "TOPLEFT",
		RelPoint = "TOPLEFT",
		OffsetX = 2,
		OffsetY = -1,
		-- SetAllPoints = nil,
	},
	Highlight = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\Base\Border]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 0.5},
		BlendMode = "ADD",
		DrawLayer = "HIGHLIGHT",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseColor = nil,
	},
	AutoCastShine = {
		Width = 34,
		Height = 34,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 1,
		OffsetY = -1,
		-- SetAllPoints = nil,
	},
	Cooldown = {
		-- Texture = nil,
		-- EdgeTexture = [[Interface\AddOns\Masque\Textures\Cooldown\Edge]],
		-- PulseTexture = [[Interface\Cooldown\star4]],
		Color = {0, 0, 0, 0.7},
		Width = 30,
		Height = 30,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	ChargeCooldown = "Cooldown",
})

----------------------------------------
-- LiteStep - XLT
---

MSQ:AddSkin("LiteStep - XLT", {
	-- API_VERSION = Template.API_VERSION,
	-- Shape = Template.Shape,
	Template = "LiteStep",

	-- Info
	-- Authors = Template.Authors,
	Description = L["An alternate version of LiteStep without borders."],
	-- Version = Template.Version,
	-- Websites = Template.Websites,

	-- UI
	-- Group = Template.Group,
	Order = 2,
	Title = "XLT",

	-- Skin
	-- Mask = Template.Mask,
	-- Backdrop = Template.Backdrop,
	-- Icon = Template.Icon,
	-- SlotIcon = Template.SlotIcon,
	-- Shadow = Template.Shadow,
	Normal = {
		Texture = [[Interface\AddOns\Masque_LiteStep\Textures\XLT\Normal]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		-- EmptyTexture = [[Interface\Buttons\UI-Quickslot2]],
		-- EmptyCoords = {0, 1, 0, 1},
		-- EmptyColor = {1, 1, 1, 0.5},
		BlendMode = "BLEND",
		DrawLayer = "ARTWORK",
		DrawLevel = 0,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		UseStates = true,
	},
	-- Disabled = Template.Disabled,
	-- Pushed = Template.Pushed,
	-- Flash = Template.Flash,
	-- HotKey = Template.HotKey,
	-- Count = Template.Count,
	-- Duration = Template.Duration,
	-- Checked = Template.Checked,
	-- SlotHighlight = Template.SlotHighlight,
	-- Name = Template.Name,
	-- Border = Template.Border,
	-- DebuffBorder = Template.DebuffBorder,
	-- EnchantBorder = Template.EnchantBorder,
	-- IconBorder = Template.IconBorder,
	-- Gloss = Template.Gloss,
	-- NewAction = Template.NewAction,
	-- SpellHighlight = Template.SpellHighlight,
	-- AutoCastable = Template.AutoCastable,
	-- IconOverlay = Template.IconOverlay,
	-- UpgradeIcon = Template.UpgradeIcon,
	-- IconOverlay2 = Template.IconOverlay2,
	-- QuestBorder = Template.QuestBorder,
	-- NewItem = Template.NewItem,
	-- SearchOverlay = Template.SearchOverlay,
	-- ContextOverlay = Template.ContextOverlay,
	-- JunkIcon = Template.JunkIcon,
	-- Highlight = Template.Highlight,
	-- AutoCastShine = Template.AutoCastShine,
	-- Cooldown = Template.Cooldown,
	-- ChargeCooldown = Template.ChargeCooldown,
})
