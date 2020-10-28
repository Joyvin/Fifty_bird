Medal = Class{}

function Medal:init(score)
    rank1 = love.graphics.newImage('gold.png')
    rank2 = love.graphics.newImage('silver.png')
    rank3 = love.graphics.newImage('bronze.png')
    width = rank1:getWidth()
    self.score = score
end

function Medal:render()
    if self.score == 0 then
        love.graphics.draw(rank1, VIRTUAL_WIDTH/2 - 42, VIRTUAL_HEIGHT/2 - 24)
        love.graphics.draw(rank2, VIRTUAL_WIDTH/2 - 12 , VIRTUAL_HEIGHT/2 - 24)
        love.graphics.draw(rank3, VIRTUAL_WIDTH/2 + 18, VIRTUAL_HEIGHT/2 - 24)
    elseif self.score > 0 then
        love.graphics.draw(rank2, VIRTUAL_WIDTH/2 - 24, VIRTUAL_HEIGHT/2 - 24)
        love.graphics.draw(rank3, VIRTUAL_WIDTH/2 + 6, VIRTUAL_HEIGHT/2 - 24)
    elseif self.score >= 3 then
        love.graphics.draw(rank3, VIRTUAL_WIDTH/2 - 12, VIRTUAL_HEIGHT/2 - 24)
    end
end