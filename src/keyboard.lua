kutils = {}

function kutils.check_keys()
    if love.keyboard.isDown("w") then
        if love.keyboard.isDown("lshift") then -- "sprint"
            cY = cY - sprspeed
        else
            cY = cY - speed
        end
    end
    if love.keyboard.isDown("a") then 
        if love.keyboard.isDown("lshift") then
            cX = cX - sprspeed
        else
            cX = cX - speed
        end
    end
    if love.keyboard.isDown("s") then 
        if love.keyboard.isDown("lshift") then
            cY = cY + sprspeed
        else
            cY = cY + speed
        end
    end
    if love.keyboard.isDown("d") then
        if love.keyboard.isDown("lshift") then
            cX = cX + sprspeed
        else
            cX = cX + speed
        end
    end
end

return kutils
