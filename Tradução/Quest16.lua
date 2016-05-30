function NPC_QUEST_316(cnum, reqNumber)

req = reqNumber

id1= 174
id2= 175
id3= 176
id4= 177

name1 ="O passado "
name2= "O presente "
name3= "O futuro "
name4="O caos "

targetitem = 170 -- ¿öÇÁ¸µ

resultmsg=nil

        count1 = GetItemCount(cnum,id1,0)
        if count1 == 0 then
            resultmsg = name1
        end
 
        count2 = GetItemCount(cnum,id2,0)
        if count2 == 0 then
            if resultmsg == nil then
                resultmsg = name2
            else
                resultmsg = resultmsg..","..name2
            end
        end
 
        count3 = GetItemCount(cnum,id3,0)
        if count3 == 0 then
            if resultmsg == nil then
                resultmsg = name3
            else
                resultmsg = resultmsg..","..name3
            end
        end
        count4 = GetItemCount(cnum,id4,0)
        if count4 == 0 then
            if resultmsg == nil then
                resultmsg = name4
            else
                resultmsg = resultmsg..","..name4
            end
        end



	if req == 1 then
		if GetSwitchCount(cnum, 1026) < 1 then
			if GetSwitchCount(cnum, 1014) < 1 then
				return 2,0,"",2,"Eu vou te-los. "
			else
				return 2,0,"Será que você pegá-los? ",12,"sim "
			end
		else
			return 3,0,"Vou mandar de volta para a aldeia. Qual vila você quer ir? ",3,"Para Magirita ",4,"Para VeHerseba "
		end

	elseif req == 2 then
		StartQuest(cnum, 102)
		AddSwitchCount(cnum, 1014, 1)				
		return 1,0,"Eu vou esperar por você. "

	

	elseif req == 12 then
	        if resultmsg ~= nil then
	        	return 1,0, "não é Magirita "..resultmsg.." mapa."
	        end
		-- Áöµµ ´Ù »¯±â

		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		-- ¿öÇÁ¸µ ³Ö¾îÁÖ±â
		AddItemCount(cnum,targetitem,1)

		AddSwitchCount(cnum, 2, 1)
		AddSwitchCount(cnum, 1026, 1)
		EndQuest(cnum, 102)
		return 1,0,"Congulaturations! Você provou por si mesmo que tem as qualificações mínimas para o Master Mix. "

	-- ¾ÆÀÌÅÛ Ã¼Å©ÈÄ ¸¶À»·Î¼ÒÈ¯
    elseif req == 3 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
			--AddSwitchCount(cnum,2,1)
			MoveZone(cnum,57,101)
			return 0
		else
			return 2,0,"Você quer desistir? ",5,"Este trabalho é um difficut pouco para mim. "
		end

    elseif req == 4 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
		--	AddSwitchCount(cnum,2,1)
			MoveZone(cnum,60,101)
			return 0
		else
			return 2,0,"Você quer desistir? ",6,"Este trabalho é um difficut pouco para mim. "
		end	

	
    elseif req == 5 then
		return 2,0,"Se você desistir de uma vez você não pode voltar aqui em tudo. Você realmente desistir? ",7,"Sim, eu desisto ... Bye"


    elseif req == 6 then
		return 2,0,"Se você desistir de uma vez você não pode voltar aqui em tudo. Você realmente desistir? ",8,"Sim, eu desisto ... Bye "


    elseif req == 7 then
		-- ´Ù »¯°í ³»º¸³»±â
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
		MoveZone(cnum,57,101)
		return 0
    elseif req == 8 then
		-- ´Ù »¯°í ³»º¸³»±â
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
	                MoveZone(cnum,60,101)
		return 0
	
	end 				
end