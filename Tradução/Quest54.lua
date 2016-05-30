function NPC_QUEST_300(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Oi lá. Este é um lugar muito perigoso, Você ainda quer ir para lá?",2,"Sim, eu sei"

	elseif req == 2 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 4363, 0) < 1  and GetItemCount(cnum, 8499, 0) < 1 then
			return 2,0,"Para chegar lá, você precisa de um ingresso Premium Zone ou sinal de amizade.",12,"Sinal de amizade?"


		else
		EndQuest(cnum, 165)
		EndQuest(cnum, 167)
			return 2,0,"É perigoso, tenha cuidado.",22,"Mova agora"


		end

	elseif req == 12 then
		return 2,0,"Você pode obter a prova da promessa de Wolf em Purmai.",32,"Como posso obtê-lo?"



	elseif req == 22 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 4363, 0) < 1  and GetItemCount(cnum, 8499, 0) < 1 then
			return 1,0,"Para chegar lá, você precisa de um ingresso Premium Zone ou sinal de amizade."
		end

		MoveZone(cnum, 116, 254)


	elseif req == 32 then
		StartQuest(cnum, 165)
		return 1,0,"Você pode perguntar ao lobo sobre isso, ele irá dizer-lhe como"


	else
		return 0

	end
end


function NPC_QUEST_271(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 215 ) < 1 then
			return 2,0,"Hã? O que você quer? Eu estou ocupado no momento, não há tempo para eu brincar com você, garoto sair da minha vista",2,"Você sabe sobre as provas da Promessa?"
		elseif GetSwitchCount(cnum, 215 ) == 2 then
			return 2,0,"Você veio aqui para obter o Título de Promessa de novo?",3,"Sim"
		else
			return 4,0,"Você encontrou todas as peças?",32,"Sim, aqui está.",33,"Ainda não",34,"informações Quest"
		end


	elseif req == 2 then
		return 2,0,"Como você sabe sobre isso? Evidências da Promessa é um presente do meu amigo Karnick para a nossa amizade. Eu não posso dar a você, mas se você realmente precisa dele, você tem que me fazer um favor",12,"O que é isso?"

	elseif req == 3 then
		if GetItemCount(cnum, 4363, 0) < 1 then
			return 2,0,"Vou dar a prova da promessa a você se você coletar 10 peças de místicos e 20 peças desconhecidas. Como é isso? Você vai tentar?",22,"Claro que sim."
		else
			return 1,0,"Eu sei que você não tem a prova da promessa? Estou esperando!"
		end


	elseif req == 12 then
		return 2,0,"caçar monstros no mar Branco, Floresta e Iskai Ruins of Silence. Traga-me os itens que caem eles. Os nomes dos itens são parte Mystic, Mystery Piece. Traga-me 10 peças e 20 Mystic peça Mistério",22,"Ok, vou fazer isso."


	elseif req == 22 then
		EndQuest(cnum, 167)
		SetSwitchCount(cnum, 215, 1)
		StartQuest(cnum, 166)	



	elseif req == 32 then
		if GetItemCount(cnum, 4361, 0) < 10 and GetItemCount(cnum, 4362, 0) < 20 then
			return 1,0,"Você não encontrá-los todos, no entanto, você pode fazer melhor que isso."


		else
			EndQuest(cnum, 166)
			StartQuest(cnum, 167)
			SetSwitchCount(cnum, 215, 2)
			AddItemCount(cnum, 4361, -10)
			AddItemCount(cnum, 4362, -20)
			AddItemCount(cnum, 4363, 1)
			return 1,0,"Hmmm, você tem encontrado todos os itens. OK, aqui está a prova da Promessa. É só dura um dia e desaparecem. Volte para mim se precisar de mais"

		end

	elseif req == 34 then
		return 1,0,"Você pode obter as peças de místicos e peças Mistério de caçar monstros no mar Branco, Floresta e Iskai Ruins of Silence. Você deve encontrar 10 Mystic Pieces e 20 Mistério Pieces."



	else
		return 0

	end
end
