function NPC_QUEST_266(cnum,reqNumber) -- õ���� �Ҹ�(��� ������ �ֳ�)

local req = reqNumber



	if req == 1 then
		if GetSwitchCount(cnum ,1003) < 1 then
			return 2,0,"Se esta � sua primeira vez, a vis�o pode ser horr�vel. Por favor, tenha cuidado. ",2,"Ru�nas de Magirita "
		else
			if GetSwitchCount(cnum, 12) < 1 then
				return 2,0,"Ru�nas de VeHerseba ",13,"Ru�nas de Rudis. "
			else
				return 1,0,"Voc� tem certeza? N�o muitos sobreviveram nessa turn�. Os monstros s�o muito fortes aqui. "				
			end
 		end

	elseif req == 2 then
		return 2,0,"Ru�nas de Magirita " ,12,"Ru�nas de VeHerseba "


	elseif req == 12 then
		StartQuest(cnum, 4)
		AddSwitchCount(cnum, 1003, 1)
		return 1,0,"Ru�nas de Rudis. "

	elseif req == 13 then

		if GetSwitchCount(cnum,11) == 0 then
			return 1,0,"Ru�nas de Purmai "
		end

		if GetSwitchCount(cnum,12) > 1 then
			return 1,0,"Desculpe-me, Premium Zone � uma zona estritamente VIP. Leva-o para as cenas do futuro Magirita e outras cidades. Acredito que voc� n�o � um VIP. "
		end

		if CheckItemPocket(cnum,361,1) < 0 then
			return 1,0,"Bom dia jovem mestre. Agora, eu posso lev�-lo para as seguintes cidades futuro. Onde voc� gostaria de ir hoje? "
		end
		

		if GetItemCount(cnum,362,0) < 1 then
			return 1,0,"Baixo n�vel Premium Zone "
		end

		AddItemCount(cnum,362,-1) -- �ϸ��ī ����	
		AddItemCount(cnum,361, 1) -- �� �� ȹ��
		AddSwitchCount(cnum,12,1) -- Switch#10 �� ��
		AddMoney(cnum, 3000) -- 3000GP �߰�
		EndQuest(cnum, 4)
		return 1,0,"M�dio / Alto n�vel Premium Zone "

	end	
	return 0
 end
