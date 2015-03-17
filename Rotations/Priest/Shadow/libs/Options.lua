if select(3, UnitClass("player")) == 5 then

	function ShadowConfig()
		if currentConfig ~= "Shadow ragnar" then
			ClearConfig()
			thisConfig = 0
			-- Title
			CreateNewTitle(thisConfig,"shadow ravens |cffBA55D3by ragnar")


			-- Wrapper -----------------------------------------
			CreateNewWrap(thisConfig,"|cffBA55D3Offensive")

			-- bosscheck
			CreateNewCheck(thisConfig,"isBoss")
			CreateNewText(thisConfig,"isBoss")

			-- -- Throw DP around
			-- CreateNewCheck(thisConfig,"ThrowDP")
			-- CreateNewText(thisConfig,"ThrowDP")

			-- ThrowDP or PushDP on AS
			if getTalent(7,3) then
				CreateNewCheck(thisConfig,"DP mode")
				CreateNewDrop(thisConfig,"DP mode",1,"|cffFFDD11Set to desired |cffFFFFFFDevouring Plague Mode.","|cffFFDD11Push","|cffFFDD11Throw")
				CreateNewText(thisConfig,"DP mode")

				CreateNewBox(thisConfig,"Push Time", 0, 6, 0.1, 0.3, "Minimum time left of DP for push again")
				CreateNewText(thisConfig,"Push Time")
			end

			-- -- Min Orbs to cast DP on traditional single target
			-- CreateNewDrop(thisConfig,"Min Orbs (trad)",1,"Choose the minimum orbs to cast DP if targetHP>20.","|cffCC00003","|cFF00CC005")
			-- CreateNewText(thisConfig,"Min Orbs (trad)")

			-- -- only cast DP with 5 Orbs on traditional single rota
			-- CreateNewCheck(thisConfig,"DP5")
			-- CreateNewText(thisConfig,"DP only with 5 orbs")

			-- Power Infusion
			if isKnown(PI) then
				CreateNewCheck(thisConfig,"Power Infusion")
				CreateNewText(thisConfig,"Power Infusion")
			end

			-- Troll Racial
			if isKnown(Berserking) then
				CreateNewCheck(thisConfig,"Berserking")
				CreateNewText(thisConfig,"Berserking")
			end

			-- Shadowfiend / Mindbender
			if isKnown(Mindbender) then
				CreateNewCheck(thisConfig,"Mindbender")
				CreateNewText(thisConfig,"Mindbender")
			else
				CreateNewCheck(thisConfig,"Shadowfiend")
				CreateNewText(thisConfig,"Shadowfiend")
			end

			-- onUse Trinkets
			CreateNewCheck(thisConfig,"Trinket 1")
			CreateNewText(thisConfig,"Trinket 1")
			CreateNewCheck(thisConfig,"Trinket 2")
			CreateNewText(thisConfig,"Trinket 2")

			-- -- SWD Glyphed
			-- if hasGlyph(GlyphOfSWD) then
			-- 	CreateNewCheck(thisConfig,"SWD glyphed")
			-- 	CreateNewText(thisConfig,"SWD glyphed")
			-- end

			-- LF Orbs
			CreateNewCheck(thisConfig,"Scan for Orbs", "Scan all enemies to create an orb with SWD")
			CreateNewText(thisConfig,"Scan for Orbs")


			-- LF ToF
			CreateNewCheck(thisConfig,"Scan for ToF", "Scan all enemies to get ToF")
			CreateNewText(thisConfig,"Scan for ToF")


			-- Wrapper -----------------------------------------
			CreateNewWrap(thisConfig,"|cffBA55D3Encounter Specific")

			-- Maidens Auto Guise
			CreateNewCheck(thisConfig,"Auto Guise", "Auto Spectral Guise on: \nBRF: Iron Maidens")
			CreateNewText(thisConfig,"Auto Guise")

			-- Wrapper -----------------------------------------
			CreateNewWrap(thisConfig,"|cffBA55D3Defensive")

			-- Shield
			CreateNewCheck(thisConfig,"PW: Shield")
			CreateNewBox(thisConfig, "PW: Shield", 0,100,2,90, "|cffFFBB00Under what |cffFF0000%HP|cffFFBB00 to use |cffFFFFFFShield")
			CreateNewText(thisConfig,"PW: Shield")

			-- Healthstone
			CreateNewCheck(thisConfig,"Healthstone")
			CreateNewBox(thisConfig, "Healthstone", 0,100,2,25, "|cffFFBB00Under what |cffFF0000%HP|cffFFBB00 to use |cffFFFFFFHealthstone")
			CreateNewText(thisConfig,"Healthstone")

			-- Desperate Prayer
			if isKnown(DesperatePrayer) then
				CreateNewCheck(thisConfig,"Desperate Prayer")
				CreateNewBox(thisConfig, "Desperate Prayer", 0,100,2,30, "|cffFFBB00Under what |cffFF0000%HP|cffFFBB00 to use |cffFFFFFFDesperate Prayer")
				CreateNewText(thisConfig,"Desperate Prayer")
			end

			-- Dispersion
			CreateNewCheck(thisConfig,"Dispersion")
			CreateNewBox(thisConfig, "Dispersion", 0,100,2,20, "|cffFFBB00Under what |cffFF0000%HP|cffFFBB00 to use |cffFFFFFFDispersion")
			CreateNewText(thisConfig,"Dispersion")

			-- Fade DMG reduction (with glyph)
			if hasGlyph(GlyphOfFade) then
				CreateNewCheck(thisConfig,"Fade Glyph")
				CreateNewBox(thisConfig, "Fade Glyph", 0, 100  , 2, 80, "|cffFFBB00Under what |cffFF0000%HP|cffFFBB00 to use |cffFFFFFFFade")
				CreateNewText(thisConfig,"Fade Glyph")
			end

			-- Fade (aggro reduction)
			CreateNewCheck(thisConfig,"Fade Aggro", "|cffFFBB00Fade on Aggression |cffFF0000(only in group or raid)")
			CreateNewText(thisConfig,"Fade Aggro")


			-- Wrapper -----------------------------------------
			if isKnown(CoP) then
				CreateNewWrap(thisConfig,"|cffBA55D3DoT Weave")
				-- General
				CreateNewCheck(thisConfig,"DoTWeave")
				CreateNewText(thisConfig,"DoTWeave")
			-- -- SWP
			-- CreateNewCheck(thisConfig,"SWP")
			-- CreateNewText(thisConfig,"SWP")
			-- -- VT
			-- CreateNewCheck(thisConfig,"VT")
			-- CreateNewText(thisConfig,"VT")
			end


			-- Wrapper -----------------------------------------
			CreateNewWrap(thisConfig,"|cffBA55D3Multitarget")

			-- Sort EnemiesTable by HPabs
			CreateNewCheck(thisConfig,"sortByHPabs","Sort enemiesTable by descending health, so the highest absolute health unit will be dotted first.")
			CreateNewText(thisConfig,"sortByHPabs")
			
			if getTalent(7,3) then
				-- VT on Target
				CreateNewCheck(thisConfig,"VT on Target")
				CreateNewText(thisConfig,"VT on Target")
			end

			-- -- SWP
			-- CreateNewCheck(thisConfig,"Multi SWP", "not used atm")
			-- CreateNewText(thisConfig,"Multi SWP")

			-- -- VT
			-- CreateNewCheck(thisConfig,"Multi VT", "not used atm")
			-- CreateNewText(thisConfig,"Multi VT")

			-- -- SWP
			-- CreateNewCheck(thisConfig,"Boss SWP")
			-- CreateNewText(thisConfig,"Boss SWP")

			-- -- VT
			-- CreateNewCheck(thisConfig,"Boss VT")
			-- CreateNewText(thisConfig,"Boss VT")

			-- Min Health
			CreateNewBox(thisConfig,"Min Health", 0.0, 7.5, 0.1, 1.5, "Minimum Health in |cffFF0000million HP|cffFFBB00.\nMin: 0 / Max: 7.5  / Interval: 0.1")
			CreateNewText(thisConfig,"Min Health")

			-- Max Targets
			-- CreateNewCheck(thisConfig,"Max Targets");
			CreateNewBox(thisConfig,"Max Targets", 1, 10, 1, 5, "Maximum count of SWP/VT on Units. \nMin: 1 / Max: 5 / Interval: 1 \n|cffFF0000Standard: 5(SimCraft)")
			CreateNewText(thisConfig,"Max Targets")

			-- Hold Orbs back
			if getTalent(7,3) then
				CreateNewBox(thisConfig,"DP on Orbs", 3, 4, 1, 4, "Start DP on 3 Orbs for faster DMG.\nStart DP on 4 Orb should improve Damage and uptime of Mental Instinct!")
				CreateNewText(thisConfig,"DP on Orbs")
			end

			-- -- DoT Refresh
			-- CreateNewBox(thisConfig,"Refresh Time", 0.0, 4.5, 0.1, 2.0, "Minimum time to refresh DoT.\nMin: 0 / Max: 4.5 / Interval: 0.1")
			-- CreateNewText(thisConfig,"Refresh Time")

			-- Mind Sear Targets
			-- Auto MindSear
			CreateNewCheck(thisConfig,"MS Targets","Automatic Mind Sear if enough targets in range")
			CreateNewBox(thisConfig,"MS Targets", 1, 10, 1, 4, "Minimum count of enemies around target \nto use Mind Sear instead of Mind Spike. \nMin: 1 / Max: 10 / Interval: 1 \n|cffFF0000Standard: 6(SimCraft)")
			CreateNewText(thisConfig,"MS Targets")

			-- Mind Sear Key
			CreateNewCheck(thisConfig,"MSinsanity Key", "Searing Insanity current target while pressing the key")
			CreateNewDrop(thisConfig,"MSinsanity Key", 3, "Toggle2")
			CreateNewText(thisConfig,"MSinsanity Key")


			-- Wrapper -----------------------------------------
			CreateNewWrap(thisConfig,"|cffBA55D3Utilities")

			-- Pause Toggle
			CreateNewCheck(thisConfig,"Pause Toggle")
			CreateNewDrop(thisConfig,"Pause Toggle", 10, "Toggle2")
			CreateNewText(thisConfig,"Pause Toggle")

			--Power Word: Fortitude
			CreateNewCheck(thisConfig,"PW: Fortitude")
			CreateNewText(thisConfig,"PW: Fortitude")

			-- Shadowform Outfight
			CreateNewCheck(thisConfig,"Shadowform Outfight")
			CreateNewText(thisConfig,"Shadowform Outfight")

			-- -- Auto Rez
			-- CreateNewCheck(thisConfig,"Auto Rez")
			-- CreateNewText(thisConfig,"Auto Rez(TBD)")

			-- -- AutoSpeedBuff
			-- if isKnown(AngelicFeather) then
			-- 	--Angelic Feather
			-- 	CreateNewCheck(thisConfig,"Angelic Feather")
			-- 	CreateNewText(thisConfig,"Angelic Feather")
			-- end

			if isKnown(BodyAndSoul) then
				--Body And Soul
				CreateNewCheck(thisConfig,"Body And Soul")
				CreateNewText(thisConfig,"Body And Soul")
			end

			-- Dummy DPS Test
			CreateNewCheck(thisConfig,"DPS Testing")
			CreateNewBox(thisConfig,"DPS Testing", 1, 15, 1, 4, "Set to desired time for test in minutes.\nMin: 1 / Max: 15 / Interval: 1")
			CreateNewText(thisConfig,"DPS Testing")

			-- Bubble Wand
			CreateNewCheck(thisConfig,"Bubble")
			CreateNewText(thisConfig,"Bubble")


			-- General Configs ---------------------------------
			CreateGeneralsConfig()
			WrapsManager()
		end
	end
end
