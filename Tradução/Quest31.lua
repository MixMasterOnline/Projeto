function NPC_QUEST_257(cnum,reqNumber) -- �糪ƽ �ʵ�(����) - ����
	local req = reqNumber

	if req == 1 then
		return 3,0,"[N�o, eu n�o posso]",2,"Ouvi Quadra recebeu o bolo. Obrigado.",3,"Voc� � o �nico que j� entregou o bolo. O que aconteceu?"

	elseif req == 2 then

		if GetSwitchCount(cnum, 1055) > 0 then
			return 1,0,"Hmm ..."
		end

		if GetSwitchCount(cnum, 1054) > 0 then
			return 2,0,"Voc� n�o tem espa�o no invent�rio suficiente. Volte, quando voc� tem espa�o livre suficiente",4,"Voc� j� tem um bolo. Por favor, d� o bolo a Quadra no P�ntano Ilus�o."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Voc� deve ter em mente que, se voc� n�o levar este bolo no tempo, o bolo vai ser mimado."
		end

		if GetItemCount(cnum, 1047, 0) == 1 then
			return 1,0,"� uma pena que voc� deu a oportunidade de obter mais GP."
		end

		SetSwitchCount(cnum, 1054, 1)
		AddItemCount(cnum, 1047, 1) -- ���� ����
		StartQuest(cnum, 173)
		return 1,0,"Voc� j� comeu o bolo ... @ Isso � o que eu pedi ... Hum! @ Voc� deve ter ficado com fome. @ Entendo ~ @ Ent�o, vou dar a voc� outra vez. Desta vez, por favor! entregar a ele."

	elseif req == 3 then

		return 1,0,"Voc� j� comeu o bolo ... @ Isso � o que eu pedi ... Hum! @ Voc� deve ter ficado com fome. @ Entendo ~ @ Ent�o, vou dar a voc� outra vez. Desta vez, por favor! entregar a ele."

	elseif req == 4 then

			if GetItemCount(cnum, 1047, 0) == 0 then
			if GetSwitchCount(cnum, 1060) > 0 then

			AddItemCount(cnum, 1047, 1) -- ���� ����
			SetSwitchCount(cnum, 1054, 1)
			EndQuest(cnum, 173)
			StartQuest(cnum, 173)
			return 1,0,"Voc� ainda tem o bolo! @ Voc� n�o vai com�-lo desta vez, certo?"

			else

			AddItemCount(cnum, 1047, 1) -- ���� ����
			SetSwitchCount(cnum, 1054, 1)
			EndQuest(cnum, 173)
			StartQuest(cnum, 173)
			return 1,0,"Se voc� n�o levar um cart�o de convite, n�o posso aceitar o seu bolo e dar-lhe o Colar da Devil's. Voc� pode obter um cart�o de convite de captura Ordevil no P�ntano Ilus�o."

			end

		else
			return 1,0,"Ouvi Julias recebeu muito bem. Obrigado"

		end
	end
end


function NPC_QUEST_204(cnum,reqNumber) -- ��Ȥ�� ��(������) - �Ǹ��� �����
	local req = reqNumber

	if req == 1 then

--		if GetItemCount(cnum, 1049, 0) == 0 then
--			return 1,0,"Como � a entrega do Colar do diabo est� acontecendo?"
--		end


		if GetSwitchCount(cnum, 1056) > 0 then
			return 1,0,"Diabo levou ..."

		end

		if GetSwitchCount(cnum, 1055) > 0 then
			return 2,0,"Voc� n�o pode ter mais de um colar Diabo.",3,"Voc� n�o tem espa�o no invent�rio suficiente. Volte, quando voc� tem espa�o livre suficiente."

		end

		if GetItemCount(cnum, 1048, 0) == 1 then
			return 1,0,"Hmm, eu estou com fome, eu realmente gostaria de um bolo. Se voc� n�o tiver um bolo, voc� pode encontrar com Selman no campo Lunatic, e obter um bolo de cima dele."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Eu tenho um bolo."
		end		


		return 2,0,"Voc� n�o tem um bolo. Se voc� encontrar Selman no campo Lunatic, voc� pode obter um bolo.",2,"Obrigado! Este bolo gelado delicioso. Mas me desculpe, eu n�o tenho uma tarifa de entrega para o pagar. Voc� pode entregar o colar para J�lia na entrada do Dungeon Lunatic? J�lia vai lhe dar GP de compensa��o."

	elseif req == 2 then

		if GetItemCount(cnum, 1047, 0) == 0 then
		SetSwitchCount(cnum, 160, 1)
			return 1,0,"Sim, vou entreg�-lo para voc�."
		end

		AddItemCount(cnum, 1047, -1) -- ����
		EndQuest(cnum, 173)
		return 2,0,"Eu n�o posso dar isso para voc� porque de n�o mais espa�o em seu invent�rio.",12,"Est� blurffing. @ � dif�cil obter o Devil's Necklace ... @ eu vou dar a voc� mais uma vez porque Julias precisa. @ E eu mencionei mais cedo, voc� deve ir com um convite obtidos Ordevil. @ Ele � um pouco exigente ~" 

	elseif req == 3 then

		if GetItemCount(cnum, 1048, 0) == 0 then
			if GetSwitchCount(cnum, 1061) > 0 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"Est� blurffing. @ � dif�cil obter o Devil's Necklace ... @ eu vou dar a voc� mais uma vez porque Julias precisa. @ E eu mencionei mais cedo, voc� deve ir com um convite obtidos Ordevil. @ Ele � um pouco exigente ~"

				else
				AddItemCount(cnum, 1048, 1) -- �Ǹ��� ����� �߰�
				SetSwitchCount(cnum, 1054, 1)
				StartQuest(cnum, 174)
				return 1,0,"Voc� tem colar do Diabo! @ Diabo pode ser voc� mesmo? Huhu"

				end

			else
			AddItemCount(cnum, 1048, 1) -- �Ǹ��� ����� �߰�
			SetSwitchCount(cnum, 1054, 1)
			StartQuest(cnum, 174)
			return 1,0,"Eu tenho mais um pedido. J�lia est� procurando por um cart�o de convite. Ele n�o vai aceitar o Colar da Devil's sem o cart�o de convite. Voc� pode obter o cart�o do convite, se voc� pegar o Ordevil no P�ntano Ilus�o."

			end
		
		else
			return 1,0,"Voc� � o �nico que trouxe para mim. Obrigado"

		end


	elseif req == 12 then

		AddItemCount(cnum, 1048, 1) -- �Ǹ��� ����� �߰�
		SetSwitchCount(cnum, 1055, 1)
		StartQuest(cnum, 174)
		return 1,0,"Eu n�o vou aceitar Colar do Diabo sem um cart�o de convite. Voc� pode obter um cart�o de convite, se voc� pegar Ordevil no P�ntano Ilus�o. Por favor, traga-me um cart�o de convite."
		end
	
	return 0
