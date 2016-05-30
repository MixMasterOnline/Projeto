function NPC_QUEST_288(cnum,reqNumber)

req = reqNumber


	if req == 1 then
		ImageQuest(cnum, 2, 1,"Oh, Ol� l� um jovem! Eu sou o famoso do mundo, o g�nio cientista Professor Jove. Hmm. Voc� � um aventureiro de novo? Embora eu seja certo t�o ocupado agora, eu penso que � melhor gastar algum tempo para voc�. Ha Ha. Eu sei, voc� est� muito grato pela minha ajuda! ")

	elseif req == 2 then
		ImageQuest(cnum, 3, 1, "Voc� escolheu um caminho para se tornar um her�i lend�rio chamado Mixmaster. Quem � Mixmaster? O mestre dos mestres! Mixmaster � um her�i que governa o mundo. Controla tudo! Voc� precisa aprender v�rias coisas, porque voc� � um novato. Gostaria de aprender o conhecimento fundamental da aventura? ")

	elseif req == 3 then
		ImageQuest(cnum, 4, 1, "* Tutorial ser� prossiga se voc� pressionar seguinte. Se voc� quiser pular o tutorial, v� para o Assistente de Warp, que � o �cone roxo no mapa localizado no canto superior esquerdo. ")

	elseif req == 4 then
		ImageQuest(cnum, 0, 2, "Hench significa monstro treinado. Para fazer Henches forte, voc� precisa misturar Henches baixo n�vel juntos em primeiro lugar. Depois de anos de trabalho duro na mistura, um novato como voc� pode se tornar um MixMaster! Voc� quer saber mais? Por que voc� n�o visita Pooch (X: 125 Y: 135), porque estou muito ocupado. experi�ncia de hoje � o suficiente para ganhar um pr�mio Nobel! ")

	else
		return 0
	end
end




function NPC_QUEST_312(cnum,reqNumber)

req = reqNumber

item1 = GetItemCount(cnum, 259, 0)
item2 = GetItemCount(cnum, 259, 2)

