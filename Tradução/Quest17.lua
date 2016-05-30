function NPC_QUEST_295(cnum,reqNumber) -- ¸¶Áö¸®Å¸ Ã¿¸®½¬
	local req = reqNumber

 	if req == 1 then
	    	return 1, 0,"Algumas semanas atrás, uma multidão de monstros atacaram o Santuário da deusa e roubou o colar da Bênção, Cinto Deusa e Anel Elf. Por favor, ajudem-nos e encontrar os tesouros! O nosso Chefe de Defesa actum está procurando voluntários no litoral leste Mekrita, X: 127 Y: 161 "
     	end

  	return 0
end






function NPC_QUEST_263(cnum,reqNumber) -- ¸ÞÅ©¸®Å¸ µ¿ºÎÇØ¾È °æºñ´ëÀå(¾ÇÅù)

 	local req = reqNumber
	
 	if req == 1 then
		if GetSwitchCount(cnum, 1016) < 1 then
			if GetSwitchCount(cnum, 1015) < 1 then
		    		return 2,0,"Você se parece com um candidato jovem e brilhante um! Eu sou o santuário-chefe de Defesa, actum. O Santuário da deusa tem sido emboscados por monstros. O problema é que tem sido tão seguro por um tempo que nossos soldados falta treinamento. Você pode ter potencial. Se você encontrar Colar da Bênção Eu te darei 1000GP. Talvez Nosie e Bebe tomou o Colar da Bênção. ",12, "Ok, eu vou ajudá-lo. "
			else
				return 2,0,"Você encontrou o Colar da Benção? ",2,"Sim "
			end
		else
			return 1,0,"Obrigado por sua ajuda. Um grande potencial que você é. Por favor, vá ajudar o meu homem, Linny (X: 214, Y: 165). Talvez ele esteja chorando na área Islaba úmido agora. "
		end
			

	elseif req == 12 then
		
		if GetHeroLv(cnum,1) < 6 then        
			return 1,0,"Preciso de um voluntário, mas você parece um pouco inexperiente. Volte quando seu mais level6. "
		end
		
		StartQuest(cnum, 104)
		AddSwitchCount(cnum, 1015, 1)
		return 1,0,"Bom, eu tenho fé em você. Boa sorte um jovem. "


 	elseif req == 2 then  -- Ãàº¹ÀÇ ¸ñ°ÉÀÌ ÁÖ±â
	
		if GetItemCount(cnum,178,0) == 0 then
			return 1,0,"Se você se perde durante uma busca, basta clicar na guia busca na parte inferior direita e ele irá lhe fornecer algumas informações quest "
		end

		if GetSwitchCount(cnum, 3) < 1 then
			AddMoney(cnum,1000) -- 1000GP Ãß°¡
			AddSwitchCount(cnum,3,1) --Switch#3 ¿©½ÅÀÇ ¸ñ°ÉÀÌ
			AddSwitchCount(cnum, 1016, 1)
			EndQuest(cnum, 104)
			return 1,0,"Bom trabalho. Você é melhor do que eu pensava. Meu homem Linburn está perseguindo para outros tesouros. Se você vai para a área Islaba úmido com isso. Linburn (X: 214, Y: 165) é o nosso wekaest link. Ele pode surpreendê-lo de muitas maneiras. "
		else
			return 0
		
		end
	end
	return 0
end







function NPC_QUEST_220(cnum,reqNumber) -- ¾ÆÀÌ½½¶ó¹Ù šÁÁö´ë °æºñº´(¸°¹ö¸°)

local req = reqNumber
	if req == 1 then

		if GetSwitchCount(cnum, 1018) < 1 then		
		     	if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"Você poderia me ajudar? Na verdade ... Estou de plantão. Eu só posso falar com outros soldados agora. Fale com o Chefe actum Mekrita no litoral oriental e me ajudar!OuvirLer foneticamente "
		
			elseif GetSwitchCount(cnum, 1017) < 1 then
			    	return 2,0, "Você está aqui para me ajudar? Oh, graças a Deus. Eu estava prestes a mijar nas calças. Eu perdi este cinto especial. Eu acho que CheezDogg Nars e roubou. Mas, eles são fortes demais para mim. Eu te darei 1000GP se você trazê-los para mim. ",12, "Será que você passar no teste soldado? "

			else
				return 2,0,"Você encontrou o cinto para mim? ",2,"Sim "
			end
		else
			return 1,0,"Obrigado por isso, agora eu ouvi Rowe precisa de um pouco de apoio. Por favor, vá e ajudá-lo? Ele está na entrada Herseba (X: 227, Y: 62) agora. "
		end


	elseif req == 12 then

		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"Desculpe eu preciso de um guerreiro, não um punk. Volte para mim quando você está, no mínimo, nível 7 .. realmente 6 faria. "
		end

		StartQuest(cnum, 105)
		AddSwitchCount(cnum, 1017, 1)
		return 1,0,"Bem, meu pai é o comissário e ... Ah, eu odeio ser um covarde pouco. Por favor me ajudem rápido! "


	elseif req == 2 then

		if GetItemCount(cnum,179,0) == 0 then
			return 1,0,"Perguntei-lhe encontrar o cinto, ou CheezDogg da Nars! POR FAVOR! "
		end

		if GetSwitchCount(cnum, 4) < 1 then
			AddMoney(cnum,1000) -- 1000GP Ãß°¡
			AddSwitchCount(cnum,4,1) --Switch#4 ¿©½ÅÀÇ º§Æ®
			AddSwitchCount(cnum,1018, 1)
			EndQuest(cnum, 105)
			return 1,0,"Muito obrigado, eu deveria ir e treinar para ser tão bom quanto você. Conheça Rowe, que fica na entrada Herseba (X: 227, Y: 62) com isso. "
		
		else
			return 0

		end
 	end	
	return 0
