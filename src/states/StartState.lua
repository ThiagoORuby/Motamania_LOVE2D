StartState = Class{__includes = BaseState}

function StartState:init()
    -- currently selected menu item
    self.currentMenuItem = 1

    self.transitionAlpha = 0
    self.pauseInput = false
end

function StartState:update(dt)
    if love.keyboard.wasPressed('escape') or love.keyboard.wasPressed('q') then
        love.event.quit()
    end

    -- if we can input (not in a transition)
    if not self.pauseInput then
        if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
            self.currentMenuItem = self.currentMenuItem == 1 and 2 or 1
        end
    
        if love.keyboard.wasPressed('return') then
            print("Enter in the game")
            if self.currentMenuItem == 1 then
                Timer.tween(1, {
                    [self] = {transitionAlpha = 1}
                }):finish(
                    function () Timer.after(1, function ()
                        GStateMachine:change('play', {level = 1, first = true})
                    end) end
                )
            else
                love.event.quit()
            end
        end

    end

    --Timer.update(dt)
end

function StartState:render()

    -- keep the background little darker
    love.graphics.setColor(0,0,0, 130/255)
    love.graphics.rectangle('fill', 0, 0, GAME_WIDTH, GAME_HEIGHT)

    self:drawOptions(-60)

    -- Draw transition rectangle
    love.graphics.setColor(0, 0, 0, self.transitionAlpha)
    love.graphics.rectangle('fill', 0, 0, GAME_WIDTH, GAME_HEIGHT)
end

function StartState:drawOptions(y)
    -- draw rect behind start and quit game text
    love.graphics.setColor(1, 1, 1, 128/255)
    love.graphics.rectangle('fill', GAME_WIDTH / 2 - 76, GAME_HEIGHT / 2 + y, 150, 65, 6)

    -- draw Start text
    love.graphics.setFont(GFonts['pixel_large'])

    if self.currentMenuItem == 1 then
        love.graphics.setColor(99/255, 155/255, 1, 1)
    else
        love.graphics.setColor(48/255, 96/255, 130/255, 1)
    end
    
    love.graphics.printf('Start', 0, GAME_HEIGHT / 2 + y + 8, GAME_WIDTH, 'center')

    -- draw Quit Game text
    love.graphics.setFont(GFonts['pixel_large'])
    
    if self.currentMenuItem == 2 then
        love.graphics.setColor(99/255, 155/255, 1, 1)
    else
        love.graphics.setColor(48/255, 96/255, 130/255, 1)
    end
    
    love.graphics.printf('Quit Game', 0, GAME_HEIGHT / 2 + y + 33, GAME_WIDTH, 'center') 
end