hench1 = GetHench(cnum, 1, 1, 1)
hench2 = GetHench(cnum, 1, 2, 1)
hench3 = GetHench(cnum, 1, 13, 1)


	if req == 1 then
		if GetSwitchCount(cnum, 114) < 1 then
			if GetSwitchCount(cnum, 111) < 1 then
				if GetSwitchCount(cnum, 110) < 1 then
					if GetSwitchCount(cnum, 109) < 1 then
						ImageQuest(cnum, 2, 1,"Ol�! Estou c�o, embora eu n�o sou alto, por favor, n�o riam de mim. A capacidade de um Hench pode ser medida pela sua altura! Enfim, voc� veio fazer aqui um tutorial. Confie em mim, vale a pena fazer. Porque eu vou dar-lhe sua arma primeiro, armaduras e um Hench! Por favor, ou�a com aten��o. Em primeiro lugar, a explica��o de menu em seu canto inferior direito. ")
					else
						if item1 < 1 and item2 < 1 then
							ImageQuest(cnum, 0, 1,"Eu n�o posso ver o Armour Soft. Voc� pode obt�-lo de defesa / comerciante de armas. Pleasedo n�o desgast�-lo ainda. ")
						else
							ImageQuest(cnum, 20, 15,"Voc� quer vestir a armadura macia? Para equip�-la, clique sobre a armadura macia e arrast�-lo para o espa�o adequado e solte-o l�. Ou voc� pode simplesmente clicar duas vezes no item. Voc� pode verificar que a sua habilidade aumenta a evas�o na janela de personagem. ")
						end
					end
				else
					if hench1 < 1 or hench2 < 1 then
						ImageQuest(cnum, 0, 1,"Traga-me N�cleos de Draco e Devilco. Se voc� est� lutando com os N�cleos de agora, por favor desequipar-los e voltar. ")
					else
						ImageQuest(cnum, 23, 18,"Voc� sabe o que � um Hench? Hench � um monstro nobre que s� pessoas talentosas como voc� pode controlar. Um n�cleo � a alma de um Hench. Os n�cleos que j� est�o mortos. Voc� precisa de reanim�-lo com a ajuda de um construtor Mix. ")
					end
				end

			else
				if hench3 < 1 then
					ImageQuest(cnum, 0, 1,"Come on! V� e misture com Draco Devilco Core depois de receber e recuper�-las. Voc� deve obter uma Imon misturando com Draco Devilco. Fa�a Draco certeza � o principal! Ah, e por favor me mostre como um n�cleo em seu invent�rio! ")
				else
					ImageQuest(cnum, 27, 23,"Parab�ns! Seu primeiro Mix com sucesso! Agora, voc� pode ver a sua informa��o, se voc� clicar na aba Core e clique no nome do monstro! ")
				end
			end

		else
			ImageQuest(cnum, 0, 1,"Ensinei-lhe todas as coisas que voc� precisava saber. Boa sorte em se tornar o melhor MixMaster! ")
		end






	elseif req == 2 then
		ImageQuest(cnum, 3, 3,"Mall: Voc� pode comprar itens atrav�s MixMall. ")

	elseif req == 3 then
		ImageQuest(cnum, 4, 4,"Mestre: Voc� pode encontrar todas as informa��es de personagens Hero aqui. ")

	elseif req == 4 then
		ImageQuest(cnum, 5, 5,"Core: Esta janela � para o seu Hench (monstros). Confira aqui se precisar de informa��es para o seu Hench. ")

	elseif req == 5 then
		ImageQuest(cnum, 6, 6,"Artigo: Esta janela � para itens que voc� possui. Cuidado, pois h� limites para o quanto voc� pode carregar. ")

	elseif req == 6 then
		ImageQuest(cnum, 7, 7,"Habilidade: na verdade, usando grandes habilidades de forma eficaz � uma necessidade no campo ")

	elseif req == 7 then
		ImageQuest(cnum, 8, 8,"Mess: Isto ir� informar-lhe onde est�o seus amigos no jogo ")

	elseif req == 8 then
		ImageQuest(cnum, 9, 9,"Quest: Voc� pode verificar todas as informa��es de busca diferentes listadas aqui. ")

	elseif req == 9 then
		ImageQuest(cnum, 10, 10,"Mapa: Voc� sabe como ler um mapa? Ele est� localizado no canto superior esquerdo da tela. Voc� pode clicar aqui para fazer desaparecer do mapa. ")

	elseif req == 10 then
		ImageQuest(cnum, 11, 11,"Sistema: Voc� pode alterar a op��o de jogo ou log-out. Ir para o Village � usado quando voc� est� nocauteado. Ele ir� lev�-lo para o �ltimo ponto resurection Assistente da ressurrei��o. Voc� tamb�m pode clicar no menu Negar a ignorar Mixmasters outros. ")

	elseif req == 11 then
		ImageQuest(cnum, 12, 1,"Aqui est�o mais alguns detalhes sobre as abas do menu, por favor, ou�a com aten��o. ")



