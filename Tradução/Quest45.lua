function NPC_QUEST_216(cnum,reqNumber) -- ·ç³ªÆ½ÇÊµå ÀÌµ¿ NPC- ·¹ÀÌºê
	local req = reqNumber

	if req == 1 then
		return 4,0,"Não há Cristal de Angel's Tear. ",2,"Você deve pegar uma garrafa de vidro de ouro para colocar os cristais em, caso contrário, eles vão perder poder mágico. Golden garrafa de vidro é um frasco precioso e que tem sido escondido. Vá ao encontro da Helena, que é chefe da aldeia das ruínas Cheseva (X: 150 Y: 95). Ele vai lhe dizer como encontrá-lo. ",3,"*** Antes de você seguir em frente com o World Quest, você deve falar com Holden em Herseba de entrada (X: 195.Y: 76) ",4,"Hmmmm, eu acho que você tem que me fazer chorar primeiro. Minhas emoções foram destruídas desde monstro atacou a minha família. Eu tenho uma idéia, no ataque de um monstro e eu também perdi o meu precioso anel também. Isso pode ser capaz de me fazer chorar. Você pode por favor encontrar o meu anel. O monstro parecia uma tartaruga mal. " 

	elseif req == 2 then

		if  GetItemCount(cnum,1050,0) >= 1 then -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±ÇÀ» ÀÌ¹Ì °¡Áö°í ÀÖ´Ù¸é ´õ ÀÌ»ó ¸ø¹Ş°Ô ÇÑ´Ù
			return 1,0,"Eu vou buscá-la de volta para você. "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Foi pensando em anos, mas o ataque ainda me faz chorar. "
		end
					
		if GetItemCount(cnum,68,0) > 0 then -- ÇÁ¸®¹Ì¾öÁ¸ ÀÔÀå±ÇÀÌ ÀÖ´Ù¸é ³²Àº ½Ã°£À» ¾Ë¾Æ¿Â´Ù
			remain_time = GetItemPeriod(cnum,68)

		elseif GetItemCount(cnum,69,0) > 0 then
			remain_time = GetItemPeriod(cnum,69)

		elseif GetItemCount(cnum,95,0) > 0 then
			remain_time = GetItemPeriod(cnum,95)

		elseif GetItemCount(cnum,96,0) > 0 then
			remain_time = GetItemPeriod(cnum,96)

		elseif GetItemCount(cnum,940,0) > 0 then
			remain_time = GetItemPeriod(cnum,940)

		elseif GetItemCount(cnum,1316,0) > 0 then
			remain_time = GetItemPeriod(cnum,1316)

		elseif GetItemCount(cnum,3711,0) > 0 then
			remain_time = GetItemPeriod(cnum,3711)
			
		elseif GetItemCount(cnum,8178,0) > 0 then
			remain_time = GetItemPeriod(cnum,8178)
			
		elseif GetItemCount(cnum,8226,0) > 0 then
			remain_time = GetItemPeriod(cnum,8226)

		elseif GetItemCount(cnum,8499,0) > 0 then
			remain_time = GetItemPeriod(cnum,8499)
			
		else
			return 1,0,"Por que você não encontrar Holden na entrada Herseba. "
		end
			
		if remain_time <= 0 then --ÇÁ¸®¹Ì¾ö ÀÔÀå±Ç ½Ã°£ÀÌ ¸¸·áµÇ¾úÀ¸¸é ·ç´ÏÆ½ ¿ùµå ÀÔÀå±Ç ¾ÈÁØ´Ù
			return 1,0,"Um cristal de Tear Diabo é suficiente para mim. Mas, eu estou com medo que eu não tenho nada para lhe dar mais. "
		end
			
		AddItemOnTime(cnum,1050,remain_time)-- ·ç³ªÆ½ ¿ùµå ÀÔÀå±ÇÀ» ÁÖ¸é¼­ ÇÁ¸®¹Ì¾öÁ¸ ÀÔÀå±ÇÀÇ ³²Àº ½Ã°£À» ³Ö´Â´Ù. 
		return 1,0,"Por favor, vá e recolher o meu anel? "
						

	elseif req == 3 then
		return 2,0,"Você não tem a escova de Ouro, por que você não tem? ",13,"voz chorosa de Elly é muito famosa em todo o mundo, não é? Umm ... By the way, se você jogar fora é escultura? "

	elseif req == 13 then
		if GetItemCount(cnum,1046,0) < 10 then
			return 1,0,"Bem feito!Ah, as memórias. ~ Shira gritos e lágrimas crystalises ~ Muito obrigado. Por favor aceite este Cristal de Tear Diabo. Eu também lhe dará 5000GP como um presente também. "
		end

		if GetItemCount(cnum,1050,0) ==1 then
			return 1,0,"Eu não sei your're aqui novamente, mas eu acho que você tem algo a ver direito. Por que você não ir agora? "
		end
		
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Eu não sei your're aqui novamente, mas eu acho que você tem algo a ver direito. Por que você não ir agora? "
		end

		AddItemCount(cnum,1046,-10)
		AddItemCount(cnum,1050,1) -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±Ç
		return 1,0,"Como você encontrou uma foto minha família? Ele foi queimado pelos monstros, eu não posso acreditar. Ah, ele me faz chorar. Mas feliz também. Por favor, tome isso, é de cristal de Ouro Tear. Obrigado, sua buthere não custa algum dinheiro. "
		

	elseif req == 4 then

		if GetItemCount(cnum,1050,0) == 0 then
			return 1,0,"Você pode ter apenas um cristal de Angel's Tear. Por favor, encontrar um chefe de aldeia chamado Irena nas ruínas Cheseva. "
		end

		MoveZone(cnum,72,254)
		end
	return 0
