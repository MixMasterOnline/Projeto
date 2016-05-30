function NPC_QUEST_216(cnum,reqNumber) -- �糪ƽ�ʵ� �̵� NPC- ���̺�
	local req = reqNumber

	if req == 1 then
		return 4,0,"N�o h� Cristal de Angel's Tear. ",2,"Voc� deve pegar uma garrafa de vidro de ouro para colocar os cristais em, caso contr�rio, eles v�o perder poder m�gico. Golden garrafa de vidro � um frasco precioso e que tem sido escondido. V� ao encontro da Helena, que � chefe da aldeia das ru�nas Cheseva (X: 150 Y: 95). Ele vai lhe dizer como encontr�-lo. ",3,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com Holden em Herseba de entrada (X: 195.Y: 76) ",4,"Hmmmm, eu acho que voc� tem que me fazer chorar primeiro. Minhas emo��es foram destru�das desde monstro atacou a minha fam�lia. Eu tenho uma id�ia, no ataque de um monstro e eu tamb�m perdi o meu precioso anel tamb�m. Isso pode ser capaz de me fazer chorar. Voc� pode por favor encontrar o meu anel. O monstro parecia uma tartaruga mal. " 

	elseif req == 2 then

		if  GetItemCount(cnum,1050,0) >= 1 then -- �糪ƽ ���� ������� �̹� ������ �ִٸ� �� �̻� ���ް� �Ѵ�
			return 1,0,"Eu vou busc�-la de volta para voc�. "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Foi pensando em anos, mas o ataque ainda me faz chorar. "
		end
					
		if GetItemCount(cnum,68,0) > 0 then -- �����̾��� ������� �ִٸ� ���� �ð��� �˾ƿ´�
			remain_time = GetItemPeriod(cnum,68)

		elseif GetItemCount(cnum,69,0) > 0 then
			remain_time = GetItemPeriod(cnum,69)

		elseif GetItemCount(cnum,95,0) > 0 then
			remain_time = GetItemPeriod(cnum,95)

		elseif GetItemCount(cnum,96,0) > 0 then
			remain_time = GetItemPeriod(cnum,96)

		elseif GetItemCount(cnum,940,0) > 0 then
			remain_time = GetItemPeriod(cnum,940)

		elseif GetItemCount(cnum,1316,0) > 0 then
			remain_time = GetItemPeriod(cnum,1316)

		elseif GetItemCount(cnum,3711,0) > 0 then
			remain_time = GetItemPeriod(cnum,3711)
			
		elseif GetItemCount(cnum,8178,0) > 0 then
			remain_time = GetItemPeriod(cnum,8178)
			
		elseif GetItemCount(cnum,8226,0) > 0 then
			remain_time = GetItemPeriod(cnum,8226)

		elseif GetItemCount(cnum,8499,0) > 0 then
			remain_time = GetItemPeriod(cnum,8499)
			
		else
			return 1,0,"Por que voc� n�o encontrar Holden na entrada Herseba. "
		end
			
		if remain_time <= 0 then --�����̾� ����� �ð��� ����Ǿ����� ���ƽ ���� ����� ���ش�
			return 1,0,"Um cristal de Tear Diabo � suficiente para mim. Mas, eu estou com medo que eu n�o tenho nada para lhe dar mais. "
		end
			
		AddItemOnTime(cnum,1050,remain_time)-- �糪ƽ ���� ������� �ָ鼭 �����̾��� ������� ���� �ð��� �ִ´�. 
		return 1,0,"Por favor, v� e recolher o meu anel? "
						

	elseif req == 3 then
		return 2,0,"Voc� n�o tem a escova de Ouro, por que voc� n�o tem? ",13,"voz chorosa de Elly � muito famosa em todo o mundo, n�o �? Umm ... By the way, se voc� jogar fora � escultura? "

	elseif req == 13 then
		if GetItemCount(cnum,1046,0) < 10 then
			return 1,0,"Bem feito!Ah, as mem�rias. ~ Shira gritos e l�grimas crystalises ~ Muito obrigado. Por favor aceite este Cristal de Tear Diabo. Eu tamb�m lhe dar� 5000GP como um presente tamb�m. "
		end

		if GetItemCount(cnum,1050,0) ==1 then
			return 1,0,"Eu n�o sei your're aqui novamente, mas eu acho que voc� tem algo a ver direito. Por que voc� n�o ir agora? "
		end
		
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Eu n�o sei your're aqui novamente, mas eu acho que voc� tem algo a ver direito. Por que voc� n�o ir agora? "
		end

		AddItemCount(cnum,1046,-10)
		AddItemCount(cnum,1050,1) -- �糪ƽ ���� �����
		return 1,0,"Como voc� encontrou uma foto minha fam�lia? Ele foi queimado pelos monstros, eu n�o posso acreditar. Ah, ele me faz chorar. Mas feliz tamb�m. Por favor, tome isso, � de cristal de Ouro Tear. Obrigado, sua buthere n�o custa algum dinheiro. "
		

	elseif req == 4 then

		if GetItemCount(cnum,1050,0) == 0 then
			return 1,0,"Voc� pode ter apenas um cristal de Angel's Tear. Por favor, encontrar um chefe de aldeia chamado Irena nas ru�nas Cheseva. "
		end

		MoveZone(cnum,72,254)
		end
	return 0
end

function NPC_QUEST_321(cnum,reqNumber) -- ��𽺷� �̵� NPC-���Ϸ�
	local req = reqNumber

	if req == 1 then
		return 2,0,"Voc� pode obter um cristal de Angel's Tear depois de obter o Crystal of Golden Tear. ",2,"Se voc� encontrar Manpeace que est� na pradaria Owalljae, voc� pode obter um bast�o do desejo. "

	elseif req == 2 then

		MoveZone(cnum,67,254)
		end
	return 0
