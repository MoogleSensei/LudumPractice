local MenuState		= class({})

-- continueButton		= require('continueButton')
-- quitButton			= require('quitButton')

arrayButtons		= {continueButton, quitButton}

function MenuState:init()

end

function MenuState:enter(previous)

end

function MenuState:update(dt)

end

function MenuState:draw()
	love.graphics.setColor(255,255,255)
	love.graphics.print('Menu State',20,20)
end

function MenuState:exitMenu()
	GameState.pop()
end

function MenuState:keyreleased(key)
	if key == 'escape'	then self:exitMenu() end
	if key == ' '		then self:exitMenu() end
end

function MenuState:mousereleased(x, y, mouseButton)
	if mouseButton == "l" then
		-- for button in arrayButtons do
		-- 	print("A button")
		-- end
	end
end

return MenuState
