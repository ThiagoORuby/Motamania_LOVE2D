
-- window dimensions
GAME_WIDTH = 1024
GAME_HEIGHT = 576

-- set the seed for ground and background movements
BACKGROUND_SCROLL_SPEED = 40
GROUND_SCROLL_SPEED = 80

BACKGROUND_LOOPING_POINT = 1018 -- point we are repeat the image like a loop

-- Resources

GTextures = {
    ['background'] = love.graphics.newImage("graphics/background2.png"),
    ['ground'] = love.graphics.newImage("graphics/ground2.png"),
    ['velho'] = love.graphics.newImage("graphics/velho.png"),
    ['fada'] = love.graphics.newImage("graphics/fadinha2.png"),
    ['Mari Lobacenta'] = love.graphics.newImage("graphics/mari.png"),
    ['Só Júlia'] = love.graphics.newImage('graphics/julia.png'),
    ['Cyntherela'] = love.graphics.newImage('graphics/cyntherela.png'),
    ['Soberana'] = love.graphics.newImage('graphics/soberana.png'),
    ['Mago Piglet'] = love.graphics.newImage('graphics/piglet.png'),
}

GMaps = {
    love.graphics.newImage("graphics/mapa1.png"),
    love.graphics.newImage("graphics/mapa2.png"),
    love.graphics.newImage("graphics/mapa3.png"),
    love.graphics.newImage("graphics/mapa4.png"),
    love.graphics.newImage("graphics/mapa5.png")
}

GMapsS = {
    love.graphics.newImage("graphics/mapa1S.png"),
    love.graphics.newImage("graphics/mapa2S.png"),
    love.graphics.newImage("graphics/mapa3S.png"),
    love.graphics.newImage("graphics/mapa4S.png"),
    love.graphics.newImage("graphics/mapa5S.png")
}

GSounds = {
    ['blip'] = love.audio.newSource("sounds/blip.wav", "static"),
    ['blop'] = love.audio.newSource("sounds/blop.wav", "static"),
    ['fadain'] = love.audio.newSource("sounds/fadain.wav", "static")
}

GFonts = {
    ['pixel_small'] = love.graphics.newFont('fonts/pixel.ttf', 8),
    ['pixel_medium'] = love.graphics.newFont('fonts/pixel.ttf', 16),
    ['pixel_large'] = love.graphics.newFont('fonts/pixel.ttf', 32),
    ['pixel_big'] = love.graphics.newFont('fonts/pixel.ttf', 48),
}

GLevelNames = {
    'Mari Lobacenta',
    'Só Júlia',
    'Cyntherela',
    'Soberana',
    'Mago Piglet',
    'Motamônio'
}

GLevel = {
    Ero(
    function ()
    msg "Nil"
    end),
    Ero(
        function ()
        msg "Nil"
    end),
    Ero(
        function ()
        msg "Nil"
    end)
}

GMapScripts = {
    Ero(function ()
        name "Narrador"
        msg "Você se dirige a primeira fase de sua aventura, sentindo seu corpo inteiro tremer com a insegurança e o medo de perder seus amigos, mas, ao mesmo tempo, seu coração e lealdade a seus colegas te faz perdurar durante o caminho."
        msg "Você caminha e caminha até entrar no domínio do Motamônio. Seu primeiro desafiante não parece intimidador, sequer isso, mas você se controla para mostrar seriedade quando a figurinha de uma loba surge em sua frente."
        msg "É Mari Lobacenta, a serva da escuridão. Boatos circulam que esta era uma jovem podre de rica, com parentesco até com a rainha da Inglaterra, vice-presidente de uma turma ingrata do terceiro período de séculos atrás. Após ser torturada pelo Motamônio, ela se tornou uma das escravas dele."
        
    end):defineAttributes(
        {
            'name'
        }
    ),
    Ero(function ()
        name "Narrador"
        msg "Na próxima fase de sua jornada, a Fadinha Sabe Tudo te contou que uma outra estudante de direito amaldiçoada estaria vagando pelas terras assombradas de Motamônio. "
        msg "Amargurada com as notas baixas do semestre, ela jurou lealdade aos maléficos professores em troca de migalhas, relíquias antigas de uma geração passada a qual pouquíssimos de nós já vimos na atualidade, mas sempre alguém suplica."
        msg "Ponto extra - item de raridade 4, lvl 50. Você se questiona se em algum momento em sua vida acadêmica se conseguirá por as mãos em tal artefato."
        msg "Quando as coisas estão parecendo calmas, um vulto aparece em sua frente. Assim, como Mari Lobacenta, essa criatura amaldiçoada perdeu sua humilde forma humana - mas de forma alguma parece ameaçadora. A Fadinha Sabe Tudo sussurra em seu ouvido o nome de seu próximo oponente."
        msg "É... Só a Júlia."
    end):defineAttributes(
        {
            'name'
        }
    ),
    Ero(function ()
        name "Narrador"
        msg "Tudo o que a Fadinha te conta sobre Cyntherela parece estranho demais para ser verdade. O jeito como ela, a própria estudante, se ofereceu para ajudar Motamônio sem sequer pedir nada em troca é muito suspeito."
        msg "Aparentemente, ambos possuem um contrato secreto. Um acordo de vassalagem chamado “monitoria”, algo incomum para você, que está tão cedo em sua jornada no ramo jurídico e na própria faculdade."
        msg "Cyntherela aparece em sua frente. Ao contrário dos outros desafiantes até agora, ela parece mais humana, mas veste trapos e parece muito cansada... Será que ela está bem? Parece que ela não dormiu há séculos."
        msg "Ela te vê tentando passar escondidinho e ajeita a postura, pigarreando para si mesma. Ela ainda parece bem cansada, mas ódio flameja no brilho de seu olhar, como se ela realmente odiasse todos os calouros que chegam para pedir coisas a ela."
    end):defineAttributes(
        {
            'name'
        }
    ),
    Ero(function ()
        name "Narrador"
        msg "Na sua quarta parada, a Fadinha lhe conta o que sabe sobre A Soberana, uma mulher cheia de carisma e amor pelo mundo - bela, gentil e um amor como pessoa, apesar de ser uma professora.."
        msg "No entanto, até aqueles mais puros podem ser corrompidos pela sociedade; no mundo caótico em que vivemos, paranoias e problemas acompanham todas aquelas pessoas que não estão prontos para dar suas vidas de bandeja ao Destino. A Soberana, como você já deve ter imaginado, é uma delas."
        msg "A vida dupla como professora e advogada tornou nossa gentil rainha em uma mulher sádica e amargurada, descontando suas frustrações nos pobres estudantes de direito que passam despreparados pelo segundo período."
    end):defineAttributes(
        {
            'name'
        }
    ),
    Ero(function ()
        name "Narrador"
        msg "O Mago Piglet é um lendário sábio o qual todos já ouviram falar pelo menos uma vez, por isso, quando a Fadinha se ofereceu para falar sobre ele, você já sabia sobre grande parte dos detalhes."
        msg "Para um professor, ele é bem mais charmoso e vaidoso que os outros, sem falar que quando fala, as vezes, te faz sentir tanto a pessoa mais burra do mundo como a mais inteligente. Depende do humor dele, se formos sinceros."
        msg "Fora isso, ele é uma pessoa muito querida entre os demônios chamados professores. E parece compartilhar uma relação de amizade com Motamônio, do tipo que faz você pensar se eles se amam ou se odeiam – o melhor tipo de amizade."
        msg "Bruno Piglet, além de elegante e inteligente, também é muito blogueirinho. Em uma plataforma “Instagram”, se você acessar @prof.brunoleitao, verá que está sempre esbanjando de coisas chiques que você provavelmente não experimentará nem tão cedo."
        msg "Quando você chega, o sábio mago Piglet está te esperando com sua franja, bela e imóvel. Ela é, na verdade, um item raro, e a fonte de todo seu poder. -- Será se é uma peruca?"
    end):defineAttributes(
        {
            'name'
        }
    ),
}