end

function NPC_QUEST_258(cnum,reqNumber) ---�糪ƽ ���� �̵� NPC
	local req = reqNumber
	
	if req == 1 then
		return 4,0,"Ah, n�o posso estar chorando para sempre. Minha fam�lia est� no passado. Muito obrigado. Eu te darei 12000GP como um presente. Voc� finalmente recolhidos todos os 3 cristais de l�grima. ",2,"Oh eu posso sentir voc� precisa de algo. Hmm. .. Voc� deseja obter o Crystal Shira de Tear de Ouro? H� apenas uma maneira de tocar o cora��o de Shira. Trata-se de encontrar o seu retrato de fam�lia que perdeu. ",3,"A explica��o sobre a foto ",4,"Voc� descobriu as luvas da Elf? "

	elseif req == 2 then

		if  GetItemCount(cnum,1051,0) >= 1 then -- �糪ƽ ���� ������� �̹� ������ �ִٸ� �� �̻� ���ް� �Ѵ�
			return 1,0,"Sim "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Agora, encontrar Gorden na zona sul de VeHerseba (X: 199 Y: 122). Gorden � o guardi�o da Masmorra do Vento, � s� come�ar o Anel de chuva a partir da�. Boa sorte, o Dungeon � muito perigoso. "
		end

		if GetItemCount(cnum,68,0) > 0 then -- �����̾��� ������� �ִٸ� ���� �ð��� �˾ƿ´�
			remain_time = GetItemPeriod(cnum,68)

		elseif GetItemCount(cnum,69,0) > 0 then
			remain_time = GetItemPeriod(cnum,69)

		elseif GetItemCount(cnum,95,0) > 0 then
			remain_time = GetItemPeriod(cnum,95)

		elseif GetItemCount(cnum,96,0) > 0 then
			remain_time = GetItemPeriod(cnum,96)

		elseif GetItemCount(cnum,940,0) > 0 then
			remain_time = GetItemPeriod(cnum,940)

		elseif GetItemCount(cnum,1316,0) > 0 then
			remain_time = GetItemPeriod(cnum,1316)

		elseif GetItemCount(cnum,3711,0) > 0 then
			remain_time = GetItemPeriod(cnum,3711)
			
		elseif GetItemCount(cnum,8178,0) > 0 then
			remain_time = GetItemPeriod(cnum,8178)
			
		elseif GetItemCount(cnum,8226,0) > 0 then
			remain_time = GetItemPeriod(cnum,8226)

		elseif GetItemCount(cnum,8499,0) > 0 then
			remain_time = GetItemPeriod(cnum,8499)
			
		else
			return 1,0,"Por que voc� n�o encontrar Shira em VeHerseva (X: 75, Y: 58) em primeiro lugar. "
		end
			
		if remain_time <= 0 then --�����̾� ����� �ð��� ����Ǿ����� ���ƽ ���� ����� ���ش�
			return 1,0,"Caos Cube � um misterioso tesouro. Com o uso de anel de chuva, pode recriar objetos perdidos. Eu tenho o Cubo Chaos, mas voc� precisa Luvas da Elf para lidar com seu poder m�gico "
		end
			
		AddItemOnTime(cnum,1051,remain_time)-- �糪ƽ ���� ������� �ָ鼭 �����̾��� ������� ���� �ð��� �ִ´�. 
		return 1,0,"Eu vou encontrar as luvas da Elf. "

	elseif req == 3 then
		return 2,0,"Voc� pode conseguir as luvas do elfo se voc� derrotar um monstro relativamente s�bia na regi�o de campo Rolling Cores. ",13,"Eu n�o tenho outra Cube Caos. "
	
	elseif req == 13 then

		if GetItemCount(cnum,1049,0) < 10 then
			return 1,0,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com Shira em VeHerseba (X: 75.Y: 60) "
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"N�o minta para um ps�quico! ~ Zap! ~ "
		end

		if GetItemCount(cnum,1051,0) ==1 then
			return 1,0,"Voc� me trouxe as luvas da Elf, agora voc� pode prender Chaos Cube. "
		end
	
		AddItemCount(cnum,1049,-10)
		AddItemCount(cnum,1051,1) --�糪ƽ ���� �����
		return 1,0,"Oh, voc� tem um cubo Caos e as luvas da Elf. Voc� deve estar aqui por uma raz�o. Ao usar o Chaos Cube com o Anel de chuva, voc� pode reviver algo que foi perdido no passado. Mas voc� precisa ser forte o suficiente para atravessar o Dungeon do Vento "
		
	elseif req == 4 then

		if GetItemCount(cnum,1051,0) == 0 then -- �糪ƽ ���� 1�� �����
			return 1,0,"Conte-me sobre o Dungeon. "
		end
	
		MoveZone(cnum,91,254)
		end
	return 0
end

function NPC_QUEST_249(cnum,reqNumber) ---�糪ƽ ���� 1�� NPC- �ݵ���
	local req = reqNumber

	if req == 1 then
		return 3,0,"Voc� trouxe os sapatos do vento? ",2,"Sim, eu tenho isso aqui comigo. ",3,"Primeiro, voc� precisa obter o Cubo Caos. Em seguida, eleg�veis para o Dungeon do Vento. "

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- �糪ƽ ���� �����
			return 1,0,"Voc� deve ter um corpo resistente para entrar na barreira de Dungoen do Vento. Se voc� n�o estiver forte o suficiente, o vento Dungeon vai lhe empurrar para fora para um lugar desconhecido. "
		end

		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end