end

function NPC_QUEST_289(cnum,reqNumber) -- �糪ƽ ���� �Ա�(�ٸ��)
	local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1056) > 0 then
			return 1,0,"Voc� n�o tem que colar o Diabo. Voc� pode come�ar a se voc� falar com Quadra no P�ntano Ilus�o."

		end

		if GetItemCount(cnum, 1049, 0) == 0 then -- �ʴ���
		SetSwitchCount(cnum, 1061, 1)
			return 1,0,"Voc� tem o Colar da Devil's e um cart�o de convite? Se voc� d� pra mim, eu poderia pag�-lo. Mas cabe a mim se eu quero pagar-lhe ou n�o. Eu sou muito caprichoso. Se voc� tiver sorte, eu poderia te dar um monte de GP."
		end

		if GetItemCount(cnum, 1048, 0) == 0 then --�Ǹ��� �����
		SetSwitchCount(cnum, 1061, 1)
			return 1,0,"[D� colar e um cart�o de convite]"
		end

		return 2,0,"Voc� n�o tem um cart�o de convite. Voc� pode obter um cart�o de convite, se voc� pegar Ordevil no P�ntano Ilus�o.",12,"Voc� n�o tem que colar o Diabo. Voc� pode obter uma Quadra-se na ilus�o Swamp."

	elseif req == 12 then

		if GetItemCount(cnum, 1049, 0) == 0 then
			return 1,0,"Aqui est� 300GP para o servi�o fornecido."
		end

		if GetItemCount(cnum, 1048, 0) == 0 then
			return 1,0,"Aqui est� 1000GP para o servi�o fornecido."
		end

		random = SetRandom(cnum, 0, 1000)

		if random < 350 then
			
			AddItemCount(cnum, 1049, -1) -- �ʴ���
			AddItemCount(cnum, 1048, -1) -- �Ǹ��� �����
			AddMoney(cnum,300)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aqui est� 3000GP para o servi�o fornecido."

		elseif random >= 350 and random < 650 then
			
			AddItemCount(cnum, 1049, -1) --�ʴ���
			AddItemCount(cnum, 1048, -1) --�Ǹ��� �����
			AddMoney(cnum,1000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aqui est� 30000GP para o servi�o fornecido."

		elseif random >= 650 and random < 900 then
			
			AddItemCount(cnum, 1049, -1) --�ʴ���
			AddItemCount(cnum, 1048, -1) --�Ǹ��� �����
			AddMoney(cnum,3000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aqui est� 90000GP para o servi�o fornecido."

		elseif random >= 900 and random < 995 then
			
			AddItemCount(cnum, 1049, -1) --�ʴ���
			AddItemCount(cnum, 1048, -1) --�Ǹ��� �����
			AddMoney(cnum, 30000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Eu lhe darei todo o meu dinheiro, 150000GP. Considere-se uma pessoa de sorte."

		elseif random >= 995 and random < 998 then
			
			AddItemCount(cnum, 1049, -1) --�ʴ���
			AddItemCount(cnum, 1048, -1) --�Ǹ��� �����
			AddMoney(cnum,90000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Bem-vindo ao Ru�nas de Sinan. Eu sou o �ltimo descendente do Sinan. Eu quero que voc� me fa�a um favor. Toda a hist�ria Sinan � grande � enterrado neste lugar. Um dia, h� alguns monstros muito forte veio e invadiu este lugar. Eles s�o poderosos demais para eu cuidar. Estou � procura de um her�i para me ajudar no combate contra esses monstros poderosos, mas eu sinto que voc� n�o � forte o suficiente para me ajudar. Por favor, volte depois que voc� se tornar mais forte"

		elseif random >= 998 and random < 1000 then
			
			AddItemCount(cnum, 1049, -1) -- �ʴ���
			AddItemCount(cnum, 1048, -1) -- �Ǹ��� �����
			AddMoney(cnum, 150000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Bem-vindo ao Ru�nas de Sinan. Eu sou o �ltimo descendente do Sinan. Eu quero que voc� me fa�a um favor. Toda a hist�ria Sinan � grande � enterrado neste lugar. Um dia, h� alguns monstros muito forte veio e invadiu este lugar. Eles s�o poderosos demais para eu cuidar. Estou � procura de um her�i para me ajudar na luta contra esses monstros poderosos. Eu sei que � muito para pedir. Mas, voc� pode matar os monstros?"
			end
		end
		return 0
end

		

  

		
	

	
		

