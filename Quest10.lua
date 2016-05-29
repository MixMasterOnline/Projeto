 function NPC_QUEST_286(cnum,reqNumber) --NPC ���� ����(ü���� ������)
	local req,id1,id2,count1,count2

	id1 = 376 -- ���� ��������
	id2 = 377 -- ������

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 20) < 1 then
			if GetSwitchCount(cnum, 1011) < 1 then		
				if GetSwitchCount(cnum,19) == 0 then
					return 1,0,"Voc� n�o tem coletado todos os cristais �rvore l�grima. Por favor, fale com o Shira em VeHerseba. "
				end

				return 2,0,"Ol� l� um jovem. Hm uma caixa de cristal? Ent�o, v� encontrar a garrafa de vidro de ouro. Golden garrafa de vidro � uma garrafa preciosa que era usada no passado, tem poder para restaurar a aura m�gica. ",12,"Como posso encontr�-lo? "
			else
				return 4,0,"Voc� tem algo para me perguntar? ",2,"Pergunte sobre a garrafa de vidro de Ouro novamente ",3,"Pergunte sobre o Magic Mirror of novamente. ",4,"Asl Sobre a CRIA��O do The Magic Mirror. "
			end
		else
			return 1,0,"Agora, encontrar Predic que tem um poder especial no campo Tamer (X: 180 Y: 75). Predic vai mandar voc� para o passado. "
		end

	elseif req == 12 then
		return 2,0,"Golden frasco de vidro s� existia no passado. Se voc� quiser a garrafa que voc� pode ir para o passado e encontr�-lo. Ah, por falar nisso, voc� precisa de um espelho m�gico para ir para o passado. O espelho m�gico pode ser feita com a mistura vidros quebrados e Prisma. Eu ou�o os m�dicos tendem a t�-los ",13,"Ok"


	elseif req == 13 then
		StartQuest(cnum, 11)
		AddSwitchCount(cnum, 1011, 1)
		return 1,0,"Se voc� me trazer os itens, voc� ir� criar o espelho da Magia. Ent�o voc� pode voltar ao passado. "


	elseif req == 2 then

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Voc� pode obter as informa��es somente se voc� tiver tr�s Shiras l�grima de cristal. Por favor, encontrar em VeHerseba Shira. "
		end

		return 1,0,"Golden frasco de vidro s� existe no passado. Se voc� quiser encontr�-lo, voc� precisar� voltar ao passado. Voc� precisa ter o Magic Mirror para fazer isso. "

	elseif req == 3 then

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Voc� n�o tem uma l�grima de cristal. Por favor, encontrar em VeHerseba Shira. "
		end

		return 1,0,"Voc� pode ter o espelho m�gico se voc� misturar peda�o de vidro quebrado com prisma. Eu j� ouvi boatos M�dicos amor desses itens. Eu n�o sei qual o m�dico, talvez a cabe�a em uma villege. "

	elseif req == 4 then


		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Por favor, Shira encontrar e falar com ela em VeHerseba. "
		end

		if GetSwitchCount(cnum,20) > 0 then
			return 1,0,"Desculpe, eu sou um homem velho, eu s� posso fazer o Magic Mirror vez. "

		end

		if GetItemCount(cnum,376,0) == 0 then --���� ��������(376)
			return 1,0,"N�o h� um peda�o de vidro quebrado. V� e fale com um m�dico. "
		end

		if GetItemCount(cnum,377,0) == 0 then --������(377)
			return 1,0,"Por favor, traga-me o prisma. V� e fale com um m�dico sobre isso. "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Deve haver mais de uma unidade de reposi��o de estoque. "
		end

		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,375,1) -- ������ �ſ�(375)
		AddMoney(cnum,10000) -- 10000GP �߰�
		AddSwitchCount(cnum,20,1) --������ �ſ� Switch ��
		EndQuest(cnum, 11)

		return 1,0,"Ah, um bom trabalho jovens. Agora, aqui, aqui e ali. Eu fiz o Magic Mirror. Ah, que foi emocionante. Vou recompens�-lo algum dinheiro tamb�m. "
	end
	return 0
end
