--[[

	This file is part of 'Masque: LiteStep', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_LiteStep.

	* File...: Locales.lua
	* Author.: StormFX

]]

local _, Core = ...

----------------------------------------
-- Locals
---

local Locale = GetLocale()
local L = {}

----------------------------------------
-- Core
---

Core.Locale = setmetatable(L, {
	__index = function(self, k)
		self[k] = k
		return k
	end
})

----------------------------------------
-- Localization
---

if Locale == "enGB" or Locale == "enUS" then
	L["A port of the original LiteStep skin by Saynt."] = "A port of the original LiteStep skin by Saynt."
	L["An alternate version of LiteStep without borders."] = "An alternate version of LiteStep without borders."
	return
--elseif Locale == "deDE" then
--elseif Locale == "esES" or Locale == "esMX" then
--elseif Locale == "frFR" then
--elseif Locale == "itIT" then
--elseif Locale == "koKR" then
--elseif Locale == "ptBR" then
elseif Locale == "ruRU" then
	L["A port of the original LiteStep skin by Saynt."] = "Порт оригинального скина LiteStep от Saynt."
	L["An alternate version of LiteStep without borders."] = "Альтернативная версия LiteStep без границ."
--elseif Locale == "zhCN" then
elseif Locale == "zhTW" then
	L["A port of the original LiteStep skin by Saynt."] = "這是 Synt 原版 LiteStep 皮膚的移植版。"
	L["An alternate version of LiteStep without borders."] = "另一個版本的 LiteStep 但沒有邊框。"
end
