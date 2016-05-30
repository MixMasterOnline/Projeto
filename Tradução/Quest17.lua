function NPC_QUEST_295(cnum,reqNumber) -- ������Ÿ ÿ����
	local req = reqNumber

 	if req == 1 then
	    	return 1, 0,"Algumas semanas atr�s, uma multid�o de monstros atacaram o Santu�rio da deusa e roubou o colar da B�n��o, Cinto Deusa e Anel Elf. Por favor, ajudem-nos e encontrar os tesouros! O nosso Chefe de Defesa actum est� procurando volunt�rios no litoral leste Mekrita, X: 127 Y: 161 "
     	end

  	return 0
end






function NPC_QUEST_263(cnum,reqNumber) -- ��ũ��Ÿ �����ؾ� ������(����)

 	local req = reqNumber
	
 	if req == 1 then
		if GetSwitchCount(cnum, 1016) < 1 then
			if GetSwitchCount(cnum, 1015) < 1 then
		    		return 2,0,"Voc� se parece com um candidato jovem e brilhante um! Eu sou o santu�rio-chefe de Defesa, actum. O Santu�rio da deusa tem sido emboscados por monstros. O problema � que tem sido t�o seguro por um tempo que nossos soldados falta treinamento. Voc� pode ter potencial. Se voc� encontrar Colar da B�n��o Eu te darei 1000GP. Talvez Nosie e Bebe tomou o Colar da B�n��o. ",12, "Ok, eu vou ajud�-lo. "
			else
				return 2,0,"Voc� encontrou o Colar da Ben��o? ",2,"Sim "
			end
		else
			return 1,0,"Obrigado por sua ajuda. Um grande potencial que voc� �. Por favor, v� ajudar o meu homem, Linny (X: 214, Y: 165). Talvez ele esteja chorando na �rea Islaba �mido agora. "
		end
			

	elseif req == 12 then
		
		if GetHeroLv(cnum,1) < 6 then        
			return 1,0,"Preciso de um volunt�rio, mas voc� parece um pouco inexperiente. Volte quando seu mais level6. "
		end
		
		StartQuest(cnum, 104)
		AddSwitchCount(cnum, 1015, 1)
		return 1,0,"Bom, eu tenho f� em voc�. Boa sorte um jovem. "


 	elseif req == 2 then  -- �ູ�� ����� �ֱ�
	
		if GetItemCount(cnum,178,0) == 0 then
			return 1,0,"Se voc� se perde durante uma busca, basta clicar na guia busca na parte inferior direita e ele ir� lhe fornecer algumas informa��es quest "
		end

		if GetSwitchCount(cnum, 3) < 1 then
			AddMoney(cnum,1000) -- 1000GP �߰�
			AddSwitchCount(cnum,3,1) --Switch#3 ������ �����
			AddSwitchCount(cnum, 1016, 1)
			EndQuest(cnum, 104)
			return 1,0,"Bom trabalho. Voc� � melhor do que eu pensava. Meu homem Linburn est� perseguindo para outros tesouros. Se voc� vai para a �rea Islaba �mido com isso. Linburn (X: 214, Y: 165) � o nosso wekaest link. Ele pode surpreend�-lo de muitas maneiras. "
		else
			return 0
		
		end
	end
	return 0
end







function NPC_QUEST_220(cnum,reqNumber) -- ���̽���� ������ ���(������)

local req = reqNumber
	if req == 1 then

		if GetSwitchCount(cnum, 1018) < 1 then		
		     	if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"Voc� poderia me ajudar? Na verdade ... Estou de plant�o. Eu s� posso falar com outros soldados agora. Fale com o Chefe actum Mekrita no litoral oriental e me ajudar!OuvirLer foneticamente "
		
			elseif GetSwitchCount(cnum, 1017) < 1 then
			    	return 2,0, "Voc� est� aqui para me ajudar? Oh, gra�as a Deus. Eu estava prestes a mijar nas cal�as. Eu perdi este cinto especial. Eu acho que CheezDogg Nars e roubou. Mas, eles s�o fortes demais para mim. Eu te darei 1000GP se voc� traz�-los para mim. ",12, "Ser� que voc� passar no teste soldado? "

			else
				return 2,0,"Voc� encontrou o cinto para mim? ",2,"Sim "
			end
		else
			return 1,0,"Obrigado por isso, agora eu ouvi Rowe precisa de um pouco de apoio. Por favor, v� e ajud�-lo? Ele est� na entrada Herseba (X: 227, Y: 62) agora. "
		end


	elseif req == 12 then

		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"Desculpe eu preciso de um guerreiro, n�o um punk. Volte para mim quando voc� est�, no m�nimo, n�vel 7 .. realmente 6 faria. "
		end

		StartQuest(cnum, 105)
		AddSwitchCount(cnum, 1017, 1)
		return 1,0,"Bem, meu pai � o comiss�rio e ... Ah, eu odeio ser um covarde pouco. Por favor me ajudem r�pido! "


	elseif req == 2 then

		if GetItemCount(cnum,179,0) == 0 then
			return 1,0,"Perguntei-lhe encontrar o cinto, ou CheezDogg da Nars! POR FAVOR! "
		end

		if GetSwitchCount(cnum, 4) < 1 then
			AddMoney(cnum,1000) -- 1000GP �߰�
			AddSwitchCount(cnum,4,1) --Switch#4 ������ ��Ʈ
			AddSwitchCount(cnum,1018, 1)
			EndQuest(cnum, 105)
			return 1,0,"Muito obrigado, eu deveria ir e treinar para ser t�o bom quanto voc�. Conhe�a Rowe, que fica na entrada Herseba (X: 227, Y: 62) com isso. "
		
		else
			return 0

		end
 	end	
	return 0
