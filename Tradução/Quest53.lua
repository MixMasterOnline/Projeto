function NPC_QUEST_218(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Você veio aqui para ouvir a notícia, hein? Eu sou o único que fez Snowfield trazendo a neve do Artreia. Eu fiz isso por modelagem Purmai. Apesar de ser artificial, há falta de nothng. Pelo contrário, é melhor do que snowfield real ~ ",2,"Qual é melhor? "

	
	elseif req == 2 then
		return 3,0,"Na verdade, eu soltou um número de monstros fracos na neve. By the way, o número deles aumentou muito. Agora, as pessoas não podem dizer se é ou não campo de neve. Você poderia me ajudar? ",12,"Claro, porque não? ",13,"Não, eu não posso "


	elseif req == 12 then
		return 2,0,"Muito obrigado. ",22,"[Para mover para Verão Snowfield] "


	elseif req == 13 then
		return 1,0,"Ye ... OK. "


	elseif req == 22 then
		MoveZone(cnum, 115, 254)

	else
		return 0

	end
end


function NPC_QUEST_254(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Olá, você é quem vai nos ajudar. Eu ouvi sobre você. Existe alguma coisa que nós podemos ajudar? ",2,"Eu quero voltar. "

	

	elseif req == 2 then
		return 2,0,"Você quer voltar? Bem, é frio. Eu entendo. Se possível, esperamos que você volte para nos ajudar. ",12,"[Para voltar Mekrita] "



	elseif req == 12 then
		MoveZone(cnum, 59, 254)


	else
		return 0

	end
end