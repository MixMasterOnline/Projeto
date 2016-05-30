function NPC_QUEST_243(cnum,reqNumber) --- ÇÁ¸®¹Ì¾ö Á¸ ÀÔÀå NPC(¸¶Áö¸®Å¸)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levÃ¡-lo para as seguintes cidades futuro. Onde vocÃª gostaria de ir hoje? ",2,"Baixo nÃ­vel Premium Zone ",3,"MÃ©dio / Alto nÃ­vel Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta Ã© sua primeira vez, a visÃ£o pode ser horrÃ­vel. Por favor, tenha cuidado. ",12,"RuÃ­nas de Magirita ",13,"RuÃ­nas de VeHerseba ",14,"RuÃ­nas de Rudis. "

	elseif req == 3 then

		return 5,0,"VocÃª tem certeza? NÃ£o muitos sobreviveram nessa turnÃª. Os monstros sÃ£o muito fortes aqui. ",22,"RuÃ­nas de Magirita ",23,"RuÃ­nas de VeHerseba ",24,"RuÃ­nas de Rudis. ",25,"RuÃ­nas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,239,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,240,253) --ÆóÇã°¡ µÈ ·çµğ½º

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,241,253) --ÆóÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,242,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµğ½º

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end


		MoveZone(cnum,118,151) --ÆäÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	end
	return 0

end


function NPC_QUEST_244(cnum,reqNumber) --- ÇÁ¸®¹Ì¾ö Á¸ ÀÔÀå NPC(¸ŞÅ©¸®Å¸)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levÃ¡-lo para as seguintes cidades futuro. Onde vocÃª gostaria de ir hoje? ",2,"Baixo nÃ­vel Premium Zone ",3,"MÃ©dio / Alto nÃ­vel Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta Ã© sua primeira vez, a visÃ£o pode ser horrÃ­vel. Por favor, tenha cuidado. ",12,"RuÃ­nas de Magirita ",13,"RuÃ­nas de VeHerseba ",14,"RuÃ­nas de Rudis. "

	elseif req == 3 then

		return 5,0,"VocÃª tem certeza? NÃ£o muitos sobreviveram nessa turnÃª. Os monstros sÃ£o muito fortes aqui. ",22,"RuÃ­nas de Magirita ",23,"RuÃ­nas de VeHerseba ",24,"RuÃ­nas de Rudis. ",25,"RuÃ­nas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,239,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,240,253) --ÆóÇã°¡ µÈ ·çµğ½º

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,241,253) --ÆóÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,242,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµğ½º

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,118,151) --ÆäÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	end
	return 0

end


function NPC_QUEST_245(cnum,reqNumber) --- ÇÁ¸®¹Ì¾ö Á¸ ÀÔÀå NPC(Çì¸£¼¼¹Ù)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levÃ¡-lo para as seguintes cidades futuro. Onde vocÃª gostaria de ir hoje? ",2,"Baixo nÃ­vel Premium Zone ",3,"MÃ©dio / Alto nÃ­vel Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta Ã© sua primeira vez, a visÃ£o pode ser horrÃ­vel. Por favor, tenha cuidado. ",12,"RuÃ­nas de Magirita ",13,"RuÃ­nas de VeHerseba ",14,"RuÃ­nas de Rudis. "

	elseif req == 3 then

		return 5,0,"VocÃª tem certeza? NÃ£o muitos sobreviveram nessa turnÃª. Os monstros sÃ£o muito fortes aqui. ",22,"RuÃ­nas de Magirita ",23,"RuÃ­nas de VeHerseba ",24,"RuÃ­nas de Rudis. ",25,"RuÃ­nas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,239,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,240,253) --ÆóÇã°¡ µÈ ·çµğ½º

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,241,253) --ÆóÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,242,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµğ½º

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,118,151) --ÆäÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	end
	return 0

end


function NPC_QUEST_246(cnum,reqNumber) --- ÇÁ¸®¹Ì¾ö Á¸ ÀÔÀå NPC(º£Çì¸£¼¼¹Ù)
	local req = reqNumber

	if req == 1 then
	
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levÃ¡-lo para as seguintes cidades futuro. Onde vocÃª gostaria de ir hoje? ",2,"Baixo nÃ­vel Premium Zone ",3,"MÃ©dio / Alto nÃ­vel Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta Ã© sua primeira vez, a visÃ£o pode ser horrÃ­vel. Por favor, tenha cuidado. ",12,"RuÃ­nas de Magirita ",13,"RuÃ­nas de VeHerseba ",14,"RuÃ­nas de Rudis. "

	elseif req == 3 then

		return 5,0,"VocÃª tem certeza? NÃ£o muitos sobreviveram nessa turnÃª. Os monstros sÃ£o muito fortes aqui. ",22,"RuÃ­nas de Magirita ",23,"RuÃ­nas de VeHerseba ",24,"RuÃ­nas de Rudis. ",25,"RuÃ­nas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,239,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,240,253) --ÆóÇã°¡ µÈ ·çµğ½º

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,241,253) --ÆóÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,242,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµğ½º

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,118,151) --ÆäÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	end
	return 0

end


function NPC_QUEST_247(cnum,reqNumber) --- ÇÁ¸®¹Ì¾ö Á¸ ÀÔÀå NPC(·çµğ½º)
	local req = reqNumber

	if req == 1 then
	
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levÃ¡-lo para as seguintes cidades futuro. Onde vocÃª gostaria de ir hoje? ",2,"Baixo nÃ­vel Premium Zone ",3,"MÃ©dio / Alto nÃ­vel Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta Ã© sua primeira vez, a visÃ£o pode ser horrÃ­vel. Por favor, tenha cuidado. ",12,"RuÃ­nas de Magirita ",13,"RuÃ­nas de VeHerseba ",14,"RuÃ­nas de Rudis. "

	elseif req == 3 then

		return 5,0,"VocÃª tem certeza? NÃ£o muitos sobreviveram nessa turnÃª. Os monstros sÃ£o muito fortes aqui. ",22,"RuÃ­nas de Magirita ",23,"RuÃ­nas de VeHerseba ",24,"RuÃ­nas de Rudis. ",25,"RuÃ­nas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,239,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,240,253) --ÆóÇã°¡ µÈ ·çµğ½º

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,241,253) --ÆóÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,242,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµğ½º

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --À¯·áÁ¸ ÀÔÀå±Ç
			return 1,0,"Desculpe-me, Premium Zone Ã© uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que vocÃª nÃ£o Ã© um VIP. "
		end

		MoveZone(cnum,118,151) --ÆäÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	end
	return 0

end