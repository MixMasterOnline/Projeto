 function NPC_QUEST_202(cnum,reqNumber) --NPC ���(�ٶ��� ���� �ȳ���) - ���츣���� ��������
	local req, id1, count1

	id1 = 368 --�ٶ��� �Ź�

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1007) < 1 then
			return 2,0,"Oh, voc� tem um cubo Caos e as luvas da Elf. Voc� deve estar aqui por uma raz�o. Ao usar o Chaos Cube com o Anel de chuva, voc� pode reviver algo que foi perdido no passado. Mas voc� precisa ser forte o suficiente para atravessar o Dungeon do Vento",3,"Conte-me sobre o Dungeon."
		else
			return 2,0,"Voc� trouxe os sapatos do vento?",4,"Sim, eu tenho isso aqui comigo."
		end




	elseif req == 3 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Primeiro, voc� precisa obter o Cubo Caos. Em seguida, eleg�veis para o Dungeon do Vento."
		end

		return 2,0,"Voc� deve ter um corpo resistente para entrar na barreira de Dungoen do Vento. Se voc� n�o estiver forte o suficiente, o vento Dungeon vai lhe empurrar para fora para um lugar desconhecido.",101,"Estou confiante para ir polegadas"



	elseif req == 101 then
		StartQuest(cnum, 8)
		AddSwitchCount(cnum, 1007, 1)
		return 1,0,"Hmm, eu sou jovem MixMaster desculpe, eu acho que seu n�vel n�o � alto o suficiente para resistir ao vento na caverna. MAS, sapatas do vento pode ajudar seu corpo a luz. Voc� pode obt�-lo se voc� pegar um lambedor grande por aqui."




	elseif req == 4 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com Harley na Rolling Cores (X: 153.Y: 100)"
		end

		if GetItemCount(cnum,368,0) == 0 then --�ٶ��� �Ź�(368)
			return 1,0,"N�o, isso n�o � verdade. Voc� precisa encontrar os sapatos de um lambedor grande."
		end

		EndQuest(cnum, 8)
		return 2,0,"Boas. Mas devo adverti-lo, eventhough voc� est� usando sapatos de vento, voc� n�o pode ficar no calabou�o por muito tempo. Voc� provavelmente vai ficar encantada. Eu vou l� com voc�. Voc� est� pronto para entrar?",5,"Sim"

	elseif req == 5 then

		count1 = GetItemCount(cnum,id1,0)

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Harly sabe sobre o Cubo Caos. Por que voc� n�o encontrar Harly."
		end

		if GetItemCount(cnum,368,0) == 0 then --�ٶ��� �Ź�
			return 1,0,"Voc� precisa ter o t�nis do Vento para entrar no calabou�o."
		end

		AddItemCount(cnum,id1,-count1)  --�ٶ��� �Ź�
		SetReturnTimer(cnum,180,66)
		MoveZone(cnum,247,101) --�ٶ��� ���� 247
		end

	return 0
end


 function NPC_QUEST_203(cnum,reqNumber) --NPC ���(�ٶ��� ������)
	local req,id1,id2, id3,count1,count2,count3

	id1 = 338 --�ٶ��� �Ź�
	id2 = 369 --���� ����
	id3 = 366 --ī���� ť��

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1008) < 1 then
			return 2,0,"Come�ar o Anel da chuva � muito dif�cil. Embora voc� tenha os sapatos do vento, mas a durabilidade do sapato pode durar apenas alguns minutos. Ent�o, o vento forte do calabou�o ir� for��-lo afastado para Magirita. Por favor, entre o Anel da chuva dentro do prazo.",12,"Como posso encontr�-lo?"
		else
			if GetSwitchCount(cnum, 17) < 1 then
				return 2,0,"Voc� encontrou o anel?",2,"Sim"
			else
				return 2,0,"Voc� pode sair do calabou�o do Vento eventualmente. Voc� gostaria de sair agora?",14,"Sim"
			end
		end

	elseif req == 12 then
		return 2,0,"Um desses monstros aqui vai ter. Derrot�-los e obter o item!",13,"V� em frente!"

	elseif req == 13 then
		StartQuest(cnum, 9)
		AddSwitchCount(cnum, 1008, 1)
		return 1,0,"Lembre-se, o tempo � um fator chave!"

	elseif req == 14 then
		MoveZone(cnum, 66, 254)


	elseif req == 2 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Voc� conheceu Harly no campo Cores Rolling?"
		end

		if GetItemCount(cnum,369, 0) == 0 then -- ���� ����(369)
			return 1,0,"Se voc� pegar monstros neste calabou�o, voc� pode encontrar o Anel da Chuva. Ent�o traga-o para mim, vou mostrar-lhe como us�-lo."
		end

		return 2,0,"Oh! Voc� tem o Ring of the Rain. O Anel da chuva e do Cubo Caos pode tornar a imagem perdida de Shira. Vamos misturar o Anel da chuva e do Cubo Caos.",3,"Mix"

	elseif req == 3 then

		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)

		if GetSwitchCount(cnum,17) > 0 then
			return 1,0,"Voc� pode obter a imagem de Shira fam�lia apenas uma vez."
		end

		if GetSwitchCount(cnum,16) == 0 then
		return 1,0,"Voc� conheceu Harly no campo Cores Rolling?"
		end

		if GetItemCount(cnum,366,0) == 0 then --ī���� ť��(366)
			return 1,0,"Voc� pode fazer a imagem Shira da fam�lia somente se voc� tiver o Cubo Caos."
		end

		if GetItemCount(cnum,369,0) == 0 then --���� ����(369)
			return 1,0,"Voc� pode fazer a imagem Shira da fam�lia somente se voc� tiver o Ring of the Rain."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Seu saco parece que ele est� cheio. � melhor voc� limpar l� dentro!"
		end

		AddItemCount(cnum,id1,-count1) -- �ٶ��� �Ź�
		AddItemCount(cnum,id2,-count2) --���� ����(369)
		AddItemCount(cnum,id3,-count3) --ī���� ť��(366)
		AddItemCount(cnum,371,1) --������ ��������(371)
		AddSwitchCount(cnum,17,1)
		EndQuest(cnum, 9)
		return 1,0,"L� vamos n�s! Este � o retrato da fam�lia de Shira. Por favor, mostre-o para Shira em VeHerseba. Ela vai ficar contente e triste ao mesmo tempo."

	end
	return 0
end





