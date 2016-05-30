function NPC_QUEST_250(cnum, reqNumber) -- ¸¶Áö¸®Å¸ ¹ë·¯ Á¶ÇÕ Äù½ºÆ® npc

req = reqNumber

name = GetHeroName(cnum)
	if req == 1 then
		if GetSwitchCount(cnum, 300) < 1 then -- 6
			if GetSwitchCount(cnum, 298) < 1 then -- 5
				if GetSwitchCount(cnum, 296) < 1 then -- 4
					if GetSwitchCount(cnum, 294) < 1 then -- 3
						if GetSwitchCount(cnum, 292) < 1 then -- 2
							if GetSwitchCount(cnum, 291) < 1 then -- 1
								return 2,0,"O teste de admissão não é difícil, hein? Você fez o seu nível de até 10?",2,"Sim"

							else
								return 2,0,"Você está rastejando. Você pode ter um trabalho do cliente, por nível rapidamente.",52,"Vamos ver. Uau, você é tão sortuda que existe um pedido para o novato. Então, como você? Você quer levá-la?"

							end
						else
							if GetSwitchCount(cnum, 293) < 1 then
								if GetHeroLv(cnum) < 15 then
									return 1,0,"Claro que sim."

								else
									return 2,0,"Primeiros 10 Couros de Rabie ... é tão fácil ... Você é feito alreday?",62,"Sim"

								end
							else
								return 2,0,"Você está rastejando. Você pode ter um trabalho do cliente, por nível rapidamente.",72,"Vamos ver. Uau, você é tão sortuda que existe um pedido para o novato. Então, como você? Você quer levá-la?"

							end
						end
					else
						if GetSwitchCount(cnum, 295) < 1 then
							if GetHeroLv(cnum) < 20 then
								return 1,0,"Se"

							else
								return 2,0,"É OK para colher frutos?",82,"OK.Here."

							end
						else
							return 2,0,"Você está rastejando. Você pode ter um emprego por nível do cliente com rapidez",102,"Vamos ver. Uau, você é tão sortuda que existe um pedido para o novato. Então, como você? Você quer levá-la?"
						end
					end
				else
					if GetSwitchCount(cnum, 297) < 1 then
						if GetHeroLv(cnum) < 25 then
							return 1,0,"Se"

						else
							return 2,0,"Como é que vai explorar uma caverna?",112,"Não é nada de peculiar."

						end
					else
						return 2,0,"Você está rastejando. Você pode ter um emprego por nível do cliente com rapidez",132,"Este caso é de Mixbuilder Guild, traças. Isso é Entregue à Mixbuilder em Mekrita. Não há mais questão. O que eles thnk na terra? Eles têm sua própria guilda ... Hmm ... Deram-me no lugar escuro. É algo ilegal?."

					end

				end
			else
				if GetHeroLv(cnum) < 25 then
					return 2,0,"Como eu posso fazer?"

				else
					return 2,0,"Parece que não será ocupado por um tempo.",142,"Não nos comparar com traças tal. Bem, a nossa guild Valor Guild é velha e famosa, cujos membros são valors lendário e guarda-costas para os nobres. Nós somos diferentes dos originalmente traças."

				end
			end
		else
			return 1,0,"Ah ... sim ...."

		end






	elseif req == 2 then
		return 2,0,"Qual é a sua resposta? akward sim ... Bem, você olha como iniciante. Conforme o tempo passa, você pode reconhecer. Ah ~ que você veio aqui para se juntar a nós?",12,"Sim."


	elseif req == 12 then
		return 2,0,"Você tem tanta sorte. Nós normalmente só aceitam altas pessoas qualificadas em nossos membros, mas temos um monte de trabalho. Então nós estamos olhando para os novatos que pode levar a coisa simples. Você pode ser um membro de nosso teste fácil.",22,"Qual é o teste?"


	elseif req == 22 then
		return 2,0,"Nós verificamos apenas se você tiver habilidades básicas. Logo, você pode se juntar a nós diretamente, se você estiver no nível 10. É fácil?",32,"OK. Até logo."


	elseif req == 32 then
		return 2,0,"Você não pode viver uma vida Valor se você é capaz de fazer isso. Basta ir para casa e estudar com afinco.",42,"Congulaturations. Agora, "..name.." é o membro da nossa Valor Guild. Você pode ter um trabalho de guild. Sendo um novato, você vai ter um monte de empregos. Mas se você trabalhar duro, você pode ser segundo assistente de valor classificado oi. Bem, vejo vocês mais tarde."


	elseif req == 42 then
		AddSwitchCount(cnum, 291, 1)
		StartQuest(cnum, 138)

	elseif req == 52 then
		if GetHeroLv(cnum) < 10 then
			return 1,0,"OK. Vou lhe contar o caso. Um homem rico desejos do tapete feito de couro monstro. O trabalho para obter o couro monstro especial. Em outras palavras, seu trabalho está ficando Couro de Rabie.You pode ver Rabie em Fishcroll. Você deve matou monstros e recolher 10 leathers.OK.Good sorte."

		else
			AddItemCount(cnum, 4417, 1)--Á¶ÇÕ¿ø ÀÎÁõ¼­
			AddSwitchCount(cnum, 292, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 138)
			return 1,0,"O que é isso? Eu posso dizer a diferença entre Rabie e outros."

		end





	elseif req == 62 then
		AddSwitchCount(cnum, 293, 1)
		StartQuest(cnum, 139)
		return 1,0,"Recebi 10 Couros, com certeza. Aqui está o pagamento. Isso não é tão bom, mas bom para o novato. Não fique desapontado. Quando você se torna de alto nível, você vai receber o pagamento grande. Você fez bom trabalho."


	elseif req == 72 then
		if GetItemCount(cnum, 4418, 0) < 10 then
			return 2,0,"Tudo bem. Vou lhe dizer o novo emprego. A tarefa é conseguir o material para a produção de poção de Merchant em Magirita. O nome do material é fruto da erva. Você tem que pegar a fruta especial em Owalljae Prairie. É melhor você procurar em todos os cantos, porque é quase discoverd. E ..."

		else
			AddItemCount(cnum, 4418, -10)
			AddHench(cnum, 101, 1)
			AddSwitchCount(cnum, 294, 1)
			AddHeroExp(cnum, 8000)
			EndQuest(cnum, 139)
			return 1,0,"E .."

		end




	elseif req == 82 then
		return 2,0,"Herb fruta tem muitos frutos, mas os animais reais, temos mais de frutos de dez anos de idade. É difícil distingui-los. Você deve trabalhar como uma abelha. Obrigado.",92,"Você escolheu as coisas erradas ... Há já algumas pessoas que não funciona bem a cada ano."


	elseif req == 92 then
		AddSwitchCount(cnum, 295, 1)
		StartQuest(cnum, 140)
		return 2,0,"Oh ~ este é o fruto mais de dez anos. Deve ter sido um trabalho duro. Muito obrigado. Este é o comerciante thak recompensa esquerda."


	elseif req == 102 then
		if GetItemCount(cnum, 4421, 0) < 1 then
			return 1,0,"OK. Eu vou te dizer de novo emprego. Este caso é de Herseba Guards. Ele diz: Nós estamos olhando para o Valor que irá explorar Rojeta Dungeon. Nós vamos fornecer hospedagem e refeições para todos os candidatos. E nós vamos dar alguns presentes aqueles que verificar o conteúdo do monumento .'..... Eles não são estúpidos? Assim chamados Guardas não podem fazer essas coisas ... O quê? Eu não me importo. É bom ficar de comissão. Você vai tentar?"

		else
			AddItemCount(cnum, 4421, -10)
			AddItemCount(cnum, 876, 1)
			AddSwitchCount(cnum, 296, 1)
			AddHeroExp(cnum, 23000)
			EndQuest(cnum, 140)
			return 1,0,"Claro que sim. "

		end




	elseif req == 112 then
		return 2,0,"Tudo bem. Rojeta Dungeon está localizado na Vila Herseba. É fácil encontrar isso. Se você fez esta tarefa, basta parar por ll me.I dar som atual. Obrigado.",122,"Sério? Por que eu não receber o presente? Eu não gosto de quem fala bem, sem ação."


	elseif req == 122 then
		AddSwitchCount(cnum, 297, 1)
		StartQuest(cnum, 141)
		return 1,0,"Oh ~ Você não me pareço com beginnger agora. Aqui é o presente. Eu não abri-lo, eu não sei o que está dentro Check it out .."



	elseif req == 132 then
		if GetSwitchCount(cnum, 299) < 1 then
			return 1,0,"Hum. .. É a política da guilda para entregar as coisas, certamente. Mesmo que o cheiro a mal ... É a coisa mais simples de aproveitar a caixa à uma das traças em Mekrita.Will você tomar isso.?"

		else
			AddItemCount(cnum, 875, 1)
			AddSwitchCount(cnum, 298, 1)
			AddHeroExp(cnum, 23000)
			EndQuest(cnum, 141)
			return 1,0,"OK"

		end




	elseif req == 142 then
		return 2,0,"Aqui está o caixa. Há 2 Mixbuilder em Mekrita, mas eu não acho que todos eles são receptor. Olhe para a outra pessoa. Você pode obter pagamento a partir do receptor real. Você não precisa chegar a mais de mim ..",152,"Erro"


	elseif req == 152 then
		AddItemCount(cnum, 4422, 1)
		AddSwitchCount(cnum, 300, 1)
		StartQuest(cnum, 142)
		return 1,0,"Há um antigo monumento na esquina. Alguns conteúdos são esculpidos nela."


	else
		return 1,0,"Confira o conteúdo."

	end
