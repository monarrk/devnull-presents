kutils = {}

function kutils.check_keys()
    if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
        facing = "n"
        if love.keyboard.isDown("lshift") then -- "sprint"
            cY = cY - sprspeed
        else
            cY = cY - speed
        end
    end
    if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
        facing = "w"
        if love.keyboard.isDown("lshift") then
            cX = cX - sprspeed
        else
            cX = cX - speed
        end
    end
    if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
        facing = "s"
        if love.keyboard.isDown("lshift") then
            cY = cY + sprspeed
        else
            cY = cY + speed
        end
    end
    if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
        facing = "e"
        if love.keyboard.isDown("lshift") then
            cX = cX + sprspeed
        else
            cX = cX + speed
        end
    end
    if love.keyboard.isDown("space") then
    end
end

return kutils