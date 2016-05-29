  function NPC_QUEST_262(cnum,reqNumber) -- �������� �Ƴ׽�
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3
	
	itemname1 ="Uva"
	itemname2 ="Twas voc� que deu a folha para a �rvore da propaga��o? Que talvez o seu destino. Dando a Folha da Vida da �rvore foi um erro terr�vel. Na verdade, reavivaram suas mem�rias antigas, lembran�as de monstros poderosos. � dif�cil acreditar, mas a �rvore da Propaga��o de mem�ria pode e tem fortalecido os monstros. Vou pedir a Cruz do Norte e pedir a sua fortuna."
	itemname3 ="A Cruz do Norte?"

	id1=358
	id2=359
	id3=360
	
	req=reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1002) < 1 then
			return 2,0,"J� preparado para o servi�o religioso?",2,"Sim, eu tenho."
		else
			if GetSwitchCount(cnum, 11)< 1 then
				return 2,0,"A estrela � a gui�-lo para atender Alena no sul Rudis (X: 96, Y191). Ela tem algo que pode ajudar a voc�, eu acredito. estrada longa e dif�cil que voc� escolheu. Siga seu cora��o, e seu destino ser� cumprido. Eu tenho f� na escolha da Cruz do Norte.",13,"A Cruz do Norte � uma das estrelas da santa Magirita. O astro mais poderoso de todos eles. Voc� precisa encontrar alguma sacriface para que possa ajud�-lo. Traga uma ma��, uma p�ra e uma uva. Sumping e Bota no oeste do Magirita pode ter esses itens. Eu sei que eles gostam de comer esses frutos."
			else
				return 1,0,"Vou voltar com esses itens."
			end
		end

	elseif req == 2 then
		return 2,0,"Apresse-se, os monstros est�o ficando mais fortes",12,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com a Propaga��o da �rvore no Mekrita litoral oriental (X: 161.Y: 170)"
	
	elseif req == 12 then
		StartQuest(cnum, 3)
		AddSwitchCount(cnum, 1002, 1)
		return 1,0,"Eu tenho o fruto j�. Um presente [5 livres pontos] foi dada a voc�, sinceramente."



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
				resultmsg = resultmsg.."N�o h� "..resultmsg..""..itemname2
			end
		end
	
		count3 = GetItemCount(cnum,360,0)
		if count3 == 0 then
			if resultmsg == nil then
				resultmsg = itemname3
			else
				resultmsg = resultmsg.."estrela 'A Cruz do Norte, de Magirita ter mencionado que a mem�ria do passado Tree reavivou a maldade em monstros. A �rvore n�o sabe o que est� causando isso. � seu destino a prosseguir. Vou ajud�-lo durante a sua longa jornada. Este � um presente, [5 livres pontos]."..itemname3
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
		return 1,0,"[Eu vou entreg�-lo.]"
	
	end	
	return 0

end