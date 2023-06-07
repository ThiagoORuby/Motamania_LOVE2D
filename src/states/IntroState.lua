IntroState = Class{__includes = BaseState}

local narrador_text = {
    [[Em um mundo paralelo ao nosso, onde fadas, duendes e magos vagueiam pelos horizontes, criaturas maléficas chamadas “professores” assombram as vidas de diversos alunos inocentes.]],
    [[Você é um estudante comum de direito. Sua sede por conhecimento e personalidade única te fazem especial. Mas uma de suas maiores características reside na amizade que você conseguiu construir com seus colegas.]],
    [[Um dia, quando vocês menos esperavam, um ser maligno chamado Motamônio sequestrou seus amigos, trancafiando-os em seu castelo e os torturando com perguntas de Processo Penal.]],
    [[Felizmente, um senhor de idade avançada passava por perto. Apesar de suas vestes simples e estatura pequena, ele tinha um amigável sorriso no rosto, além de um lindo anel de rubi. O velho te ensinou o caminho e te presenteia com um espécime de fada que lhe ajudará em seu caminho e te dará informações extras caso precise:]],
    [[Isso te enche de determinação!]]
}

local faded = false
local velho = false
local CorVelho = {0, 0, 0, 0}

function fadeon()
    velho = false
    CorVelho = {1,1,1,0}
    GSounds['fadain']:setVolume(2.0)
    GSounds['fadain']:play()
    faded = true
end

local velho_text = {
    [[Para vencer essa batalha, você precisará enfrentar os desafios sobre Provas em Espécie, enfrentando os lacaios de Motamônio até chegar a seus amigos]],
    [[Você conseguirá, sei que vai, meu jovem.]]
}

function IntroState:init()
    Talkies.inlineOptions = false
    Talkies.font = GFonts['pixel_large']

    self.transitionAlpha = 0
    self.change = false

    self.opacity = 0
    self.fadeDuration = 1 -- Duration of the fade-in effect in seconds
    self.fadeTimer = 0 -- Timer for tracking the fade-in progress
    
    self.spriteY = 100
    self.startY = 100 -- Posição inicial do sprite
    self.amplitude = 50 -- Amplitude do movimento vertical
    self.frequency = 2 -- Frequência do movimento (quanto maior o valor, mais rápido)
    self.elapsedTime = 0 -- Tempo decorrido desde o início da animação

    -- Falas do narrador
    for i = 1, 2 do
        Talkies.say("O narrador", narrador_text[i], {talkSound = GSounds['blip'],typedNotTalked = false})
    end

    Talkies.say("O narrador",narrador_text[3], {talkSound = GSounds['blip'], typedNotTalked = false, oncomplete = function ()
        CorVelho = {0, 0, 0, 1}
        velho = true
    end})

    Talkies.say("O narrador",narrador_text[4], {talkSound = GSounds['blip'], typedNotTalked = false, oncomplete = function () fadeon() end})

    -- Falas do velho
    for i = 1, #velho_text do
        Talkies.say("Velho misterioso", velho_text[i], {talkSound = GSounds['blop'], typedNotTalked = false})
    end

    --Fala final
    Talkies.say("O narrador",narrador_text[5], {talkSound = GSounds['blip'], typedNotTalked = false, oncomplete = function ()
        self.change = true
    end})

end

function IntroState:update(dt)

    if love.keyboard.wasPressed("space") then Talkies.onAction()
    elseif love.keyboard.wasPressed("up") then Talkies.prevOption()
    elseif love.keyboard.wasPressed("down") then Talkies.nextOption()
    end

    self.elapsedTime = self.elapsedTime + dt -- Atualiza o tempo decorrido

    -- Calcula a posição vertical do sprite com base no tempo
    local t = (math.sin(self.elapsedTime * self.frequency) + 1) / 2
    self.spriteY = self.startY + t * self.amplitude

    if faded == true then
        self.fadeTimer = self.fadeTimer + dt -- Update the timer

        -- Calculate the current opacity based on the fade-in progress
        self.opacity = self.fadeTimer / self.fadeDuration
        self.opacity = math.min(self.opacity, 1) -- Clamp the opacity value to a maximum of
    end

    if velho == true then
        Timer.tween(1, {
            [CorVelho] = {1,1,1,1}
        })
    end

    if self.change then
        Timer.tween(1, {
            [self] = {transitionAlpha = 1}
        }):finish(
            function () GStateMachine:change('map', {level = 1, first = true}) end
        )
    end

    --Timer.update(dt)
    Talkies.update(dt)
end

function IntroState:render()

    -- Draw Velho
    love.graphics.setColor(CorVelho)
    love.graphics.draw(GTextures['velho'], GAME_WIDTH/2 - (800/2 + 50)*0.8, GAME_HEIGHT/2 - (600/2 - 100)*0.8, 0, 0.8, 0.8)

    -- Draw Fadunha
    love.graphics.setColor(1, 1, 1, self.opacity)
    love.graphics.draw(GTextures['fada'], 300, self.spriteY, 0, 0.5, 0.5)

    -- Draw transition rectangle
    love.graphics.setColor(0, 0, 0, self.transitionAlpha)
    love.graphics.rectangle('fill', 0, 0, GAME_WIDTH, GAME_HEIGHT)

    Talkies.draw()
end