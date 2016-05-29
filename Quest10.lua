 function NPC_QUEST_286(cnum,reqNumber) --NPC ÃÌÀå ÀÏÇÏ(Ã¼¼¼¹Ù À¯ÀûÁö)
	local req,id1,id2,count1,count2

	id1 = 376 -- ±úÁø À¯¸®Á¶°¢
	id2 = 377 -- ÇÁ¸®Áò

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 20) < 1 then
			if GetSwitchCount(cnum, 1011) < 1 then		
				if GetSwitchCount(cnum,19) == 0 then
					return 1,0,"Você não tem coletado todos os cristais árvore lágrima. Por favor, fale com o Shira em VeHerseba. "
				end

				return 2,0,"Olá lá um jovem. Hm uma caixa de cristal? Então, vá encontrar a garrafa de vidro de ouro. Golden garrafa de vidro é uma garrafa preciosa que era usada no passado, tem poder para restaurar a aura mágica. ",12,"Como posso encontrá-lo? "
			else
				return 4,0,"Você tem algo para me perguntar? ",2,"Pergunte sobre a garrafa de vidro de Ouro novamente ",3,"Pergunte sobre o Magic Mirror of novamente. ",4,"Asl Sobre a CRIAÇÃO do The Magic Mirror. "
			end
		else
			return 1,0,"Agora, encontrar Predic que tem um poder especial no campo Tamer (X: 180 Y: 75). Predic vai mandar você para o passado. "
		end

	elseif req == 12 then
		return 2,0,"Golden frasco de vidro só existia no passado. Se você quiser a garrafa que você pode ir para o passado e encontrá-lo. Ah, por falar nisso, você precisa de um espelho mágico para ir para o passado. O espelho mágico pode ser feita com a mistura vidros quebrados e Prisma. Eu ouço os médicos tendem a tê-los ",13,"Ok"


	elseif req == 13 then
		StartQuest(cnum, 11)
		AddSwitchCount(cnum, 1011, 1)
		return 1,0,"Se você me trazer os itens, você irá criar o espelho da Magia. Então você pode voltar ao passado. "


	elseif req == 2 then

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Você pode obter as informações somente se você tiver três Shiras lágrima de cristal. Por favor, encontrar em VeHerseba Shira. "
		end

		return 1,0,"Golden frasco de vidro só existe no passado. Se você quiser encontrá-lo, você precisará voltar ao passado. Você precisa ter o Magic Mirror para fazer isso. "

	elseif req == 3 then

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Você não tem uma lágrima de cristal. Por favor, encontrar em VeHerseba Shira. "
		end

		return 1,0,"Você pode ter o espelho mágico se você misturar pedaço de vidro quebrado com prisma. Eu já ouvi boatos Médicos amor desses itens. Eu não sei qual o médico, talvez a cabeça em uma villege. "

	elseif req == 4 then


		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Por favor, Shira encontrar e falar com ela em VeHerseba. "
		end

		if GetSwitchCount(cnum,20) > 0 then
			return 1,0,"Desculpe, eu sou um homem velho, eu só posso fazer o Magic Mirror vez. "

		end

		if GetItemCount(cnum,376,0) == 0 then --±úÁø À¯¸®Á¶°¢(376)
			return 1,0,"Não há um pedaço de vidro quebrado. Vá e fale com um médico. "
		end

		if GetItemCount(cnum,377,0) == 0 then --ÇÁ¸®Áò(377)
			return 1,0,"Por favor, traga-me o prisma. Vá e fale com um médico sobre isso. "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Deve haver mais de uma unidade de reposição de estoque. "
		end

		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,375,1) -- ¸¶¹ıÀÇ °Å¿ï(375)
		AddMoney(cnum,10000) -- 10000GP Ãß°¡
		AddSwitchCount(cnum,20,1) --¸¶¹ıÀÇ °Å¿ï Switch °ª
		EndQuest(cnum, 11)

		return 1,0,"Ah, um bom trabalho jovens. Agora, aqui, aqui e ali. Eu fiz o Magic Mirror. Ah, que foi emocionante. Vou recompensá-lo algum dinheiro também. "
	end
	return 0
end
