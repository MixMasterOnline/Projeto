function NPC_QUEST_208(cnum,reqNumber) -- ¸®ÀÎÄ¿³× ´øÀü ÀÌµ¿ NPC- µ¥ÀÌºê

req = reqNumber


	if req == 1 then
		return 3,0,"Como eu deveria saber saber quem o tem. Eu vi um monstro tê-lo por aqui. ",2,"Estou muito ocupado agora. Vá-se embora. ",3,"Eu adverti-lo, mesmo que você me trouxe o Asa de Fada, isso não significa que você pode obter o Cane of Hope. Depende se eu posso vendê-lo por um bom preço. "


	elseif req == 2 then
		return 2,0,"Se você não tiver o Cristal da Angel's Tear. Vá-se embora. ",12,"Eu vou atirar em você com este arco e flecha se você mentir para mim novamente. ",13,"Deve haver mais de uma unidade de estoque. "


	elseif req == 12 then
		MoveZone(cnum, 150, 101)
		return 0


	elseif req == 13 then
		return 1,0,"Ah, desculpe, eu posso ter perdido a cana. Você poderia ir e encontrar uma outra ala, enquanto eu olho para a cana? "

	else
		return 0
	end
end



function NPC_QUEST_209(cnum,reqNumber) -- ¸®ÀÎÄ¿³× ´øÀü ÀÌµ¿ NPC- µ¥ÀÌºê

req = reqNumber


	if req == 1 then
		return 2,0,"hmmm .. Eu poderia lhe dar algumas cana, mas eu esqueci qual você queria. E onde eu coloquei. Desculpe! ",2,"Traga-me a Asa de Fada novamente e vou dar para você neste momento, com certeza. "

	elseif req == 2 then
		MoveZone(cnum, 60, 254)

	else
		return 0
	end
end