local Pet = {}
Pet.__index = Pet

function Pet.new(Rarity: string, Name: string)
    local self = setmetatable({}, Pet)

    self.name = Name
    self.rarity = Rarity
    
    return self
end

return Pet