-- ??? ???
	elseif req == 12 then
		ImageQuest(cnum, 13, 12,"Na guia MASTER, voc� pode verificar LV, HP, MP, estat�sticas fortes, ea experi�ncia de seu personagem. Ganhas 5 pontos quando voc� subir de n�vel. Voc� pode aumentar suas estat�sticas de us�-los, e seu personagem vai ficar mais forte. � at� voc� como voc� gostaria de fazer o seu car�ter forte. ")

	elseif req == 13 then
		ImageQuest(cnum, 14, 13,"PODER faz o poder ofensivo do personagem e aumentar HP. QUICK aumenta a habilidade de evas�o quando o personagem � atacado. Aumenta a precis�o a taxa de precis�o de seu ataque e Sorte aumenta seu MP, HP e MP taxa de recupera��o e efeito habilidade. Voc� pode criar seu pr�prio personagem de atribui��o de pontos de reposi��o com +. ")

	elseif req == 14 then
		if GetSwitchCount(cnum, 109) < 1 then
			AddSwitchCount(cnum, 109, 1)
			AddMoney(cnum, 150)
		end

		ImageQuest(cnum, 0, 14,"Agora, voc� pode encontrar o comerciante item de defesa no mapa no canto esquerdo? Como voc� pode ver na imagem, voc� pode encontrar o local onde est�o os NPCs se voc� mover o mouse sobre o mapa. Sua localiza��o personagem aparece como um �cone verde. Vou dar-lhe algumas GP. Por favor, venha para mim de novo depois de comprar uma armadura suave do comerciante defesa item. Por favor, n�o desgast�-lo e traz�-lo ao seu invent�rio! ")


--????? ??? ???

	elseif req == 20 then

		ImageQuest(cnum, 21, 28,"Todos os itens est�o equipados da mesma maneira. Existem quatro tipos de armas: espada, Knuckle, Bow, e Gun. Apenas uma arma pode ser usada para diferentes personagens. Ditt usa a espada, Jin usa a junta, Penril usa o arco e Phoy usa a arma. ")

	elseif req == 21 then
		ImageQuest(cnum, 22, 16,"A batalha vai come�ar quando voc� clica em um monstro. A maioria dos monstros n�o atacar�o a menos que provocados. Mas tenha cuidado, pois alguns monstros s�o agressivos e v�o persegui-lo. Para estar vivo, voc� deve se concentrar na sua HP, com o �cone com o seu rosto no canto superior direito. O indicador vermelho � o HP e azul � o seu MP. Voc� vai morrer quando o HP chegar a zero. Quer tentar lutar contra um monstro? ")

	elseif req == 22 then

		if GetSwitchCount(cnum, 110) < 1 then
			if GetRemainPocket(cnum) < 1 then
				ImageQuest(cnum, 0, 1,"Eu deveria dar-lhe uma arma ap�s a conversa sobre o n�cleo. Mas n�o h� espa�o em seu invent�rio. Voc� pode vir aqui novamente depois de limpar o seu invent�rio? ")

			else
				Type = GetHeroType(cnum)

				if Type == 0 then
					AddItemCount(cnum, 189, 1)

				elseif Type == 1 then
					AddItemCount(cnum, 199, 1)

				elseif Type == 3 then
					AddItemCount(cnum, 209, 1)

				elseif Type == 2 then
					AddItemCount(cnum, 219, 1)

				else
					return 0
				end

				AddSwitchCount(cnum, 110, 1)
				ImageQuest(cnum, 0, 17,"Ao derrotar um monstro, eles poder�o soltar o que � chamado de CORE. Por favor, traga-os para mim. Se voc� vai para o lado sudeste a partir daqui, voc� vai ver Draco e muitos Devilco. Voc� pega uns e traz�-los para mim. Aqui est� a sua primeira arma. Lembre-se, apenas execut�-las n�o ajuda. Voc� deve equip�-la. " )
			end
		end



