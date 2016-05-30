function NPC_QUEST_300(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Oi l�. Este � um lugar muito perigoso, Voc� ainda quer ir para l�?",2,"Sim, eu sei"

	elseif req == 2 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 4363, 0) < 1  and GetItemCount(cnum, 8499, 0) < 1 then
			return 2,0,"Para chegar l�, voc� precisa de um ingresso Premium Zone ou sinal de amizade.",12,"Sinal de amizade?"


		else
		EndQuest(cnum, 165)
		EndQuest(cnum, 167)
			return 2,0,"� perigoso, tenha cuidado.",22,"Mova agora"


		end

	elseif req == 12 then
		return 2,0,"Voc� pode obter a prova da promessa de Wolf em Purmai.",32,"Como posso obt�-lo?"



	elseif req == 22 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 4363, 0) < 1  and GetItemCount(cnum, 8499, 0) < 1 then
			return 1,0,"Para chegar l�, voc� precisa de um ingresso Premium Zone ou sinal de amizade."
		end

		MoveZone(cnum, 116, 254)


	elseif req == 32 then
		StartQuest(cnum, 165)
		return 1,0,"Voc� pode perguntar ao lobo sobre isso, ele ir� dizer-lhe como"


	else
		return 0

	end
end


function NPC_QUEST_271(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 215 ) < 1 then
			return 2,0,"H�? O que voc� quer? Eu estou ocupado no momento, n�o h� tempo para eu brincar com voc�, garoto sair da minha vista",2,"Voc� sabe sobre as provas da Promessa?"
		elseif GetSwitchCount(cnum, 215 ) == 2 then
			return 2,0,"Voc� veio aqui para obter o T�tulo de Promessa de novo?",3,"Sim"
		else
			return 4,0,"Voc� encontrou todas as pe�as?",32,"Sim, aqui est�.",33,"Ainda n�o",34,"informa��es Quest"
		end


	elseif req == 2 then
		return 2,0,"Como voc� sabe sobre isso? Evid�ncias da Promessa � um presente do meu amigo Karnick para a nossa amizade. Eu n�o posso dar a voc�, mas se voc� realmente precisa dele, voc� tem que me fazer um favor",12,"O que � isso?"

	elseif req == 3 then
		if GetItemCount(cnum, 4363, 0) < 1 then
			return 2,0,"Vou dar a prova da promessa a voc� se voc� coletar 10 pe�as de m�sticos e 20 pe�as desconhecidas. Como � isso? Voc� vai tentar?",22,"Claro que sim."
		else
			return 1,0,"Eu sei que voc� n�o tem a prova da promessa? Estou esperando!"
		end


	elseif req == 12 then
		return 2,0,"ca�ar monstros no mar Branco, Floresta e Iskai Ruins of Silence. Traga-me os itens que caem eles. Os nomes dos itens s�o parte Mystic, Mystery Piece. Traga-me 10 pe�as e 20 Mystic pe�a Mist�rio",22,"Ok, vou fazer isso."


	elseif req == 22 then
		EndQuest(cnum, 167)
		SetSwitchCount(cnum, 215, 1)
		StartQuest(cnum, 166)	



	elseif req == 32 then
		if GetItemCount(cnum, 4361, 0) < 10 and GetItemCount(cnum, 4362, 0) < 20 then
			return 1,0,"Voc� n�o encontr�-los todos, no entanto, voc� pode fazer melhor que isso."


		else
			EndQuest(cnum, 166)
			StartQuest(cnum, 167)
			SetSwitchCount(cnum, 215, 2)
			AddItemCount(cnum, 4361, -10)
			AddItemCount(cnum, 4362, -20)
			AddItemCount(cnum, 4363, 1)
			return 1,0,"Hmmm, voc� tem encontrado todos os itens. OK, aqui est� a prova da Promessa. � s� dura um dia e desaparecem. Volte para mim se precisar de mais"

		end

	elseif req == 34 then
		return 1,0,"Voc� pode obter as pe�as de m�sticos e pe�as Mist�rio de ca�ar monstros no mar Branco, Floresta e Iskai Ruins of Silence. Voc� deve encontrar 10 Mystic Pieces e 20 Mist�rio Pieces."



	else
		return 0

	end
end
