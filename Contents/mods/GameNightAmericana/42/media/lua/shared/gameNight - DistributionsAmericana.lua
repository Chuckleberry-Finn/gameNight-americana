require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"
gameNightDistro.proceduralDistGameNight.itemsToAdd["AmericanaBox"] = {}
gameNightDistro.gameNightBoxes["AmericanaBox"] = {
    AmericanaTiles = 1, AmericanaStarter = 1, Americana_Scorecard = 1,
    RedMeeple = 8, BlackMeeple = 8, YellowMeeple = 8, BlueMeeple = 8, GreenMeeple = 81
}