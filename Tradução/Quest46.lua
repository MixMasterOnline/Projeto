
function NPC_QUEST_282(cnum,reqNumber) ---·ç³ªÆ½ ´øÀü 1Ãş ¿öÇÁ NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Estou confiante para ir polegadas ",2,"Hmm, eu sou jovem MixMaster desculpe, eu acho que seu nível não é alto o suficiente para resistir ao vento na caverna. MAS, sapatas do vento pode ajudar seu corpo a luz. Você pode obtê-lo se você pegar um lambedor grande por aqui. ",3,"*** Antes de você seguir em frente com o World Quest, você deve falar com Harley na Rolling Cores (X: 153.Y: 100) "

	elseif req == 2 then
	
		if GetItemCount(cnum,1050,0) == 0 then -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±Ç
			return 1,0,"Não, isso não é verdade. Você precisa encontrar os sapatos de um lambedor grande. "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_283(cnum,reqNumber) ---·ç³ªÆ½ ´øÀü 2Ãş ¿öÇÁ NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Boas. Mas devo adverti-lo, eventhough você está usando sapatos de vento, você não pode ficar no calabouço por muito tempo. Você provavelmente vai ficar encantada. Eu vou lá com você. Você está pronto para entrar? ",2,"Sim ",3,"Harly sabe sobre o Cubo Caos. Por que você não encontrar Harly. "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±Ç
			return 1,0,"Você precisa ter o tênis do Vento para entrar no calabouço. "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_284(cnum,reqNumber) ---·ç³ªÆ½ ´øÀü 3Ãş ¿öÇÁ NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Começar o Anel da chuva é muito difícil. Embora você tenha os sapatos do vento, mas a durabilidade do sapato pode durar apenas alguns minutos. Então, o vento forte do calabouço irá forçá-lo afastado para Magirita. Por favor, entre o Anel da chuva dentro do prazo. ",2,"Como posso encontrá-lo? ",3,"Você encontrou o anel? "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±Ç
			return 1,0,"Sim "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_285(cnum,reqNumber) ---·ç³ªÆ½ ´øÀü 4Ãş ¿öÇÁ NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Você pode sair do calabouço do Vento eventualmente. Você gostaria de sair agora? ",2,"Sim ",3,"Um desses monstros aqui vai ter. Derrotá-los e obter o item! "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±Ç
			return 1,0,"Vá em frente! "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end