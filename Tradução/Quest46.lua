
function NPC_QUEST_282(cnum,reqNumber) ---�糪ƽ ���� 1�� ���� NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Estou confiante para ir polegadas ",2,"Hmm, eu sou jovem MixMaster desculpe, eu acho que seu n�vel n�o � alto o suficiente para resistir ao vento na caverna. MAS, sapatas do vento pode ajudar seu corpo a luz. Voc� pode obt�-lo se voc� pegar um lambedor grande por aqui. ",3,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com Harley na Rolling Cores (X: 153.Y: 100) "

	elseif req == 2 then
	
		if GetItemCount(cnum,1050,0) == 0 then -- �糪ƽ ���� �����
			return 1,0,"N�o, isso n�o � verdade. Voc� precisa encontrar os sapatos de um lambedor grande. "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_283(cnum,reqNumber) ---�糪ƽ ���� 2�� ���� NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Boas. Mas devo adverti-lo, eventhough voc� est� usando sapatos de vento, voc� n�o pode ficar no calabou�o por muito tempo. Voc� provavelmente vai ficar encantada. Eu vou l� com voc�. Voc� est� pronto para entrar? ",2,"Sim ",3,"Harly sabe sobre o Cubo Caos. Por que voc� n�o encontrar Harly. "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- �糪ƽ ���� �����
			return 1,0,"Voc� precisa ter o t�nis do Vento para entrar no calabou�o. "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_284(cnum,reqNumber) ---�糪ƽ ���� 3�� ���� NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Come�ar o Anel da chuva � muito dif�cil. Embora voc� tenha os sapatos do vento, mas a durabilidade do sapato pode durar apenas alguns minutos. Ent�o, o vento forte do calabou�o ir� for��-lo afastado para Magirita. Por favor, entre o Anel da chuva dentro do prazo. ",2,"Como posso encontr�-lo? ",3,"Voc� encontrou o anel? "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- �糪ƽ ���� �����
			return 1,0,"Sim "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_285(cnum,reqNumber) ---�糪ƽ ���� 4�� ���� NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Voc� pode sair do calabou�o do Vento eventualmente. Voc� gostaria de sair agora? ",2,"Sim ",3,"Um desses monstros aqui vai ter. Derrot�-los e obter o item! "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- �糪ƽ ���� �����
			return 1,0,"V� em frente! "
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end