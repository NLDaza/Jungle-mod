local scriptingZonesGUIDs = {
    decks = {
        White = "ad40d7",
        Pink = "12b24d",
        Purple = "3b2dd1",
        Blue = "cfe124",
        Green = "5b7479",
        Yellow = "0e7d85",
        Orange = "ae2b1c",
        Red = "ae2b1c"
    }
}

local scriptingZonesOfSeatedPlayers = {
    decks = {}
}

function onLoad()
    scriptingZonesOfSeatedPlayers.decks = getScriptingZonesOfSeatedPlayers(scriptingZonesGUIDs.decks)
end

function onPlayerChangeColor(player_color)
    scriptingZonesOfSeatedPlayers.decks = getScriptingZonesOfSeatedPlayers(scriptingZonesGUIDs.decks)
end

function getScriptingZonesOfSeatedPlayers(guids)
    local scriptingZones = {}

    for _, playerColor in pairs(getSeatedPlayers()) do
        local playerColorString = tostring(playerColor)
        local scriptingZoneGuid = guids[playerColorString]
        
        scriptingZones[playerColorString] = getObjectFromGUID(scriptingZoneGuid)
    end

    return scriptingZones
end
