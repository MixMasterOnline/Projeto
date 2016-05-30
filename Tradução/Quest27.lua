function NPC_QUEST_250(cnum, reqNumber) -- ������Ÿ �뷯 ���� ����Ʈ npc

req = reqNumber

name = GetHeroName(cnum)
	if req == 1 then
		if GetSwitchCount(cnum, 300) < 1 then -- 6
			if GetSwitchCount(cnum, 298) < 1 then -- 5
				if GetSwitchCount(cnum, 296) < 1 then -- 4
					if GetSwitchCount(cnum, 294) < 1 then -- 3
						if GetSwitchCount(cnum, 292) < 1 then -- 2
							if GetSwitchCount(cnum, 291) < 1 then -- 1
								return 2,0,"O teste de admiss�o n�o � dif�cil, hein? Voc� fez o seu n�vel de at� 10?",2,"Sim"

							else
								return 2,0,"Voc� est� rastejando. Voc� pode ter um trabalho do cliente, por n�vel rapidamente.",52,"Vamos ver. Uau, voc� � t�o sortuda que existe um pedido para o novato. Ent�o, como voc�? Voc� quer lev�-la?"

							end
						else
							if GetSwitchCount(cnum, 293) < 1 then
								if GetHeroLv(cnum) < 15 then
									return 1,0,"Claro que sim."

								else
									return 2,0,"Primeiros 10 Couros de Rabie ... � t�o f�cil ... Voc� � feito alreday?",62,"Sim"

								end
							else
								return 2,0,"Voc� est� rastejando. Voc� pode ter um trabalho do cliente, por n�vel rapidamente.",72,"Vamos ver. Uau, voc� � t�o sortuda que existe um pedido para o novato. Ent�o, como voc�? Voc� quer lev�-la?"

							end
						end
					else
						if GetSwitchCount(cnum, 295) < 1 then
							if GetHeroLv(cnum) < 20 then
								return 1,0,"Se"

							else
								return 2,0,"� OK para colher frutos?",82,"OK.Here."

							end
						else
							return 2,0,"Voc� est� rastejando. Voc� pode ter um emprego por n�vel do cliente com rapidez",102,"Vamos ver. Uau, voc� � t�o sortuda que existe um pedido para o novato. Ent�o, como voc�? Voc� quer lev�-la?"
						end
					end
				else
					if GetSwitchCount(cnum, 297) < 1 then
						if GetHeroLv(cnum) < 25 then
							return 1,0,"Se"

						else
							return 2,0,"Como � que vai explorar uma caverna?",112,"N�o � nada de peculiar."

						end
					else
						return 2,0,"Voc� est� rastejando. Voc� pode ter um emprego por n�vel do cliente com rapidez",132,"Este caso � de Mixbuilder Guild, tra�as. Isso � Entregue � Mixbuilder em Mekrita. N�o h� mais quest�o. O que eles thnk na terra? Eles t�m sua pr�pria guilda ... Hmm ... Deram-me no lugar escuro. � algo ilegal?."

					end

				end
			else
				if GetHeroLv(cnum) < 25 then
					return 2,0,"Como eu posso fazer?"

				else
					return 2,0,"Parece que n�o ser� ocupado por um tempo.",142,"N�o nos comparar com tra�as tal. Bem, a nossa guild Valor Guild � velha e famosa, cujos membros s�o valors lend�rio e guarda-costas para os nobres. N�s somos diferentes dos originalmente tra�as."

				end
			end
		else
			return 1,0,"Ah ... sim ...."

		end






	elseif req == 2 then
		return 2,0,"Qual � a sua resposta? akward sim ... Bem, voc� olha como iniciante. Conforme o tempo passa, voc� pode reconhecer. Ah ~ que voc� veio aqui para se juntar a n�s?",12,"Sim."


	elseif req == 12 then
		return 2,0,"Voc� tem tanta sorte. N�s normalmente s� aceitam altas pessoas qualificadas em nossos membros, mas temos um monte de trabalho. Ent�o n�s estamos olhando para os novatos que pode levar a coisa simples. Voc� pode ser um membro de nosso teste f�cil.",22,"Qual � o teste?"


	elseif req == 22 then
		return 2,0,"N�s verificamos apenas se voc� tiver habilidades b�sicas. Logo, voc� pode se juntar a n�s diretamente, se voc� estiver no n�vel 10. � f�cil?",32,"OK. At� logo."


	elseif req == 32 then
		return 2,0,"Voc� n�o pode viver uma vida Valor se voc� � capaz de fazer isso. Basta ir para casa e estudar com afinco.",42,"Congulaturations. Agora, "..name.." � o membro da nossa Valor Guild. Voc� pode ter um trabalho de guild. Sendo um novato, voc� vai ter um monte de empregos. Mas se voc� trabalhar duro, voc� pode ser segundo assistente de valor classificado oi. Bem, vejo voc�s mais tarde."


	elseif req == 42 then
		AddSwitchCount(cnum, 291, 1)
		StartQuest(cnum, 138)

	elseif req == 52 then
		if GetHeroLv(cnum) < 10 then
			return 1,0,"OK. Vou lhe contar o caso. Um homem rico desejos do tapete feito de couro monstro. O trabalho para obter o couro monstro especial. Em outras palavras, seu trabalho est� ficando Couro de Rabie.You pode ver Rabie em Fishcroll. Voc� deve matou monstros e recolher 10 leathers.OK.Good sorte."

		else
			AddItemCount(cnum, 4417, 1)--���տ� ������
			AddSwitchCount(cnum, 292, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 138)
			return 1,0,"O que � isso? Eu posso dizer a diferen�a entre Rabie e outros."

		end





	elseif req == 62 then
		AddSwitchCount(cnum, 293, 1)
		StartQuest(cnum, 139)
		return 1,0,"Recebi 10 Couros, com certeza. Aqui est� o pagamento. Isso n�o � t�o bom, mas bom para o novato. N�o fique desapontado. Quando voc� se torna de alto n�vel, voc� vai receber o pagamento grande. Voc� fez bom trabalho."


	elseif req == 72 then
		if GetItemCount(cnum, 4418, 0) < 10 then
			return 2,0,"Tudo bem. Vou lhe dizer o novo emprego. A tarefa � conseguir o material para a produ��o de po��o de Merchant em Magirita. O nome do material � fruto da erva. Voc� tem que pegar a fruta especial em Owalljae Prairie. � melhor voc� procurar em todos os cantos, porque � quase discoverd. E ..."

		else
			AddItemCount(cnum, 4418, -10)
			AddHench(cnum, 101, 1)
			AddSwitchCount(cnum, 294, 1)
			AddHeroExp(cnum, 8000)
			EndQuest(cnum, 139)
			return 1,0,"E .."

		end




	elseif req == 82 then
		return 2,0,"Herb fruta tem muitos frutos, mas os animais reais, temos mais de frutos de dez anos de idade. � dif�cil distingui-los. Voc� deve trabalhar como uma abelha. Obrigado.",92,"Voc� escolheu as coisas erradas ... H� j� algumas pessoas que n�o funciona bem a cada ano."


	elseif req == 92 then
		AddSwitchCount(cnum, 295, 1)
		StartQuest(cnum, 140)
		return 2,0,"Oh ~ este � o fruto mais de dez anos. Deve ter sido um trabalho duro. Muito obrigado. Este � o comerciante thak recompensa esquerda."


	elseif req == 102 then
		if GetItemCount(cnum, 4421, 0) < 1 then
			return 1,0,"OK. Eu vou te dizer de novo emprego. Este caso � de Herseba Guards. Ele diz: N�s estamos olhando para o Valor que ir� explorar Rojeta Dungeon. N�s vamos fornecer hospedagem e refei��es para todos os candidatos. E n�s vamos dar alguns presentes aqueles que verificar o conte�do do monumento .'..... Eles n�o s�o est�pidos? Assim chamados Guardas n�o podem fazer essas coisas ... O qu�? Eu n�o me importo. � bom ficar de comiss�o. Voc� vai tentar?"

		else
			AddItemCount(cnum, 4421, -10)
			AddItemCount(cnum, 876, 1)
			AddSwitchCount(cnum, 296, 1)
			AddHeroExp(cnum, 23000)
			EndQuest(cnum, 140)
			return 1,0,"Claro que sim. "

		end




	elseif req == 112 then
		return 2,0,"Tudo bem. Rojeta Dungeon est� localizado na Vila Herseba. � f�cil encontrar isso. Se voc� fez esta tarefa, basta parar por ll me.I dar som atual. Obrigado.",122,"S�rio? Por que eu n�o receber o presente? Eu n�o gosto de quem fala bem, sem a��o."


	elseif req == 122 then
		AddSwitchCount(cnum, 297, 1)
		StartQuest(cnum, 141)
		return 1,0,"Oh ~ Voc� n�o me pare�o com beginnger agora. Aqui � o presente. Eu n�o abri-lo, eu n�o sei o que est� dentro Check it out .."



	elseif req == 132 then
		if GetSwitchCount(cnum, 299) < 1 then
			return 1,0,"Hum. .. � a pol�tica da guilda para entregar as coisas, certamente. Mesmo que o cheiro a mal ... � a coisa mais simples de aproveitar a caixa � uma das tra�as em Mekrita.Will voc� tomar isso.?"

		else
			AddItemCount(cnum, 875, 1)
			AddSwitchCount(cnum, 298, 1)
			AddHeroExp(cnum, 23000)
			EndQuest(cnum, 141)
			return 1,0,"OK"

		end




	elseif req == 142 then
		return 2,0,"Aqui est� o caixa. H� 2 Mixbuilder em Mekrita, mas eu n�o acho que todos eles s�o receptor. Olhe para a outra pessoa. Voc� pode obter pagamento a partir do receptor real. Voc� n�o precisa chegar a mais de mim ..",152,"Erro"


	elseif req == 152 then
		AddItemCount(cnum, 4422, 1)
		AddSwitchCount(cnum, 300, 1)
		StartQuest(cnum, 142)
		return 1,0,"H� um antigo monumento na esquina. Alguns conte�dos s�o esculpidos nela."


	else
		return 1,0,"Confira o conte�do."

	end
