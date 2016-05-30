function NPC_QUEST_288(cnum,reqNumber)

req = reqNumber


	if req == 1 then
		ImageQuest(cnum, 2, 1,"Oh, Olá lá um jovem! Eu sou o famoso do mundo, o gênio cientista Professor Jove. Hmm. Você é um aventureiro de novo? Embora eu seja certo tão ocupado agora, eu penso que é melhor gastar algum tempo para você. Ha Ha. Eu sei, você está muito grato pela minha ajuda! ")

	elseif req == 2 then
		ImageQuest(cnum, 3, 1, "Você escolheu um caminho para se tornar um herói lendário chamado Mixmaster. Quem é Mixmaster? O mestre dos mestres! Mixmaster é um herói que governa o mundo. Controla tudo! Você precisa aprender várias coisas, porque você é um novato. Gostaria de aprender o conhecimento fundamental da aventura? ")

	elseif req == 3 then
		ImageQuest(cnum, 4, 1, "* Tutorial será prossiga se você pressionar seguinte. Se você quiser pular o tutorial, vá para o Assistente de Warp, que é o ícone roxo no mapa localizado no canto superior esquerdo. ")

	elseif req == 4 then
		ImageQuest(cnum, 0, 2, "Hench significa monstro treinado. Para fazer Henches forte, você precisa misturar Henches baixo nível juntos em primeiro lugar. Depois de anos de trabalho duro na mistura, um novato como você pode se tornar um MixMaster! Você quer saber mais? Por que você não visita Pooch (X: 125 Y: 135), porque estou muito ocupado. experiência de hoje é o suficiente para ganhar um prêmio Nobel! ")

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
						ImageQuest(cnum, 2, 1,"Olá! Estou cão, embora eu não sou alto, por favor, não riam de mim. A capacidade de um Hench pode ser medida pela sua altura! Enfim, você veio fazer aqui um tutorial. Confie em mim, vale a pena fazer. Porque eu vou dar-lhe sua arma primeiro, armaduras e um Hench! Por favor, ouça com atenção. Em primeiro lugar, a explicação de menu em seu canto inferior direito. ")
					else
						if item1 < 1 and item2 < 1 then
							ImageQuest(cnum, 0, 1,"Eu não posso ver o Armour Soft. Você pode obtê-lo de defesa / comerciante de armas. Pleasedo não desgastá-lo ainda. ")
						else
							ImageQuest(cnum, 20, 15,"Você quer vestir a armadura macia? Para equipá-la, clique sobre a armadura macia e arrastá-lo para o espaço adequado e solte-o lá. Ou você pode simplesmente clicar duas vezes no item. Você pode verificar que a sua habilidade aumenta a evasão na janela de personagem. ")
						end
					end
				else
					if hench1 < 1 or hench2 < 1 then
						ImageQuest(cnum, 0, 1,"Traga-me Núcleos de Draco e Devilco. Se você está lutando com os Núcleos de agora, por favor desequipar-los e voltar. ")
					else
						ImageQuest(cnum, 23, 18,"Você sabe o que é um Hench? Hench é um monstro nobre que só pessoas talentosas como você pode controlar. Um núcleo é a alma de um Hench. Os núcleos que já estão mortos. Você precisa de reanimá-lo com a ajuda de um construtor Mix. ")
					end
				end

			else
				if hench3 < 1 then
					ImageQuest(cnum, 0, 1,"Come on! Vá e misture com Draco Devilco Core depois de receber e recuperá-las. Você deve obter uma Imon misturando com Draco Devilco. Faça Draco certeza é o principal! Ah, e por favor me mostre como um núcleo em seu inventário! ")
				else
					ImageQuest(cnum, 27, 23,"Parabéns! Seu primeiro Mix com sucesso! Agora, você pode ver a sua informação, se você clicar na aba Core e clique no nome do monstro! ")
				end
			end

		else
			ImageQuest(cnum, 0, 1,"Ensinei-lhe todas as coisas que você precisava saber. Boa sorte em se tornar o melhor MixMaster! ")
		end






	elseif req == 2 then
		ImageQuest(cnum, 3, 3,"Mall: Você pode comprar itens através MixMall. ")

	elseif req == 3 then
		ImageQuest(cnum, 4, 4,"Mestre: Você pode encontrar todas as informações de personagens Hero aqui. ")

	elseif req == 4 then
		ImageQuest(cnum, 5, 5,"Core: Esta janela é para o seu Hench (monstros). Confira aqui se precisar de informações para o seu Hench. ")

	elseif req == 5 then
		ImageQuest(cnum, 6, 6,"Artigo: Esta janela é para itens que você possui. Cuidado, pois há limites para o quanto você pode carregar. ")

	elseif req == 6 then
		ImageQuest(cnum, 7, 7,"Habilidade: na verdade, usando grandes habilidades de forma eficaz é uma necessidade no campo ")

	elseif req == 7 then
		ImageQuest(cnum, 8, 8,"Mess: Isto irá informar-lhe onde estão seus amigos no jogo ")

	elseif req == 8 then
		ImageQuest(cnum, 9, 9,"Quest: Você pode verificar todas as informações de busca diferentes listadas aqui. ")

	elseif req == 9 then
		ImageQuest(cnum, 10, 10,"Mapa: Você sabe como ler um mapa? Ele está localizado no canto superior esquerdo da tela. Você pode clicar aqui para fazer desaparecer do mapa. ")

	elseif req == 10 then
		ImageQuest(cnum, 11, 11,"Sistema: Você pode alterar a opção de jogo ou log-out. Ir para o Village é usado quando você está nocauteado. Ele irá levá-lo para o último ponto resurection Assistente da ressurreição. Você também pode clicar no menu Negar a ignorar Mixmasters outros. ")

	elseif req == 11 then
		ImageQuest(cnum, 12, 1,"Aqui estão mais alguns detalhes sobre as abas do menu, por favor, ouça com atenção. ")



