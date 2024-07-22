local Pet = {}
Pet.__index = Pet

export type NewPet = {
    name: string,
    rarity: string
}

function Pet.new(rarity : string, name : string)
    local self = setmetatable({}, Pet)

    self.name = name
    self.rarity = rarity
    
    return self
end

return Pet