end



function NPC_QUEST_268(cnum, reqNumber) -- ����Ÿ ���� 4�� �� npc

req = reqNumber

	if req == 1 then
		return 2,0,"Que diabos o monumento? Estou muito ocupado com a escava��o de Dungeon ... eu mal escavar perto de quarto na cave. Hm ... Quem me deixar fazer coisas est�pidas como esta!",2,"Lembre-se o conte�do"


	elseif req == 2 then
		return 2,0,"erro",12,"Quando � que vem? � tarde."


	elseif req == 12 then
		AddSwitchCount(cnum, 299, 1)


	else
		return 1,0,"Ah ~ voc� deve ser um homem de entrega. Eu estive esperando por um longo tempo .. Voc� pegou a coisa?"

	end
end



function NPC_QUEST_311(cnum, reqNumber)--��ũ��Ÿ�� �ִ� �ͽ����� ����Ʈ npc

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 300) < 1 then
			return 1,0,"Se"

		else
			return 2,0,"Onde est� a coisa? Se voc� perdeu, o nosso contrato n�o est� dispon�vel. Eu n�o vou pag�-lo.",2,"Ah, isso � o que eu procurava. Obrigado. Aqui est� a recompensa. Enjou se ~ Talvez eu tamb�m ...."

		end

	elseif req == 2 then
		if GetItemCount(cnum, 4422, 0) < 1 then
			return 1,0,"Perd�o?"

		else
			return 2,0,"Voc� consegue saber quando crescer. Aqui � a experi�ncia para as recompensas. Obrigado ~",12,"erro"

		end

	elseif req == 12 then
		if GetItemCount(cnum, 4422, 0) < 1 then
			return 1,0,"Perd�o?"
		else

			AddItemCount(cnum, 4422, -1)
			AddHeroExp(cnum, 23000)--����ġ �ִ� �κ�
			EndQuest(cnum, 142)
			return 1,0,"Descobri Herb Fruit Tree, que tem um doce aroma. Deve ter sido fora do alcance humano, porque n�o h� nenhuma cicatriz ou mesmo bruise.There muitos frutos. Como eu posso fazer?"
		end
	end
end



function NPC_QUEST_320(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Eu tenho Herb Frutas verdes. N�o pode ser usado para alimentar, bem como a medicina.",2,"Eu tenho Herb Frutas maduras. Pode ser delicioso. No entanto, n�o pode ser usado para a medicina."


	elseif req == 2 then
		random = SetRandom(cnum, 1, 1000)

		if random < 501 then
			AddItemCount(cnum, 4419, 1)
			return 1,0,"Eu tenho bem maduros Herb Frutas. Pode ser deliciosa, mas usada para a medicina."

		elseif random >= 501 and random < 901 then
			AddItemCount(cnum, 4420, 1)
			return 1,0,"erro"

		else
			AddItemCount(cnum, 4421, 1)
			return 1,0,"Ol�, eu sou Roy membro do Mixbuilder Guild. Estou aqui para anunciar nossa guild."
		end
	else
		return 1,0,"Que tipo de trabalho que vou fazer?"

	end
end
