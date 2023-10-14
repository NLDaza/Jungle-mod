-- https://www.reddit.com/r/tabletopsimulator/comments/m9dtpp/scripting_pawels_super_basic_scripting_guide/
function onload()
    self.createButton({
        click_function="deal", function_owner=self,
        position={0,0,0}, height=500, width=500, font_size=300, color={0,0,0,0}
    })
end

-- To deal a card
function deal()
--deck guid d0ac7c buscar

end

--[[


function onload()
    self.createButton({
        click_function = "deal",
        function_owner = self,
        position = {0, 0, 0},
        height = 500,
        width = 500,
        font_size = 300,
        color = {0, 0, 0, 0}
    })
end

function deal()
    -- We identify the deck with its GUID
    local deckGUID = "deckGUID"
    local deck = getObjectFromGUID(deckGUID)

    --Conseguir que el deck ponga cartas en el Scripting Zone
    local scriptingZone = getObjectFromGUID("37da0a")
    local scriptingZoneposition = 
    
    -- Verify that the deck exists
    if deck ~= nil then
        -- Roba una carta de la baraja
        local card = deck.takeObject({
            position = self.positionToWorld({-5, 0, 0}), -- Cambia la posición X según sea necesario
            flip = true -- Voltea la carta robada
        })
        -- Realiza cualquier acción adicional con la carta robada
    end
end
]]--