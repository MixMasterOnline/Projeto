function NPC_QUEST_277(cnum,reqNumber) ---- ���� ������
	local req = reqNumber

	if req == 1 then
	return 2,0,"Lembre-se, o tempo � um fator chave! ",2,"Voc� conheceu Harly no campo Cores Rolling? "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end	

function NPC_QUEST_278(cnum,reqNumber) ---- ���� ������
	local req = reqNumber

	if req == 1 then
	return 2,0,"Se voc� pegar monstros neste calabou�o, voc� pode encontrar o Anel da Chuva. Ent�o traga-o para mim, vou mostrar-lhe como us�-lo. ",2,"Oh! Voc� tem o Ring of the Rain. O Anel da chuva e do Cubo Caos pode tornar a imagem perdida de Shira. Vamos misturar o Anel da chuva e do Cubo Caos. "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_279(cnum,reqNumber) ---- ���� ������
	local req = reqNumber

	if req == 1 then
	return 2,0,"Mix ",2,"Voc� pode obter a imagem de Shira fam�lia apenas uma vez. "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_280(cnum,reqNumber) ---- ���� ������
	local req = reqNumber

	if req == 1 then
	return 2,0,"Voc� conheceu Harly no campo Cores Rolling? ",2,"Voc� pode fazer a imagem Shira da fam�lia somente se voc� tiver o Cubo Caos. "

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_275(cnum,reqNumber) ---- ���� ������
	local req = reqNumber

	if req == 1 then
		return 2,0,"Voc� pode fazer a imagem Shira da fam�lia somente se voc� tiver o Ring of the Rain. ",2,"Seu saco parece que ele est� cheio. � melhor voc� limpar l� dentro! "

	elseif req == 2 then
	
	
		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
			ZoneLayer = GetReviveLayer(ZoneIdx)
			MoveZone(cnum, ZoneIdx,ZoneLayer)

		end
	end
end

function NPC_QUEST_276(cnum,reqNumber) ---- ���� ������
	local req = reqNumber

	if req == 1 then
		return 2,0,"L� vamos n�s! Este � o retrato da fam�lia de Shira. Por favor, mostre-o para Shira em VeHerseba. Ela vai ficar contente e triste ao mesmo tempo. ",2,"Quem � voc�? Eu s� converso com meus amigos de Shira. Onde ela est�? Seu idiota, ela est� em VeHerseba. "

	elseif req == 2 then
	
	
		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
			ZoneLayer = GetReviveLayer(ZoneIdx)
			MoveZone(cnum, ZoneIdx,ZoneLayer)

		end
	end
end