-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

positionType = {"gauche", "ghaut", "milieu", "dhaut", "droite"}
santa = {}
santa.x = 0
santa.y = 0
santa.l = 0
santa.h = 0
santa.frame = 1
santa.nbFrame = 5
santa.v = 0
santa.img = 0
santa.position = 3
santa.flip = 4

lutin = {}
lutin.x = 0
lutin.y = 0
lutin.l = 0
lutin.h = 0


lutin2 = {}
lutin2.x = 0
lutin2.y = 0
lutin2.l = 0
lutin2.h = 0

lutin3 = {}
lutin3.x = 0
lutin3.y = 0
lutin3.l = 0
lutin3.h = 0

lutin4 = {}
lutin4.x = 0
lutin4.y = 0
lutin4.l = 0
lutin4.h = 0


function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    santa.img = love.graphics.newImage("images/santa.png")
    santa.l = santa.img:getWidth()*0.1
    santa.h = santa.img:getHeight()*0.1
    santa.x = width/2 - santa.l/2
    santa.y = height - height/3 - santa.h/2


    lutin.x = 200
    lutin.y = 75
    lutin.l = 30
    lutin.h = 60

    lutin2.x = 200
    lutin2.y = 200
    lutin2.l = 30
    lutin2.h = 60

    lutin3.y = 75
    lutin3.l = 30
    lutin3.h = 60
    lutin3.x = width - 200 - lutin3.l

    lutin4.y = 200
    lutin4.l = 30
    lutin4.h = 60
    lutin4.x = width - 200 - lutin4.l


end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.draw(santa.img, santa.x, santa.y, 0,santa.flip, 4, 0, 0, 0)
    -- love.graphics.rectangle("fill", santa.x, santa.y, santa.l, santa.h)

    -- love.graphics.points(width/2 - santa.l/2 - 50,100)

    -- love.graphics.rectangle("fill", lutin.x, lutin.y, lutin.l, lutin.h)
    -- love.graphics.rectangle("fill", lutin2.x, lutin2.y, lutin2.l, lutin2.h)
    -- love.graphics.rectangle("fill", lutin3.x, lutin3.y, lutin3.l, lutin3.h)
    -- love.graphics.rectangle("fill", lutin4.x, lutin4.y, lutin4.l, lutin4.h)

    -- love.graphics.setColor(0,0,0)
    -- love.graphics.print(santa.position, santa.x + santa.l/4, santa.y + santa.h/4)
end

function love.keypressed(key)
    if key == "right" then
        if santa.position < 5 then
            santa.flip = 4
            santa.position = santa.position + 1
        end
    end

    if key == "left" then
        if santa.position > 1 then
            santa.flip = -4
            santa.position = santa.position - 1
        end
    end

end