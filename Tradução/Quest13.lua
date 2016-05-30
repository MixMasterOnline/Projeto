function NPC_QUEST_264(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)


	if req == 1 then
		if GetSwitchCount(cnum, 84) < 1 then
			return 1,0,"O que é um garoto como você está fazendo aqui? Volte para sua casa, é perigoso aqui! "

		elseif GetItemCount(cnum, 1195, 0) < 1 then
			return 1,0,"Você veio da terra distante. Eu não sei o que te faz vir aqui, mas, depois de terminar o seu negócio, é melhor você sair deste lugar o mais rapidamente possível. "

		else
			result = GetSwitchCount(cnum, 86)

				
			if result < 1 then

				if GetSwitchCount(cnum, 85) < 1 then
					return 2,0,"Oh alma da Árvore!? Você deve ser o herói! Se você pode começar a alma da Árvore de que Terry apertado, você deve ter grande capacidade. Ouça com atenção como eu vou dizer-lhe que o mal são verdadeiros monstros. ",12,"Por favor me diga. "

				else
					StartQuest(cnum, 14)
					return 3,0,"Encontrou os itens já? ",72,"Sim, eu fiz. ",73,"Não, era difícil obtê-lo. "
				end
			else
				return 2,0,"Agora, nós completamos toda a preparação para ir para a terra da maldição. Você gostaria de partir agora ",82,"Partida para a terra da maldição. "
			end
		end

	elseif req == 12 then
		return 2,0,"",22,"Por favor, continue "

	elseif req == 22 then
		return 2,0,"Fui guardando esses três itens a Deus por ano. Mas algumas semanas atrás, eu fui atacado e dois dos itens Santo ter sido roubado. Eles me atacaram durante a noite. Eu nunca falhou nos últimos 22 anos, mas eles quebraram a minha confiança e orgulho. ",32,"Sinto muito sobre isso. "

	elseif req == 32 then
		return 2,0,"Não há tempo a coisa, deprimido primeiro você precisa fazer é trazer os dois itens de Deus de volta. Gostaria de fazer isso, eu preciso para proteger o terceiro item ",42,"Vou fazer isso para você "

	elseif req == 42 then
		return 2,0,"Oh, obrigada, é alívio para ouvir um herói como você está do meu lado .. ",52,"Por favor me dê as informações. "

	elseif req == 52 then
		return 2,0,"Eu não podia ver os monstros que ayyacked mim, mas eu ouvi o ruído mecânico alto e eu senti o tremor grpound pesadamente. Isso é tudo que eu sei. ",62,"Ok, eu entendi. "

	elseif req == 62 then
		StartQuest(cnum, 14)
		AddSwitchCount(cnum, 85, 1)
		return 1,0,"Boa sorte e seja cuidadoso. "
		
	elseif req == 72 then

		if GetItemCount(cnum, 1201, 0) < 1 or GetItemCount(cnum, 1202, 0) < 1 then
			return 1,0,"Eu não posso vê-los. Eu não tenho tempo para jogar. Por favor, traga-os para mim imediatamente. "

		else
			AddItemCount(cnum,1201, -1)
			AddItemCount(cnum,1202, -1)
			AddSwitchCount(cnum, 86, 1) -- Á¾·á ½ºÀ§Ä¡°ª ÈÄ¿¡ ÀúÁÖÀÇ ¶¥À¸·Î ÀÌµ¿ÇÏ´Âµ¥ »ç¿ëÇÑ´Ù. 
			EndQuest(cnum, 14)
			return 1,0,"Cool! Você realmente trouxeram. Apesar de que será difícil encontrá-los com as informações que lhe dei, façam o vosso melhor. Eu appreaciate sua ajuda. "
		end
	
	elseif req == 82 then
		return 1,0,"[A próxima missão está em processo] "
	end
end
