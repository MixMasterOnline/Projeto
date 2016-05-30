function NPC_QUEST_207(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) < 3 then
			return 1,0,"Nice para atender você."

		else

			if GetSwitchCount(cnum, 277) < 1 then --6
				if GetSwitchCount(cnum, 275) < 1 then --5
					if GetSwitchCount(cnum, 273) < 1 then --4
						if GetSwitchCount(cnum, 271) < 1 then --3
							if GetSwitchCount(cnum, 269) < 1 then --2
								if GetSwitchCount(cnum, 268) < 1 then --1
		      							return 2,0,"Bem, você trouxe a Unidade de Controle de plataformas?",2,"Sim, eu fiz."

      								else
      									return 2,0,"Controle da plataforma unidade de montagem ainda não foi feito. Eu vou chamá-lo de novo quando eu terminar.",42,"Seja bem-vindo. Eu estava esperando por você. Acabei de terminar com a montagem da plataforma de unidade de controle. Temos um monte de coisas para ir embora do início parece bom."

      								end
      							else
      								if GetHeroLv(cnum) < 30 then
      									return 1,0,"O que devo fazer?"


      								else
      									if GetSwitchCount(cnum, 270) < 1 then
      										return 2,0,"Você trouxe os dispositivos de entrada?",52,"Sim, eu fiz."

      									else
      										return 2,0,"Dispositivo de entrada de montagem ainda não foi feito. Eu vou chamá-lo de novo quando eu terminar.",72,"Seja bem-vindo. Eu estava esperando por você. A unidade de controle é quase reparado agora. Podemos avançar para próxima etapa se encontra a alavanca Contorl."

      									end
       								end
		      					end
      						else
	      						if GetSwitchCount(cnum, 272) < 1 then
			      					if GetHeroLv(cnum) < 50 then
      									return 1,0,"O que devo fazer?"

      								else
      									return 2,0,"Você trouxe as peças alavanca de controle?",82,"Sim, eu fiz."

      								end
      							else
      								return 2,0,"Eu não tenho um plano para a próxima etapa. Vou te ligar quando eu estou pronto. Descanse por um tempo.",102,"Seja bem-vindo. Eu estava esperando por você. Bem, eu acho que é tempo para a próxima etapa. Nós temos que reparar a parte comum, no entanto, há muitas peças faltando. Eu não tenho certeza do que devo fazer primeiro."

      							end

      						end
    					else
						if GetSwitchCount(cnum, 274) < 1 then
							if GetHeroLv(cnum) < 70 then
						                return 1,0,"O que devo fazer?"

      						        else
						                return 2,0,"Trouxe todas as peças de que precisávamos?",112,"Sim, eu fiz."

              						end
						else
							return 3,0,"Peças necessárias informações.",132,"Eu não tenho um plano para a próxima etapa. Vou te ligar quando eu estou pronto. Descanse por um tempo.",133,"Seja bem-vindo. Eu estava esperando por você. Bem, eu acho que é tempo para a próxima etapa."

						end
					end
				else
					if GetHeroLv(cnum) < 90 then
						return 1,0,"O que devo fazer?"

					else
						if GetSwitchCount(cnum, 276) < 1 then
							return 2,0,"Bem, você trouxe ferros e aços eu pedi?",142,"Sim, eu fiz."

						else
							return 3,0,"Quest da Informação",162,"Espero que esse monstro seria útil para sua aventura.",163,"Eu não tenho um plano para a próxima etapa. Vou te ligar quando eu estou pronto. Descanse por um tempo."

						end
					end
				end
			else

				if GetSwitchCount(cnum, 279) > 0 then
					return 1,0,"Seja bem-vindo. Eu estava esperando por você. A armadura é quase a terminar também. Uma última coisa que deixou está adicionando a alma para a couraça."

				else

					if GetSwitchCount(cnum, 278) < 1 then
						if GetHeroLv(cnum) < 110 then
							return 1,0,"Adicionando a alma?"

						else
							return 2,0,"Bem, você encontrou a alma do Sistana é?",172,"Sim, eu fiz."

						end
					else

						return 3,0,"Quest da Informação",192,"Eu estava procurando por você para pedir ajuda. Um amigo meu encontrou um núcleo de monstro metálico da masmorra, porém ele me disse que o que não estava se movendo mesmo se ele é convertido para hench.",193,"É estranho."

					end

				end
			end
		end







	elseif req == 2 then
		return 2,0,"Certo? Quando examinei, eu descobrir que ele foi quebrado por causa de danos acumulados. Portanto, você poderia me ajudar a recolher as peças quebradas?",12,"Como posso ajudá-lo?"


	elseif req == 12 then
		return 2,0,"Grandes. Eu acho que tenho uma pessoa certa. Primeiro de tudo, deve reparar o primeira unidade de controlo. Segundo a minha pesquisa você pode encontrar a plataforma de unidade de controle de Nippa em Mekrita Central Prairie. Precisamos 6 total do mesmo. Vamos começar com ele.",22,"Okay."


	elseif req == 22 then
		return 2,0,"Reunindo peças de controle da plataforma unidade não é tarefa difícil. Você deveria se apressar! O quê? Você se esquece de como encontrá-lo? Você pode obter as partes do monstro chamado Nippa em Mekrita Central Prairie.",32,"Boas. Você trouxe peças de controle da plataforma de unidade. Não era certo difícil? Vou começar a montar essas partes primeira unidade de controlo. Vou chamá-lo mais tarde quando eu estou pronto para o progresso que vem."


	elseif req == 32 then
		StartQuest(cnum, 132)
		AddSwitchCount(cnum, 268, 1)







	elseif req == 42 then
		if GetItemCount(cnum, 4410, 0) < 6 then
			return 1,0,"Eu preciso de 2 mais peças para a unidade de controle, que são dispositivos de entrada e alavanca de controle. Segundo a minha pesquisa você pode começar a partir de dispositivos de entrada AncientKilla RollingCores em campo. Precisamos de 2 total do mesmo."

		else
			AddItemCount(cnum, 4410, -6)
			AddSwitchCount(cnum, 269, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 132)
			return 1,0,"Okay. Eu tenho."

		end






	elseif req == 52 then
		return 2,0,"Eu não consigo ver qualquer dispositivo de entrada. Não diga que você vai desistir já. Esqueceste-te de como chegar dispositivo de entrada? Você pode obter esses dispositivos de entrada de AncientKilla RollingCores em campo.",62,"Grandes. Você trouxe dispositivos de entrada. Estes não são exatamente o mesmo que eu esperava que eu posso lidar com isso. Vou chamá-lo mais tarde quando eu estou pronto para o progresso que vem."


	elseif req == 62 then
		StartQuest(cnum, 133)
		AddSwitchCount(cnum, 270, 1)






	elseif req == 72 then
		if GetItemCount(cnum, 4411, 0) < 2 then
			return 1,0,"Para a próxima etapa, eu preciso da alavanca de controle para finsh até reparar a unidade de controle. Segundo a minha pesquisa você pode começar a alavanca de controle de Gamerika em Fork Road."

		else
			AddItemCount(cnum, 4411, -2)
			AddSwitchCount(cnum, 271, 1)
			AddHeroExp(cnum, 20000)
			EndQuest(cnum, 133)
			return 1,0,"Okay. Eu tenho."
		end







	elseif req == 82 then
		return 2,0,"Eu não consigo ver nenhuma alavanca de controle. Não diga que você vai desistir já. Esqueceste-te de como obter a alavanca de controle? Você pode começar a alavanca de controle de Gamerika em Fork Road.",92,"Boas. Você trouxe todas as peças para a unidade de controle. Agora nós podemos terminar a reparação da unidade de controle. Aguarde um momento."


	elseif req == 92 then
		StartQuest(cnum, 134)
		AddSwitchCount(cnum, 272, 1)




	elseif req == 102 then
		if GetItemCount(cnum, 4412, 0) < 1 then
			return 1,0,"Sim."


		else

			return 2,0,"Estou indo para reparar todas as partes comuns de uma vez. A fim de repait todas as partes comuns, eu preciso de um Soulbraker do Meio, Parte 2 Peças Soulbraker de pernas e uma asa de Ayaya. Você pode encontrar Soulbraker e Ayaya em Twin Valley e Vale Valcan.",200,"Okay. Eu tenho."



		end



	elseif req == 112 then
		return 2,0,"Não há mais espaço no inventário de base.",122,"Consegui mover o MechaOstrich com a unidade de controle que eu fiz com a sua ajuda. É necessário mais atualizações que ele vai ser ainda útil para você no status atual. Você pode mantê-lo. Vou chamá-lo mais tarde quando eu estou pronto com o progresso que vem. Descanse por um tempo."


	elseif req == 122 then
		StartQuest(cnum, 135)
		AddSwitchCount(cnum, 274, 1)


