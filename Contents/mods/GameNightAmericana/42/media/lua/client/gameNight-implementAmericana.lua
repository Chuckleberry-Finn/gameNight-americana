local applyItemDetails = require("gameNight-applyItemDetails.lua")
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceHandler = applyItemDetails.gamePieceHandler

local americanaGeneral = {}

americanaGeneral.tiles = {}
americanaGeneral.names = {}

americanaGeneral.tilesToCount = {

	["CCCC_Seal"]=1, ["CCFC_Seal"]=1,
	["CCRC"]=1, ["FCFC"]=1, ["RRRR"]=1,

	["CCRC_Seal"]=2, ["CCFF_split"]=2,
	["FCFC_Seal"]=2, ["CCFF_Seal"]=2,
	["CCRR_Seal"]=2, ["FFRF_A"]=2,

	["CCFC"]=3, ["CFCF"]=3, ["CCFF"]=3, ["CCRR"]=3,
	["CFRR"]=3, ["CRRF"]=3, ["CRRR"]=3, ["CRFR"]=3,

	["FRRR"]=4, ["FFFF_A"]=4,

	["CFFF"]=5,
	["FRFR"]=8,
	["FFRR"]=9,
}

for cardID, numberOf in pairs(americanaGeneral.tilesToCount) do
	for i=1, numberOf do table.insert(americanaGeneral.tiles, cardID) end
	americanaGeneral.names[cardID] = "Americana Tile"
end
deckActionHandler.addDeck("AmericanaTiles", americanaGeneral.tiles, americanaGeneral.names)
gamePieceHandler.registerSpecial("Base.AmericanaTiles", {
	moveSound = "pieceMove", actions = {examine=true}, examineScale = 1, textureSize = {90,90}
})


-- Starter tiles
local americanaStarter = {}
americanaStarter.tiles = {"CRFR"}
americanaStarter.names = {["CRFR"]="Starter Tile"}
deckActionHandler.addDeck("AmericanaStarter", americanaStarter.tiles, americanaStarter.names)
gamePieceHandler.registerSpecial("Base.AmericanaStarter", {
	moveSound = "pieceMove", actions = {examine=true}, examineScale = 1, textureSize = {90,90}
})


gamePieceHandler.registerSpecial("Base.Americana_Scorecard",{
	shiftAction = "examine", actions = {examine=true}, textureSize = {382.14,250.14},
	alternateStackRendering = { func="DrawTextureCardFace", depth=2, rgb = {0.640, 0.620, 0.615} }
})

gamePieceHandler.registerSpecial("Base.RedMeeple", { noRotate = true })
gamePieceHandler.registerSpecial("Base.BlackMeeple", { noRotate = true })
gamePieceHandler.registerSpecial("Base.YellowMeeple", { noRotate = true })
gamePieceHandler.registerSpecial("Base.BlueMeeple", { noRotate = true })
gamePieceHandler.registerSpecial("Base.GreenMeeple", { noRotate = true })