end









function NPC_QUEST_217(cnum,reqNumber)-- Çì¸£¼¼¹Ù ÀÔ±¸ °æºñº´(·ÎÀ§µå) 

local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1020) < 1 then		
			if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"Estou de plantão. Eu só posso falar com outros soldados agora. Fale com o Chefe actum Mekrita no litoral leste se quiser juntar a mim. "
		
	
			elseif GetSwitchCount(cnum,4) == 0 then 
				return 1,0,"Oh, você quer me ajudar? Visite Linburn que está na área Islaba úmido antes de mim. Ele está mais desesperado por ajuda."
		

			elseif GetSwitchCount(cnum, 1019) < 1 then
				return 2,0,"Oh, você é o novo recruta, me ajude! Eu tenho sido atacado por um monstro, eu preciso de um 'anel de duende \para curar esta ferida. Eu vi \Mitra\e \Deepsuffer\ levá-los, você pode tirá-lo deles.",12,"Aguenta aí, vou pegar um ASAP!"

			else
				return 2,0,"Você encontrou o anel de elfo? ",2,"Sim "

			end
		else
			return 1,0,"Obrigado por salvar minha vida! Agora, visite carinho (X: 47 Y: 158) que está no Rudis. Ela lhe dará a Bênção da Deusa. "

		end


	elseif req == 12 then

		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"Obrigado por sua oferta, mas não é fácil obter o anel de elfo em seu estado atual. Você precisa de mais treinamento, por favor, volte depois que você é mais forte. Se o nível for superior a 6, pode ser de ajuda. "
		end

		StartQuest(cnum, 106)
		AddSwitchCount(cnum, 1019, 1)
		return 1,0,"Por favor, seja rápido. Meu corpo está ficando mais fraca a cada segundo. "



	 elseif req == 2 then

		if GetItemCount(cnum,180,0) == 0 then
			return 1,0,"Por favor. .. me pegar. . o anel, eu. .. imploro "
		end

		if GetSwitchCount(cnum, 5) < 1 then
		       	AddMoney(cnum,1000) -- 1000GP Ãß°¡
			AddSwitchCount(cnum,5,1) --Switch#5 ¿äÁ¤ÀÇ ¹ÝÁö
			AddSwitchCount(cnum, 1020, 1)
			EndQuest(cnum, 106)
			return 1,0,"Oh, obrigada ... Eu me sinto muito melhor! Você finalmente encontrou os três tesouros. Agora, visite carinho que está no Rudis a aldeia dos elfos (X: 47 Y: 158). Ela lhe dará a Bênção da Deusa "
		
		else
			return 0

		end
 	end	
	return 0
end




function NPC_QUEST_296(cnum,reqNumber) -- ·çµð½º ¸¶À»
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3

	itemname1 = "anel da bênção "
	itemname2 = "cinturão da Deusa "
	itemname3 = "anel da elf "

	id1 = 178 
	id2 = 179
	id3 = 180

    req = reqNumber

    if req == 1 then

   	 	return 2, 0, "Ah, valentes! Você tem algo para me perguntar? Estou procurando o que pode levar o tesouro da deusa 'de volta para mim. Você é realmente aquele que levá-los de volta para mim? Vou dar-lhe a bênção [15 pontos livres] em nome da Deusa. ",2, "Sim, eu tenho todos. "
    elseif req == 2 then
		if GetSwitchCount(cnum,6) > 0 then
			return 1,0, "Bênção da Deusa [Livre pontos 15] já está com você "
		end

		count1 = GetItemCount(cnum,id1,0)
		if count1 == 0 then 
			resultmsg = itemname1 
		end
		
		count2 = GetItemCount(cnum,id2,0)
		if count2 == 0 then 
			if resultmsg == nil then 
				resultmsg = itemname2 
			else 
				resultmsg = resultmsg..","..itemname2
			end
		end

		count3 = GetItemCount(cnum,id3,0)
		if count3 == 0 then
			if resultmsg == nil then 
				resultmsg = itemname3 
			else 
				resultmsg = resultmsg..","..itemname3
			end
		end
    

		if resultmsg ~= nil then
			return 1,0, resultmsg.."não há "
		end

		        AddItemCount(cnum,id1,-count1)
		        AddItemCount(cnum,id2,-count2)
		        AddItemCount(cnum,id3,-count3)

		-- ÇÁ¸®Æ÷ÀÎÆ® ÁÖ±â

       		AddHeroFreePoint(cnum,15) -- ÇÁ¸® Æ÷ÀÎÆ® 15Á¡ Ãß°¡
	                AddSwitchCount(cnum,6,1) --Switch#6 ¿©½ÅÀÇ º§Æ®
	                return 1,0,"Honro o nome da Deusa, peço que ela também vai ser por favor com a minha escolha humilde. " 
	end 			
	return 0
end 
