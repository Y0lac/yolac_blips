local Blips = {
    -- Example : {Pos = {x = -1072.52, y = -856.42, z = 4.87}, sprite = 60, size = 1.0, color = 29, name = "Police Station"},
    -- Copy and fill this line : {Pos = {x = , y = , z = }, sprite = , size = , color = , name = ""},

    {Pos = {x = -1072.52, y = -856.42, z = 4.87}, sprite = 60, size = 1.0, color = 29, name = "Police Station"},
}

Citizen.CreateThread(
    function()
        for i = 1, #Blips, 1 do
            local v = Blips[i]
            local blip = AddBlipForCoord(v.Pos.x, v.Pos.y, v.Pos.z)
            SetBlipSprite(blip, v.sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, v.size or 0.8)
            SetBlipColour(blip, v.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.name)
            EndTextCommandSetBlipName(blip)
        end
    end
)

-- Documentation :

-- Choose your sprite and color here : https://docs.fivem.net/docs/game-references/blips/
-- If you have any questions, you can add me on discord : Yolac#7820