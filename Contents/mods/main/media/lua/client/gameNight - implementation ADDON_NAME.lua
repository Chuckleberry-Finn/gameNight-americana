-- TODO: CHANGE FILENAME
--- CHANGE THIS FILE'S NAME WHERE IT SAYS `ADDON_NAME`

local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler

local cards = {
    "CARDNAME1", "CARDNAME2", "CARDNAME3",
}
deckActionHandler.addDeck("CARD_ITEM_TYPE", cards)
--- To make a TCG or a collectible st of cards you need to do a lot more work, check the TCG add-ons for more insight.


--- The texture size should be higher than what you'd want in game - if you want hover-over-examine to look nice.
gamePieceAndBoardHandler.registerSpecial("Base.CARD_ITEM_TYPE", {
    --- CARD_ITEM_TYPE should match the script's item ID.
    actions = { examine=true },
    --shiftAction = {"flipCard"}
    --- `flipCard` by default is already any card item's `shiftAction`.
    examineScale = 1,
    textureSize = {100,140}
})