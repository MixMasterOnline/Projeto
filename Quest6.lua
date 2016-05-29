 function NPC_QUEST_259(cnum,reqNumber) -- ������ ���� (���츣����)
	local req,id1,id2,id3,id4,count1,count2,count3,count4

	id1 = 361 --�� ��
	id2 = 363 --Ȳ�ݻ� ������
	id3 = 365 --������ ����
	id4 = 373 --����� ������

	Switch1 = GetSwitchCount(cnum, 1010)
	Switch2 = GetSwitchCount(cnum, 18)
	Switch3 = GetSwitchCount(cnum, 17)
	Switch4 = GetSwitchCount(cnum, 1005)
	Switch5 = GetSwitchCount(cnum, 19)

	local req = reqNumber

	if req == 1 then

		if Switch5 < 1 then
			if Switch1 < 1 then
				if Switch2 < 1 then
					if Switch3 < 1 then
						if Switch4 < 1 then
							return 2,0,"Ol�, voc� quer saber como usar o pente para apagar a mem�ria de uma �rvore? Eu n�o estou 100% certo, mas meus 3 misteriosa l�grima que crystalises em um ",3,"Sim, eu sei."
						else
							if GetSwitchCount(cnum, 15) < 1 then
								return 2,0,"Trouxe-me, meu anel perdido?",4,"Sim"
							else
								return 1,0,"Ok, agora o cristal 2. Eu n�o sei como eu posso chorar agora. Ah, eu tenho uma boa id�ia! Se voc� vai a Rolling Cores (X: 153 Y: 93) �rea de campo e encontrar"
							end
						end
					else
						return 2,0,"Voc� ainda tem algo a me perguntar?",12,"D� a foto de fam�lia."
					end
				else
					return 1,0,"Agora, para o �ltimo mas n�o menos importante, o Crystal de Angel's Tear. Isso � dif�cil, pois eu tenho que chorar de felicidade. Hmmmm, talvez ir e encontrar"
				end
			else
				return 2,0,"Voc� recebeu o bast�o da esperan�a?",8,"Sim, aqui est�."
			end
		else
			if GetSwitchCount(cnum,19) == 0 then
				return 1,0,"Voc� n�o recolher todas as l�grimas de tr�s cristais. Sinto muito. Eu n�o posso lhe dar qualquer informa��o."
			end

			if GetItemCount(cnum,364,0) == 0 then  --������ ��������(364)
				return 1,0,"N�o h� Cristal de Devil's Tear."
			end

			if GetItemCount(cnum,370,0) == 0 then  --��Ȳ�� ��������(370)
				return 1,0,"N�o h� Cristal de Ouro Tear."
			end

			if GetItemCount(cnum,374,0) == 0 then  --����� ��������(374)
				return 1,0,"N�o h� Cristal de Angel's Tear."
			end

			return 1,0,"Voc� deve pegar uma garrafa de vidro de ouro para colocar os cristais em, caso contr�rio, eles v�o perder poder m�gico. Golden garrafa de vidro � um frasco"

		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"*** Antes de voc� seguir em frente com o World Quest, voc� deve falar com Holden em Herseba de entrada (X: 195.Y: 76)"
		end

		if GetSwitchCount(cnum, 13) > 0 then
			return 2,0,"Hmmmm, eu acho que voc� tem que me fazer chorar primeiro. Minhas emo��es foram destru�das desde monstro atacou a minha fam�lia. Eu tenho uma id�ia, no",101,"Eu vou busc�-la de volta para voc�."
		end

	elseif req == 101 then
		StartQuest(cnum, 6)
		AddSwitchCount(cnum, 1005, 1)
		return 1,0,"Foi pensando em anos, mas o ataque ainda me faz chorar."



	elseif req == 4 then

		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)

		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"Por que voc� n�o encontrar Holden na entrada Herseba."
		end

		if GetSwitchCount(cnum, 15) > 0 then
			return 1,0,"Um cristal de Tear Diabo � suficiente para mim. Mas, eu estou com medo que eu n�o tenho nada para lhe dar mais."
		end

		if GetItemCount(cnum,365, 0) == 0 then -- ������ ����
			return 1,0,"Por favor, v� e recolher o meu anel?"
		end

		if GetItemCount(cnum, 361, 0) == 0 then -- �� ��
			return 1,0,"Voc� n�o tem a escova de Ouro, por que voc� n�o tem?"
		end

		if GetItemCount(cnum, 363, 0) == 0 then --Ȳ�ݻ� ������
			return 1,0,"voz chorosa de Elly � muito famosa em todo o mundo, n�o �? Umm ... By the way, se voc� jogar fora � escultura?"
		end

		AddMoney(cnum,5000)
		AddSwitchCount(cnum,15,1) -- ���� ���������� ���� ����ġ ��
		AddItemCount(cnum,id1,-count1) -- �� ��(361)
		AddItemCount(cnum,id2,-count2) --Ȳ�ݻ� ������(363)
		AddItemCount(cnum,id3,-count3) --������ ����(365)
		AddItemCount(cnum,364,1) --���� ��������(364)
		EndQuest(cnum, 6)
		return 1,0,"Bem feito!Ah, as mem�rias. ~ Shira gritos e l�grimas crystalises ~ Muito obrigado. Por favor aceite este Cristal de Tear Diabo. Eu tamb�m lhe dar� 5000GP como um presente tamb�m."



	elseif req == 12 then
		if GetSwitchCount(cnum, 17) < 1 then
			return 1,0,"Eu n�o sei your're aqui novamente, mas eu acho que voc� tem algo a ver direito. Por que voc� n�o ir agora?"

		elseif GetItemCount(cnum, 371, 0) < 1 then
			return 1,0,"Eu n�o sei your're aqui novamente, mas eu acho que voc� tem algo a ver direito. Por que voc� n�o ir agora?"

		else
			AddMoney(cnum,10000)
			AddItemCount(cnum,370,1) -- ��Ȳ�� ��������(370)
			AddItemCount(cnum,371,-1)
			AddSwitchCount(cnum,18,1) -- ��Ȳ�� ���������� ���� ����ġ ��
			return 1,0,"Como voc� encontrou uma foto minha fam�lia? Ele foi queimado pelos monstros, eu n�o posso acreditar. Ah, ele me faz chorar. Mas feliz tamb�m. Por favor, tome isso, � de cristal de Ouro Tear. Obrigado, sua buthere n�o custa algum dinheiro."
		end



	elseif req == 8 then

		count4 = GetItemCount(cnum,id4,0)

		if GetSwitchCount(cnum,19) > 0 then
			return 1,0,"Voc� pode ter apenas um cristal de Angel's Tear. Por favor, encontrar um chefe de aldeia chamado Irena nas ru�nas Cheseva."
		end

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Voc� pode obter um cristal de Angel's Tear depois de obter o Crystal of Golden Tear."
		end

		if GetItemCount(cnum,373,0) == 0 then -- ����� ������(373)
			return 1,0,"Se voc� encontrar Manpeace que est� na pradaria Owalljae, voc� pode obter um bast�o do desejo."
		end

		AddItemCount(cnum,id4,-count4) -- ����� ������(373)
		AddItemCount(cnum,374,1) --����� ��������(374)
		AddMoney(cnum,12000)
		AddSwitchCount(cnum,19,1) -- ����� ���������� ���� ����ġ ��
		return 1,0,"Ah, n�o posso estar chorando para sempre. Minha fam�lia est� no passado. Muito obrigado. Eu te darei 12000GP como um presente. Voc� finalmente recolhidos todos os 3 cristais de l�grima."

	end
	return 0
end




