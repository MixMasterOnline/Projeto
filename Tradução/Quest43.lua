 function NPC_QUEST_236(cnum,reqNumber) --Áß,Àú·¾ ¸¶Áö¸®Å¸ NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de VeHerseba",3,"Ruínas de Rudis",4,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,239,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù
	
	elseif req == 3 then

		MoveZone(cnum,240,253) --ÆóÇã°¡ µÈ ·çµð½º

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_237(cnum,reqNumber) --Áß,Àú·¾ º£Çì¸£¼¼¹Ù NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de Magirita",3,"Ruínas de Rudis",4,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸
	
	elseif req == 3 then

		MoveZone(cnum,240,253) --ÆäÇã°¡ µÈ ·çµð½º

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_238(cnum,reqNumber) --Áß,Àú·¾ ·çµð½º NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de VeHerseba",3,"Ruínas de Magirita",4,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,239,253) -- ÆäÇã°¡ µÈ º£Çì¸£¼¼¹Ù
	elseif req == 3 then

		MoveZone(cnum,238,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 




 function NPC_QUEST_239(cnum,reqNumber) --Áß,°í·¾ ¸¶Áö¸®Å¸ NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de VeHerseba",3,"Ruínas de Rudis",4,"Ruínas de Purmai",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,242,253) --ÆóÇã°¡ µÈ º£Çì¸£¼¼¹Ù
	
	elseif req == 3 then

		MoveZone(cnum,243,253) --ÆóÇã°¡ µÈ ·çµð½º

	elseif req == 4 then

		MoveZone(cnum,118,151) --ÆóÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_240(cnum,reqNumber) --Áß,°í·¾ º£Çì¸£¼¼¹Ù NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de Magirita",3,"Ruínas de Rudis",4,"Ruínas de Purmai",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,241,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸
	
	elseif req == 3 then

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµð½º

	elseif req == 4 then

		MoveZone(cnum,118,151) --ÆóÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_241(cnum,reqNumber) --Áß,°í·¾ ·çµð½º NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de VeHerseba",3,"Ruínas de Magirita",4,"Ruínas de Purmai",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,242,253) -- ÆäÇã°¡ µÈ º£Çì¸£¼¼¹Ù
	elseif req == 3 then

		MoveZone(cnum,241,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 4 then

		MoveZone(cnum,118,151) --ÆóÇã°¡ µÈ ÇÁ¸£¸¶ÀÌ

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 



 function NPC_QUEST_273(cnum,reqNumber) --Áß,°í·¾ ÇÁ¸£¸¶ÀÌ NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Estou exausto após a batalha com os monstros. Mas eu terminei a minha missão. Onde você vai agora?",2,"Ruínas de VeHerseba",3,"Ruínas de Magirita",4,"Ruínas de Rudis",5,"Mover-se para cidade Magirita segura."

	elseif req == 2 then

		MoveZone(cnum,242,253) -- ÆäÇã°¡ µÈ º£Çì¸£¼¼¹Ù

	elseif req == 3 then

		MoveZone(cnum,241,253) --ÆäÇã°¡ µÈ ¸¶Áö¸®Å¸

	elseif req == 4 then

		MoveZone(cnum,243,253) --ÆäÇã°¡ µÈ ·çµð½º

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 