-- ??? ???
	elseif req == 12 then
		ImageQuest(cnum, 13, 12,"Na guia MASTER, você pode verificar LV, HP, MP, estatísticas fortes, ea experiência de seu personagem. Ganhas 5 pontos quando você subir de nível. Você pode aumentar suas estatísticas de usá-los, e seu personagem vai ficar mais forte. É até você como você gostaria de fazer o seu caráter forte. ")

	elseif req == 13 then
		ImageQuest(cnum, 14, 13,"PODER faz o poder ofensivo do personagem e aumentar HP. QUICK aumenta a habilidade de evasão quando o personagem é atacado. Aumenta a precisão a taxa de precisão de seu ataque e Sorte aumenta seu MP, HP e MP taxa de recuperação e efeito habilidade. Você pode criar seu próprio personagem de atribuição de pontos de reposição com +. ")

	elseif req == 14 then
		if GetSwitchCount(cnum, 109) < 1 then
			AddSwitchCount(cnum, 109, 1)
			AddMoney(cnum, 150)
		end

		ImageQuest(cnum, 0, 14,"Agora, você pode encontrar o comerciante item de defesa no mapa no canto esquerdo? Como você pode ver na imagem, você pode encontrar o local onde estão os NPCs se você mover o mouse sobre o mapa. Sua localização personagem aparece como um ícone verde. Vou dar-lhe algumas GP. Por favor, venha para mim de novo depois de comprar uma armadura suave do comerciante defesa item. Por favor, não desgastá-lo e trazê-lo ao seu inventário! ")


--????? ??? ???

	elseif req == 20 then

		ImageQuest(cnum, 21, 28,"Todos os itens estão equipados da mesma maneira. Existem quatro tipos de armas: espada, Knuckle, Bow, e Gun. Apenas uma arma pode ser usada para diferentes personagens. Ditt usa a espada, Jin usa a junta, Penril usa o arco e Phoy usa a arma. ")

	elseif req == 21 then
		ImageQuest(cnum, 22, 16,"A batalha vai começar quando você clica em um monstro. A maioria dos monstros não atacarão a menos que provocados. Mas tenha cuidado, pois alguns monstros são agressivos e vão persegui-lo. Para estar vivo, você deve se concentrar na sua HP, com o ícone com o seu rosto no canto superior direito. O indicador vermelho é o HP e azul é o seu MP. Você vai morrer quando o HP chegar a zero. Quer tentar lutar contra um monstro? ")

	elseif req == 22 then

		if GetSwitchCount(cnum, 110) < 1 then
			if GetRemainPocket(cnum) < 1 then
				ImageQuest(cnum, 0, 1,"Eu deveria dar-lhe uma arma após a conversa sobre o núcleo. Mas não há espaço em seu inventário. Você pode vir aqui novamente depois de limpar o seu inventário? ")

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
				ImageQuest(cnum, 0, 17,"Ao derrotar um monstro, eles poderão soltar o que é chamado de CORE. Por favor, traga-os para mim. Se você vai para o lado sudeste a partir daqui, você vai ver Draco e muitos Devilco. Você pega uns e trazê-los para mim. Aqui está a sua primeira arma. Lembre-se, apenas executá-las não ajuda. Você deve equipá-la. " )
			end
		end



