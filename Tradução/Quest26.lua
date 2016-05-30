function NPC_QUEST_207(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) < 3 then
			return 1,0,"Nice para atender voc�."

		else

			if GetSwitchCount(cnum, 277) < 1 then --6
				if GetSwitchCount(cnum, 275) < 1 then --5
					if GetSwitchCount(cnum, 273) < 1 then --4
						if GetSwitchCount(cnum, 271) < 1 then --3
							if GetSwitchCount(cnum, 269) < 1 then --2
								if GetSwitchCount(cnum, 268) < 1 then --1
		      							return 2,0,"Bem, voc� trouxe a Unidade de Controle de plataformas?",2,"Sim, eu fiz."

      								else
      									return 2,0,"Controle da plataforma unidade de montagem ainda n�o foi feito. Eu vou cham�-lo de novo quando eu terminar.",42,"Seja bem-vindo. Eu estava esperando por voc�. Acabei de terminar com a montagem da plataforma de unidade de controle. Temos um monte de coisas para ir embora do in�cio parece bom."

      								end
      							else
      								if GetHeroLv(cnum) < 30 then
      									return 1,0,"O que devo fazer?"


      								else
      									if GetSwitchCount(cnum, 270) < 1 then
      										return 2,0,"Voc� trouxe os dispositivos de entrada?",52,"Sim, eu fiz."

      									else
      										return 2,0,"Dispositivo de entrada de montagem ainda n�o foi feito. Eu vou cham�-lo de novo quando eu terminar.",72,"Seja bem-vindo. Eu estava esperando por voc�. A unidade de controle � quase reparado agora. Podemos avan�ar para pr�xima etapa se encontra a alavanca Contorl."

      									end
       								end
		      					end
      						else
	      						if GetSwitchCount(cnum, 272) < 1 then
			      					if GetHeroLv(cnum) < 50 then
      									return 1,0,"O que devo fazer?"

      								else
      									return 2,0,"Voc� trouxe as pe�as alavanca de controle?",82,"Sim, eu fiz."

      								end
      							else
      								return 2,0,"Eu n�o tenho um plano para a pr�xima etapa. Vou te ligar quando eu estou pronto. Descanse por um tempo.",102,"Seja bem-vindo. Eu estava esperando por voc�. Bem, eu acho que � tempo para a pr�xima etapa. N�s temos que reparar a parte comum, no entanto, h� muitas pe�as faltando. Eu n�o tenho certeza do que devo fazer primeiro."

      							end

      						end
    					else
						if GetSwitchCount(cnum, 274) < 1 then
							if GetHeroLv(cnum) < 70 then
						                return 1,0,"O que devo fazer?"

      						        else
						                return 2,0,"Trouxe todas as pe�as de que precis�vamos?",112,"Sim, eu fiz."

              						end
						else
							return 3,0,"Pe�as necess�rias informa��es.",132,"Eu n�o tenho um plano para a pr�xima etapa. Vou te ligar quando eu estou pronto. Descanse por um tempo.",133,"Seja bem-vindo. Eu estava esperando por voc�. Bem, eu acho que � tempo para a pr�xima etapa."

						end
					end
				else
					if GetHeroLv(cnum) < 90 then
						return 1,0,"O que devo fazer?"

					else
						if GetSwitchCount(cnum, 276) < 1 then
							return 2,0,"Bem, voc� trouxe ferros e a�os eu pedi?",142,"Sim, eu fiz."

						else
							return 3,0,"Quest da Informa��o",162,"Espero que esse monstro seria �til para sua aventura.",163,"Eu n�o tenho um plano para a pr�xima etapa. Vou te ligar quando eu estou pronto. Descanse por um tempo."

						end
					end
				end
			else

				if GetSwitchCount(cnum, 279) > 0 then
					return 1,0,"Seja bem-vindo. Eu estava esperando por voc�. A armadura � quase a terminar tamb�m. Uma �ltima coisa que deixou est� adicionando a alma para a coura�a."

				else

					if GetSwitchCount(cnum, 278) < 1 then
						if GetHeroLv(cnum) < 110 then
							return 1,0,"Adicionando a alma?"

						else
							return 2,0,"Bem, voc� encontrou a alma do Sistana �?",172,"Sim, eu fiz."

						end
					else

						return 3,0,"Quest da Informa��o",192,"Eu estava procurando por voc� para pedir ajuda. Um amigo meu encontrou um n�cleo de monstro met�lico da masmorra, por�m ele me disse que o que n�o estava se movendo mesmo se ele � convertido para hench.",193,"� estranho."

					end

				end
			end
		end







	elseif req == 2 then
		return 2,0,"Certo? Quando examinei, eu descobrir que ele foi quebrado por causa de danos acumulados. Portanto, voc� poderia me ajudar a recolher as pe�as quebradas?",12,"Como posso ajud�-lo?"


	elseif req == 12 then
		return 2,0,"Grandes. Eu acho que tenho uma pessoa certa. Primeiro de tudo, deve reparar o primeira unidade de controlo. Segundo a minha pesquisa voc� pode encontrar a plataforma de unidade de controle de Nippa em Mekrita Central Prairie. Precisamos 6 total do mesmo. Vamos come�ar com ele.",22,"Okay."


	elseif req == 22 then
		return 2,0,"Reunindo pe�as de controle da plataforma unidade n�o � tarefa dif�cil. Voc� deveria se apressar! O qu�? Voc� se esquece de como encontr�-lo? Voc� pode obter as partes do monstro chamado Nippa em Mekrita Central Prairie.",32,"Boas. Voc� trouxe pe�as de controle da plataforma de unidade. N�o era certo dif�cil? Vou come�ar a montar essas partes primeira unidade de controlo. Vou cham�-lo mais tarde quando eu estou pronto para o progresso que vem."


	elseif req == 32 then
		StartQuest(cnum, 132)
		AddSwitchCount(cnum, 268, 1)







	elseif req == 42 then
		if GetItemCount(cnum, 4410, 0) < 6 then
			return 1,0,"Eu preciso de 2 mais pe�as para a unidade de controle, que s�o dispositivos de entrada e alavanca de controle. Segundo a minha pesquisa voc� pode come�ar a partir de dispositivos de entrada AncientKilla RollingCores em campo. Precisamos de 2 total do mesmo."

		else
			AddItemCount(cnum, 4410, -6)
			AddSwitchCount(cnum, 269, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 132)
			return 1,0,"Okay. Eu tenho."

		end






	elseif req == 52 then
		return 2,0,"Eu n�o consigo ver qualquer dispositivo de entrada. N�o diga que voc� vai desistir j�. Esqueceste-te de como chegar dispositivo de entrada? Voc� pode obter esses dispositivos de entrada de AncientKilla RollingCores em campo.",62,"Grandes. Voc� trouxe dispositivos de entrada. Estes n�o s�o exatamente o mesmo que eu esperava que eu posso lidar com isso. Vou cham�-lo mais tarde quando eu estou pronto para o progresso que vem."


	elseif req == 62 then
		StartQuest(cnum, 133)
		AddSwitchCount(cnum, 270, 1)






	elseif req == 72 then
		if GetItemCount(cnum, 4411, 0) < 2 then
			return 1,0,"Para a pr�xima etapa, eu preciso da alavanca de controle para finsh at� reparar a unidade de controle. Segundo a minha pesquisa voc� pode come�ar a alavanca de controle de Gamerika em Fork Road."

		else
			AddItemCount(cnum, 4411, -2)
			AddSwitchCount(cnum, 271, 1)
			AddHeroExp(cnum, 20000)
			EndQuest(cnum, 133)
			return 1,0,"Okay. Eu tenho."
		end







	elseif req == 82 then
		return 2,0,"Eu n�o consigo ver nenhuma alavanca de controle. N�o diga que voc� vai desistir j�. Esqueceste-te de como obter a alavanca de controle? Voc� pode come�ar a alavanca de controle de Gamerika em Fork Road.",92,"Boas. Voc� trouxe todas as pe�as para a unidade de controle. Agora n�s podemos terminar a repara��o da unidade de controle. Aguarde um momento."


	elseif req == 92 then
		StartQuest(cnum, 134)
		AddSwitchCount(cnum, 272, 1)




	elseif req == 102 then
		if GetItemCount(cnum, 4412, 0) < 1 then
			return 1,0,"Sim."


		else

			return 2,0,"Estou indo para reparar todas as partes comuns de uma vez. A fim de repait todas as partes comuns, eu preciso de um Soulbraker do Meio, Parte 2 Pe�as Soulbraker de pernas e uma asa de Ayaya. Voc� pode encontrar Soulbraker e Ayaya em Twin Valley e Vale Valcan.",200,"Okay. Eu tenho."



		end



	elseif req == 112 then
		return 2,0,"N�o h� mais espa�o no invent�rio de base.",122,"Consegui mover o MechaOstrich com a unidade de controle que eu fiz com a sua ajuda. � necess�rio mais atualiza��es que ele vai ser ainda �til para voc� no status atual. Voc� pode mant�-lo. Vou cham�-lo mais tarde quando eu estou pronto com o progresso que vem. Descanse por um tempo."


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
			return 1,0,"Eu n�o posso ver a parte meio qualquer de Soulbraker. N�o diga que voc� vai desistir j�. Esqueceste-te de onde encontrar o item? Voc� pode encontrar Soulbraker em Twin Valley e Vale Valcan."

		else
			AddHench(cnum, 541, 1)
			AddItemCount(cnum, 4412, -1)
			AddSwitchCount(cnum, 273, 1)
			AddHeroExp(cnum, 100000)
			EndQuest(cnum, 134)
			return 1,0,"Eu n�o consigo ver qualquer Soulbraker pe�as da perna. N�o diga que voc� vai desistir j�. Esqueceste-te de onde encontrar o item? Voc� pode encontrar Soulbraker em Twin Valley e Vale Valcan."
		end


	elseif req == 132 then
		if GetItemCount(cnum, 4414, 0) < 1 then
			return 1,0,"Eu n�o consigo ver nenhuma Asa de Ayaya. N�o diga que voc� vai desistir j�. Esqueceste-te de onde encontrar o item? Voc� pode encontrar Soulbraker em Twin Valley e Vale Valcan."

		elseif GetItemCount(cnum, 4415, 0) < 2 then
			return 1,0,"Perfeito. Essas pe�as s� se encaixam nas partes substitutiva. Bem feito. Eu posso montar a forma de MechaOstrich com estas partes. Voc� trouxe a MechaOstrich eu te dei da �ltima vez? Por favor, d� para mim."

		elseif GetItemCount(cnum, 4416, 0) < 1 then
			return 1,0,"D� o MechaOstrich"

		else
			return 2,0,"Soulbraker: * Soulbraker de Pe�as M�dio 1, Soulbraker de Pe�as perna * 2 @ Ayaya: Asa de Ayaya * 2",134,"Eu n�o posso ver o MechaOstrich. Onde ele est�?"
		end


	elseif req == 133 then
		return 1,0,"Grandes. Ele ainda precisa de mais atualiza��es no entanto, � muito melhor do que a �ltima. Voc� pode manter isso. Vou cham�-lo mais tarde quando eu estou pronto com o progresso que vem. Descanse por um tempo."


	elseif req == 134 then
		if GetHench(cnum, 1, 541, 1) < 1 then
			return 1,0,"Vou indo para atualizar as armas da MechOstrish eu te dei da �ltima vez. A fim de fazer isso, eu preciso de alguns metais para a atualiza��o. No entanto, eu n�o tenho nenhum metais partiu para o processo de atualiza��o. Assim eu quero que voc� me ajude metais thoes encontro."


		else
			EndQuest(cnum, 135)
			AddItemCount(cnum, 4414, -1)
			AddItemCount(cnum, 4415, -2)
			AddItemCount(cnum, 4416, -1)
			AddSwitchCount(cnum, 275, 1)
			AddHench(cnum, 541, -1)
			AddHench(cnum, 542, 1)
			AddHeroExp(cnum, 400000)
			return 1,0,"Claro que sim. Vou ajud�-lo."


		end


	elseif req == 142 then
		return 2,0,"Primeiro precisamos de alguns metais para a blindagem, como ferro e a�o. Como n�o h� outro caminho, mas abstraindo os metais do monstro, voc� deve escolher o monstro forte para a armadura.",143,"Por exemplo?"


	elseif req == 143 then
		return 2,0,"Hmm ... Neosoul? Acho neosoul seria suficiente para a armadura. Voc� pode encontrar o neosoul em White Prairie. Traga 10 Irons e 5 A�os do neosoul.",144,"Okay. Eu tenho."


	elseif req == 144 then
		return 2,0,"Eu n�o vejo nenhum ferro e a�o. N�o diga que voc� vai desistir j�. Esqueceste-te de onde encontrar o item? Voc� pode obter os itens da neosoul em White Prairie.",145,"Bom trabalho. Agora eu posso fazer mais forte armadura do MechaOstrich. Eu acho que preciso de sua ajuda para uma �ltima vez. Vou te ligar mais tarde, quando eu estou pronto. Descanse por um tempo."


	elseif req == 145 then
		StartQuest(cnum, 136)
		AddSwitchCount(cnum, 276, 1)



	elseif req == 162 then
		if GetItemCount(cnum, 105, 0) < 10 or GetItemCount(cnum, 106, 0) < 5 then
			return 1,0,"Hunt neosoul em Prairie Branco. Depois de reunir 10 Irons e 5 A�os e conversar com correspondentes Quest NPC."

		else
			EndQuest(cnum, 136)
			AddItemCount(cnum, 105, -10)
			AddItemCount(cnum, 106, -10)
			AddSwitchCount(cnum, 277, 1)
			AddHeroExp(cnum, 1000000)
			return 1,0,"Bem. Os povos antigos do Sinan usado o item 'Soul' como o �ltimo item para a montagem de armadura do monstro met�lico. N�o tenho certeza como ele funciona, embora seja verdade que a intensidade dos aumentos de armadura incrivelmente adicionando alma para a coura�a. Quero adicionar alma ao Mechtrich tamb�m. Por favor me ajude."
		end



	elseif req == 163 then
		return 1,0,"Claro que sim. Eu farei o meu melhor."





	elseif req == 172 then
		return 2,0,"Precisamos do item chamado 'Soul Sistana's'. Como n�o h� um item que trata da alma, voc� tem que come�ar por ca�ar monstros de alta classe.",182,"classe alta monstros?"


	elseif req == 182 then
    		return 2,0,"J� procurou por informa��es. Voc� pode come�ar a alma Sistana a partir NeoAyaya em White Litoral",183,"White Litoral?"


	elseif req == 183 then
		return 2,0,"Sim. Branco est� localizado no Litoral longe, o continente de dist�ncia chamado Atreia. Deve ser uma viagem longa. Como NeoAyaya � um monstro de classe alta, voc� tem que ter cuidado quando voc� ca�ar.",184,"Okay. Voc� pode acreditar em mim."


	elseif req == 184 then
		return 2,0,"Boa sorte! Espero que para a sua viagem segura.",185,"N�o vejo a alma de qualquer Sistana �. N�o diga que voc� vai desistir j�. Esqueceste-te de onde encontrar o item? Voc� pode obter os itens da NeoAyaya em White Litoral do continente Atreia."


	elseif req == 185 then
		StartQuest(cnum, 137)
		AddSwitchCount(cnum, 278, 1)
		return 1,0,"Excelente! Voc� trouxe a parte final do MechaOstrich. Bem, lidar com a MechaOstrich para mim."



	elseif req == 192 then
		if GetItemCount(cnum, 107, 0) < 1 then
			return 1,0,"D� o MechaOstrich"

		else

			return 2,0,"Hunt NewAyaya em White Litoral do continente Atreia. Ap�s a coleta * falar uma Sistana's Soul �s correspondentes Quest NPC.",194,"Eu n�o posso ver o MechaOstrich. Onde ele est�?"
		end

	elseif req == 193 then
		return 1,0,"� finalmente pronto! Como � isso? Tornou-se forte o suficiente, certo? Eu vou dar isso para voc�. Espero que isso ir� ajud�-lo a tornar-se um grande mestre da mistura!"



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
			return 1,0,"Bem-vindo ao Valor, a guilda �nico grande Magirita. Voc� veio para se juntar a n�s, n�o �?"
		end

	else
		return 1,0,"S�? O que aconteceu com Mixbuilder Guild?"
	end
end

