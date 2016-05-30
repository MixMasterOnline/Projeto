function NPC_QUEST_221(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "Amor "
itemname2 = "Sabedoria "
itemname3 = "Bravura "

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)



req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"Vou levá-los com certeza! "
		else
			return 2,0,"Será que você pegá-los? ",12,"sim "
		end

	


	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"Os monstros vão quebrar o selo em breve. Apresse-se! "



	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"Sinto muito, mas não é a única chance, porque é muito perigoso. "

		else


			if count1 <= 0 then
				return 1,0,"Não há nenhuma"..itemname1.."de Jove."

			elseif count2 <= 0 then
				return 1,0,"Não há nenhuma"..itemname2.."de Jove."

			elseif count3 <= 0 then
				return 1,0,"Não há nenhuma"..itemname3.."de Jove."

			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end


function NPC_QUEST_222(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "Amor "
itemname2 = "Sabedoria "
itemname3 = "Bravura "

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)



req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"Vou levá-los com certeza! "
		else
			return 2,0,"Será que você pegá-los? ",12,"Sim "
		end

	


	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"Os monstros vão quebrar o selo em breve. Apresse-se! "



	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"Sinto muito, mas não é a única chance, porque é muito perigoso. "

		else


			if count1 <= 0 then
				return 1,0,"Não há nenhuma"..itemname1.."de Jove."

			elseif count2 <= 0 then
				return 1,0,"Não há nenhuma"..itemname2.."de Jove."

			elseif count3 <= 0 then
				return 1,0,"Não há nenhuma"..itemname3.."de Jove."

			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end				
				