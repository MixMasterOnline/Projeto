 function NPC_QUEST_314(cnum,reqNumber) --NPC ��� ������(���̸��� �ʵ�)
	local req = reqNumber

	if req == 1 then
		
		if GetSwitchCount(cnum,20) == 0 then
			return 1,0,"N�o h� espelho da Magia. Por favor cumprir o chefe da aldeia chamada Irena nas ru�nas Cheseva. "
		end

		return 2,0,"Eu estive esperando por voc�. Eu sei que voc� n�o tem tempo. Golden garrafa de vidro � uma garrafa rara que foi perdido na floresta h� muito tempo. Voc� pode encontr�-lo se voc� voltar ao passado na floresta e pegar Torra. Vou gui�-lo para o local. ",2,"Por favor, me levar l�!. "

	
	elseif req == 2 then

		if GetItemCount(cnum,375,0) == 0 then --������ �ſ�
			return 1,0,"Magic Mirror � necess�rio para ir para a floresta do passado. Por favor, se reunir com chefe da aldeia chamada Irena nas ru�nas Cheseva e conversar com ele. "

		end

		MoveZone(cnum,246,101) --������ ��(246)

		end

	return 0
end


 function NPC_QUEST_315(cnum,reqNumber) -- NPC ������ ������(������ ��)
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 21) < 1 then
			if GetSwitchCount(cnum, 1012) < 1 then
				return 2,0,"Uma besta neste lugar, pode ter a garrafa de vidro de ouro. ",12,"Eu vejo. "
			else
				return 2,0,"Por que voc� n�o come�ar a encontrar a garrafa de vidro de ouro. Voc� n�o pode encontr�-lo se voc� que est� aqui. ",3,"Eu tenho a garrafa de vidro de ouro. "
			end
		else
			return 3,0,"OK, agora voc� tem os cristais e as garrafas para preservar o seu poder. Mas agora voc� precisa de outra �rvore para a base da �rvore da mem�ria para propaga��es. ",4,"A �rvore? ",5,"Volte para VeHerseba "
		end

	elseif req == 12 then
		StartQuest(cnum, 12)
		AddSwitchCount(cnum, 1012, 1)
		return 1,0,"Vou dar a voc� algo bom, se voc� me trazer uma garrafa de vidro de ouro. "





	elseif req == 2 then

		MoveZone(cnum,67,253)

	elseif req == 3 then

		if GetItemCount(cnum,378,0) == 0 then -- Ȳ�� ������(378)
			return 1,0,"N�o consigo encontrar a garrafa de vidro de ouro. Por favor, v� encontr�-lo. "
		end

		if GetSwitchCount(cnum,21) > 0 then
			return 1,0,"Boa sorte para voc� com a economia da �rvore. Voc� est� fazendo uma grande coisa. "
		end

		AddHeroFreePoint(cnum,5) -- ��������Ʈ 5�� �߰�
		AddSwitchCount(cnum,21,1) -- Ȳ�� �������� switch ��
		EndQuest(cnum, 12)

		return 1,0,"Wow bem feito! Aqui est� um pr�mio, 5 pontos de status livre. " 

	elseif req == 4 then

		return 1,0,"Conhe�a Terry na encruzilhada no deserto Fork Road (X: 120Y: 110). Ele � dono de uma �rvore especial que podemos base�-lo com os cristais para us�-lo na �rvore de propaga��o. "
	
	elseif req == 5 then	
		MoveZone(cnum, 60 ,254)
		
	end
	return 0
end

		
	


	

	 