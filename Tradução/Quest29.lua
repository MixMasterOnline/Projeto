function NPC_QUEST_206(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 301) < 1 then
			return 2,0,"Está tão quente hoje. Estar em casa é a melhor coisa neste tempo.",2,"Eu tenho que entregar algo para Herseba, mas não posso por causa do horário duplo. Então ... Você poderia entregar em vez de mim?"

		else
			return 1,0,"Claro que sim."

		end


	elseif req == 2 then
		return 2,0,"Muito obrigado. Entregue este Frutas Merchant em Herseba. Isso é tudo. Ele vai pagar por ele. Eu espero que sua viagem segura.",12,"erro"


	elseif req == 12 then
		AddItemCount(cnum, 4423, 1)
		AddSwitchCount(cnum, 301, 1)
		StartQuest(cnum, 145)
		return 1,0,"Ah ... Quando será que o fruto mandei vir?"
	
	else
		return 1,0,"Ah ... Quando será que o fruto mandei vir? Hum. .. Quem é você?"

	end
end




function NPC_QUEST_205(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 332) < 1 then		
			if GetSwitchCount(cnum, 301) < 1 then
				return 1,0,"Trouxe-lhe caixa de fruta."

			else
				return 2,0,"Bem, agora eu estou indo para ficar pronto em meu negócio com a fruta.",2,"Eu não posso ver o fruto? Eu sou louca no tempo quente?"

			end
		else
			return 1,0,"Oh. Ele pensado alguma maneira para não entregar esta neste weather.Well quente, não importa. Isso é bom o suficiente, porque eu tenho a fruta. Obrigado."

		end


	elseif req == 2 then
		if GetItemCount(cnum, 4423, 0) < 1 then
			return 2,0,"erro"

		else
			AddSwitchCount(cnum, 332, 1)
			AddItemCount(cnum, 4423, -1)
			AddHeroExp(cnum, 8000)
			EndQuest(cnum, 145)
			return 1,0,"Este é um problema grande. Como posso conseguir isso?"

		end

	
	else
		return 1,0,"Oh ~ Você se parece com o homem de ablility. Poderia dar-me um favor?"

	end
end





function NPC_QUEST_219(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 343) < 1 then		
			if GetSwitchCount(cnum, 302) < 1 then
				if GetHeroLv(cnum) < 15 then
					return 2,0,"O que posso fazer por você?"	

		
				else
					return 2,0,"Recebeste Folha de Cracuss? Meu filho está morrendo ..",2,"Aqui, eu consegui."
	
				end
			else
				return 2,0,"Meu filho parece ser recuperados devido à você. Wolud eu preferia estar doente, em vez de repreendê-lo porque a saúde é a primeira coisa.",32,"Ele foi para fora da aldeia para jogar com seus amigos uma apo poucos dias. Então ele tem uma febre de ontem à noite .. Parecia que eles foram para a área úmida a uma pequena distância do village.Since lá estão cheios de insetos e plantas venenosas misterioso, eu insisti para não ir lá ..."

			end
		else
			return 1,0,"Oh, meu Deus!"

		end

	elseif req == 2 then
		return 2,0,"Precisamos de alguma erva medicinal para baixar a febre. Nós não sabemos a causa, mas podemos reduzir a febre com a única coisa Cracuss Frutas. Há algum problema que Cracuss é nessa área perigosa úmido. Então, você poderia obtê-lo, em vez de mim?",12,"Confie em mim."



	elseif req == 12 then
		return 2,0,"Oh ~ você vai lá em vez de mim? Obrigado. Eu vou te dar item bom se você me traz Cracuss Frutas.",22,"Hum. .. Isso não é fruto Cracuss. Embora seja difícil de descobrir, por favor, apresse-se."



	elseif req == 22 then
		AddSwitchCount(cnum, 302, 1)
		StartQuest(cnum, 146)
		return 1,0,"Oh ~ Isso é fruto Cracuss. Obrigado. Graças a você, meu filho wiil estar OK."
	



	

	elseif req == 32 then
		if GetItemCount(cnum, 4426, 0) < 1 then
			return 1,0,"erro"

		else
			AddItemCount(cnum, 4426, -1)
			AddHeroExp(cnum, 8000)		
			AddSwitchCount(cnum, 343, 1)	
			EndQuest(cnum, 145)
			return 1,0,"Descobrimos estranha Cracuss Tree. Deve ter sido fora do alcance humano, porque não há nenhuma cicatriz ou hematoma. Há um monte de fruits.How eu posso fazer?"

		end

	else
		return 1,0,"Colher os frutos."

	end
end
						

function NPC_QUEST_304(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Eu tenho Cracuss Frutas verdes. Não pode ser utilizado como alimento assim como a medicina.",2,"Eu tenho Cracuss Frutas maduras. Vai ser delicioso. No entanto, não pode ser usado para a medicina."


	elseif req == 2 then
		random = SetRandom(cnum, 1, 1000)

		if random < 501 then
			AddItemCount(cnum, 4424, 1)
			return 1,0,"Eu tenho dez anos de idade Cracuss Frutas. É muito delicioso e é mesmo como uma panacéia para o paciente."

		elseif random >= 501 and random < 901 then
			AddItemCount(cnum, 4425, 1)
			return 1,0,"erro"

		else
			AddItemCount(cnum, 4426, 1)
			return 1,0,"Apple"
		end
	else
		return 1,0,"Pera"

	end
end
