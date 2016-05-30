 function NPC_QUEST_314(cnum,reqNumber) --NPC °æºñº´ ÇÁ·¹µñ(Å×ÀÌ¸ÓÁî ÇÊµå)
	local req = reqNumber

	if req == 1 then
		
		if GetSwitchCount(cnum,20) == 0 then
			return 1,0,"Não há espelho da Magia. Por favor cumprir o chefe da aldeia chamada Irena nas ruínas Cheseva. "
		end

		return 2,0,"Eu estive esperando por você. Eu sei que você não tem tempo. Golden garrafa de vidro é uma garrafa rara que foi perdido na floresta há muito tempo. Você pode encontrá-lo se você voltar ao passado na floresta e pegar Torra. Vou guiá-lo para o local. ",2,"Por favor, me levar lá!. "

	
	elseif req == 2 then

		if GetItemCount(cnum,375,0) == 0 then --¸¶¹ýÀÇ °Å¿ï
			return 1,0,"Magic Mirror é necessário para ir para a floresta do passado. Por favor, se reunir com chefe da aldeia chamada Irena nas ruínas Cheseva e conversar com ele. "

		end

		MoveZone(cnum,246,101) --°ú°ÅÀÇ ½£(246)

		end

	return 0
end


 function NPC_QUEST_315(cnum,reqNumber) -- NPC ¿¹¾ðÀÚ ÇÁ·¹µñ(°ú°ÅÀÇ ½£)
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 21) < 1 then
			if GetSwitchCount(cnum, 1012) < 1 then
				return 2,0,"Uma besta neste lugar, pode ter a garrafa de vidro de ouro. ",12,"Eu vejo. "
			else
				return 2,0,"Por que você não começar a encontrar a garrafa de vidro de ouro. Você não pode encontrá-lo se você que está aqui. ",3,"Eu tenho a garrafa de vidro de ouro. "
			end
		else
			return 3,0,"OK, agora você tem os cristais e as garrafas para preservar o seu poder. Mas agora você precisa de outra árvore para a base da Árvore da memória para propagações. ",4,"A árvore? ",5,"Volte para VeHerseba "
		end

	elseif req == 12 then
		StartQuest(cnum, 12)
		AddSwitchCount(cnum, 1012, 1)
		return 1,0,"Vou dar a você algo bom, se você me trazer uma garrafa de vidro de ouro. "





	elseif req == 2 then

		MoveZone(cnum,67,253)

	elseif req == 3 then

		if GetItemCount(cnum,378,0) == 0 then -- È²±Ý À¯¸®º´(378)
			return 1,0,"Não consigo encontrar a garrafa de vidro de ouro. Por favor, vá encontrá-lo. "
		end

		if GetSwitchCount(cnum,21) > 0 then
			return 1,0,"Boa sorte para você com a economia da árvore. Você está fazendo uma grande coisa. "
		end

		AddHeroFreePoint(cnum,5) -- ÇÁ¸®Æ÷ÀÎÆ® 5Á¡ Ãß°¡
		AddSwitchCount(cnum,21,1) -- È²±Ý À¯¸®º´ÀÇ switch °ª
		EndQuest(cnum, 12)

		return 1,0,"Wow bem feito! Aqui está um prêmio, 5 pontos de status livre. " 

	elseif req == 4 then

		return 1,0,"Conheça Terry na encruzilhada no deserto Fork Road (X: 120Y: 110). Ele é dono de uma árvore especial que podemos baseá-lo com os cristais para usá-lo na árvore de propagação. "
	
	elseif req == 5 then	
		MoveZone(cnum, 60 ,254)
		
	end
	return 0
end

		
	


	

	 