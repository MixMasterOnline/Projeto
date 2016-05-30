function NPC_QUEST_211(cnum,reqNumber) -- ������Ÿ �����ؾ� (��ũ��)- ���̽� ũ��
	local req = reqNumber

	if req == 1 then
		return 3,0,"[N�o, eu n�o]",2,"Macca disse que recebeu o sorvete bem, obrigado.",3,"Acho que j� deu o sorvete, n�o �?"

	elseif req == 2 then

		if GetSwitchCount(cnum, 1052) > 0 then
			return 1,0,"O invent�rio n�o tem espa�o suficiente para manter gelado."
		end

		if GetSwitchCount(cnum, 1051) > 0 then
			return 1,0,"Voc� tem sorvete j�. Por favor, d� gelado para Macca nos prados do Sul Mekrita."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"H� uma coisa que voc� tem que pensar ... A menos que voc� tomar sorvete com Macca em Meadows of Southern Mekrita em breve, ser� gelado derreter."
		end

		if GetItemCount(cnum,1044,0) == 1 then -- ���̽�ũ��
			return 1,0,"Me desculpe, mas voc� abandonou a chance de ter um monte de GP"
		end

		AddItemCount(cnum,1044,1) -- ���̽�ũ�� ����
		AddSwitchCount(cnum, 1051, 1)
		return 1,0,"Laboz disse que recebeu a rosa ea carta. Gra�as"

	elseif req == 3 then

		return 1,0,"Voc� quis terminar a entrega da carta tamb�m?"
		
		end

	return 0

end


function NPC_QUEST_223(cnum,reqNumber) -- ��ũ��Ÿ �����ʿ� (��ī)-����
	local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1053) > 0 then
			return 1,0,"Eu n�o posso dar-lhe a letra, se h� uma rosa no invent�rio."
		end

		if GetSwitchCount(cnum, 1052) > 0 then
			return 1,0,"Voc� n�o pode ter correspond�ncia com mais de um."
		end
		
		if GetItemCount(cnum,1046,0) == 1 then
			return 1,0,"Para fazer esta quest, voc� deve ter mais de um espa�o vazio no seu invent�rio ..."
		end

		if GetItemCount(cnum,1045,0) == 1 then --����
			return 1,0,"Eu desejo muito gelado! Por acaso voc� tem sorvete? Voc� pode obter sorvete de duto, no oeste do Mar da Magirita."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Tenho iceream."
		end

		return 2,0,"Voc� n�o tem sorvete. Voc� pode obter a partir de sorvete Dukfu no oeste do Mar da Magirita.",2,"Muito obrigado por este frio gelado.! By the way, oh meu deus! Eu n�o tenho nenhuma taxa de entrega. Hm ... Voc� pode pegar esta carta para Laboz na Damp Islava �rea? Laboz ? lhe dar� uma grande quantidade de GP em recompensa por sua bondade."

	elseif req == 2 then

		if GetItemCount(cnum,1044,0) == 0 then
			return 1,0,"Sim, eu vou entregar esta carta."
		end

		AddItemCount(cnum,1044,-1) -- ���̽�ũ��
		return 2,0,"Bem, h� mais uma coisa. Ou seja gosta Laboz subiu muito. Laboz n�o vai ler esta carta a menos que haja rosa. Voc� pode conseguir uma rosa de derrotar ForceFlyer em Islaba Damp �rea.",12,"Obrigado por a rosa ea carta" 

	elseif req == 12 then

		AddItemCount(cnum,1045,1) -- ���� �߰�
		AddSwitchCount(cnum, 1052, 1)
		return 1,0,"Eu n�o vou ler qualquer letra, sem rosa! Voc� pode conseguir uma rosa de derrotar ForceFlyer em Islaba Damp �rea. Por favor, d�-me uma rosa."
		end
	
	return 0
end

function NPC_QUEST_213(cnum,reqNumber) -- ���̽���� ������ (����) 
	local req = reqNumber

	if req == 1 then


		if GetSwitchCount(cnum, 1053) > 0 then
			return 1,0,"Voc� n�o tem a carta. Voc� pode obter a carta, se cumprir Macca no Sul do Mekrita Meadows."
		end

		if GetItemCount(cnum,1046,0) == 0 then
			return 1,0,"Voc� tem o leter e rosa? Se voc� me der eles, eu vou te pagar tudo. Mas eu posso pagar-lhe com o meu humor dita, porque eu sou extremamente temperamental. Voc� pode obter lotes de GP, se voc� est� na sorte .."
		end

		if GetItemCount(cnum,1045,0) == 0 then
			return 1,0,"[Para dar a carta e levantou-se]"
		end

		return 2,0,"Voc� n�o tem rosa.",12,"Voc� n�o tem a carta."

	elseif req == 12 then

		if GetItemCount(cnum,1046,0) == 0 then
			return 1,0,"Vou pagar-lhe 300 GP. A rosa murcha."
		end

		if GetItemCount(cnum,1045,0) == 0 then
			return 1,0,"Vou pagar-lhe 1000 GP. A rosa murcha um pouco."
		end

		random = SetRandom(cnum,0,1000)

		if random < 350 then
			
			AddItemCount(cnum,1046-1) -- ��̲�
			AddItemCount(cnum,1045,-1) -- ����
			AddMoney(cnum,300)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Vou pagar-lhe 3000 GP. A rosa n�o olha fresco!"

		elseif random >= 350 and random < 650 then
			
			AddItemCount(cnum,1046,-1) --��̲�
			AddItemCount(cnum,1045,-1) --����
			AddMoney(cnum,1000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Vou pagar-lhe 30.000 GP. A rosa parece fresco."

		elseif random >= 650 and random < 900 then
			
			AddItemCount(cnum,1046,-1) --��̲�
			AddItemCount(cnum,1045,-1) --����
			AddMoney(cnum,3000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Vou pagar-lhe 90.000 GP. A rosa parece muito fresco."

		elseif random >= 900 and random < 995 then
			
			AddItemCount(cnum,1046,-1) --��̲�
			AddItemCount(cnum,1045,-1) --����
			AddMoney(cnum,30000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Eu vou lhe pagar 150.000 GP tudo que tenho. Voc� � a pessoa de sorte!"

		elseif random >= 995 and random < 998 then
			
			AddItemCount(cnum,1046,-1) --��̲�
			AddItemCount(cnum,1045,-1) --����
			AddMoney(cnum,90000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Voc� pode por favor me fazer um favor? Pode dar este bolo para Quadra no P�ntano Ilus�o? Quadra realmente gosta de bolo. Voc� deve ser r�pido, por�m, de outra forma o bolo ser� arruinado."

		elseif random >= 998 and random <= 1000 then
			
			AddItemCount(cnum,1046,-1) -- ��̲�
			AddItemCount(cnum,1045,-1) -- ����
			AddMoney(cnum,150000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"[Sim, eu posso entreg�-lo por voc�]"
			end

		else
			return 0
		
		end
		return 0
end

		

  

		
	

	
		

