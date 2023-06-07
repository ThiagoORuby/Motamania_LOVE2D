PlayState = Class{__includes = BaseState}

local animation = false

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
    animation = true
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

function PlayState:init()
    --Talkies.inlineOptions = false
    Talkies.font = GFonts['pixel_large']

    self.bossPos = GAME_WIDTH + 30
    self.endLevel = false
    self.bossColor = {1, 1, 1, 1}
end

function PlayState:enter(def)
    self.level = def.level
    self.name = GLevelNames[self.level]
    script1 = GLevelScripts[self.level]

    --Timer.clear()

    Timer.tween(0.3,
    {
        [self] = {bossPos = GAME_WIDTH/2 - (800/2 - 50)*0.8}
    }):ease(Easing.outBounce)

    nextMessage()
end

function PlayState:update(dt)

    -- Quando nao tiver mais texto: ir para próxima fase!
    if Talkies:isOpen() == false then
        self.endLevel = true
        --GStateMachine:change('map')
    end

    if love.keyboard.wasPressed("space") then Talkies.onAction()
    elseif love.keyboard.wasPressed("up") then Talkies.prevOption()
    elseif love.keyboard.wasPressed("down") then Talkies.nextOption()
    end
    
    if animation then
        Timer.tween(0.15, {[self] = {bossPos = self.bossPos - 20}}):ease(Easing.linear):finish(
            function() Timer.tween(0.3, {[self] = {bossPos = self.bossPos + 40}}):ease(Easing.linear):finish(
                function () Timer.tween(0.15, {[self] = {bossPos = self.bossPos - 20}}):ease(Easing.linear):finish(
                    function () animation = false end
                ) end
            ) end)
    end

    if self.endLevel then
        Timer.tween(1, {[self.bossColor] = {0,0,0, 1}}):finish(
            function () Timer.tween(1, {[self.bossColor] = {1,1,1, 1}}):finish(
                function () Timer.tween(1, {[self.bossColor] = {0, 0, 0, 1}}):finish(
                    function () GStateMachine:change('map', {level = self.level + 1, first = false}) end
                ) end
            ) end
        )
    end

    --Timer.update(dt)
    Talkies.update(dt)
end

function PlayState:render()
    love.graphics.setColor(self.bossColor)
    love.graphics.draw(GTextures[self.name], self.bossPos, GAME_HEIGHT/2 - (600/2)*0.8, 0, 0.8, 0.8)
    Talkies.draw()
end