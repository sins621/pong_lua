require("src.models.player")
require("src.models.ball")
require("src.models.ai")


VIRTUAL_WIDTH = 320
VIRTUAL_HEIGHT = 240


function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	Player:load()
	Ball:load()
	AI:load()
end

function love.update(dt)
	Player:update(dt)
	Ball:update(dt)
	AI:update(dt)
end

function love.draw()
	Player:draw()
	Ball:draw()
	AI:draw()
end

function checkCollision(a, b)
	if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height  then
		return true
	else
		return false
	end
end
