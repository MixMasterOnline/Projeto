 function NPC_QUEST_224(cnum,reqNumber) --NPC ���ǽ�
	local req,id1,count1

	id1 = 372 --������ ����

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1010) < 1 then
			if GetSwitchCount(cnum, 1009) < 1 then
				if GetSwitchCount(cnum,18) == 0 then
					return 1,0,"Quem � voc�? Eu s� converso com meus amigos de Shira. Onde ela est�? Seu idiota, ela est� em VeHerseba."
				end

				return 2,0,"O qu�? Shira enviou a mim? Por sua l�grima? Oh, ela deve precisar de minha bengala da Esperan�a. Sua bengala de um bem especial que voc� conhece.",2,"Diga-me mais sobre o Cane."
			else
				return 3,0,"Voc� trouxe a asa?",3,"� melhor ter o de cana",4,"Tenho a Asa de fada."
			end
		else
			return 1,0,"Por favor, encontrar Shira agora."
		end


	elseif req == 2 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Voc� pode falar comigo apenas se tiver o Cristal de Ouro Tear. Eu tenho medo Eu preciso ir, porque eu estou congelando aqui ..."
		end

		return 2,0,"D� esperan�a. Voc� n�o sabe de nada? Ela provavelmente quer passar de todas as tristezas. Porque eu sou uma pessoa t�o agrad�vel, se voc� me algo caro, digamos, uma asa de fada, vou dar-lhe o bast�o da Esperan�a.",12,"Ok, quem tem?"


	elseif req == 12 then
		StartQuest(cnum, 10)
		AddSwitchCount(cnum, 1009, 1)
		return 1,0,"Como eu deveria saber saber quem o tem. Eu vi um monstro t�-lo por aqui."




	elseif req == 3 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Estou muito ocupado agora. V�-se embora."
		end

		return 1,0,"Eu adverti-lo, mesmo que voc� me trouxe o Asa de Fada, isso n�o significa que voc� pode obter o Cane of Hope. Depende se eu posso vend�-lo por um bom pre�o."

	elseif req == 4 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Se voc� n�o tiver o Cristal da Angel's Tear. V�-se embora."
		end

		if GetItemCount(cnum,372,0) == 0 then --������ ����(372)
			return 1,0,"Eu vou atirar em voc� com este arco e flecha se voc� mentir para mim novamente."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Deve haver mais de uma unidade de estoque."
		end

		random = SetRandom(cnum,0,100)

		if random < 24 then
			AddItemCount(cnum,302,1) -- ��������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			return 1,0,"Ah, desculpe, eu posso ter perdido a cana. Voc� poderia ir e encontrar uma outra ala, enquanto eu olho para a cana?"

		elseif random >=24 and random < 30 then
			AddItemCount(cnum,303,1) -- ���̽� ��������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			return 1,0,"hmmm .. Eu poderia lhe dar algumas cana, mas eu esqueci qual voc� queria. E onde eu coloquei. Desculpe!"

		elseif random >=30 and random <60 then
			AddItemCount(cnum,304,1) -- ��� ��������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			return 1,0,"Traga-me a Asa de Fada novamente e vou dar para voc� neste momento, com certeza."

		elseif random >=60 and random <100 then
			AddItemCount(cnum,373,1) ---����� ������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			AddSwitchCount(cnum, 1010, 1)
			EndQuest(cnum, 10)
			return 1,0,"Ohh eu estou ficando entediado de fazer tro�a de voc�. Aqui est� o Cane of Hope. Ir e ajudar Shira."
		end

	end

	return 0
end


