local minspeed = 0.2
local maxSlowdown = 20
local SlowRate = 0


local function on_init()
    game.speed = 1
end

function changeSpeed(event, Slowdown)

    local newSpeed = game.speed


    if (Slowdown == 0) then
        SlowRate = 0
    else
        SlowRate = SlowRate + Slowdown
    end

    if(SlowRate > maxSlowdown) then
        SlowRate = maxSlowdown
    end
    
    if(SlowRate == 0) then
        newSpeed = 1
    end

    if(SlowRate == 1) then
        newSpeed = 0.98
    end

    if(SlowRate == 2) then
        newSpeed = 0.95
    end

    if(SlowRate == 3) then
        newSpeed = 0.92
    end

    if(SlowRate == 4) then
        newSpeed = 0.90
    end

    if(SlowRate == 5) then
        newSpeed = 0.88
    end

    if(SlowRate == 6) then
        newSpeed = 0.85
    end

    if(SlowRate == 7) then
        newSpeed = 0.83
    end

    if(SlowRate == 8) then
        newSpeed = 0.8
    end

    if(SlowRate == 9) then
        newSpeed = 0.75
    end

    if(SlowRate == 10) then
        newSpeed = 0.72
    end

    if(SlowRate == 11) then
        newSpeed = 0.7
    end

    if(SlowRate == 12) then
        newSpeed = 0.67
    end

    if(SlowRate == 13) then
        newSpeed = 0.64
    end

    if(SlowRate == 14) then
        newSpeed = 0.6
    end

    if(SlowRate == 15) then
        newSpeed = 0.55
    end

    if(SlowRate == 16) then
        newSpeed = 0.5
    end

    if(SlowRate == 17) then
        newSpeed = 0.44
    end

    if(SlowRate == 18) then
        newSpeed = 0.4
    end

    if(SlowRate == 19) then
        newSpeed = 0.3
    end

    if(SlowRate == 20) then
        newSpeed = 0.2
    end

    game.speed = newSpeed

    game.print("Time speed : " .. game.speed)

end



script.on_event("timeDefault", function(event) return changeSpeed(event, 0) end)
script.on_event("timeSlowdown", function(event) return changeSpeed(event, 1) end)
