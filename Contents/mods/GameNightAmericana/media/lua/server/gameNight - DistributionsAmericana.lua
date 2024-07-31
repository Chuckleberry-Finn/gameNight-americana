require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["AmericanaBox"] = {}

gameNightDistro.gameNightBoxes["AmericanaBox"] = {
    rolls = 1,
    items = {
        "AmericanaTiles", 9999,
		"AmericanaStarter", 9999,
		
		"RedMeeple", 9999, "RedMeeple", 9999, "RedMeeple", 9999, "RedMeeple", 9999, "RedMeeple", 9999, "RedMeeple", 9999, "RedMeeple", 9999, "RedMeeple", 9999,
		"BlackMeeple", 9999, "BlackMeeple", 9999, "BlackMeeple", 9999, "BlackMeeple", 9999, "BlackMeeple", 9999, "BlackMeeple", 9999, "BlackMeeple", 9999, "BlackMeeple", 9999, 
		"YellowMeeple", 9999, "YellowMeeple", 9999, "YellowMeeple", 9999, "YellowMeeple", 9999, "YellowMeeple", 9999, "YellowMeeple", 9999, "YellowMeeple", 9999, "YellowMeeple", 9999, 
		"BlueMeeple", 9999, "BlueMeeple", 9999, "BlueMeeple", 9999, "BlueMeeple", 9999, "BlueMeeple", 9999, "BlueMeeple", 9999, "BlueMeeple", 9999, "BlueMeeple", 9999, 
		"GreenMeeple", 9999, "GreenMeeple", 9999, "GreenMeeple", 9999, "GreenMeeple", 9999, "GreenMeeple", 9999, "GreenMeeple", 9999, "GreenMeeple", 9999, "GreenMeeple", 9999
    },
    junk = { rolls = 1, items = {} }, fillRand = 0,
}