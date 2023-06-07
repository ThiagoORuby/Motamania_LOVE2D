MapState = Class{__includes = BaseState}

local script1 = Ero(
    function ()
    msg "Nil"
end)

local displayMessageNode

local function nextMessage()
    if script1:hasNext() then
        local node = script1:next()
        displayMessageNode(node)
    end
end

local function selectOption(selection)
    local node = script1:select(selection)
    displayMessageNode(node)
  end

displayMessageNode = function(node)
    if node == nil then
      return -- Erogodic script is over.
    end
  
    local config = {}
    if node.options then
      config.options = {}
      for i, opt in ipairs(node.options) do
        local onSelect = function()
          selectOption(opt)
        end
        config.options[i] = {opt, onSelect}
      end
    else
      config.oncomplete = nextMessage
    end
    if node.name == 'Narrador' then
        config.talkSound = GSounds['blip']
        config.typedNotTalked = false
    end
    Talkies.say(node.name, node.msg, config)
end

function MapState:init()
    Talkies.inlineOptions = false
    Talkies.font = GFonts['pixel_large']
    self.image = GMaps[1]
    self.transitionAlpha = 1
    self.selectLevel = false
end

function MapState:enter(def)
    self.level = def.level
    self.first = def.first
    self.image = GMaps[self.level]

    script1 = GMapScripts[self.level]

    --Timer.clear()
    -- first, over a period of 1 second, transition our alpha to 0
    Timer.tween(1, {
        [self] = {transitionAlpha = 0}
    })

    self.selected = Timer.every(0.3, function ()
        self.image = self.image == GMaps[self.level] and GMapsS[self.level] or GMaps[self.level]
    end)

end

function MapState:update(dt)

    if love.keyboard.wasPressed('return') then
        self.selected:remove()
        self.image = GMapsS[self.level]
        nextMessage()
        self.selectLevel = true
    end

    if love.keyboard.wasPressed("space") then Talkies.onAction()
    elseif love.keyboard.wasPressed("up") then Talkies.prevOption()
    elseif love.keyboard.wasPressed("down") then Talkies.nextOption()
    end

    if Talkies:isOpen() == false and self.selectLevel == true then
        GStateMachine:change('transition', {level = self.level})
    end

    --Timer.update(dt)
    Talkies.update(dt)
end

function MapState:render()
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(self.image, 0, 0)

    -- our transition foreground rectangle
    love.graphics.setColor(0, 0, 0, self.transitionAlpha)
    love.graphics.rectangle('fill', 0, 0, GAME_WIDTH, GAME_HEIGHT)

    Talkies.draw()
end