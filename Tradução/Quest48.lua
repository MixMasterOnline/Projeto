function NPC_QUEST_255(cnum, reqNumber)

	req = reqNumber

	if req == 1 then
		return 4,0,"O quê? Shira enviou a mim? Por sua lágrima? Oh, ela deve precisar de minha bengala da Esperança. Sua bengala de um bem especial que você conhece. ",2,"Diga-me mais sobre o Cane. ",3,"Você trouxe a asa? ",4,"É melhor ter o de cana "


	elseif req == 2 then 
		return 1,0,"Tenho a Asa de fada. "


	elseif req == 3 then
		if  GetSwitchCount(cnum, 53) > 0 then
			return 1,0,"Por favor, encontrar Shira agora. "

		elseif        GetItemCount(cnum, 311, 0) < 5 or 
		                GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or 
			GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or 
			GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or 
			GetItemCount(cnum, 318, 0) < 5 or GetItemCount(cnum, 319, 0) < 5 then
			
			return 1,0,"Você pode falar comigo apenas se tiver o Cristal de Ouro Tear. Eu tenho medo Eu preciso ir, porque eu estou congelando aqui ... "

		else  

		                AddItemCount(cnum, 311, -5)
			AddItemCount(cnum, 312, -5)
			AddItemCount(cnum, 313, -5)
			AddItemCount(cnum, 314, -5)
			AddItemCount(cnum, 315, -5)
			AddItemCount(cnum, 316, -5)
			AddItemCount(cnum, 317, -5)
			AddItemCount(cnum, 318, -5)
			AddItemCount(cnum, 319, -5)

			AddSwitchCount(cnum, 53, 1)--½ºÀ§Ä¡°ª ºÎ¿©

			return 1,0,"Dá esperança. Você não sabe de nada? Ela provavelmente quer passar de todas as tristezas. Porque eu sou uma pessoa tão agradável, se você me algo caro, digamos, uma asa de fada, vou dar-lhe o bastão da Esperança. "
		end

		
	elseif req == 4 then
		if GetSwitchCount(cnum, 53) < 1 then
			return 1,0,"Ok, quem tem? "
		else
			MoveZone(cnum, 95 ,102)--5ÃþÀ¸·Î ÀÌµ¿
		end
	end
end		