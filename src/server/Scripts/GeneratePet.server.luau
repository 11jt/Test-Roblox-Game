-- Modules

local PET_DATA = require(game.ServerScriptService.Server.DataModules.PetData)
local GENERATE_PET = require(game.ServerScriptService.Server.Modules.GeneratePet)

-- Services



-- Constants

local PET_PROMPT = game.Workspace.Part.GetPetPrompt

-- Variables



-- Logic

PET_PROMPT.Triggered:Connect(function()

    GENERATE_PET.new(PET_DATA.Egg1)
    -- local totalChance = 0
    -- local cumulativeChance = 0

    -- for _, pet in PET_DATA.Egg1 do
    --     totalChance += pet.chance
    -- end

    -- local rolledNumber = math.random(1, totalChance) -- Random Number between 1 and the total amount of chance in the PET_DATA in this example 1 - 100
    -- print(rolledNumber)

    -- for _, pet in PET_DATA.Egg1 do -- Example: rolledNumber = 74
    --     cumulativeChance += pet.chance -- 1st = 30, 2nd = 60, 3rd = 90, 4th = 100 : Data in {game.ServerScriptService.Server.DataModules.PetData}
    --     if rolledNumber <= cumulativeChance then -- first iteration [is 74 <= 30] no, second iteration [is 74 <= 60] no, third iteration [is 74 <= 90] yes -> will return "Rabbit"
    --         return print(pet.name)
    --     end
    -- end
    -- return nil
end)
