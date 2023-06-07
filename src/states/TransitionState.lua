TransitionState = Class{__includes = BaseState}

function TransitionState:init()
    -- start our transition alpha at full, so we fade in
    self.transitionAlpha = 1

    -- start our level # label off-screen
    self.levelLabelY = -80
end

function TransitionState:enter(def)
    self.level = def.level

    -- first, over a period of 1 second, transition our alpha to 0
    Timer.tween(1, {
        [self] = {transitionAlpha = 0}
    })
    
    -- once that's finished, start a transition of our text label to
    -- the center of the screen over 0.25 seconds
    :finish(function()
        Timer.tween(0.25, {
            [self] = {levelLabelY = GAME_HEIGHT / 2 - 20}
        })
        
        -- after that, pause for one second with Timer.after
        :finish(function()
            Timer.after(2, function()
                
                -- then, animate the label going down past the bottom edge
                Timer.tween(0.25, {
                    [self] = {levelLabelY = GAME_HEIGHT + 30}
                })
                
                -- once that's complete, we're ready to play!
                :finish(function()
                    GStateMachine:change('play', {
                        level = self.level
                    })
                end)
            end)
        end)
    end)
end

function TransitionState:update(dt)
    --Timer.update(dt)
end

function TransitionState:render()

    -- render Level # label and background rect
    love.graphics.setColor(0, 0, 0, 200/255)
    love.graphics.rectangle('fill', 0, self.levelLabelY - 8, GAME_WIDTH, 80)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(GFonts['pixel_large'])
    love.graphics.printf('Level ' .. tostring(self.level),
        0, self.levelLabelY, GAME_WIDTH, 'center')
    
    love.graphics.setFont(GFonts['pixel_big'])
    love.graphics.printf(GLevelNames[self.level],
            0, self.levelLabelY + 20, GAME_WIDTH, 'center')

    -- our transition foreground rectangle
    love.graphics.setColor(0, 0, 0, self.transitionAlpha)
    love.graphics.rectangle('fill', 0, 0, GAME_WIDTH, GAME_HEIGHT)
end