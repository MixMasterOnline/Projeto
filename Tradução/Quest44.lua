 function NPC_QUEST_298(cnum,reqNumber) -- ���� 7�� NPC
	local req = reqNumber

	if req == 1 then
		
		if GetHeroLv(cnum,1) < 80 then
			return 1,0,"Agora, para o �ltimo mas n�o menos importante, o Crystal de Angel's Tear. Isso � dif�cil, pois eu tenho que chorar de felicidade. Hmmmm, talvez ir e encontrar Manpeace na plan�cie Owalljae (X: 106 Y: 82). Mas voc� deve ter cuidado, porque Manpeace � muito confi�vel. "
		end

		if GetItemCount(cnum,939,0) == 0 then
			return 1,0,"Voc� recebeu o bast�o da esperan�a? "
		end

		return 2,0,"Sim, aqui est�. ",2,"Voc� n�o recolher todas as l�grimas de tr�s cristais. Sinto muito. Eu n�o posso lhe dar qualquer informa��o. "

	elseif req == 2 then

		AddItemCount(cnum,939,-1) -- ���� 8�� �����
		SetReturnTimer(cnum,3600,87)
		MoveZone(cnum,244,253)
		end
	return 0
end


 function NPC_QUEST_299(cnum,reqNumber) --���� 8�� NPC
	local req = reqNumber

	if req == 1 then

		return 2,0,"N�o h� Cristal de Devil's Tear. ",2,"N�o h� Cristal de Ouro Tear. "

	elseif req == 2 then

		MoveZone(cnum,60,253)

		end
	return 0

end
