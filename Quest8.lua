 function NPC_QUEST_202(cnum,reqNumber) --NPC °íµç(¹Ù¶÷ÀÇ ´øÀü ¾È³»ÀÚ) - º£Çì¸£¼¼¹Ù ³²ºÎÁö¿ª
	local req, id1, count1

	id1 = 368 --¹Ù¶÷ÀÇ ½Å¹ß

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1007) < 1 then
			return 2,0,"Oh, você tem um cubo Caos e as luvas da Elf. Você deve estar aqui por uma razão. Ao usar o Chaos Cube com o Anel de chuva, você pode reviver algo que foi perdido no passado. Mas você precisa ser forte o suficiente para atravessar o Dungeon do Vento",3,"Conte-me sobre o Dungeon."
		else
			return 2,0,"Você trouxe os sapatos do vento?",4,"Sim, eu tenho isso aqui comigo."
		end




	elseif req == 3 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Primeiro, você precisa obter o Cubo Caos. Em seguida, elegíveis para o Dungeon do Vento."
		end

		return 2,0,"Você deve ter um corpo resistente para entrar na barreira de Dungoen do Vento. Se você não estiver forte o suficiente, o vento Dungeon vai lhe empurrar para fora para um lugar desconhecido.",101,"Estou confiante para ir polegadas"



	elseif req == 101 then
		StartQuest(cnum, 8)
		AddSwitchCount(cnum, 1007, 1)
		return 1,0,"Hmm, eu sou jovem MixMaster desculpe, eu acho que seu nível não é alto o suficiente para resistir ao vento na caverna. MAS, sapatas do vento pode ajudar seu corpo a luz. Você pode obtê-lo se você pegar um lambedor grande por aqui."




	elseif req == 4 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"*** Antes de você seguir em frente com o World Quest, você deve falar com Harley na Rolling Cores (X: 153.Y: 100)"
		end

		if GetItemCount(cnum,368,0) == 0 then --¹Ù¶÷ÀÇ ½Å¹ß(368)
			return 1,0,"Não, isso não é verdade. Você precisa encontrar os sapatos de um lambedor grande."
		end

		EndQuest(cnum, 8)
		return 2,0,"Boas. Mas devo adverti-lo, eventhough você está usando sapatos de vento, você não pode ficar no calabouço por muito tempo. Você provavelmente vai ficar encantada. Eu vou lá com você. Você está pronto para entrar?",5,"Sim"

	elseif req == 5 then

		count1 = GetItemCount(cnum,id1,0)

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Harly sabe sobre o Cubo Caos. Por que você não encontrar Harly."
		end

		if GetItemCount(cnum,368,0) == 0 then --¹Ù¶÷ÀÇ ½Å¹ß
			return 1,0,"Você precisa ter o tênis do Vento para entrar no calabouço."
		end

		AddItemCount(cnum,id1,-count1)  --¹Ù¶÷ÀÇ ½Å¹ß
		SetReturnTimer(cnum,180,66)
		MoveZone(cnum,247,101) --¹Ù¶÷ÀÇ ´øÀü 247
		end

	return 0
end


 function NPC_QUEST_203(cnum,reqNumber) --NPC °íµç(¹Ù¶÷ÀÇ ´øÀü¾È)
	local req,id1,id2, id3,count1,count2,count3

	id1 = 338 --¹Ù¶÷ÀÇ ½Å¹ß
	id2 = 369 --ºñÀÇ ¹ÝÁö
	id3 = 366 --Ä«¿À½º Å¥ºê

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1008) < 1 then
			return 2,0,"Começar o Anel da chuva é muito difícil. Embora você tenha os sapatos do vento, mas a durabilidade do sapato pode durar apenas alguns minutos. Então, o vento forte do calabouço irá forçá-lo afastado para Magirita. Por favor, entre o Anel da chuva dentro do prazo.",12,"Como posso encontrá-lo?"
		else
			if GetSwitchCount(cnum, 17) < 1 then
				return 2,0,"Você encontrou o anel?",2,"Sim"
			else
				return 2,0,"Você pode sair do calabouço do Vento eventualmente. Você gostaria de sair agora?",14,"Sim"
			end
		end

	elseif req == 12 then
		return 2,0,"Um desses monstros aqui vai ter. Derrotá-los e obter o item!",13,"Vá em frente!"

	elseif req == 13 then
		StartQuest(cnum, 9)
		AddSwitchCount(cnum, 1008, 1)
		return 1,0,"Lembre-se, o tempo é um fator chave!"

	elseif req == 14 then
		MoveZone(cnum, 66, 254)


	elseif req == 2 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Você conheceu Harly no campo Cores Rolling?"
		end

		if GetItemCount(cnum,369, 0) == 0 then -- ºñÀÇ ¹ÝÁö(369)
			return 1,0,"Se você pegar monstros neste calabouço, você pode encontrar o Anel da Chuva. Então traga-o para mim, vou mostrar-lhe como usá-lo."
		end

		return 2,0,"Oh! Você tem o Ring of the Rain. O Anel da chuva e do Cubo Caos pode tornar a imagem perdida de Shira. Vamos misturar o Anel da chuva e do Cubo Caos.",3,"Mix"

	elseif req == 3 then

		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)

		if GetSwitchCount(cnum,17) > 0 then
			return 1,0,"Você pode obter a imagem de Shira família apenas uma vez."
		end

		if GetSwitchCount(cnum,16) == 0 then
		return 1,0,"Você conheceu Harly no campo Cores Rolling?"
		end

		if GetItemCount(cnum,366,0) == 0 then --Ä«¿À½º Å¥ºê(366)
			return 1,0,"Você pode fazer a imagem Shira da família somente se você tiver o Cubo Caos."
		end

		if GetItemCount(cnum,369,0) == 0 then --ºñÀÇ ¹ÝÁö(369)
			return 1,0,"Você pode fazer a imagem Shira da família somente se você tiver o Ring of the Rain."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Seu saco parece que ele está cheio. É melhor você limpar lá dentro!"
		end

		AddItemCount(cnum,id1,-count1) -- ¹Ù¶÷ÀÇ ½Å¹ß
		AddItemCount(cnum,id2,-count2) --ºñÀÇ ¹ÝÁö(369)
		AddItemCount(cnum,id3,-count3) --Ä«¿À½º Å¥ºê(366)
		AddItemCount(cnum,371,1) --½¬¶óÀÇ °¡Á·»çÁø(371)
		AddSwitchCount(cnum,17,1)
		EndQuest(cnum, 9)
		return 1,0,"Lá vamos nós! Este é o retrato da família de Shira. Por favor, mostre-o para Shira em VeHerseba. Ela vai ficar contente e triste ao mesmo tempo."

	end
	return 0
end





