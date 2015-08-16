local LevelState    = class({})

function LevelState:init()
    self.level = 0
end

function LevelState:enter(previous, menuState)
    self.menu = menuState
end

function LevelState:update(dt)

end

function LevelState:draw()
    love.graphics.setColor(255,255,255)
    love.graphics.print('LEVEL STATE',30,30)
    bowGraphic = love.graphics.newImage('assets/bow.png')
    love.graphics.draw(bowGraphic,300,300)
end

function LevelState:enterMenu()
    GameState.push(self.menu)
end

function LevelState:keyreleased(key)
    if key == 'escape'  then self:enterMenu() end
    if key == 'w'       then self:enterMenu() end
    if key == 'a'       then self:enterMenu() end
    if key == 's'       then self:enterMenu() end
    if key == 'd'       then self:enterMenu() end
end

function LevelState:mousepressed(x, y, button)
    if button == "l" then
        mouseX = x
        mouseY = y
        print(mouseX..' '..mouseY)
    end
end

function LevelState:focus(f)
    if not f then
        GameState.push(self.menu)
    end
end

return LevelState
