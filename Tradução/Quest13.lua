function NPC_QUEST_264(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)


	if req == 1 then
		if GetSwitchCount(cnum, 84) < 1 then
			return 1,0,"O que � um garoto como voc� est� fazendo aqui? Volte para sua casa, � perigoso aqui! "

		elseif GetItemCount(cnum, 1195, 0) < 1 then
			return 1,0,"Voc� veio da terra distante. Eu n�o sei o que te faz vir aqui, mas, depois de terminar o seu neg�cio, � melhor voc� sair deste lugar o mais rapidamente poss�vel. "

		else
			result = GetSwitchCount(cnum, 86)

				
			if result < 1 then

				if GetSwitchCount(cnum, 85) < 1 then
					return 2,0,"Oh alma da �rvore!? Voc� deve ser o her�i! Se voc� pode come�ar a alma da �rvore de que Terry apertado, voc� deve ter grande capacidade. Ou�a com aten��o como eu vou dizer-lhe que o mal s�o verdadeiros monstros. ",12,"Por favor me diga. "

				else
					StartQuest(cnum, 14)
					return 3,0,"Encontrou os itens j�? ",72,"Sim, eu fiz. ",73,"N�o, era dif�cil obt�-lo. "
				end
			else
				return 2,0,"Agora, n�s completamos toda a prepara��o para ir para a terra da maldi��o. Voc� gostaria de partir agora ",82,"Partida para a terra da maldi��o. "
			end
		end

	elseif req == 12 then
		return 2,0,"",22,"Por favor, continue "

	elseif req == 22 then
		return 2,0,"Fui guardando esses tr�s itens a Deus por ano. Mas algumas semanas atr�s, eu fui atacado e dois dos itens Santo ter sido roubado. Eles me atacaram durante a noite. Eu nunca falhou nos �ltimos 22 anos, mas eles quebraram a minha confian�a e orgulho. ",32,"Sinto muito sobre isso. "

	elseif req == 32 then
		return 2,0,"N�o h� tempo a coisa, deprimido primeiro voc� precisa fazer � trazer os dois itens de Deus de volta. Gostaria de fazer isso, eu preciso para proteger o terceiro item ",42,"Vou fazer isso para voc� "

	elseif req == 42 then
		return 2,0,"Oh, obrigada, � al�vio para ouvir um her�i como voc� est� do meu lado .. ",52,"Por favor me d� as informa��es. "

	elseif req == 52 then
		return 2,0,"Eu n�o podia ver os monstros que ayyacked mim, mas eu ouvi o ru�do mec�nico alto e eu senti o tremor grpound pesadamente. Isso � tudo que eu sei. ",62,"Ok, eu entendi. "

	elseif req == 62 then
		StartQuest(cnum, 14)
		AddSwitchCount(cnum, 85, 1)
		return 1,0,"Boa sorte e seja cuidadoso. "
		
	elseif req == 72 then

		if GetItemCount(cnum, 1201, 0) < 1 or GetItemCount(cnum, 1202, 0) < 1 then
			return 1,0,"Eu n�o posso v�-los. Eu n�o tenho tempo para jogar. Por favor, traga-os para mim imediatamente. "

		else
			AddItemCount(cnum,1201, -1)
			AddItemCount(cnum,1202, -1)
			AddSwitchCount(cnum, 86, 1) -- ���� ����ġ�� �Ŀ� ������ ������ �̵��ϴµ� ����Ѵ�. 
			EndQuest(cnum, 14)
			return 1,0,"Cool! Voc� realmente trouxeram. Apesar de que ser� dif�cil encontr�-los com as informa��es que lhe dei, fa�am o vosso melhor. Eu appreaciate sua ajuda. "
		end
	
	elseif req == 82 then
		return 1,0,"[A pr�xima miss�o est� em processo] "
	end
end
