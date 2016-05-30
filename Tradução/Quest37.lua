 function NPC_QUEST_252(cnum,reqNumber)
	local req = reqNumber

	if req == 1 then
		return 4,0,"Você fez uma escolha errada. Você deve ser lvl 20 ou mais baixo para selecionar esta. Por favor, faça uma seleção que é apropriado para seu nível. ",2,"Você selecionou o nível 20 e abaixo. Se você me der um núcleo Rabie, que irá aumentar seus pontos de experiência. ",3,"[Get pontos de experiência] ",4,"Ele está disponível apenas uma vez para obter pontos de experiência. "

	elseif req == 2 then
		if GetHeroLv(cnum,1) > 20 then
		return 1,0,"Você não tem nenhum núcleo Rabie. Eu não posso dar-lhe pontos de experiência se você não me negociar um núcleo Rabie. "
		end

		return 2,0,"Se houver mais de 2 Raiva em seu inventário, eu não posso lhe dar pontos de experiência. Por que você não guarde o Rabie reposição. ",22,"20 pontos de experiência foi adicionado. "

	elseif req == 22 then

		if GetSwitchCount(cnum, 1057) > 0 then
			return 1,0, "30 pontos de experiência foi adicionado. "
		end

		if GetHench(cnum,1,101,1) < 1 then
			return 1,0, "100 pontos de experiência foi adicionado. "
		end

		if GetHench(cnum,1,101,1) > 1 then
			return 1,0,"300 pontos de experiência foi adicionado. "
		end
		

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,20) ----- È÷¾î·Î °æÇèÄ¡ 20 Ãß°¡
			AddHench(cnum,101,-1) ---·¡ÇÉ
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"500 pontos de experiência foi adicionado. "

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,30) ----- È÷¾î·Î °æÇèÄ¡ 30 Ãß°¡
			AddHench(cnum,101,-1) ---·¡ÇÉ
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"Você fez uma escolha errada. Você deve ser lvl entre 21 e 40 para selecionar esta. Por favor, faça uma seleção que é apropriado para seu nível. "
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,100) ----- È÷¾î·Î °æÇèÄ¡ 100 Ãß°¡
			AddHench(cnum,101,-1) ---·¡ÇÉ
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"Você fez uma escolha errada. Você deve ser lvl entre 21 e 40 para selecionar esta. Por favor, faça uma seleção que é apropriado para seu nível. "

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,300) ----- È÷¾î·Î °æÇèÄ¡ 300 Ãß°¡
			AddHench(cnum,101,-1) ---·¡ÇÉ
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"Você selecionou nível 21-40. Vou aumentar seus pontos de experiência se você me der um núcleo Synicks. "

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,500) ----- È÷¾î·Î °æÇèÄ¡ 500 Ãß°¡
			AddHench(cnum,101,-1) ---·¡ÇÉ
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"[Get pontos de experiência] "


		end

	elseif req == 3 then

		if GetHeroLv(cnum,1) < 21 then
			return 1,0,"Ele está disponível apenas uma vez para obter pontos de experiência. "
		elseif GetHeroLv(cnum,1) > 40 then
			return 1,0,"Você não tem nenhum núcleo Synicks. Eu não posso dar-lhe pontos de experiência se você não me negociar um núcleo Synicks. "
		else
			return 2,0,"Se houver mais de 2 Synicks no inventário, não posso dar-lhe pontos de experiência. Por que você não guarde o Synicks reposição. ",32,"500 pontos de experiência foi adicionado. "
		end

	elseif req == 32 then

		if GetSwitchCount(cnum, 1058) > 0 then
			return 1,0, "700 pontos de experiência foi adicionado. "
		end

		if GetHench(cnum,1,141,1) < 1 then
			return 1,0, "2000 pontos de experiência foi adicionado. "
		end

		if GetHench(cnum,1,141,1) > 1 then
			return 1,0,"5000 pontos de experiência foi adicionado. "
		end

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,500) ----- È÷¾î·Î °æÇèÄ¡ 500 Ãß°¡
			AddHench(cnum,141,-1) ---¾¾´Ð½º
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"8000 pontos de experiência foi adicionado. "

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,700) ----- È÷¾î·Î °æÇèÄ¡ 700 Ãß°¡
			AddHench(cnum,141,-1) ---¾¾´Ð½º
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"Você fez uma escolha errada. Você deve ser nível 41 ou superior para selecionar esta. Por favor, faça uma seleção que é apropriado para seu nível. "
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,2000) ----- È÷¾î·Î °æÇèÄ¡ 2000 Ãß°¡
			AddHench(cnum,141,-1) ---¾¾´Ð½º
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"Você selecionou nível 41 e acima. Se você me der um núcleo Asakayza, vou aumentar o valor da sua experiência. "

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,5000) ----- È÷¾î·Î °æÇèÄ¡ 5000 Ãß°¡
			AddHench(cnum,141,-1) ---¾¾´Ð½º
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"[Obter valor de experiência] "

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,8000) ----- È÷¾î·Î °æÇèÄ¡ 8000 Ãß°¡
			AddHench(cnum,141,-1) ---¾¾´Ð½º
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"Ele está disponível apenas uma vez para obter pontos de experiência. "
		end

	elseif req == 4 then
		
		if GetHeroLv(cnum,1) < 41 then
			return 1,0,"Não existe nenhum núcleo Asakayza. Eu não posso dar-lhe pontos de experiência se não houver nenhum núcleo Asakayza. "
		end

		return 2,0,"Se houver mais de 2 Asakayza no inventário, não posso dar-lhe pontos de experiência. Por que você não guarde o Asakayza reposição. ",42,"3000 pontos exerience foi adicionado. "


	elseif req == 42 then

		if GetSwitchCount(cnum, 1059) > 0 then
			return 1,0, "5000 pontos exerience foi adicionado. "
		end

		if GetHench(cnum,1,169,1) < 1 then
			return 1,0,"7000 pontos exerience foi adicionado. "
		end

		if GetHench(cnum,1,169,1) > 1 then
			return 1,0,"10000 pontos exerience foi adicionado. "
		end

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,3000) ----- È÷¾î·Î °æÇèÄ¡ 3000 Ãß°¡
			AddHench(cnum,169,-1) ---´Þ¸®¼Õ
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"12000 pontos exerience foi adicionado. "

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,5000) ----- È÷¾î·Î °æÇèÄ¡ 5000 Ãß°¡
			AddHench(cnum,169,-1) ---´Þ¸®¼Õ
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"Oh, Olá lá um jovem! Eu sou o famoso do mundo, o gênio cientista Professor Jove. Hmm. Você é um aventureiro de novo? Embora eu seja certo tão ocupado agora, eu penso que é melhor gastar algum tempo para você. Ha Ha. Eu sei, você está muito grato pela minha ajuda! "
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,7000) ----- È÷¾î·Î °æÇèÄ¡ 7000 Ãß°¡
			AddHench(cnum,169,-1) ---´Þ¸®¼Õ
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"Você escolheu um caminho para se tornar um herói lendário chamado Mixmaster. Quem é Mixmaster? O mestre dos mestres! Mixmaster é um herói que governa o mundo. Controla tudo! Você precisa aprender várias coisas, porque você é um novato. Gostaria de aprender o conhecimento fundamental da aventura? "

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,10000) ----- È÷¾î·Î °æÇèÄ¡ 10000 Ãß°¡
			AddHench(cnum,169,-1) ---´Þ¸®¼Õ
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"* Tutorial será prossiga se você pressionar seguinte. Se você quiser pular o tutorial, vá para o Assistente de Warp, que é o ícone roxo no mapa localizado no canto superior esquerdo. "

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,12000) ----- È÷¾î·Î °æÇèÄ¡ 12000 Ãß°¡
			AddHench(cnum,169,-1) ---´Þ¸®¼Õ
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"Hench significa monstro treinado. Para fazer Henches forte, você precisa misturar Henches baixo nível juntos em primeiro lugar. Depois de anos de trabalho duro na mistura, um novato como você pode se tornar um MixMaster! Você quer saber mais? Por que você não visita Pooch (X: 125 Y: 135), porque estou muito ocupado. experiência de hoje é o suficiente para ganhar um prêmio Nobel! "
		
			end
		end
	return 0
end
		
		
		
		


	
		
		

		

		


		