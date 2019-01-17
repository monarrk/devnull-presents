utils = {}

function utils.draw_bullet(dire)
    b = love.graphics.circle("fill", bX, bY, 7, 4)
    local counter = 0

    if dire == "n" then 
        while counter < 201 do
            bY = bY - 5
        end
    elseif dire == "e" then
        while counter < 201 do
            bX = bX - 5
        end
    elseif dire == "w" then
        while counter < 201 do
            bX = bX + 5
        end
    elseif dire == "s" then
        while counter < 201 do
            bY = bY + 5
        end
    else
        love.graphics.print("No direction "..dire.." found...", 10, 200)
    end
end

return utils