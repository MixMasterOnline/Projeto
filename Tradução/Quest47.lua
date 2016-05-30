function NPC_QUEST_277(cnum,reqNumber) ---- ¿öÇÁ ¸¶¹ý»ç
	local req = reqNumber

	if req == 1 then
	return 2,0,"Lembre-se, o tempo é um fator chave! ",2,"Você conheceu Harly no campo Cores Rolling? "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end	

function NPC_QUEST_278(cnum,reqNumber) ---- ¿öÇÁ ¸¶¹ý»ç
	local req = reqNumber

	if req == 1 then
	return 2,0,"Se você pegar monstros neste calabouço, você pode encontrar o Anel da Chuva. Então traga-o para mim, vou mostrar-lhe como usá-lo. ",2,"Oh! Você tem o Ring of the Rain. O Anel da chuva e do Cubo Caos pode tornar a imagem perdida de Shira. Vamos misturar o Anel da chuva e do Cubo Caos. "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_279(cnum,reqNumber) ---- ¿öÇÁ ¸¶¹ý»ç
	local req = reqNumber

	if req == 1 then
	return 2,0,"Mix ",2,"Você pode obter a imagem de Shira família apenas uma vez. "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_280(cnum,reqNumber) ---- ¿öÇÁ ¸¶¹ý»ç
	local req = reqNumber

	if req == 1 then
	return 2,0,"Você conheceu Harly no campo Cores Rolling? ",2,"Você pode fazer a imagem Shira da família somente se você tiver o Cubo Caos. "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_275(cnum,reqNumber) ---- ¿öÇÁ ¸¶¹ý»ç
	local req = reqNumber

	if req == 1 then
		return 2,0,"Você pode fazer a imagem Shira da família somente se você tiver o Ring of the Rain. ",2,"Seu saco parece que ele está cheio. É melhor você limpar lá dentro! "

	elseif req == 2 then
	
	
		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
			ZoneLayer = GetReviveLayer(ZoneIdx)
			MoveZone(cnum, ZoneIdx,ZoneLayer)

		end
	end
end

function NPC_QUEST_276(cnum,reqNumber) ---- ¿öÇÁ ¸¶¹ý»ç
	local req = reqNumber

	if req == 1 then
		return 2,0,"Lá vamos nós! Este é o retrato da família de Shira. Por favor, mostre-o para Shira em VeHerseba. Ela vai ficar contente e triste ao mesmo tempo. ",2,"Quem é você? Eu só converso com meus amigos de Shira. Onde ela está? Seu idiota, ela está em VeHerseba. "

	elseif req == 2 then
	
	
		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
			ZoneLayer = GetReviveLayer(ZoneIdx)
			MoveZone(cnum, ZoneIdx,ZoneLayer)

		end
	end
end