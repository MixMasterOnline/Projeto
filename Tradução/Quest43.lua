 function NPC_QUEST_236(cnum,reqNumber) --��,���� ������Ÿ NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de VeHerseba",3,"Ru�nas de Rudis",4,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,239,253) --���㰡 �� ���츣����
	
	elseif req == 3 then

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_237(cnum,reqNumber) --��,���� ���츣���� NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de Magirita",3,"Ru�nas de Rudis",4,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ
	
	elseif req == 3 then

		MoveZone(cnum,240,253) --���㰡 �� ���

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_238(cnum,reqNumber) --��,���� ��� NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de VeHerseba",3,"Ru�nas de Magirita",4,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,239,253) -- ���㰡 �� ���츣����
	elseif req == 3 then

		MoveZone(cnum,238,253) --���㰡 �� ������Ÿ

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 




 function NPC_QUEST_239(cnum,reqNumber) --��,�� ������Ÿ NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de VeHerseba",3,"Ru�nas de Rudis",4,"Ru�nas de Purmai",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,242,253) --���㰡 �� ���츣����
	
	elseif req == 3 then

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 4 then

		MoveZone(cnum,118,151) --���㰡 �� ��������

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_240(cnum,reqNumber) --��,�� ���츣���� NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de Magirita",3,"Ru�nas de Rudis",4,"Ru�nas de Purmai",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ
	
	elseif req == 3 then

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 4 then

		MoveZone(cnum,118,151) --���㰡 �� ��������

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_241(cnum,reqNumber) --��,�� ��� NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de VeHerseba",3,"Ru�nas de Magirita",4,"Ru�nas de Purmai",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,242,253) -- ���㰡 �� ���츣����
	elseif req == 3 then

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 4 then

		MoveZone(cnum,118,151) --���㰡 �� ��������

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 



 function NPC_QUEST_273(cnum,reqNumber) --��,�� �������� NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto ap�s a batalha com os monstros. Mas eu terminei a minha miss�o. Onde voc� vai agora?",2,"Ru�nas de VeHerseba",3,"Ru�nas de Magirita",4,"Ru�nas de Rudis",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,242,253) -- ���㰡 �� ���츣����

	elseif req == 3 then

		MoveZone(cnum,241,253) --���㰡 �� ������Ÿ

	elseif req == 4 then

		MoveZone(cnum,243,253) --���㰡 �� ���

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 