--??? ??? ??
	elseif req == 23 then
		ImageQuest(cnum, 24, 19,"Se voc� vai para o Construtor Mix e pedir a ela para reanimar o seu n�cleo. Ent�o, para a 1 � vez, voc� ser� capaz de brigar com seu Hench. Veja como eles s�o o vermelho eo preto? Isso significa que eles est�o mortos. Quando eles est�o vivos, eles ter�o outras cores para eles! " )


	elseif req == 24 then
		ImageQuest(cnum, 25, 20,"Agora, antes de ir, eu vou ensinar como fazer o seu Hench forte. Voc� pode usar o sistema chamado MIX. Voc� precisa ajudar um construtor Mix para isso tamb�m. Agora, voc� vai precisar de pelo menos 2 Henches. Tenha cuidado quando voc� faz isso porque h� um principal e um SUB para misturar. Assim, mesmo com os 2 Henches mesmo, se voc� coloc�-los em uma ordem diferente, o resultado vai mudar! " )


	elseif req == 25 then
		ImageQuest(cnum, 26, 21,"N�o se esque�a! Voc� s� pode misturar Henches com diferentes g�neros. Voc� deve falar com muitos civis e Mixmasters outros ao redor da cidade para ouvir sobre F�rmula Mix, existem centenas de combina��es! Tenha cuidado sobre isso antes de misturar. Gostaria de mistura? ")


	elseif req == 26 then
		if GetSwitchCount(cnum, 111) < 1 then
			AddSwitchCount(cnum, 111, 1)
			AddMoney(cnum, 1000)
		end

		ImageQuest(cnum, 0, 22,"Voc� pode falhar em alguns casos, de acordo com a taxa de mistura. Mix � um processo dif�cil para o Henches tamb�m. Se eles n�o s�o um Hench bem treinados, eles podem morrer em caso de falha Mix. Ent�o, trein�-los antes da mistura, se eles s�o preciosos. Agora, voc� pode ir e fazer um Imon misturando Draco como principal com Devilco como SUB. Aqui est� 1000GP. V� e tente! ")


--??? ??
	elseif req == 27 then
		ImageQuest(cnum, 28, 24,"Agora, para usar seus n�cleos como Henches, voc� pode clicar duas vezes neles ou arraste-os para as janelas com 1, 2 ou 3. Como voc� pode ver acima. Voc� pode usar at� 3 Cores como seu Henches e ajud�-lo em sua batalha. Cuidado com seu HP na parte superior direita �cones tamb�m! ")


	elseif req == 28 then
		ImageQuest(cnum, 29, 25,"Cada Hench tem suas pr�prias habilidades de acordo com seu cl�, por isso Dragon, Metal, Diabo, Flora, Inseto, besta, p�ssaro e mist�rio .. Eu acho que .. Enfim todos Henches pode usar uma habilidade. A melhor maneira de usar sua habilidade � usar a tecla de atalho � direita. Voc� pode configur�-lo, arrastando as habilidades na janela. E us�-lo pressionando o bot�o de fun��o, em seguida, clicar no alvo. Voc� pode usar as teclas de suas pr�prias habilidades e po��es t�o bem! ")


--????, ??? ?????? ???? ???

	elseif req == 29 then
		ImageQuest(cnum, 30, 26,"Agora, o ponto Ressurrei��o. O Assistente de acima � o Assistente da Ressurrei��o. Voc� pode escolher qual a cidade para ressucitar por falar com ele. � melhor voc� falar com ele antes de ir para todas as batalhas, para tornar mais f�cil para voc�. Quando voc� morrer, prima Ir para Village no menu Sistema e voc� vai voltar para o ponto de �ltima ressurrei��o. ")


	elseif req == 30 then
		ImageQuest(cnum, 31, 27,"Warp Wizard, Monez � um assistente que lhe permite deformar a lugares. Um anel de Warp � necess�rio mudar para outros lugares. Voc� pode obter um anel de Warp do MixMall, ou por eventos vencedora. Para saber quais s�o os eventos sobre, confira Eventos e Not�cias se��o do site com freq��ncia! ")


	elseif req == 31 then
		if GetSwitchCount(cnum, 112) < 1 then
			AddSwitchCount(cnum, 112, 1)
			AddSwitchCount(cnum, 114, 1)
		end

		ImageQuest(cnum, 0, 1,"OK tempo para o almo�o para mim! Eu acho que te ensinou bastante. Agora, se voc� vai para o Assistente de Warp, que ir� deformar-lhe Magirita cidade. Espero que possamos atender algumas vezes no futuro! E eu espero que voc� seja um grande MixMaster at� ent�o. Boa sorte! " )

	else
		return 0
	end
end


