
local buttonImage	= love.graphics.newImage('assets/bow.png')
local width			= 64
local height		= 32

function setPosition(newX, newY)
	self.x = newX
	self.y = newY
end

function isPressed(mouseX, mouseY)
	if self.x <= mouseX and mouseX <= self.x + self.width then
		print("Continue")
	end
end