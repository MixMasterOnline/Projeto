function NPC_QUEST_208(cnum,reqNumber) -- ����Ŀ�� ���� �̵� NPC- ���̺�

req = reqNumber


	if req == 1 then
		return 3,0,"Como eu deveria saber saber quem o tem. Eu vi um monstro t�-lo por aqui. ",2,"Estou muito ocupado agora. V�-se embora. ",3,"Eu adverti-lo, mesmo que voc� me trouxe o Asa de Fada, isso n�o significa que voc� pode obter o Cane of Hope. Depende se eu posso vend�-lo por um bom pre�o. "


	elseif req == 2 then
		return 2,0,"Se voc� n�o tiver o Cristal da Angel's Tear. V�-se embora. ",12,"Eu vou atirar em voc� com este arco e flecha se voc� mentir para mim novamente. ",13,"Deve haver mais de uma unidade de estoque. "


	elseif req == 12 then
		MoveZone(cnum, 150, 101)
		return 0


	elseif req == 13 then
		return 1,0,"Ah, desculpe, eu posso ter perdido a cana. Voc� poderia ir e encontrar uma outra ala, enquanto eu olho para a cana? "

	else
		return 0
	end
end



function NPC_QUEST_209(cnum,reqNumber) -- ����Ŀ�� ���� �̵� NPC- ���̺�

req = reqNumber


	if req == 1 then
		return 2,0,"hmmm .. Eu poderia lhe dar algumas cana, mas eu esqueci qual voc� queria. E onde eu coloquei. Desculpe! ",2,"Traga-me a Asa de Fada novamente e vou dar para voc� neste momento, com certeza. "

	elseif req == 2 then
		MoveZone(cnum, 60, 254)

	else
		return 0
	end
end