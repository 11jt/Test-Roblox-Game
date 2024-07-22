
local GeneratePet = {}
GeneratePet.__index = GeneratePet

function GeneratePet.new(eggTable)
    local self = setmetatable({}, GeneratePet)

    self.table = eggTable
    self.generatedPet = generatePetLogic(self.table)
    print(self.generatedPet)

    return self
end

function generatePetLogic(petsTable) : nil

    local totalChance = 0
    local cumualtiveChance = 0

    for _, pet in petsTable do
        totalChance += pet.chance
    end

    local rolledNumber = math.random(1, totalChance)

    for _, pet in petsTable do
        cumualtiveChance += pet.chance
        if rolledNumber <= cumualtiveChance then
            return pet.name
        end
    end
    return nil
end

return GeneratePet