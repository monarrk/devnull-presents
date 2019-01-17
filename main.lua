-- GLOBAL VARS
kutils = require( "src/keyboard" )

cX = 300
cY = 300

speed = 2
sprspeed = 5

 -- MAIN CHUNK
function love.draw()
    kutils.check_keys() -- check for key events

    love.graphics.setColor(255, 0, 0)
    sprite = love.graphics.circle("fill", cX, cY, 20, 100)
end