end



function NPC_QUEST_268(cnum, reqNumber) -- ·ÎÁ¦Å¸ ´øÀü 4Ãþ ºñ¼® npc

req = reqNumber

	if req == 1 then
		return 2,0,"Que diabos o monumento? Estou muito ocupado com a escavação de Dungeon ... eu mal escavar perto de quarto na cave. Hm ... Quem me deixar fazer coisas estúpidas como esta!",2,"Lembre-se o conteúdo"


	elseif req == 2 then
		return 2,0,"erro",12,"Quando é que vem? É tarde."


	elseif req == 12 then
		AddSwitchCount(cnum, 299, 1)


	else
		return 1,0,"Ah ~ você deve ser um homem de entrega. Eu estive esperando por um longo tempo .. Você pegou a coisa?"

	end
end



function NPC_QUEST_311(cnum, reqNumber)--¸ÞÅ©¸®Å¸¿¡ ÀÖ´Â ¹Í½ººô´õ Äù½ºÆ® npc

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 300) < 1 then
			return 1,0,"Se"

		else
			return 2,0,"Onde está a coisa? Se você perdeu, o nosso contrato não está disponível. Eu não vou pagá-lo.",2,"Ah, isso é o que eu procurava. Obrigado. Aqui está a recompensa. Enjou se ~ Talvez eu também ...."

		end

	elseif req == 2 then
		if GetItemCount(cnum, 4422, 0) < 1 then
			return 1,0,"Perdão?"

		else
			return 2,0,"Você consegue saber quando crescer. Aqui é a experiência para as recompensas. Obrigado ~",12,"erro"

		end

	elseif req == 12 then
		if GetItemCount(cnum, 4422, 0) < 1 then
			return 1,0,"Perdão?"
		else

			AddItemCount(cnum, 4422, -1)
			AddHeroExp(cnum, 23000)--°æÇèÄ¡ ÁÖ´Â ºÎºÐ
			EndQuest(cnum, 142)
			return 1,0,"Descobri Herb Fruit Tree, que tem um doce aroma. Deve ter sido fora do alcance humano, porque não há nenhuma cicatriz ou mesmo bruise.There muitos frutos. Como eu posso fazer?"
		end
	end
end



function NPC_QUEST_320(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Eu tenho Herb Frutas verdes. Não pode ser usado para alimentar, bem como a medicina.",2,"Eu tenho Herb Frutas maduras. Pode ser delicioso. No entanto, não pode ser usado para a medicina."


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
			return 1,0,"Olá, eu sou Roy membro do Mixbuilder Guild. Estou aqui para anunciar nossa guild."
		end
	else
		return 1,0,"Que tipo de trabalho que vou fazer?"

	end
end