-------------------------------<2014,02,21>------
	elseif req == 200 then

		if GetSwitchCount(cnum, 273) >= 1 then --4
			return 1,0,"error 99"
		end
--------------------------------------------------------
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Eu não posso ver a parte meio qualquer de Soulbraker. Não diga que você vai desistir já. Esqueceste-te de onde encontrar o item? Você pode encontrar Soulbraker em Twin Valley e Vale Valcan."

		else
			AddHench(cnum, 541, 1)
			AddItemCount(cnum, 4412, -1)
			AddSwitchCount(cnum, 273, 1)
			AddHeroExp(cnum, 100000)
			EndQuest(cnum, 134)
			return 1,0,"Eu não consigo ver qualquer Soulbraker peças da perna. Não diga que você vai desistir já. Esqueceste-te de onde encontrar o item? Você pode encontrar Soulbraker em Twin Valley e Vale Valcan."
		end


	elseif req == 132 then
		if GetItemCount(cnum, 4414, 0) < 1 then
			return 1,0,"Eu não consigo ver nenhuma Asa de Ayaya. Não diga que você vai desistir já. Esqueceste-te de onde encontrar o item? Você pode encontrar Soulbraker em Twin Valley e Vale Valcan."

		elseif GetItemCount(cnum, 4415, 0) < 2 then
			return 1,0,"Perfeito. Essas peças só se encaixam nas partes substitutiva. Bem feito. Eu posso montar a forma de MechaOstrich com estas partes. Você trouxe a MechaOstrich eu te dei da última vez? Por favor, dê para mim."

		elseif GetItemCount(cnum, 4416, 0) < 1 then
			return 1,0,"Dê o MechaOstrich"

		else
			return 2,0,"Soulbraker: * Soulbraker de Peças Médio 1, Soulbraker de Peças perna * 2 @ Ayaya: Asa de Ayaya * 2",134,"Eu não posso ver o MechaOstrich. Onde ele está?"
		end


	elseif req == 133 then
		return 1,0,"Grandes. Ele ainda precisa de mais atualizações no entanto, é muito melhor do que a última. Você pode manter isso. Vou chamá-lo mais tarde quando eu estou pronto com o progresso que vem. Descanse por um tempo."


	elseif req == 134 then
		if GetHench(cnum, 1, 541, 1) < 1 then
			return 1,0,"Vou indo para atualizar as armas da MechOstrish eu te dei da última vez. A fim de fazer isso, eu preciso de alguns metais para a atualização. No entanto, eu não tenho nenhum metais partiu para o processo de atualização. Assim eu quero que você me ajude metais thoes encontro."


		else
			EndQuest(cnum, 135)
			AddItemCount(cnum, 4414, -1)
			AddItemCount(cnum, 4415, -2)
			AddItemCount(cnum, 4416, -1)
			AddSwitchCount(cnum, 275, 1)
			AddHench(cnum, 541, -1)
			AddHench(cnum, 542, 1)
			AddHeroExp(cnum, 400000)
			return 1,0,"Claro que sim. Vou ajudá-lo."


		end


	elseif req == 142 then
		return 2,0,"Primeiro precisamos de alguns metais para a blindagem, como ferro e aço. Como não há outro caminho, mas abstraindo os metais do monstro, você deve escolher o monstro forte para a armadura.",143,"Por exemplo?"


	elseif req == 143 then
		return 2,0,"Hmm ... Neosoul? Acho neosoul seria suficiente para a armadura. Você pode encontrar o neosoul em White Prairie. Traga 10 Irons e 5 Aços do neosoul.",144,"Okay. Eu tenho."


	elseif req == 144 then
		return 2,0,"Eu não vejo nenhum ferro e aço. Não diga que você vai desistir já. Esqueceste-te de onde encontrar o item? Você pode obter os itens da neosoul em White Prairie.",145,"Bom trabalho. Agora eu posso fazer mais forte armadura do MechaOstrich. Eu acho que preciso de sua ajuda para uma última vez. Vou te ligar mais tarde, quando eu estou pronto. Descanse por um tempo."


	elseif req == 145 then
		StartQuest(cnum, 136)
		AddSwitchCount(cnum, 276, 1)



	elseif req == 162 then
		if GetItemCount(cnum, 105, 0) < 10 or GetItemCount(cnum, 106, 0) < 5 then
			return 1,0,"Hunt neosoul em Prairie Branco. Depois de reunir 10 Irons e 5 Aços e conversar com correspondentes Quest NPC."

		else
			EndQuest(cnum, 136)
			AddItemCount(cnum, 105, -10)
			AddItemCount(cnum, 106, -10)
			AddSwitchCount(cnum, 277, 1)
			AddHeroExp(cnum, 1000000)
			return 1,0,"Bem. Os povos antigos do Sinan usado o item 'Soul' como o último item para a montagem de armadura do monstro metálico. Não tenho certeza como ele funciona, embora seja verdade que a intensidade dos aumentos de armadura incrivelmente adicionando alma para a couraça. Quero adicionar alma ao Mechtrich também. Por favor me ajude."
		end



	elseif req == 163 then
		return 1,0,"Claro que sim. Eu farei o meu melhor."





	elseif req == 172 then
		return 2,0,"Precisamos do item chamado 'Soul Sistana's'. Como não há um item que trata da alma, você tem que começar por caçar monstros de alta classe.",182,"classe alta monstros?"


	elseif req == 182 then
    		return 2,0,"Já procurou por informações. Você pode começar a alma Sistana a partir NeoAyaya em White Litoral",183,"White Litoral?"


	elseif req == 183 then
		return 2,0,"Sim. Branco está localizado no Litoral longe, o continente de distância chamado Atreia. Deve ser uma viagem longa. Como NeoAyaya é um monstro de classe alta, você tem que ter cuidado quando você caçar.",184,"Okay. Você pode acreditar em mim."


	elseif req == 184 then
		return 2,0,"Boa sorte! Espero que para a sua viagem segura.",185,"Não vejo a alma de qualquer Sistana é. Não diga que você vai desistir já. Esqueceste-te de onde encontrar o item? Você pode obter os itens da NeoAyaya em White Litoral do continente Atreia."


	elseif req == 185 then
		StartQuest(cnum, 137)
		AddSwitchCount(cnum, 278, 1)
		return 1,0,"Excelente! Você trouxe a parte final do MechaOstrich. Bem, lidar com a MechaOstrich para mim."



	elseif req == 192 then
		if GetItemCount(cnum, 107, 0) < 1 then
			return 1,0,"Dê o MechaOstrich"

		else

			return 2,0,"Hunt NewAyaya em White Litoral do continente Atreia. Após a coleta * falar uma Sistana's Soul às correspondentes Quest NPC.",194,"Eu não posso ver o MechaOstrich. Onde ele está?"
		end

	elseif req == 193 then
		return 1,0,"É finalmente pronto! Como é isso? Tornou-se forte o suficiente, certo? Eu vou dar isso para você. Espero que isso irá ajudá-lo a tornar-se um grande mestre da mistura!"



	elseif req == 194 then
		if GetHench(cnum, 1, 542, 1 ) < 1 then
			return 1,0,"Error1"

		else
			EndQuest(cnum, 137)
			AddItemCount(cnum, 107, -1)
			AddHench(cnum, 542, -1)
			AddHench(cnum, 496, 1)
			AddSwitchCount(cnum, 279, 1)
			AddHeroExp(cnum, 6000000)
			return 1,0,"Bem-vindo ao Valor, a guilda único grande Magirita. Você veio para se juntar a nós, não é?"
		end

	else
		return 1,0,"Só? O que aconteceu com Mixbuilder Guild?"
	end
end

