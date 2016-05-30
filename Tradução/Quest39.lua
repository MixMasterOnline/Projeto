function NPC_QUEST_234(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Baixo nível Premium Zone ",2,"Médio / Alto nível Premium Zone "

	elseif req == 2 then
		MoveZone(cnum, 57, 254)
		SetReviveZone(cnum, 57)
		
	else
		return 0
	end
end