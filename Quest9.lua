 function NPC_QUEST_224(cnum,reqNumber) --NPC ∏«««Ω∫
	local req,id1,count1

	id1 = 372 --ø‰¡§¿« ≥Ø∞≥

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1010) < 1 then
			if GetSwitchCount(cnum, 1009) < 1 then
				if GetSwitchCount(cnum,18) == 0 then
					return 1,0,"Quem È vocÍ? Eu sÛ converso com meus amigos de Shira. Onde ela est·? Seu idiota, ela est· em VeHerseba."
				end

				return 2,0,"O quÍ? Shira enviou a mim? Por sua l·grima? Oh, ela deve precisar de minha bengala da EsperanÁa. Sua bengala de um bem especial que vocÍ conhece.",2,"Diga-me mais sobre o Cane."
			else
				return 3,0,"VocÍ trouxe a asa?",3,"… melhor ter o de cana",4,"Tenho a Asa de fada."
			end
		else
			return 1,0,"Por favor, encontrar Shira agora."
		end


	elseif req == 2 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"VocÍ pode falar comigo apenas se tiver o Cristal de Ouro Tear. Eu tenho medo Eu preciso ir, porque eu estou congelando aqui ..."
		end

		return 2,0,"D· esperanÁa. VocÍ n„o sabe de nada? Ela provavelmente quer passar de todas as tristezas. Porque eu sou uma pessoa t„o agrad·vel, se vocÍ me algo caro, digamos, uma asa de fada, vou dar-lhe o bast„o da EsperanÁa.",12,"Ok, quem tem?"


	elseif req == 12 then
		StartQuest(cnum, 10)
		AddSwitchCount(cnum, 1009, 1)
		return 1,0,"Como eu deveria saber saber quem o tem. Eu vi um monstro tÍ-lo por aqui."




	elseif req == 3 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Estou muito ocupado agora. V·-se embora."
		end

		return 1,0,"Eu adverti-lo, mesmo que vocÍ me trouxe o Asa de Fada, isso n„o significa que vocÍ pode obter o Cane of Hope. Depende se eu posso vendÍ-lo por um bom preÁo."

	elseif req == 4 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Se vocÍ n„o tiver o Cristal da Angel's Tear. V·-se embora."
		end

		if GetItemCount(cnum,372,0) == 0 then --ø‰¡§¿« ≥Ø∞≥(372)
			return 1,0,"Eu vou atirar em vocÍ com este arco e flecha se vocÍ mentir para mim novamente."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Deve haver mais de uma unidade de estoque."
		end

		random = SetRandom(cnum,0,100)

		if random < 24 then
			AddItemCount(cnum,302,1) -- »˙∏µ∆˜º«
			AddItemCount(cnum,id1,-1) --ø‰¡§¿« ≥Ø∞≥(372)
			return 1,0,"Ah, desculpe, eu posso ter perdido a cana. VocÍ poderia ir e encontrar uma outra ala, enquanto eu olho para a cana?"

		elseif random >=24 and random < 30 then
			AddItemCount(cnum,303,1) -- ≥™¿ÃΩ∫ »˙∏µ∆˜º«
			AddItemCount(cnum,id1,-1) --ø‰¡§¿« ≥Ø∞≥(372)
			return 1,0,"hmmm .. Eu poderia lhe dar algumas cana, mas eu esqueci qual vocÍ queria. E onde eu coloquei. Desculpe!"

		elseif random >=30 and random <60 then
			AddItemCount(cnum,304,1) -- ∏æÓ »˙∏µ∆˜º«
			AddItemCount(cnum,id1,-1) --ø‰¡§¿« ≥Ø∞≥(372)
			return 1,0,"Traga-me a Asa de Fada novamente e vou dar para vocÍ neste momento, com certeza."

		elseif random >=60 and random <100 then
			AddItemCount(cnum,373,1) ---»Ò∏¡¿« ¡ˆ∆Œ¿Ã
			AddItemCount(cnum,id1,-1) --ø‰¡§¿« ≥Ø∞≥(372)
			AddSwitchCount(cnum, 1010, 1)
			EndQuest(cnum, 10)
			return 1,0,"Ohh eu estou ficando entediado de fazer troÁa de vocÍ. Aqui est· o Cane of Hope. Ir e ajudar Shira."
		end

	end

	return 0
end


