function NPC_QUEST_266(cnum,reqNumber) -- Ãµ»óÀÇ ¼Ò¸®(·çµð½º ³²ºÎÀÇ ¾Ö³Ä)

local req = reqNumber



	if req == 1 then
		if GetSwitchCount(cnum ,1003) < 1 then
			return 2,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",2,"Ruínas de Magirita "
		else
			if GetSwitchCount(cnum, 12) < 1 then
				return 2,0,"Ruínas de VeHerseba ",13,"Ruínas de Rudis. "
			else
				return 1,0,"Você tem certeza? Não muitos sobreviveram nessa turnê. Os monstros são muito fortes aqui. "				
			end
 		end

	elseif req == 2 then
		return 2,0,"Ruínas de Magirita " ,12,"Ruínas de VeHerseba "


	elseif req == 12 then
		StartQuest(cnum, 4)
		AddSwitchCount(cnum, 1003, 1)
		return 1,0,"Ruínas de Rudis. "

	elseif req == 13 then

		if GetSwitchCount(cnum,11) == 0 then
			return 1,0,"Ruínas de Purmai "
		end

		if GetSwitchCount(cnum,12) > 1 then
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		if CheckItemPocket(cnum,361,1) < 0 then
			return 1,0,"Bom dia jovem mestre. Agora, eu posso levá-lo para as seguintes cidades futuro. Onde você gostaria de ir hoje? "
		end
		

		if GetItemCount(cnum,362,0) < 1 then
			return 1,0,"Baixo nível Premium Zone "
		end

		AddItemCount(cnum,362,-1) -- ÇÏ¸ð´ÏÄ« »èÁ¦	
		AddItemCount(cnum,361, 1) -- ±Ý ºø È¹µæ
		AddSwitchCount(cnum,12,1) -- Switch#10 ±Ý ºø
		AddMoney(cnum, 3000) -- 3000GP Ãß°¡
		EndQuest(cnum, 4)
		return 1,0,"Médio / Alto nível Premium Zone "

	end	
	return 0
 end
