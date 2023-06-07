require "src.Dependencies"


local backgroundScroll = 0 -- x position of background (it changes constantly)
local groundScroll = 0 -- x postion of ground (it change over time)

mari_lobacenta = {
    {[[Ora. Ora. Ora. Olha se não é o Estudante de Direito, já estava na hora! Vamos a sua primeira pergunta...]], {padding = 10}},
    {[[Acerca das regras referentes à prova testemunhal dispostas no Código de Processo Penal, assinale a opção correta:]], {padding = 10}},
    {[[A) O juiz poderá impor à testemunha faltosa prisão até dez dias, sem prejuízo do processo penal por crime de desobediência, e condená-la ao pagamento das custas da diligência.]], {padding = 10}},
    {[[B) A testemunha que morar fora da jurisdição do juiz será inquirida pelo juiz do lugar de sua residência, expedindo-se, para esse fim, carta precatória, a qual terá o condão de suspender a instrução criminal até conclusão dessa diligência.]], {padding = 10}},
    {[[C) O juiz não permitirá que a testemunha manifeste suas apreciações pessoais, salvo quando inseparáveis da narrativa do fato.]], {padding = 10}},
    {[[D) Os menores de dezesseis anos e os doentes mentais não prestam compromisso.]], {padding = 10}},
    {[[...]], {
        options={
            {"A) O juiz poderá impor à testemunha faltosa...", function() end},
            {"B) A testemunha que morar fora da jurisdição do juiz...", function() end},
            {"C) O juiz não permitirá que a testemunha manifeste...", function() end},
            {"D) Os menores de dezesseis anos e os doentes mentais...", function() end}
          }
    }},

}

function love.load()
    love.graphics.setDefaultFilter("nearest","nearest")
    love.window.setTitle("First test")
    love.window.setMode(GAME_WIDTH, GAME_HEIGHT)
    love.graphics.setBackgroundColor(1, 1, 1)

    GStateMachine = StateMachine{
        ['start'] = function () return StartState() end,
        ['intro'] = function () return IntroState() end,
        ['transition'] = function () return TransitionState() end,
        ['map'] = function () return MapState() end,
        ['play'] = function () return PlayState() end,
    }

    GStateMachine:change('start')

    -- initialize input table
    love.keyboard.keysPressed = {}

end

function love.keypressed(key)
    -- add to our input table the key was pressed 
    love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
    if love.keyboard.keysPressed[key] then
        return true
    end
    return false
end

function love.update(dt)

    backgroundScroll = (backgroundScroll + BACKGROUND_SCROLL_SPEED*dt) %  BACKGROUND_LOOPING_POINT
    groundScroll = (groundScroll + GROUND_SCROLL_SPEED*dt) % BACKGROUND_LOOPING_POINT

    GStateMachine:update(dt)
    --Talkies.update(dt)
    Timer.update(dt)

    love.keyboard.keysPressed = {}
end

function love.draw()
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(GTextures['background'],-backgroundScroll,0)
    love.graphics.draw(GTextures['ground'],-groundScroll,0)

    GStateMachine:render()
end