end









function NPC_QUEST_217(cnum,reqNumber)-- �츣���� �Ա� ���(������) 

local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1020) < 1 then		
			if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"Estou de plant�o. Eu s� posso falar com outros soldados agora. Fale com o Chefe actum Mekrita no litoral leste se quiser juntar a mim. "
		
	
			elseif GetSwitchCount(cnum,4) == 0 then 
				return 1,0,"Oh, voc� quer me ajudar? Visite Linburn que est� na �rea Islaba �mido antes de mim. Ele est� mais desesperado por ajuda."
		

			elseif GetSwitchCount(cnum, 1019) < 1 then
				return 2,0,"Oh, voc� � o novo recruta, me ajude! Eu tenho sido atacado por um monstro, eu preciso de um 'anel de duende \para curar esta ferida. Eu vi \Mitra\e \Deepsuffer\ lev�-los, voc� pode tir�-lo deles.",12,"Aguenta a�, vou pegar um ASAP!"

			else
				return 2,0,"Voc� encontrou o anel de elfo? ",2,"Sim "

			end
		else
			return 1,0,"Obrigado por salvar minha vida! Agora, visite carinho (X: 47 Y: 158) que est� no Rudis. Ela lhe dar� a B�n��o da Deusa. "

		end


	elseif req == 12 then

		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"Obrigado por sua oferta, mas n�o � f�cil obter o anel de elfo em seu estado atual. Voc� precisa de mais treinamento, por favor, volte depois que voc� � mais forte. Se o n�vel for superior a 6, pode ser de ajuda. "
		end

		StartQuest(cnum, 106)
		AddSwitchCount(cnum, 1019, 1)
		return 1,0,"Por favor, seja r�pido. Meu corpo est� ficando mais fraca a cada segundo. "



	 elseif req == 2 then

		if GetItemCount(cnum,180,0) == 0 then
			return 1,0,"Por favor. .. me pegar. . o anel, eu. .. imploro "
		end

		if GetSwitchCount(cnum, 5) < 1 then
		       	AddMoney(cnum,1000) -- 1000GP �߰�
			AddSwitchCount(cnum,5,1) --Switch#5 ������ ����
			AddSwitchCount(cnum, 1020, 1)
			EndQuest(cnum, 106)
			return 1,0,"Oh, obrigada ... Eu me sinto muito melhor! Voc� finalmente encontrou os tr�s tesouros. Agora, visite carinho que est� no Rudis a aldeia dos elfos (X: 47 Y: 158). Ela lhe dar� a B�n��o da Deusa "
		
		else
			return 0

		end
 	end	
	return 0
end




function NPC_QUEST_296(cnum,reqNumber) -- ��� ����
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3

	itemname1 = "anel da b�n��o "
	itemname2 = "cintur�o da Deusa "
	itemname3 = "anel da elf "

	id1 = 178 
	id2 = 179
	id3 = 180

    req = reqNumber

    if req == 1 then

   	 	return 2, 0, "Ah, valentes! Voc� tem algo para me perguntar? Estou procurando o que pode levar o tesouro da deusa 'de volta para mim. Voc� � realmente aquele que lev�-los de volta para mim? Vou dar-lhe a b�n��o [15 pontos livres] em nome da Deusa. ",2, "Sim, eu tenho todos. "
    elseif req == 2 then
		if GetSwitchCount(cnum,6) > 0 then
			return 1,0, "B�n��o da Deusa [Livre pontos 15] j� est� com voc� "
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
			return 1,0, resultmsg.."n�o h� "
		end

		        AddItemCount(cnum,id1,-count1)
		        AddItemCount(cnum,id2,-count2)
		        AddItemCount(cnum,id3,-count3)

		-- ��������Ʈ �ֱ�

       		AddHeroFreePoint(cnum,15) -- ���� ����Ʈ 15�� �߰�
	                AddSwitchCount(cnum,6,1) --Switch#6 ������ ��Ʈ
	                return 1,0,"Honro o nome da Deusa, pe�o que ela tamb�m vai ser por favor com a minha escolha humilde. " 
	end 			
	return 0
end 
