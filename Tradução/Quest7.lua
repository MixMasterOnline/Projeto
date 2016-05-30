 function NPC_QUEST_319(cnum,reqNumber) -- NPC�Ҹ�(ī���� ť��)-�Ѹ� �ھ��� �ʵ�
	local req, id1, count1

	id1 = 367

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1006) < 1 then
			return 2,0,"Oh eu posso sentir voc� precisa de algo. Hmm. .. Voc� deseja obter o Crystal Shira de Tear de Ouro? H� apenas uma maneira de tocar o cora��o de Shira. Trata-se de encontrar o seu retrato de fam�lia que perdeu.",2,"A explica��o sobre a foto"
		else
			if GetSwitchCount(cnum, 16) < 1 then
				return 2,0,"Voc� descobriu as luvas da Elf?",3,"Sim"
			else
				return 1,0,"Agora, encontrar Gorden na zona sul de VeHerseba (X: 199 Y: 122). Gorden � o guardi�o da Masmorra do Vento, � s� come�ar o Anel de chuva a partir da�. Boa sorte, o Dungeon � muito perigoso."
			end
		end

	elseif req == 2 then

		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"Por que voc� n�o encontrar Shira em VeHerseva (X: 75, Y: 58) em primeiro lugar."
		end

		return 2,0,"Caos Cube � um misterioso tesouro. Com o uso de anel de chuva, pode recriar objetos perdidos. Eu tenho o Cubo Chaos, mas voc� precisa Luvas da Elf para lidar com seu poder m�gico",12,"Eu vou encontrar as luvas da Elf."

	elseif req == 12 then
		StartQuest(cnum, 7)
		AddSwitchCount(cnum, 1006, 1)
		return 1,0,"Voc� pode conseguir as luvas do elfo se voc� derrotar um monstro relativamente s�bia na regi�o de campo Rolling Cores."


	elseif req == 3 then

		count1 = GetItemCount(cnum,id1,0)

		if GetSwitchCount(cnum,16) > 0 then
			return 1,0,"Eu n�o tenho outra Cube Caos."
		end

		if GetSwitchCount(cnum,15) == 0 then
		return 1,0,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com Shira em VeHerseba (X: 75.Y: 60)"
		end

		if GetItemCount(cnum,367,0) == 0 then -- ������ �尩(367)
			return 1,0,"N�o minta para um ps�quico! ~ Zap! ~"
		end

		AddSwitchCount(cnum,16,1)
		AddItemCount(cnum,id1,-count1) --������ �尩
		AddItemCount(cnum,366,1) --ī���� ť��
		EndQuest(cnum, 7)
		return 1,0,"Voc� me trouxe as luvas da Elf, agora voc� pode prender Chaos Cube."

	end
	return 0
end
