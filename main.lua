-- GLOBAL VARS
cX = 300
cY = 300

speed = 2
sprspeed = 5

 -- MAIN CHUNK
function love.draw()
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

    love.graphics.setColor(255, 0, 0)
    sprite = love.graphics.circle("fill", cX, cY, 20, 100)
end