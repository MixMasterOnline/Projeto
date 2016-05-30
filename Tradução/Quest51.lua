function NPC_QUEST_301(cnum, reqNumber)

req = reqNumber

item1 = GetItemCount(cnum, 4294, 0)
item2 = GetItemCount(cnum, 4295, 0)
item3 = GetItemCount(cnum, 4296, 0)
item4 = GetItemCount(cnum, 4297, 0)
item5 = GetItemCount(cnum, 4298, 0)
item6 = GetItemCount(cnum, 4299, 0)
item7 = GetItemCount(cnum, 4300, 0)
item8 = GetItemCount(cnum, 4301, 0)
item9 = GetItemCount(cnum, 4302, 0)


	if req == 1 then
		if GetSwitchCount(cnum,158) < 1 then
			return 3,0,"Esta é a entrada para o 4 º andar do calabouço da Valor. Você não pode entrar a menos que você completar uma missão para mim. Eu preciso de você para encontrar as nove páginas de um documento antigo. Eu sou a única pessoa que pode interpretar esse documento. Depois que eu terminar de interpretá-lo, vou conceder-lhe o acesso ao 4 º andar.",2,"Como faço para encontrar essas páginas?",3,"Dê páginas para Kai de interpretar."

		else
			return 3,0,"Ah desculpe, eu estava ocupada lendo este documento. Basta falar comigo de novo quando quiser ir para o chão 4?",22,"Ok, estou pronto agora",23,"Talvez mais tarde, ainda estou com medo"

		end


	elseif req == 2 then
		StartQuest(cnum, 175)
		return 1,0,"Os monstros no 3 º andar do calabouço tomaram as páginas do documento antigo. Vá e veja se você pode obter todas as 9 páginas para trás deles."


	elseif req == 3 then
		if item1 < 1 or item2 < 1 or item3 < 1 or item4 < 1 or item5 < 1 or item6 < 1 or item7 < 1 or item8 < 1 or item9 < 1 then
			return 1,0,"Você ainda está faltando algumas páginas, eu preciso de todos os 9 para interpretar o documento inteiro e descobrir seu significado. Por favor, encontrá-los para mim."

		else

			AddItemCount(cnum, 4294, -1)
			AddItemCount(cnum, 4295, -1)
			AddItemCount(cnum, 4296, -1)
			AddItemCount(cnum, 4297, -1)
			AddItemCount(cnum, 4298, -1)
			AddItemCount(cnum, 4299, -1)
			AddItemCount(cnum, 4300, -1)
			AddItemCount(cnum, 4301, -1)
			AddItemCount(cnum, 4302, -1)	
			AddSwitchCount(cnum, 158, 1)
			EndQuest(cnum, 175)
			return 3,0,"Ah, este documento é muito interessante, vou precisar de algum tempo para examiná-lo adequadamente. Como eu prometi, vou conceder-lhe o acesso ao 4 º andar. Tenha cuidado, porém, eu ouvi os monstros lá são muito difíceis. Deixe-me saber quando você quer ir para o 4 º andar",12,"Eu estou pronto, vamos lá!",13,"Talvez mais tarde, eu sou um medroso"

		end


	elseif req == 12 then
		MoveZone(cnum, 99, 254)


	elseif req == 13 then
		return 1,0,"Você veio de tão longe e você está com medo? Uau, eu só não sei o que dizer. Você precisa de sua mãe para segurar sua mão?"


	elseif req == 22 then
		MoveZone(cnum, 99, 254)


	elseif req == 23 then
		return 1,0,"Ainda com medo? Vamos lá, você é suposto ser corajoso. Oh, bem, eu ainda estarei aqui lendo isso enquanto eu espero por você para reunir coragem suficiente."



	else
		return 0

	end

end