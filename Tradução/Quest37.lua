 function NPC_QUEST_252(cnum,reqNumber)
	local req = reqNumber

	if req == 1 then
		return 4,0,"Voc� fez uma escolha errada. Voc� deve ser lvl 20 ou mais baixo para selecionar esta. Por favor, fa�a uma sele��o que � apropriado para seu n�vel. ",2,"Voc� selecionou o n�vel 20 e abaixo. Se voc� me der um n�cleo Rabie, que ir� aumentar seus pontos de experi�ncia. ",3,"[Get pontos de experi�ncia] ",4,"Ele est� dispon�vel apenas uma vez para obter pontos de experi�ncia. "

	elseif req == 2 then
		if GetHeroLv(cnum,1) > 20 then
		return 1,0,"Voc� n�o tem nenhum n�cleo Rabie. Eu n�o posso dar-lhe pontos de experi�ncia se voc� n�o me negociar um n�cleo Rabie. "
		end

		return 2,0,"Se houver mais de 2 Raiva em seu invent�rio, eu n�o posso lhe dar pontos de experi�ncia. Por que voc� n�o guarde o Rabie reposi��o. ",22,"20 pontos de experi�ncia foi adicionado. "

	elseif req == 22 then

		if GetSwitchCount(cnum, 1057) > 0 then
			return 1,0, "30 pontos de experi�ncia foi adicionado. "
		end

		if GetHench(cnum,1,101,1) < 1 then
			return 1,0, "100 pontos de experi�ncia foi adicionado. "
		end

		if GetHench(cnum,1,101,1) > 1 then
			return 1,0,"300 pontos de experi�ncia foi adicionado. "
		end
		

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,20) ----- ����� ����ġ 20 �߰�
			AddHench(cnum,101,-1) ---����
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"500 pontos de experi�ncia foi adicionado. "

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,30) ----- ����� ����ġ 30 �߰�
			AddHench(cnum,101,-1) ---����
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"Voc� fez uma escolha errada. Voc� deve ser lvl entre 21 e 40 para selecionar esta. Por favor, fa�a uma sele��o que � apropriado para seu n�vel. "
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,100) ----- ����� ����ġ 100 �߰�
			AddHench(cnum,101,-1) ---����
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"Voc� fez uma escolha errada. Voc� deve ser lvl entre 21 e 40 para selecionar esta. Por favor, fa�a uma sele��o que � apropriado para seu n�vel. "

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,300) ----- ����� ����ġ 300 �߰�
			AddHench(cnum,101,-1) ---����
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"Voc� selecionou n�vel 21-40. Vou aumentar seus pontos de experi�ncia se voc� me der um n�cleo Synicks. "

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,500) ----- ����� ����ġ 500 �߰�
			AddHench(cnum,101,-1) ---����
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"[Get pontos de experi�ncia] "


		end

	elseif req == 3 then

		if GetHeroLv(cnum,1) < 21 then
			return 1,0,"Ele est� dispon�vel apenas uma vez para obter pontos de experi�ncia. "
		elseif GetHeroLv(cnum,1) > 40 then
			return 1,0,"Voc� n�o tem nenhum n�cleo Synicks. Eu n�o posso dar-lhe pontos de experi�ncia se voc� n�o me negociar um n�cleo Synicks. "
		else
			return 2,0,"Se houver mais de 2 Synicks no invent�rio, n�o posso dar-lhe pontos de experi�ncia. Por que voc� n�o guarde o Synicks reposi��o. ",32,"500 pontos de experi�ncia foi adicionado. "
		end

	elseif req == 32 then

		if GetSwitchCount(cnum, 1058) > 0 then
			return 1,0, "700 pontos de experi�ncia foi adicionado. "
		end

		if GetHench(cnum,1,141,1) < 1 then
			return 1,0, "2000 pontos de experi�ncia foi adicionado. "
		end

		if GetHench(cnum,1,141,1) > 1 then
			return 1,0,"5000 pontos de experi�ncia foi adicionado. "
		end

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,500) ----- ����� ����ġ 500 �߰�
			AddHench(cnum,141,-1) ---���н�
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"8000 pontos de experi�ncia foi adicionado. "

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,700) ----- ����� ����ġ 700 �߰�
			AddHench(cnum,141,-1) ---���н�
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"Voc� fez uma escolha errada. Voc� deve ser n�vel 41 ou superior para selecionar esta. Por favor, fa�a uma sele��o que � apropriado para seu n�vel. "
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,2000) ----- ����� ����ġ 2000 �߰�
			AddHench(cnum,141,-1) ---���н�
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"Voc� selecionou n�vel 41 e acima. Se voc� me der um n�cleo Asakayza, vou aumentar o valor da sua experi�ncia. "

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,5000) ----- ����� ����ġ 5000 �߰�
			AddHench(cnum,141,-1) ---���н�
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"[Obter valor de experi�ncia] "

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,8000) ----- ����� ����ġ 8000 �߰�
			AddHench(cnum,141,-1) ---���н�
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"Ele est� dispon�vel apenas uma vez para obter pontos de experi�ncia. "
		end

	elseif req == 4 then
		
		if GetHeroLv(cnum,1) < 41 then
			return 1,0,"N�o existe nenhum n�cleo Asakayza. Eu n�o posso dar-lhe pontos de experi�ncia se n�o houver nenhum n�cleo Asakayza. "
		end

		return 2,0,"Se houver mais de 2 Asakayza no invent�rio, n�o posso dar-lhe pontos de experi�ncia. Por que voc� n�o guarde o Asakayza reposi��o. ",42,"3000 pontos exerience foi adicionado. "


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
			AddHeroExp(cnum,3000) ----- ����� ����ġ 3000 �߰�
			AddHench(cnum,169,-1) ---�޸���
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"12000 pontos exerience foi adicionado. "

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,5000) ----- ����� ����ġ 5000 �߰�
			AddHench(cnum,169,-1) ---�޸���
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"Oh, Ol� l� um jovem! Eu sou o famoso do mundo, o g�nio cientista Professor Jove. Hmm. Voc� � um aventureiro de novo? Embora eu seja certo t�o ocupado agora, eu penso que � melhor gastar algum tempo para voc�. Ha Ha. Eu sei, voc� est� muito grato pela minha ajuda! "
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,7000) ----- ����� ����ġ 7000 �߰�
			AddHench(cnum,169,-1) ---�޸���
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"Voc� escolheu um caminho para se tornar um her�i lend�rio chamado Mixmaster. Quem � Mixmaster? O mestre dos mestres! Mixmaster � um her�i que governa o mundo. Controla tudo! Voc� precisa aprender v�rias coisas, porque voc� � um novato. Gostaria de aprender o conhecimento fundamental da aventura? "

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,10000) ----- ����� ����ġ 10000 �߰�
			AddHench(cnum,169,-1) ---�޸���
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"* Tutorial ser� prossiga se voc� pressionar seguinte. Se voc� quiser pular o tutorial, v� para o Assistente de Warp, que � o �cone roxo no mapa localizado no canto superior esquerdo. "

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,12000) ----- ����� ����ġ 12000 �߰�
			AddHench(cnum,169,-1) ---�޸���
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"Hench significa monstro treinado. Para fazer Henches forte, voc� precisa misturar Henches baixo n�vel juntos em primeiro lugar. Depois de anos de trabalho duro na mistura, um novato como voc� pode se tornar um MixMaster! Voc� quer saber mais? Por que voc� n�o visita Pooch (X: 125 Y: 135), porque estou muito ocupado. experi�ncia de hoje � o suficiente para ganhar um pr�mio Nobel! "
		
			end
		end
	return 0
end
		
		
		
		


	
		
		

		

		


		