--??? ??? ??
	elseif req == 23 then
		ImageQuest(cnum, 24, 19,"Se você vai para o Construtor Mix e pedir a ela para reanimar o seu núcleo. Então, para a 1 ª vez, você será capaz de brigar com seu Hench. Veja como eles são o vermelho eo preto? Isso significa que eles estão mortos. Quando eles estão vivos, eles terão outras cores para eles! " )


	elseif req == 24 then
		ImageQuest(cnum, 25, 20,"Agora, antes de ir, eu vou ensinar como fazer o seu Hench forte. Você pode usar o sistema chamado MIX. Você precisa ajudar um construtor Mix para isso também. Agora, você vai precisar de pelo menos 2 Henches. Tenha cuidado quando você faz isso porque há um principal e um SUB para misturar. Assim, mesmo com os 2 Henches mesmo, se você colocá-los em uma ordem diferente, o resultado vai mudar! " )


	elseif req == 25 then
		ImageQuest(cnum, 26, 21,"Não se esqueça! Você só pode misturar Henches com diferentes gêneros. Você deve falar com muitos civis e Mixmasters outros ao redor da cidade para ouvir sobre Fórmula Mix, existem centenas de combinações! Tenha cuidado sobre isso antes de misturar. Gostaria de mistura? ")


	elseif req == 26 then
		if GetSwitchCount(cnum, 111) < 1 then
			AddSwitchCount(cnum, 111, 1)
			AddMoney(cnum, 1000)
		end

		ImageQuest(cnum, 0, 22,"Você pode falhar em alguns casos, de acordo com a taxa de mistura. Mix é um processo difícil para o Henches também. Se eles não são um Hench bem treinados, eles podem morrer em caso de falha Mix. Então, treiná-los antes da mistura, se eles são preciosos. Agora, você pode ir e fazer um Imon misturando Draco como principal com Devilco como SUB. Aqui está 1000GP. Vá e tente! ")


--??? ??
	elseif req == 27 then
		ImageQuest(cnum, 28, 24,"Agora, para usar seus núcleos como Henches, você pode clicar duas vezes neles ou arraste-os para as janelas com 1, 2 ou 3. Como você pode ver acima. Você pode usar até 3 Cores como seu Henches e ajudá-lo em sua batalha. Cuidado com seu HP na parte superior direita ícones também! ")


	elseif req == 28 then
		ImageQuest(cnum, 29, 25,"Cada Hench tem suas próprias habilidades de acordo com seu clã, por isso Dragon, Metal, Diabo, Flora, Inseto, besta, pássaro e mistério .. Eu acho que .. Enfim todos Henches pode usar uma habilidade. A melhor maneira de usar sua habilidade é usar a tecla de atalho à direita. Você pode configurá-lo, arrastando as habilidades na janela. E usá-lo pressionando o botão de função, em seguida, clicar no alvo. Você pode usar as teclas de suas próprias habilidades e poções tão bem! ")


--????, ??? ?????? ???? ???

	elseif req == 29 then
		ImageQuest(cnum, 30, 26,"Agora, o ponto Ressurreição. O Assistente de acima é o Assistente da Ressurreição. Você pode escolher qual a cidade para ressucitar por falar com ele. É melhor você falar com ele antes de ir para todas as batalhas, para tornar mais fácil para você. Quando você morrer, prima Ir para Village no menu Sistema e você vai voltar para o ponto de última ressurreição. ")


	elseif req == 30 then
		ImageQuest(cnum, 31, 27,"Warp Wizard, Monez é um assistente que lhe permite deformar a lugares. Um anel de Warp é necessário mudar para outros lugares. Você pode obter um anel de Warp do MixMall, ou por eventos vencedora. Para saber quais são os eventos sobre, confira Eventos e Notícias seção do site com freqüência! ")


	elseif req == 31 then
		if GetSwitchCount(cnum, 112) < 1 then
			AddSwitchCount(cnum, 112, 1)
			AddSwitchCount(cnum, 114, 1)
		end

		ImageQuest(cnum, 0, 1,"OK tempo para o almoço para mim! Eu acho que te ensinou bastante. Agora, se você vai para o Assistente de Warp, que irá deformar-lhe Magirita cidade. Espero que possamos atender algumas vezes no futuro! E eu espero que você seja um grande MixMaster até então. Boa sorte! " )

	else
		return 0
	end
end


