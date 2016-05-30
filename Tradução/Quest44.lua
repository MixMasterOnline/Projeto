 function NPC_QUEST_298(cnum,reqNumber) -- ´øÀü 7Ãş NPC
	local req = reqNumber

	if req == 1 then
		
		if GetHeroLv(cnum,1) < 80 then
			return 1,0,"Agora, para o último mas não menos importante, o Crystal de Angel's Tear. Isso é difícil, pois eu tenho que chorar de felicidade. Hmmmm, talvez ir e encontrar Manpeace na planície Owalljae (X: 106 Y: 82). Mas você deve ter cuidado, porque Manpeace é muito confiável. "
		end

		if GetItemCount(cnum,939,0) == 0 then
			return 1,0,"Você recebeu o bastão da esperança? "
		end

		return 2,0,"Sim, aqui está. ",2,"Você não recolher todas as lágrimas de três cristais. Sinto muito. Eu não posso lhe dar qualquer informação. "

	elseif req == 2 then

		AddItemCount(cnum,939,-1) -- ´øÀü 8Ãş ÀÔÀå±Ç
		SetReturnTimer(cnum,3600,87)
		MoveZone(cnum,244,253)
		end
	return 0
end


 function NPC_QUEST_299(cnum,reqNumber) --´øÀü 8Ãş NPC
	local req = reqNumber

	if req == 1 then

		return 2,0,"Não há Cristal de Devil's Tear. ",2,"Não há Cristal de Ouro Tear. "

	elseif req == 2 then

		MoveZone(cnum,60,253)

		end
	return 0

end
