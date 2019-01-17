-- DEPENDANCIES
utils =  require( "src/utils" )
kutils = require( "src/keyboard" )

-- GLOBAL VARS
cX = 300
cY = 300

bX = cX
bY = cY

facing = "n"

bullets = {}

speed = 2
sprspeed = 5

fireCounter = 0
everyFire = 0.2

 -- MAIN CHUNK
function love.update(deltatime)
    kutils.check_keys() -- check for key events

    if love.mouse.isDown(1) then
        fireCounter = fireCounter+deltatime
        if fireCounter >= everyFire then
            table.insert(bullets, {dire=facing, x=cX, y=cY})
            fireCounter = fireCounter - everyFire
        end
    end

    for i=1, #bullets, 1 do
        local bullet = bullets[i]
        love.graphics.setColor(0, 0, 0)
        if bullet.dire == "n" then
            bullet.y = bullet.y - 5
        elseif bullet.dire == "s" then
            bullet.y = bullet.y + 5
        elseif bullet.dire == "e" then
            bullet.x = bullet.x + 5
        elseif bullet.dire == "w" then
            bullet.x = bullet.x - 5
        end
    end
end

function love.draw(dt)
    love.graphics.setBackgroundColor( 255, 255, 255 )

    love.graphics.setColor(255, 0, 0)
    sprite = love.graphics.circle("fill", cX, cY, 20, 100)
    
    love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
end
