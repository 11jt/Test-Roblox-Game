local Pet = require(game.ServerScriptService.Server.Modules.Pet)
local _data = require(game.ServerScriptService.Server.DataModules.PetData)
type NewPet = Pet.NewPet

local pet : NewPet = Pet.new("Common", "Unicorn")

print(pet.name)
print(pet.rarity)