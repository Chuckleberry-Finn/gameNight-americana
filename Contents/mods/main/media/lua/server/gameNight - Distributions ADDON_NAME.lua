require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["ADDON_NAME_Box"] = {}

--- This generates the contents of the boxes, sealed or otherwise.
--- Set pieces to 9999 chance, this doesn't matter for sealed boxes
--- but it does impact opened boxes found in the world. If you'd like to make some pieces missing/incomplete sets change the 9999

gameNightDistro.gameNightBoxes["ADDON_NAME_Box"] = {
    rolls = 1,
    items = {
        "CARD_ITEM_TYPE", 9999,
        "CARD_ITEM_TYPE", 9999,
    },
    junk = { rolls = 1, items = {} }, fillRand = 0,
}

--- This would spawn two sets of cards in the box