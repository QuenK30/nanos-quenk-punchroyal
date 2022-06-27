Player.Subscribe("Spawn", function(player)
    local new_char = Character(Vector(0,0,200))
    player:Possess(new_char)
end)
Player.Subscribe("Destroy", function(player)
    local character = player:GetControlledCharacter()
    if (character) then
            character:Destroy()
    end
end)