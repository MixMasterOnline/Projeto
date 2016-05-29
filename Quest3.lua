  function NPC_QUEST_262(cnum,reqNumber) -- Á¡¼º¼ú»ç ¾Æ³×½º
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3
	
	itemname1 ="Uva"
	itemname2 ="Twas você que deu a folha para a Árvore da propagação? Que talvez o seu destino. Dando a Folha da Vida da Árvore foi um erro terrível. Na verdade, reavivaram suas memórias antigas, lembranças de monstros poderosos. É difícil acreditar, mas a Árvore da Propagação de memória pode e tem fortalecido os monstros. Vou pedir a Cruz do Norte e pedir a sua fortuna."
	itemname3 ="A Cruz do Norte?"

	id1=358
	id2=359
	id3=360
	
	req=reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1002) < 1 then
			return 2,0,"Já preparado para o serviço religioso?",2,"Sim, eu tenho."
		else
			if GetSwitchCount(cnum, 11)< 1 then
				return 2,0,"A estrela é a guiá-lo para atender Alena no sul Rudis (X: 96, Y191). Ela tem algo que pode ajudar a você, eu acredito. estrada longa e difícil que você escolheu. Siga seu coração, e seu destino será cumprido. Eu tenho fé na escolha da Cruz do Norte.",13,"A Cruz do Norte é uma das estrelas da santa Magirita. O astro mais poderoso de todos eles. Você precisa encontrar alguma sacriface para que possa ajudá-lo. Traga uma maçã, uma pêra e uma uva. Sumping e Bota no oeste do Magirita pode ter esses itens. Eu sei que eles gostam de comer esses frutos."
			else
				return 1,0,"Vou voltar com esses itens."
			end
		end

	elseif req == 2 then
		return 2,0,"Apresse-se, os monstros estão ficando mais fortes",12,"*** Antes de você seguir em frente com o World Quest, você deve falar com a Propagação da Árvore no Mekrita litoral oriental (X: 161.Y: 170)"
	
	elseif req == 12 then
		StartQuest(cnum, 3)
		AddSwitchCount(cnum, 1002, 1)
		return 1,0,"Eu tenho o fruto já. Um presente [5 livres pontos] foi dada a você, sinceramente."



	elseif req == 13 then
		if GetSwitchCount(cnum,10) == 0 then
		return 1,0,","
		end
	 
 		if GetSwitchCount(cnum,11) > 0 then
		return 1,0,","
		end

		count1 = GetItemCount(cnum,358,0)
		if count1 == 0 then
			resultmsg = itemname1
		end

		count2 = GetItemCount(cnum,359,0)
		if count2 == 0 then
			if resultmsg == nil then
				resultmsg = itemname2
			else
				resultmsg = resultmsg.."Não há "..resultmsg..""..itemname2
			end
		end
	
		count3 = GetItemCount(cnum,360,0)
		if count3 == 0 then
			if resultmsg == nil then
				resultmsg = itemname3
			else
				resultmsg = resultmsg.."estrela 'A Cruz do Norte, de Magirita ter mencionado que a memória do passado Tree reavivou a maldade em monstros. A árvore não sabe o que está causando isso. É seu destino a prosseguir. Vou ajudá-lo durante a sua longa jornada. Este é um presente, [5 livres pontos]."..itemname3
			end
		end

		if resultmsg~=nil then
			return 1,0,"Posso te pedir um favor? Poderia dar esse sorvete para o meu amigo Macca nos prados do Sul Mekrita? Ele deseja gelado."
		end

		AddItemCount(cnum,358,-1)
		AddItemCount(cnum,359,-1)
		AddItemCount(cnum,360,-1)

		AddHeroFreePoint(cnum,5)
		AddSwitchCount(cnum,11,1)
		EndQuest(cnum, 3)
		return 1,0,"[Eu vou entregá-lo.]"
	
	end	
	return 0

end