end

function NPC_QUEST_321(cnum,reqNumber) -- ·çµğ½º·Î ÀÌµ¿ NPC-ÇìÀÏ·±
	local req = reqNumber

	if req == 1 then
		return 2,0,"Você pode obter um cristal de Angel's Tear depois de obter o Crystal of Golden Tear. ",2,"Se você encontrar Manpeace que está na pradaria Owalljae, você pode obter um bastão do desejo. "

	elseif req == 2 then

		MoveZone(cnum,67,254)
		end
	return 0
end

function NPC_QUEST_258(cnum,reqNumber) ---·ç³ªÆ½ ´øÀü ÀÌµ¿ NPC
	local req = reqNumber
	
	if req == 1 then
		return 4,0,"Ah, não posso estar chorando para sempre. Minha família está no passado. Muito obrigado. Eu te darei 12000GP como um presente. Você finalmente recolhidos todos os 3 cristais de lágrima. ",2,"Oh eu posso sentir você precisa de algo. Hmm. .. Você deseja obter o Crystal Shira de Tear de Ouro? Há apenas uma maneira de tocar o coração de Shira. Trata-se de encontrar o seu retrato de família que perdeu. ",3,"A explicação sobre a foto ",4,"Você descobriu as luvas da Elf? "

	elseif req == 2 then

		if  GetItemCount(cnum,1051,0) >= 1 then -- ·ç³ªÆ½ ´øÀü ÀÔÀå±ÇÀ» ÀÌ¹Ì °¡Áö°í ÀÖ´Ù¸é ´õ ÀÌ»ó ¸ø¹Ş°Ô ÇÑ´Ù
			return 1,0,"Sim "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Agora, encontrar Gorden na zona sul de VeHerseba (X: 199 Y: 122). Gorden é o guardião da Masmorra do Vento, é só começar o Anel de chuva a partir daí. Boa sorte, o Dungeon é muito perigoso. "
		end

		if GetItemCount(cnum,68,0) > 0 then -- ÇÁ¸®¹Ì¾öÁ¸ ÀÔÀå±ÇÀÌ ÀÖ´Ù¸é ³²Àº ½Ã°£À» ¾Ë¾Æ¿Â´Ù
			remain_time = GetItemPeriod(cnum,68)

		elseif GetItemCount(cnum,69,0) > 0 then
			remain_time = GetItemPeriod(cnum,69)

		elseif GetItemCount(cnum,95,0) > 0 then
			remain_time = GetItemPeriod(cnum,95)

		elseif GetItemCount(cnum,96,0) > 0 then
			remain_time = GetItemPeriod(cnum,96)

		elseif GetItemCount(cnum,940,0) > 0 then
			remain_time = GetItemPeriod(cnum,940)

		elseif GetItemCount(cnum,1316,0) > 0 then
			remain_time = GetItemPeriod(cnum,1316)

		elseif GetItemCount(cnum,3711,0) > 0 then
			remain_time = GetItemPeriod(cnum,3711)
			
		elseif GetItemCount(cnum,8178,0) > 0 then
			remain_time = GetItemPeriod(cnum,8178)
			
		elseif GetItemCount(cnum,8226,0) > 0 then
			remain_time = GetItemPeriod(cnum,8226)

		elseif GetItemCount(cnum,8499,0) > 0 then
			remain_time = GetItemPeriod(cnum,8499)
			
		else
			return 1,0,"Por que você não encontrar Shira em VeHerseva (X: 75, Y: 58) em primeiro lugar. "
		end
			
		if remain_time <= 0 then --ÇÁ¸®¹Ì¾ö ÀÔÀå±Ç ½Ã°£ÀÌ ¸¸·áµÇ¾úÀ¸¸é ·ç´ÏÆ½ ´øÀü ÀÔÀå±Ç ¾ÈÁØ´Ù
			return 1,0,"Caos Cube é um misterioso tesouro. Com o uso de anel de chuva, pode recriar objetos perdidos. Eu tenho o Cubo Chaos, mas você precisa Luvas da Elf para lidar com seu poder mágico "
		end
			
		AddItemOnTime(cnum,1051,remain_time)-- ·ç³ªÆ½ ´øÀü ÀÔÀå±ÇÀ» ÁÖ¸é¼­ ÇÁ¸®¹Ì¾öÁ¸ ÀÔÀå±ÇÀÇ ³²Àº ½Ã°£À» ³Ö´Â´Ù. 
		return 1,0,"Eu vou encontrar as luvas da Elf. "

	elseif req == 3 then
		return 2,0,"Você pode conseguir as luvas do elfo se você derrotar um monstro relativamente sábia na região de campo Rolling Cores. ",13,"Eu não tenho outra Cube Caos. "
	
	elseif req == 13 then

		if GetItemCount(cnum,1049,0) < 10 then
			return 1,0,"*** Antes de você seguir em frente com o World Quest, você deve falar com Shira em VeHerseba (X: 75.Y: 60) "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Não minta para um psíquico! ~ Zap! ~ "
		end

		if GetItemCount(cnum,1051,0) ==1 then
			return 1,0,"Você me trouxe as luvas da Elf, agora você pode prender Chaos Cube. "
		end
	
		AddItemCount(cnum,1049,-10)
		AddItemCount(cnum,1051,1) --·ç³ªÆ½ ´øÀü ÀÔÀå±Ç
		return 1,0,"Oh, você tem um cubo Caos e as luvas da Elf. Você deve estar aqui por uma razão. Ao usar o Chaos Cube com o Anel de chuva, você pode reviver algo que foi perdido no passado. Mas você precisa ser forte o suficiente para atravessar o Dungeon do Vento "
		
	elseif req == 4 then

		if GetItemCount(cnum,1051,0) == 0 then -- ·ç³ªÆ½ ´øÀü 1Ãş ÀÔÀå±Ç
			return 1,0,"Conte-me sobre o Dungeon. "
		end
	
		MoveZone(cnum,91,254)
		end
	return 0
end

function NPC_QUEST_249(cnum,reqNumber) ---·ç³ªÆ½ ´øÀü 1Ãş NPC- ¹İµµ·»
	local req = reqNumber

	if req == 1 then
		return 3,0,"Você trouxe os sapatos do vento? ",2,"Sim, eu tenho isso aqui comigo. ",3,"Primeiro, você precisa obter o Cubo Caos. Em seguida, elegíveis para o Dungeon do Vento. "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- ·ç³ªÆ½ ¿ùµå ÀÔÀå±Ç
			return 1,0,"Você deve ter um corpo resistente para entrar na barreira de Dungoen do Vento. Se você não estiver forte o suficiente, o vento Dungeon vai lhe empurrar para fora para um lugar desconhecido. "
		end

		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end