GLevelScripts = {
    Ero(function ()
        name "Mari Lobacenta"
        msg "Ora. Ora. Ora. Olha se não é o Estudante de Direito, já estava na hora! Vamos a sua primeira pergunta..."
        msg "Acerca das regras referentes à prova testemunhal dispostas no Código de Processo Penal, assinale a opção correta:"
        msg "A) O juiz poderá impor à testemunha faltosa prisão até dez dias, sem prejuízo do processo penal por crime de desobediência, e condená-la ao pagamento das custas da diligência."
        msg "B) A testemunha que morar fora da jurisdição do juiz será inquirida pelo juiz do lugar de sua residência, expedindo-se, para esse fim, carta precatória, a qual terá o condão de suspender a instrução criminal até conclusão dessa diligência." 
        msg "C) O juiz não permitirá que a testemunha manifeste suas apreciações pessoais, salvo quando inseparáveis da narrativa do fato."
        msg "D) Os menores de dezesseis anos e os doentes mentais não prestam compromisso."
        local a = option "A) O juiz poderá impor à testemunha faltosa prisão até dez dias, sem prejuízo do processo penal por crime de desobediência, e condená-la ao pagamento das custas da diligência."
        local b = option "B) A testemunha que morar fora da jurisdição do juiz será inquirida pelo juiz do lugar de sua residência, expedindo-se, para esse fim, carta precatória, a qual terá o condão de suspender a instrução criminal até conclusão dessa diligência."
        local c = option "C) O juiz não permitirá que a testemunha manifeste suas apreciações pessoais, salvo quando inseparáveis da narrativa do fato."
        local d = option "D) Os menores de dezesseis anos e os doentes mentais não prestam compromisso."
        menu "..."
        if selection(c) then
            name "Estudante de direito"
            msg "Humm, essa eu sei! A resposta correta é a letra C! O juiz não permitirá que a testemunha manifeste suas apreciações pessoais, salvo quando inseparáveis da narrativa do fato."
            msg "Afinal, são as características da Prova Testemunhal: Judicialidade, Oralidade, Objetividade, Retrospectividade, Imediação e Individualidade! A resposta está na Objetividade, onde a testemunha deve depor sobre os fatos sem externar opiniões ou emitir juízos valorativos."
            name "Fadinha Sabe Tudo"
            msg "A exceção é admitida quando a reprodução exigir necessariamente um juízo de valor."
            name "Narrador"
            msg "Água com açúcar! Se você se lembra bem, oitiva é o ato de ouvir as testemunhas. Parece que as coisas estão indo muito bem."
        else
            msg "Errado"
        end
        name "Mari Lobacenta"
        msg "Meus parabéns! Você acertou! Agora temos a segunda pergunta. Preste muita atenção, pois dessa vez usarei um exemplo:"
        msg "Em virtude de desavença familiar no interior de uma residência, um marido agrediu, mediante socos e chutes, sua esposa, na presença de familiares (pais, irmãos, filhos e primos) que lá se encontravam para a comemoração de um aniversário. Ao elaborar a denúncia, o promotor de justiça arrolou, além da vítima, as demais pessoas presentes como testemunhas."
        msg "O magistrado, ao deliberar sobre a designação de audiência de instrução e julgamento, deverá:"
        msg "A) indeferir a oitiva, pois a oitiva de depoimento testemunhal de parente do envolvido não é admitida em nosso ordenamento jurídico"
        msg "B) deferir a oitiva, pois o depoimento testemunhal de parente do envolvido é admitido em nosso ordenamento e notadamente relevante em casos nos quais a conduta foi praticada no âmbito doméstico dos familiares"
        msg "C) indeferir a oitiva, pois a oitiva de depoimento testemunhal de parente do envolvido é expressamente vedada em nosso ordenamento"
        msg "D) deferir a oitiva, pois a legislação brasileira é expressa em admitir toda pessoa como testemunha, não fazendo vedação à qualidade ou proximidade com os envolvidos no fato"
        a = option "A) indeferir a oitiva, pois a oitiva de depoimento testemunha..."
        b = option "B) deferir a oitiva, pois o depoimento testemunhal..."
        c = option "C) indeferir a oitiva, pois a oitiva de depoimento testemunhal..."
        d = option "D) deferir a oitiva, pois a legislação brasileira é..."
        menu "..."
        if selection(b) then
            name "Estudante de Direito"
            msg "Essa é das boas. Como envolve família, acho que o artigo 206 do Código de processo penal pode me ajudar! Ele diz:"
            msg "A testemunha não poderá eximir-se da obrigação de depor. Poderão, entretanto, recusar-se a fazê-lo o ascendente ou descendente, o afim em linha reta, o cônjuge, ainda que desquitado, o irmão e o pai, a mãe, ou o filho adotivo do acusado, salvo quando não for possível, por outro modo, obter-se ou integrar-se a prova do fato e de suas circunstâncias."
            msg "Humm, interessante, a questão diz que um marido agrediu, mediante socos e chutes, sua esposa, na presença de familiares (pais, irmãos, filhos e primos) que lá se encontravam para a comemoração de um aniversário."
            msg "Só eles que viram a cena, então só tem eles de testemunha, é essa a resposta! Vou escolher a letra B!"
            name "Fadinha Sabe Tudo"
            msg "O artigo 206 traz uma forma de dispensa de depoimento. Por ser uma dispensa, se o depoente quiser, poderá prestar depoimento. Nesse caso, as testemunhas — que não prestam compromisso — denominam-se declarantes."
            msg "Além disso, - no conceito de cônjuge devem ser incluídos companheiros reunidos pelo laço de união estável, em face do art. 226, 3º da Constituição Federal, que reconhece a união estável entre homem e mulher como entidade familiar."
            msg "A união de pessoas do mesmo gênero também pode ser reconhecida como entidade familiar apta a merecer proteção estatal (ADF 132 - conforme Informativo do STF n. 625, Brasília, 2 a 6 de maio de 2011)."
            name "Narrador"
            msg "Algo na resposta de vocês parece desbloquear uma memória nostálgica em Mari Lobacenta."
        end
        name "Mari Lobacenta"
        msg "Certa a resposta! O Código ajuda bastantes nós estudantes, não é mesmo? É sempre bom tê-lo em mãos. Vou te fazer a pergunta número 3:"
        msg "Com relação às testemunhas e às disposições do Código de Processo Penal, assinale a opção correta."
        msg "A) Os profissionais com dever de sigilo em razão da profissão não podem depor como testemunhas, ainda que a parte interessada os desobrigue."
        msg "B) O irmão e o ex-cônjuge do acusado não podem se recusar a serem testemunhas."
        msg "C) A testemunha que faltar à sua oitiva injustificadamente, após regular intimação, pagará multa e as custas da diligência, sem prejuízo do processo penal por falso testemunho."
        msg "D) Os doentes e pessoas com deficiência mental podem ser ouvidos na condição de testemunha e não prestam compromisso."
        a = option "A) Os profissionais com dever de sigilo em razão..."
        b = option "B) O irmão e o ex-cônjuge do acusado não podem..."
        c = option "C) A testemunha que faltar à sua oitiva injustificadamente..."
        d = option "D) Os doentes e pessoas com deficiência mental podem..."
        menu "..."
        if selection(d) then
            name "Estudante de Direito"
            msg "Caramba, essa vou precisar analisar cada opção. "
            msg "na letra A diz que os profissionais com dever de sigilo em razão da profissão não podem depor como testemunhas, ainda que a parte interessada os desobrigue. Isso está no art, 207 que diz: “São proibidas de depor as pessoas que, em razão de função, ministério, ofício ou profissão, devam guardar segredo, salvo se, desobrigadas pela parte interessada, quiserem dar o seu testemunho”."
            msg "Está errada! Elas podem depor se, desobrigadas pela parte interessada, quiserem dar seu testemunho."
            msg "Essa letra C não preciso nem analisar, respondi sobre o assunto na questão anterior e sei que está erradíssima!"
            msg "Deixa-me ver essa letra D: A testemunha que faltar à sua oitiva injustificadamente, após regular intimação, pagará multa e as custas da diligência, sem prejuízo do processo penal por falso testemunho... Fadinha, pode me ajudar nessa?"
            name "Fadinha Sabe Tudo"
            msg "Claro. Um dos Deveres da Testemunha é comparecer ao local determinado, no dia e hora designados: a violação a este dever importa em condução coercitiva, nos termos do art. 218 do CPP; além disso, o juiz poderá aplicar a multa de 1 a 10 salários mínimos, prevista no art. 458 c/c o art. 436, 2º, do CPP."
            msg "A previsão legal dessa multa encontrava-se no antigo art. 453 do CPP, daí o porquê de o art. 219 fazer a ele remissão. A testemunha faltosa também deverá ser responsabilizada por crime de desobediência, além do pagamento das custas da diligência por força de sua condução coercitiva (CPP, art. 219)."
            name "Estudante de Direito"
            msg "Ahhh, agora eu entendi! Então essa letra D está errada, porque a testemunha faltosa também deverá ser responsabilizada por crime de desobediência. Só pode ser a letra E, mas antes vou analisá-la direitinho: Os doentes e pessoas com deficiência mental podem ser ouvidos na condição de testemunha e não prestam compromisso"
            msg "É ESSA! Está lá no artigo 208 do CPP “Não se deferirá o compromisso a que alude o art. 203 aos doentes e deficientes mentais e aos menores de 14 (quatorze) anos, nem às pessoas a que se refere o art. 206”. Eles podem ser ouvidos mas não prestam compromisso. Acertei mais uma, queridão. Eu sou foda, diga aí hehehe!"
            name "Narrador"
            msg "Mari Lobacenta pigarreia, não gostando da forma como você está se saindo. Você encara isso como um bom sinal enquanto a Fadinha parece contente sentada em seu ombro."
        end
        name "Mari Lobacenta"
        msg "Acertou, mas nessa você não me passou segurança hein! Lembre-se que no final, usando a sagrada teoria do “quem se fudeu” o fudido pode ser você! Vamos para a ultima pergunta:"
        msg "Três policiais militares efetuaram a prisão em flagrante de Tadeu em razão da prática do crime de extorsão, previsto no Art. 158 do Código Penal. Concluído o inquérito policial, Tadeu foi acusado pelo Ministério Público e a denúncia recebida, observando-se o rito comum ordinário, aplicável no caso."
        msg "Após a apresentação de resposta pelo acusado, não houve absolvição sumária e o juiz designou audiência de instrução e julgamento. Os policiais militares que efetuaram a prisão foram arrolados como testemunhas de acusação pelo Ministério Público."
        msg "No dia da audiência, estavam presentes a vítima, os policiais, as testemunhas de defesa e o acusado. A partir dos dados apresentados, é correto dizer, de acordo com o Código de Processo Penal, que:"
        msg "A) na audiência, os policiais militares devem prestar depoimento de modo separado, após o interrogatório do acusado."
        msg "B) na audiência, os policiais militares devem prestar depoimento de modo separado, após as testemunhas de defesa."
        msg "C) na audiência, os policiais militares devem prestar depoimento de modo separado, após a tomada das declarações do ofendido e antes de serem colhidos os depoimentos das testemunhas de defesa."
        msg "D) os policiais militares que efetuaram a prisão são proibidos de depor, por expressa previsão do Código de Processo Penal."
        a = option "A) ...depoimento de modo separado, após o interrogatório do acusado."
        b = option "B) ...depoimento de modo separado, após as testemunhas de defesa."
        c = option "C) ...depoimento de modo separado, após a tomada das declarações do ofendido..."
        d = option "D) os policiais militares que efetuaram a prisão são proibidos de depor..."
        menu "..."
        if selection(c) then
            name "Estudante de Direito"
            msg "Essa eu também sei! Existe uma sequência de depoimentos que está disposta no art.400 do CPP, onde primeiro temos as declarações do ofendido, e logo em seguida as testemunhas de acusação que, nesse caso, seriam os policiais, depois deles as testemunhas de defesa e o interrogatório do acusado. Simples assim!"
            name "Fadinha Sabe Tudo"
            msg "Além disso, no artigo 210 do CPP, está a incomunicabilidade, onde serão reservados espaços separados para a garantia da incomunicabilidade das testemunhas."
            name "Narrador"
            msg "Assim que vocês param de falar, uma porta magicamente abre a sua frente. Você venceu seu primeiro desafio, parabéns jovem estudante!"
        end
        name "Mari Lobacenta"
        msg "Óoooooooooo não! Fui derrotada, mas no próximo período estarei mais forte, irei adquirir novos métodos. A rolinha será maior do que nunca e me vingarei de todos os alunos ingratos!!!"
    end
    ):defineAttributes(
        {
            'name'
        }
    ),

    -- FASE 2
    Ero(function ()
        name 'Só Julia'
        msg 'Estudante de Direito, eu já esperava você por aqui! Pensei que não passaria da primeira fase! Mas já que você está aqui vou te fazer umas perguntas para ver se está apto para a fase seguinte! Sem demora, vamos a Primeira pergunta:'
        msg "Quanto ao reconhecimento de pessoas ou coisas, tem-se o seguinte:"
        msg "A) segundo o STF, o reconhecimento fotográfico não poderá ser efetivado na impossibilidade de recognição pessoal e direta, mesmo que obedecidos os parâmetros definidos pelo Código de Processo Penal quanto ao reconhecimento pessoal."
        msg "B) o reconhecimento de voz ou auditivo não possui valor probatório, uma vez que não se encontra previsto na legislação processual penal ou em qualquer outra legislação extravagante."
        msg "C) a jurisprudência majoritária inadmite reconhecimento pessoal em juízo, sem as formalidades previstas na legislação processual, mesmo quando se tratar de ratificação de reconhecimento formal anterior realizado no bojo do inquérito policial."
        msg "D) segundo o Código de Processo Penal, a pessoa, cujo reconhecimento se pretender, será colocada, se possível, ao lado de outras pessoas que com ela tiverem qualquer semelhança, convidando-se quem tiver de fazer o reconhecimento a apontá-la."
        local a = option "A) segundo o STF, o reconhecimento fotográfico não poderá..."
        local b = option "B) o reconhecimento de voz ou auditivo não possui..."
        local c = option "C) a jurisprudência majoritária inadmite reconhecimento pessoal..."
        local d = option "D) segundo o Código de Processo Penal, a pessoa, cujo reconhecimento..."
        menu "..."
        if selection(d) then
            name "Estudante de Direito"
            msg "Você achou mesmo que essa pergunta poderia me parar? Eu sei a resposta, é a Letra D! Está no artigo 226, inciso II do Código Penal: “a pessoa, cujo reconhecimento se pretender, será colocada, se possível, ao lado de outras que com ela tiverem qualquer semelhança, convidando-se quem tiver de fazer o reconhecimento a apontá-la”. "
            name "Narrador"
            msg "As asinhas da Fadinha tilintam ao seu lado."
            name "Fadinha Sabe Tudo"
            msg "O art. 226 também traz, em seu inciso III a seguinte redação “se houver razão para recear que a pessoa chamada para o reconhecimento, por efeito de intimidação ou outra influência, não diga a verdade em face da pessoa que deve ser reconhecida, a autoridade providenciará para que esta não veja aquela.”"
            msg "Atenta aos princípios do contraditório e da ampla defesa, e ciente da natureza acusatória do processo criminal brasileiro, pela qual o acusado tem o direito de conhecer todas as provas contra si produzidas, a lei proibiu aplicação do mencionado inciso III em juízo, quer em plenário de julgamento, quer na fase de instrução criminal (CPP, art. 226, parágrafo único)."
            msg "Assim, a vítima ou testemunha terá de efetuar o reconhecimento frente a frente com o acusado, o que pode afetar o alcance da verdade real."
        end
        name "Só Julia"
        msg "Certa a resposta! Vamos para a próxima. Sobre o reconhecimento de pessoas, escolha a opção correta:"
        msg "A) A repetição em juízo do ato anteriormente produzido em desconformidade com o art. 226 do CPP é capaz de sanar a irregularidade."
        msg "B) Tendo em vista a superação do modelo tarifário na apreciação das provas, o reconhecimento pessoal não é absoluto e as formalidades do art. 226 do CPP constituem forma de recomendação legal."
        msg "C) O reconhecimento fotográfico pode ser admitido, entre outros elementos de prova, desde que realizado com observância das regras previstas para O reconhecimento pessoal."
        msg "D) O artigo 226 do CPP adota o sistema “duplo-cego”, de modo que os servidores encarregados de organizar o reconhecimento também não devem saber quem é o suspeito em identificação."
        a = option "A) A repetição em juízo do ato anteriormente produzido..."
        b = option "B) Tendo em vista a superação do modelo tarifário na apreciação das provas..."
        c = option "C) O reconhecimento fotográfico pode ser admitido..."
        d = option "D) O artigo 226 do CPP adota o sistema “duplo-cego”..."
        menu "..."
        if selection(c) then
            name "Estudante de Direito"
            msg "Nossa, que fácil! O reconhecimento de pessoa, presencialmente ou por fotografia, realizado na fase do inquérito policial, apenas é apto, para identificar o réu e fixar a autoria delitiva, quando observadas as formalidades previstas no art. 226 do Código de Processo Penal e quando corroborado por outras provas colhidas na fase judicial, sob o crivo do contraditório e da ampla defesa, o STJ que decidiu isso!"
            msg "Nunca mais deixo de olhar as decisões desse tribunal depois daquela terrível prova oral."
        end
        name "Só Julia"
        msg "ahhhhhhh! Tô pegando leve para você não ser tão humilhado! Vamos para a última, essa também é moleza para o seu QI entender:"
        msg "Imagine que em uma audiência de instrução e julgamento na qual se apurava a prática do delito de roubo de acusado que foi preso em flagrante delito, o réu foi reconhecido pessoalmente pela vítima e outras três testemunhas do fato, além de ser capturado na posse do objeto subtraído."
        msg "O magistrado proferiu sentença absolutória, ao argumento de que a prova era ilegítima, pois não foi observado o disposto no art. 226 do Código de Processo Penal, havendo, portanto, violação a normas legais e constitucionais. Diante do caso concreto, é lícito afirmar que o magistrado:"
        msg "J) Agiu de forma incorreta, pois fato notório não demanda prova."
        msg "K) decidiu de forma adequada, pois o Código de Processo Penal prevê um rito procedimental para o reconhecimento, que não foi observado na audiência, com notória violação ao que dispõe o artigo 157 do Código de Processo Penal."
        msg "L) Equivocou-se, pois o Código de Processo Penal adota o sistema da persuasão racional ou livre convicção fundamentada, sendo infenso ao formalismo. Os atos de recognição praticados na audiência são inteiramente válidos e podem cooperar para a formação do convencimento do juiz pela livre apreciação da prova produzida sob o crivo do contraditório (CPP, art. 155)."
        msg "M) Agiu corretamente, pois a prova é ilegal e não pode respaldar a condenação."
        a = option "J) Agiu de forma incorreta, pois fato notório não demanda prova."
        b = option "K) decidiu de forma adequada, pois o Código de Processo Penal..."
        c = option "L) Equivocou-se, pois o Código de Processo Penal adota o sistema da persuasão..."
        d = option "M) Agiu corretamente, pois a prova é ilegal e não pode respaldar a condenação."
        menu "..."
        if selection(c) then
            name "Narrador"
            msg "Você esbouça um grande sorriso quando ela termina de falar, contente que todo o seu sofrimento durante o período não foi em vão. As respostas fluem de você com naturalidade, como se o conhecimento que tanto procura já te pertencesse desde o início."
            msg "Isso te enche de determinação."
            name "Estudante de Direito"
            msg "Letra L! De boa na lagoa essa perguntinha, até porque tem a ver com a valoração da prova e o livre convencimento do juiz. O art. 155, caput, do CPP consagra o princípio do livre convencimento na valoração das provas, que atribui ao juiz a faculdade de apreciar o material dos autos, sem submissão."
            msg "Porém o juiz deve sempre analisar e avaliar as provas, e com fundamentação legal do por que tal prova é lícita ou ilícita. O fundamento do preceito, seria garantir a imparcialidade do magistrado."
            name "Narrador"
            msg "Com isso, Só Júlia parece irritada por não conseguir arrancar pelo menos um semblante de dúvida em você, e parece tentar disfarçar seu escarnio muito mal quando se despede."
        end
        name "Só Julia"
        msg "Você completou a minha fase, peguei leve, mas a próxima fase não é dessas, prepare-se para ter um gostinho do inferno!"
    end
    ):defineAttributes(
        {
            'name'
        }
    ),

    -- FASE 3: Cyntherela
    Ero(function ()
        name "Cyntherela"
        msg "Eita que o cara tá se achando o bichão mesmo! Foi fácil até agora, mas ninguém passa por mim, eu sou a enviada do capeta para derrotar você! Toc Toc? Quem é? Uma pergunta pra você:"
        msg "Otávio é delegado de polícia em Catalão-GO e preside um inquérito policial por crime de homicídio qualificado. Após intimar diversas pessoas para que prestassem depoimento, Otávio resolveu indiciar Miguel como único autor do delito"
        msg "Depois, ao redigir o relatório do inquérito para enviá-lo ao Ministério Público, Otávio decide intimar Miguel para realizar uma última acareação com outra pessoa, a fim de ter certeza da autoria do delito. Sobre esse procedimento, é correto afirmar que:"
        msg "A) Otávio está sendo prudente, uma vez que a decisão de indiciamento, seguida do relatório, serve de motivação para que o Ministério Público denuncie Miguel."
        msg "B) Otávio só pode acarear Miguel e outra pessoa mediante requerimento do Ministério Público."
        msg "C) a acareação não se presta a elucidar a autoria do crime, mas circunstâncias que envolvem o fato típico, ilícito e culpável passíveis de agravá-lo."
        msg "D) Otávio pode acarear Miguel com outra pessoa, geralmente coacusado, testemunha ou ofendido, sempre que divergirem, em suas declarações, sobre fatos ou circunstâncias relevantes."

        local a = option "A) Otávio está sendo prudente, uma vez que a decisão de indiciamento..."
        local b = option "B) Otávio só pode acarear Miguel e outra pessoa mediante..."
        local c = option "C) a acareação não se presta a elucidar a autoria do crime..."
        local d = option "D) Otávio pode acarear Miguel com outra pessoa, geralmente coacusado..."
        menu "..."

        if selection(d) then
            name "Estudante de Direito"
            msg "Que fácil! Isso está no Art. 229 do Código de Processo Penal, Miguel só será acareado com outra pessoa, desde que esta seja coacusada, testemunha ou pessoa ofendida, tendo em suas declarações divergentes, fatos ou circunstâncias relevantes."
            name "Fadinha Sabe Tudo"
            msg "Também há possibilidade de a acareação ser procedida mediante precatória, nos termos do artigo 230 do CPP. A precatória acontece quando a testemunha arrolada reside em lugar diverso do juízo, assim ela será ouvida por precatória, pelo juiz do lugar de sua residência, assim disposto no artigo 222 do CPP."
        end
        name "Cyntherela"
        msg "grrrrr! Mas essa estava fácil, se errasse seria o suprassumo da burrice! PROXIMA!"
        msg "No que concerne à acareação no direito processual penal, assinale a alternativa incorreta."
        msg "A) Tal como ocorre em relação ao interrogatório, o acusado tem o direito de manter-se em silêncio por ocasião de acareação a que venha a ser submetido."
        msg "B) As pessoas acareadas devem ser colocadas frente a frente e, uma vez advertidas das penas do crime de falsa acareação, serão indagadas pelo juiz ou pela autoridade policial (na fase do inquérito) acerca das divergências e sobre o desejo de manterem ou modificarem a versão que apresentaram"
        msg "C) A realização da acareação pressupõe que haja divergência entre as declarações dessas pessoas, referente a ponto relevante para o resultado final do processo"
        msg "D) A acareação tem por objetivo provocar a retratação, por parte de um dos acareados, em relação ao ponto do depoimento que se mostra em antagonismo com o outro relato"

        a = option "A) Tal como ocorre em relação ao interrogatório, o acusado..."
        b = option "B) As pessoas acareadas devem ser colocadas frente a frente..."
        c = option "C) A realização da acareação pressupõe que haja divergência..."
        d = option "D) A acareação tem por objetivo provocar a retratação..."
        menu "..."
        
        if selection(c) then
            name "Estudante de Direito"
            msg "Putzz, vou chutar letra C, ela está correta.."
            name "Cyntherela"
            msg "HAAA, TE PEGUEI! Você errou, eu pedi a INCORRETA! A resposta é Letra B!"
            name "Fadinha Sabe Tudo"
            msg "Você acabou de perder 1 vida Estudante de Direito! Lembre-se que agora você só tem mais 3 para enfrentar aquele enviado do inferno!"
            msg "A B está incorreta porque não existe crime de falsa acareação! Existe apenas crime de falso testemunho, que, aliás, se encontra no art. 342 do Código Penal juntamente com o art. 211 do Código de Processo Penal, onde, se o juiz reconhecer afirmações falsas ao prolatar a sentença final, será encaminhada uma cópia do depoimento a polícia para que seja instaurado um inquérito policial."
        end
        name "Cyntherela"
        msg "Aiai, como é bom ser maligna! Obrigada pelos ensinamentos meu chefe lindo! ULTIMA PERGUNTA:"
        msg "Admite-se a acareação entre testemunhas que divergirem, em seus depoimentos, a respeito de circunstâncias de fatos relevantes. No caso de uma dessas testemunhas residir fora da comarca do juízo, deve o juiz:"
        msg "A) deferir a realização da acareação e determinar o comparecimento das testemunhas; ausente testemunha cujas declarações divirjam das da que esteja presente, a esta se deve dar a conhecer os pontos de divergência, colhendo-se seu depoimento."
        msg "Em seguida, deve o magistrado determinar a expedição de carta precatória para inquirição da testemunha residente fora da comarca do juízo a fim de completar o ato."
        msg "B) deferir a realização da acareação, determinando o comparecimento da testemunha residente fora da comarca, sob pena de condução coercitiva."
        msg "C) indeferir a realização da acareação, por ser esta prejudicial ao processo, e por não ser possível determinar o comparecimento em juízo de testemunhas residentes fora da comarca do juízo."
        msg "D) indeferir a acareação, dada a inconveniência de realizá-la entre testemunhas residentes e não residentes na comarca do juízo."

        a = option "A) deferir a realização da acareação e determinar o comparecimento..."
        b = option "B) deferir a realização da acareação, determinando o comparecimento..."
        c = option "C) indeferir a realização da acareação, por ser esta prejudicial..."
        d = option "D) indeferir a acareação, dada a inconveniência de realizá-la..."
        menu "..."

        if selection(a) then
            name "Estudante de Direito"
            msg "A Fadinha estudou comigo essa! Eu lembro de estar no artigo 230 do Código de Processo Penal onde que na ausência de uma das testemunhas, será expedido carta precatória à autoridade do lugar onde está domiciliado a testemunha ausente, transcrevendo as declarações desta e as da testemunha presente, a fim de que se complete a diligência!"
            msg "EU TE DERROTEI!"
        end
        name "Cyntherela"
        msg "MALDIÇÃO! meu chefe terá vergonha de mim! Não fui diabólica o suficiente, tenho que aprimorar meus métodos de tortura para um dia levar a diante os ensinamentos de Motamônio, espero que ele faça da sua vida um inferno!"
        name "Narrador"
        msg "Vitoria, pelo menos! Errar faz parte da vida do estudante, não se sinta culpado por ser idiota as vezes, porque é através da experiencia que aprendemos."
        msg "Você engole a culpa, levemente, como um copo de suco. Você pode ter errado sua primeira pergunta aqui, mas isso não estragará sua jornada."
    end
    ):defineAttributes(
        {
            'name'
        }
    ),

    -- FASE 4: Soberana
    Ero(function ()
        name "Soberana"
        msg "Já ouvi sobre você, estudante de direito. Seus feitos até aqui já chegaram em minhas orelhas, mas aqui você se arrependerá de sequer ter pisado em meu território, seu diabinho infeliz. Prepare-se para minha primeira pergunta!"
        msg "Sobre os elementos de prova prescritos no Código de Processo Penal, especialmente os documentos, assinale a alternativa correta."
        msg "A) Se o juiz tiver notícia da existência de documento relativo a ponto relevante da acusação ou da defesa, só poderá providenciá-lo após requerimento de qualquer das partes, para sua juntada aos autos, conforme o sistema acusatório."
        msg "B) As cartas particulares interceptadas serão admitidas em juízo com autorização da parte interessada."
        msg "C) A letra e firma dos documentos particulares serão submetidas a exame pericial de ofício, independentemente da impugnação de sua autenticidade. "
        msg "D) A fotografia do documento e outras imagens oriundas de aparelho digital, virtual ou assemelhado podem ser atestadas ou documentadas, a requerimento do interessado, mediante ata lavrada por tabelião."

        local a = option "A) Se o juiz tiver notícia da existência de documento..."
        local b = option "B) As cartas particulares interceptadas serão admitidas..."
        local c = option "C) A letra e firma dos documentos particulares serão submetidas..."
        local d = option "D) A fotografia do documento e outras imagens oriundas..."
        menu "..."

        if selection(d) then
            name "Estudante de Direito"
            msg "Letra D! Porque 1) o juiz pode requerer a produção de provas de ofício, então descartamos a letra A. 2) as cartas só são admitidas se não forem obtidas de forma criminosa e sendo o destinatário quem leva a carta para defender direito próprio, não tem como ser a letra B! 3) A letra e a firma dos documentos PRECISAM ser impugnadas"
            name "Fadinha Sabe Tudo"
            msg "lalalala muito bem!"
            name "Narrador"
            msg "A face de Soberana se preenche de raiva."
        end

        name "Soberana"
        msg "Eita como voce tá sabendo demais, pequeno desgraçado. Se você tivesse sido meu aluno antes, eu teria pego mais pesado! Vamos para a próxima pergunta!"
        msg "Ainda com relação aos documentos, em sua qualidade de prova no processo penal, assinale a alternativa incorreta."
        msg "B) As públicas-formas só terão valor quando conferidas com o original, em presença da autoridade"
        msg "C) Os documentos em língua estrangeira, sem prejuízo de sua juntada imediata, deverão ser, se necessário, traduzidos por tradutor público, ou, na falta, por pessoa idônea nomeada pela autoridade"
        msg "D) Se o juiz tiver notícia da existência de documento relativo a ponto relevante da acusação ou da defesa, deverá providenciar, independentemente de requerimento de qualquer das partes, para sua juntada aos autos, se possível"
        msg "E) A letra e firma dos documentos particulares devem ser presumidos verdadeiros, quando contestada a sua autenticidade"

        a = option "B) As públicas-formas só terão valor quando conferidas com o original..."
        b = option "C) Os documentos em língua estrangeira, sem prejuízo de sua juntada imediata..."
        c = option "D) Se o juiz tiver notícia da existência de documento relativo a ponto relevante..."
        d = option "E) A letra e firma dos documentos particulares devem ser presumidos..."
        menu "..."
        
        if selection(E) then
            name "Estudante de Direito"
            msg "A letra E é a única incorreta! A firma de documentos particulares e a letra são submetidas a exame pericial quando contestada a sua autenticidade."
            name "Fadinha Sabe Tudo"
            msg "É o que está escrito no artigo 235! São os documentos públicos que na verdade são presumidos verdadeiros, embora isso não signifique que eles sejam verdadeiros o tempo todo, já que podem ser falsificados - eu mesma já falsifiquei alguns na juventude, hehe."
            name "Narrador"
            msg "Você e a Soberana trocam olhares confusos, mas voltam a focar na situação."
            msg "Fadinha esquisita da porra."
        end

        name "Soberana"
        msg "Aff, acertou mais uma? De qualquer jeito, você deveria se envergonhar de ter dado uma resposta tão feia e preguiçosa. Vamos prosseguir com as perguntas."
        msg "Relativamente aos documentos, em sua qualidade de prova no processo penal, assinale a alternativa incorreta."
        msg "A) À fotografia do documento, devidamente autenticada, se dará o mesmo valor do original "
        msg "B) Consideram-se documentos quaisquer escritos, instrumentos ou papéis, públicos ou particulares"
        msg "C) As cartas poderão ser exibidas em juízo pelo respectivo destinatário, para a defesa de seu direito, desde que se tenha o consentimento do signatário"
        msg "D) Salvo os casos expressos em lei, as partes poderão apresentar documentos em qualquer fase do processo"

        name "Narrador"
        msg "Putz, a resposta estaria na ponta de sua língua se você não tivesse sido preguiçoso e estudado sobre isso, mas você não quer usar os pergaminhos tão cedo, já que para enfrentar o Motamônio, você precisará do máximo de ajuda que puder. Não há outra saída."

        name "Soberana"

        a = option "A) À fotografia do documento, devidamente autenticada..."
        b = option "B) Consideram-se documentos quaisquer escritos, instrumentos ou papéis..."
        c = option "C) As cartas poderão ser exibidas em juízo pelo respectivo..."
        d = option "D) Salvo os casos expressos em lei, as partes poderão apresentar..."
        menu "..."

        if selection(c) then
            name "Estudante de Direito"
            msg "... letra...A...? "
            name "Narrador"
            msg "Maravilha, com essa segurança você pode ir longe! Como se sente sendo tão incrível? A soberana esboça um sorriso maligno, belo, vitorioso. Você caiu direitinho na armadilha dela."
            name "Fadinha Sabe Tudo"
            msg "Você acabou de perder 1 vida Estudante de Direito! Lembre-se que agora você só tem mais 2 para enfrentar aquele enviado do inferno!"
            name "Soberana"
            msg "HA HA HA, isso é tudo o que tu consegue? Minha até minha filha Maggie conseguiria responder essa. A resposta incorreta nesse caso, na verdade, seria letra C, o consentimento do signatário não é necessário."
        end

        msg "Mas agora, finalmente farei a pergunta final! Se você errar essa, acabo com a sua raça."
        msg "O que diz respeito à prova no processo penal, assinale a opção correta."
        msg "A) O teor dos documentos particulares será submetido a exame pericial, quando contestada a sua veracidade"
        msg "B) A prova documental no processo penal deve ser produzida no momento próprio, sob pena de preclusão."
        msg "C) Caso tenha notícia da existência de documento relativo a ponto relevante da acusação ou da defesa, o juiz deverá providenciar, se possível, a sua juntada aos autos, independentemente de requerimento de qualquer das partes."
        msg "D) Os documentos originais juntados a processo findo poderão ser entregues à parte que os produziu, independentemente de translado, quando não existir motivo relevante que justifique a sua conservação nos autos"

        a = option "A) O teor dos documentos particulares será submetido a exame..."
        b = option "B) A prova documental no processo penal deve ser produzida no momento..."
        c = option "C) Caso tenha notícia da existência de documento relativo a ponto..."
        d = option "D) Os documentos originais juntados a processo findo poderão ser entregues..."
        menu "..."

        if selection(c) then
            name "Estudante de Direito"
            msg "Letra C! O teor não é levado ao exame pericial, só a letra e a firma, como já respondi em uma das questões anteriores."
            msg "Além disso, a prova documental pode ser produzida em qualquer fase do processo! Para que os documentos originais já juntados sejam entregues à parte, mesmo que ela tenha os produzido, eles precisam de translado"
            msg "Quanto às cartas particulares, elas podem ser exibidas em juízo pelo respectivo destinatário para defesa de seu direito sem precisar do consentimento do destinatário."
            name "Fadinha Sabe Tudo"
            msg "lalalala conseguimos!"
        end

        name "Narrador"
        msg "Essa foi a última pergunta dessa fase – você conseguiu perceber isso quando os olhos de Soberana perdem um pouco do brilho de ódio, e muitas expressões em sua face guerreiam até a expressão de derrota e aceitação se prevaleçam. A porta magica abre-se a sua frente, revelando seu caminho a próxima fase."
        
        name "Soberana"
        msg "Entendo, então é por isso que você foi escolhido para essa missão. Em todos os meus anos como professora, jamais encontrei tanta determinação em um pequeno diabinho. Você pode ir para a próxima fase, tem meu respeito, estudante."
    end
    ):defineAttributes(
        {
            'name'
        }
    ),

    -- FASE 5: Mago Piglet
    Ero(function ()
        name "Mago Piglet"
        msg "Estudante, finalmente você chegou, depois de tanto tempo. Ouvi sobre seus feitos, mas garanto que aqui é o fim de sua jornada patética, pois seus amigos já foram torturados o suficiente pelo meu mais novo mecanismo inventado: Prova Oral."

        name "Estudante de Direito"
        msg "Professor?! Como você pode fazer algo assim? E nossos problemas com ansiedade? Isso não está no contrato do Cesmac! É tortura psicológica!"

        name "Narrador"
        msg "O lendário sábio bonitão Piglet, o mago, sorri diante de sua indignação."
        msg "Você não deveria estar tão surpreso assim, afinal de contas, é isso o que professores fazem. Eles arrancam sua cabeça com os dentes, mastigam suas ideias e cospem enquanto te humilham mais e mais vezes até que você seja apenas um fantasma na sociedade, perdido em um universo de culpa e remorso."

        name "Mago Piglet"
        msg "Caguei pra sua ansiedade, pros seus problemas, pra você. Sua obrigação, como a de todos os estudantes, é ser humilhado por nós, professores! Afora chega de papo, responda as minhas perguntas morra, infeliz desgraçado!"
        msg "A prova indiciária é indireta por excelência, se se considerar necessária uma construção lógica para que se chegue a uma circunstância até então desconhecida."

        local a = option "A) Certo"
        local b = option "B) Errado"
        menu "..."

        if selection(b) then
            name "Estudante de Direito"
            msg "E-eu acho que está errado, Letra B?"
            name "Mago Piglet"
            msg "Meus parabéns, você é a criatura mais estúpida que já vi! Parece que todo seu esforço não valeu nada, não é mesmo? Volte pro primeiro período se o seu papel aqui é passar vergonha."
            name "Fadinha Sabe Tudo"
            msg "Você acabou de perder 1 vida Estudante de Direito! Lembre-se que agora você só tem mais 1 para enfrentar aquele enviado do inferno!"
            msg "A alternativa correta seria letra A. Considera-se indício a circunstância conhecida e provada, que, tendo relação com o fato, autorize, por indução, concluir-se a existência de outra ou outras circunstâncias."
        end
        
        name "Mago Piglet"
        msg "Não entendi como você conseguiu chegar aqui se isso for tudo o que sabe, animal. Antes, pode começar rezando antes de responder essa pergunta:"
        msg "De acordo com o Código de Processo Penal, para o bloqueio de ativos financeiros de sociedades empresárias, é necessária a existência de:"

        a = option "B) juízo de certeza"
        b = option "C) indícios mínimos"
        local c = option "D) indícios suficientes"
        local d = option "E) indícios veementes."
        menu "..."

        if selection(d) then
            name "Estudante de Direito"
            msg "Letra E, de acordo com o Art. 126 do CPP. Para a decretação do sequestro, bastará a existência de indícios veementes da proveniência ilícita dos bens"
        end

        name "Mago Piglet"
        msg "Olha só, parece que você não é tão incompetente assim, quase fiquei orgulhoso por um segundo! Mas ainda não acabou. Ainda temos uma pergunta:"
        msg "Considerando, por hipótese, que, devido ao fato de estar sendo investigado pela prática de latrocínio, José tenha contratado um advogado para acompanhar as investigações, julgue os itens a seguir."
        msg "Se surgirem indícios contra José, ele deverá ser indiciado e identificado pelo processo datiloscópico, pois, na hipótese em apreço, o referido crime é hediondo, fato que torna obrigatória a identificação criminal."

        a = option "A) Certo"
        b = option "B) Errado"
        menu "..."

        if selection(b) then
            name "Estudante de Direito"
            msg "Letra B! está errado pois não se enquadra nas hipóteses do artigo 3º da Lei 12.037/09"
            name "Fadinha Sabe Tudo"
            msg "As hipóteses são: o documento apresentar rasura ou tiver indício de falsificação; o documento apresentado for insuficiente para identificar cabalmente o indiciado; o indiciado portar documentos de identidade distintos, com informações conflitantes entre si"
            msg "a identificação criminal for essencial às investigações policiais, segundo despacho da autoridade judiciária competente, que decidirá de ofício ou mediante representação da autoridade policial, do Ministério Público ou da defesa"
            msg "constar de registros policiais o uso de outros nomes ou diferentes qualificações; o estado de conservação ou a distância temporal ou da localidade da expedição do documento apresentado impossibilite a completa identificação dos caracteres essenciais."
        end

        name "Mago Piglet"
        msg "Muito bem, você passou."

        name "Narrador"
        msg "Algo de errado não está certo. Deveriam haver mais perguntas, não é? Essa é a ultima fase antes do Motamônio, não deveria ser tão curta. Voce mal conseguiu sentir o gostinho, então se pergunta se isso é um tipo de pegadinha do malandro ou algo assim."
        msg "Mas a porta se abre a sua frente, convidando-o a se retirar. Piglet, o mago, nota sua inquietação e sorri desafiador. Confusão parece alimentar seu deboche."
        
        name "Mago Piglet"
        msg "Sim, Indicios é um assunto simples de lidar. Fora isso, não quero mais te ver aqui. Xô, vaza!"

        name "Narrador"
        msg "Ele joga uma sacola em você. Você a abre, mais confuso ainda. É um frasco contendo uma poção magica que lhe dará vidas extras, recuperando as que você perdeu! Parabéns, você conseguiu um artefato nível médio! Isso será essencial para sua luta feroz contra o famigerado Motamônio."
    end
    ):defineAttributes(
        {
            'name'
        }
    ),

    -- FASE FINAL: Motamonio
    Ero(function ()
        name "Motamônio"
        local a = option ""
        local b = option ""
        local c = option ""
        local d = option ""
    end
    ):defineAttributes(
        {
            'name'
        }
    )
}