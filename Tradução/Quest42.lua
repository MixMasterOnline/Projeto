function NPC_QUEST_243(cnum,reqNumber) --- �����̾� �� ���� NPC(������Ÿ)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levá-lo para as seguintes cidades futuro. Onde você gostaria de ir hoje? ",2,"Baixo nível Premium Zone ",3,"Médio / Alto nível Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",12,"Ruínas de Magirita ",13,"Ruínas de VeHerseba ",14,"Ruínas de Rudis. "

	elseif req == 3 then

		return 5,0,"Você tem certeza? Não muitos sobreviveram nessa turnê. Os monstros são muito fortes aqui. ",22,"Ruínas de Magirita ",23,"Ruínas de VeHerseba ",24,"Ruínas de Rudis. ",25,"Ruínas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,239,253) --���㰡 �� ���츣����

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,242,253) --���㰡 �� ���츣����

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end


		MoveZone(cnum,118,151) --���㰡 �� ��������

	end
	return 0

end


function NPC_QUEST_244(cnum,reqNumber) --- �����̾� �� ���� NPC(��ũ��Ÿ)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levá-lo para as seguintes cidades futuro. Onde você gostaria de ir hoje? ",2,"Baixo nível Premium Zone ",3,"Médio / Alto nível Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",12,"Ruínas de Magirita ",13,"Ruínas de VeHerseba ",14,"Ruínas de Rudis. "

	elseif req == 3 then

		return 5,0,"Você tem certeza? Não muitos sobreviveram nessa turnê. Os monstros são muito fortes aqui. ",22,"Ruínas de Magirita ",23,"Ruínas de VeHerseba ",24,"Ruínas de Rudis. ",25,"Ruínas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,239,253) --���㰡 �� ���츣����

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,242,253) --���㰡 �� ���츣����

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,118,151) --���㰡 �� ��������

	end
	return 0

end


function NPC_QUEST_245(cnum,reqNumber) --- �����̾� �� ���� NPC(�츣����)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levá-lo para as seguintes cidades futuro. Onde você gostaria de ir hoje? ",2,"Baixo nível Premium Zone ",3,"Médio / Alto nível Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",12,"Ruínas de Magirita ",13,"Ruínas de VeHerseba ",14,"Ruínas de Rudis. "

	elseif req == 3 then

		return 5,0,"Você tem certeza? Não muitos sobreviveram nessa turnê. Os monstros são muito fortes aqui. ",22,"Ruínas de Magirita ",23,"Ruínas de VeHerseba ",24,"Ruínas de Rudis. ",25,"Ruínas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,239,253) --���㰡 �� ���츣����

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,242,253) --���㰡 �� ���츣����

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,118,151) --���㰡 �� ��������

	end
	return 0

end


function NPC_QUEST_246(cnum,reqNumber) --- �����̾� �� ���� NPC(���츣����)
	local req = reqNumber

	if req == 1 then
	
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levá-lo para as seguintes cidades futuro. Onde você gostaria de ir hoje? ",2,"Baixo nível Premium Zone ",3,"Médio / Alto nível Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",12,"Ruínas de Magirita ",13,"Ruínas de VeHerseba ",14,"Ruínas de Rudis. "

	elseif req == 3 then

		return 5,0,"Você tem certeza? Não muitos sobreviveram nessa turnê. Os monstros são muito fortes aqui. ",22,"Ruínas de Magirita ",23,"Ruínas de VeHerseba ",24,"Ruínas de Rudis. ",25,"Ruínas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,239,253) --���㰡 �� ���츣����

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,242,253) --���㰡 �� ���츣����

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,118,151) --���㰡 �� ��������

	end
	return 0

end


function NPC_QUEST_247(cnum,reqNumber) --- �����̾� �� ���� NPC(���)
	local req = reqNumber

	if req == 1 then
	
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		return 3,0,"Bom dia jovem mestre. Agora, eu posso levá-lo para as seguintes cidades futuro. Onde você gostaria de ir hoje? ",2,"Baixo nível Premium Zone ",3,"Médio / Alto nível Premium Zone "

	elseif req == 2 then

		return 4,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",12,"Ruínas de Magirita ",13,"Ruínas de VeHerseba ",14,"Ruínas de Rudis. "

	elseif req == 3 then

		return 5,0,"Você tem certeza? Não muitos sobreviveram nessa turnê. Os monstros são muito fortes aqui. ",22,"Ruínas de Magirita ",23,"Ruínas de VeHerseba ",24,"Ruínas de Rudis. ",25,"Ruínas de Purmai "

	elseif req == 12 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ

	elseif req == 13 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,239,253) --���㰡 �� ���츣����

	elseif req == 14 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 22 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 23 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,242,253) --���㰡 �� ���츣����

	elseif req == 24 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 25 then
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --������ �����
			return 1,0,"Desculpe-me, Premium Zone é uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que você não é um VIP. "
		end

		MoveZone(cnum,118,151) --���㰡 �� ��������

	end
	return 0

end