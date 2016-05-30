function NPC_QUEST_260(cnum, reqNumber)

req= reqNumber

	if req == 1 then
		return 2,0,"Se esta é sua primeira vez, a visão pode ser horrível. Por favor, tenha cuidado. ",2,"Ruínas de Magirita "


	elseif req == 2 then
		if GetItemCount(cnum, 3203, 0) < 1 then
			return 1,0,"Ruínas de VeHerseba "

		else
			AddItemCount(cnum, 3203, -1)
			AddSkillPoint(cnum, 3)
			return 1,0,"Ruínas de Rudis. "

		end

	else
		return 0

	end
end	