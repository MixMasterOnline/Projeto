function NPC_QUEST_206(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 301) < 1 then
			return 2,0,"Est� t�o quente hoje. Estar em casa � a melhor coisa neste tempo.",2,"Eu tenho que entregar algo para Herseba, mas n�o posso por causa do hor�rio duplo. Ent�o ... Voc� poderia entregar em vez de mim?"

		else
			return 1,0,"Claro que sim."

		end


	elseif req == 2 then
		return 2,0,"Muito obrigado. Entregue este Frutas Merchant em Herseba. Isso � tudo. Ele vai pagar por ele. Eu espero que sua viagem segura.",12,"erro"


	elseif req == 12 then
		AddItemCount(cnum, 4423, 1)
		AddSwitchCount(cnum, 301, 1)
		StartQuest(cnum, 145)
		return 1,0,"Ah ... Quando ser� que o fruto mandei vir?"
	
	else
		return 1,0,"Ah ... Quando ser� que o fruto mandei vir? Hum. .. Quem � voc�?"

	end
end




function NPC_QUEST_205(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 332) < 1 then		
			if GetSwitchCount(cnum, 301) < 1 then
				return 1,0,"Trouxe-lhe caixa de fruta."

			else
				return 2,0,"Bem, agora eu estou indo para ficar pronto em meu neg�cio com a fruta.",2,"Eu n�o posso ver o fruto? Eu sou louca no tempo quente?"

			end
		else
			return 1,0,"Oh. Ele pensado alguma maneira para n�o entregar esta neste weather.Well quente, n�o importa. Isso � bom o suficiente, porque eu tenho a fruta. Obrigado."

		end


	elseif req == 2 then
		if GetItemCount(cnum, 4423, 0) < 1 then
			return 2,0,"erro"

		else
			AddSwitchCount(cnum, 332, 1)
			AddItemCount(cnum, 4423, -1)
			AddHeroExp(cnum, 8000)
			EndQuest(cnum, 145)
			return 1,0,"Este � um problema grande. Como posso conseguir isso?"

		end

	
	else
		return 1,0,"Oh ~ Voc� se parece com o homem de ablility. Poderia dar-me um favor?"

	end
end





function NPC_QUEST_219(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 343) < 1 then		
			if GetSwitchCount(cnum, 302) < 1 then
				if GetHeroLv(cnum) < 15 then
					return 2,0,"O que posso fazer por voc�?"	

		
				else
					return 2,0,"Recebeste Folha de Cracuss? Meu filho est� morrendo ..",2,"Aqui, eu consegui."
	
				end
			else
				return 2,0,"Meu filho parece ser recuperados devido � voc�. Wolud eu preferia estar doente, em vez de repreend�-lo porque a sa�de � a primeira coisa.",32,"Ele foi para fora da aldeia para jogar com seus amigos uma apo poucos dias. Ent�o ele tem uma febre de ontem � noite .. Parecia que eles foram para a �rea �mida a uma pequena dist�ncia do village.Since l� est�o cheios de insetos e plantas venenosas misterioso, eu insisti para n�o ir l� ..."

			end
		else
			return 1,0,"Oh, meu Deus!"

		end

	elseif req == 2 then
		return 2,0,"Precisamos de alguma erva medicinal para baixar a febre. N�s n�o sabemos a causa, mas podemos reduzir a febre com a �nica coisa Cracuss Frutas. H� algum problema que Cracuss � nessa �rea perigosa �mido. Ent�o, voc� poderia obt�-lo, em vez de mim?",12,"Confie em mim."



	elseif req == 12 then
		return 2,0,"Oh ~ voc� vai l� em vez de mim? Obrigado. Eu vou te dar item bom se voc� me traz Cracuss Frutas.",22,"Hum. .. Isso n�o � fruto Cracuss. Embora seja dif�cil de descobrir, por favor, apresse-se."



	elseif req == 22 then
		AddSwitchCount(cnum, 302, 1)
		StartQuest(cnum, 146)
		return 1,0,"Oh ~ Isso � fruto Cracuss. Obrigado. Gra�as a voc�, meu filho wiil estar OK."
	



	

	elseif req == 32 then
		if GetItemCount(cnum, 4426, 0) < 1 then
			return 1,0,"erro"

		else
			AddItemCount(cnum, 4426, -1)
			AddHeroExp(cnum, 8000)		
			AddSwitchCount(cnum, 343, 1)	
			EndQuest(cnum, 145)
			return 1,0,"Descobrimos estranha Cracuss Tree. Deve ter sido fora do alcance humano, porque n�o h� nenhuma cicatriz ou hematoma. H� um monte de fruits.How eu posso fazer?"

		end

	else
		return 1,0,"Colher os frutos."

	end
end
						

function NPC_QUEST_304(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Eu tenho Cracuss Frutas verdes. N�o pode ser utilizado como alimento assim como a medicina.",2,"Eu tenho Cracuss Frutas maduras. Vai ser delicioso. No entanto, n�o pode ser usado para a medicina."


	elseif req == 2 then
		random = SetRandom(cnum, 1, 1000)

		if random < 501 then
			AddItemCount(cnum, 4424, 1)
			return 1,0,"Eu tenho dez anos de idade Cracuss Frutas. � muito delicioso e � mesmo como uma panac�ia para o paciente."

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
