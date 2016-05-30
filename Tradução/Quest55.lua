function NPC_QUEST_272(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Foi muito tempo para ver um visitante. Como posso ajudá-lo?",2,"Eu quero ir para Silent Forest"

	elseif req == 2 then
		return 2,0,"OK. Este é um presente especial para você, eu lhe darei gratuitamente de urdidura para Silent Forest. Você quer ir agora?",12,"Urdidura"


	elseif req == 12 then
		MoveZone(cnum, 113, 110)


	else
		return 0


	end
end