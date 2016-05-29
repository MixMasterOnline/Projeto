 function NPC_QUEST_259(cnum,reqNumber) -- ½¬¶óÀÇ ´«¹° (º£Çì¸£¼¼¹Ù)
	local req,id1,id2,id3,id4,count1,count2,count3,count4

	id1 = 361 --±İ ºø
	id2 = 363 --È²±İ»õ Á¶°¢»ó
	id3 = 365 --½¬¶óÀÇ ¹İÁö
	id4 = 373 --Èñ¸ÁÀÇ ÁöÆÎÀÌ

	Switch1 = GetSwitchCount(cnum, 1010)
	Switch2 = GetSwitchCount(cnum, 18)
	Switch3 = GetSwitchCount(cnum, 17)
	Switch4 = GetSwitchCount(cnum, 1005)
	Switch5 = GetSwitchCount(cnum, 19)

	local req = reqNumber

	if req == 1 then

		if Switch5 < 1 then
			if Switch1 < 1 then
				if Switch2 < 1 then
					if Switch3 < 1 then
						if Switch4 < 1 then
							return 2,0,"Olá, você quer saber como usar o pente para apagar a memória de uma árvore? Eu não estou 100% certo, mas meus 3 misteriosa lágrima que crystalises em um ",3,"Sim, eu sei."
						else
							if GetSwitchCount(cnum, 15) < 1 then
								return 2,0,"Trouxe-me, meu anel perdido?",4,"Sim"
							else
								return 1,0,"Ok, agora o cristal 2. Eu não sei como eu posso chorar agora. Ah, eu tenho uma boa idéia! Se você vai a Rolling Cores (X: 153 Y: 93) área de campo e encontrar"
							end
						end
					else
						return 2,0,"Você ainda tem algo a me perguntar?",12,"Dê a foto de família."
					end
				else
					return 1,0,"Agora, para o último mas não menos importante, o Crystal de Angel's Tear. Isso é difícil, pois eu tenho que chorar de felicidade. Hmmmm, talvez ir e encontrar"
				end
			else
				return 2,0,"Você recebeu o bastão da esperança?",8,"Sim, aqui está."
			end
		else
			if GetSwitchCount(cnum,19) == 0 then
				return 1,0,"Você não recolher todas as lágrimas de três cristais. Sinto muito. Eu não posso lhe dar qualquer informação."
			end

			if GetItemCount(cnum,364,0) == 0 then  --ºÓÀº»ö ´«¹°°áÁ¤(364)
				return 1,0,"Não há Cristal de Devil's Tear."
			end

			if GetItemCount(cnum,370,0) == 0 then  --ÁÖÈ²»ö ´«¹°°áÁ¤(370)
				return 1,0,"Não há Cristal de Ouro Tear."
			end

			if GetItemCount(cnum,374,0) == 0 then  --³ë¶õ»ö ´«¹°°áÁ¤(374)
				return 1,0,"Não há Cristal de Angel's Tear."
			end

			return 1,0,"Você deve pegar uma garrafa de vidro de ouro para colocar os cristais em, caso contrário, eles vão perder poder mágico. Golden garrafa de vidro é um frasco"

		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"*** Antes de você seguir em frente com o World Quest, você deve falar com Holden em Herseba de entrada (X: 195.Y: 76)"
		end

		if GetSwitchCount(cnum, 13) > 0 then
			return 2,0,"Hmmmm, eu acho que você tem que me fazer chorar primeiro. Minhas emoções foram destruídas desde monstro atacou a minha família. Eu tenho uma idéia, no",101,"Eu vou buscá-la de volta para você."
		end

	elseif req == 101 then
		StartQuest(cnum, 6)
		AddSwitchCount(cnum, 1005, 1)
		return 1,0,"Foi pensando em anos, mas o ataque ainda me faz chorar."



	elseif req == 4 then

		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)

		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"Por que você não encontrar Holden na entrada Herseba."
		end

		if GetSwitchCount(cnum, 15) > 0 then
			return 1,0,"Um cristal de Tear Diabo é suficiente para mim. Mas, eu estou com medo que eu não tenho nada para lhe dar mais."
		end

		if GetItemCount(cnum,365, 0) == 0 then -- ½¬¶óÀÇ ¹İÁö
			return 1,0,"Por favor, vá e recolher o meu anel?"
		end

		if GetItemCount(cnum, 361, 0) == 0 then -- ±İ ºø
			return 1,0,"Você não tem a escova de Ouro, por que você não tem?"
		end

		if GetItemCount(cnum, 363, 0) == 0 then --È²±İ»õ Á¶°¢»ó
			return 1,0,"voz chorosa de Elly é muito famosa em todo o mundo, não é? Umm ... By the way, se você jogar fora é escultura?"
		end

		AddMoney(cnum,5000)
		AddSwitchCount(cnum,15,1) -- ºÓÀº ´«¹°°áÁ¤¿¡ ´ëÇÑ ½ºÀ§Ä¡ °ª
		AddItemCount(cnum,id1,-count1) -- ±İ ºø(361)
		AddItemCount(cnum,id2,-count2) --È²±İ»õ Á¶°¢»ó(363)
		AddItemCount(cnum,id3,-count3) --½¬¶óÀÇ ¹İÁö(365)
		AddItemCount(cnum,364,1) --ºÓÀº ´«¹°°áÁ¤(364)
		EndQuest(cnum, 6)
		return 1,0,"Bem feito!Ah, as memórias. ~ Shira gritos e lágrimas crystalises ~ Muito obrigado. Por favor aceite este Cristal de Tear Diabo. Eu também lhe dará 5000GP como um presente também."



	elseif req == 12 then
		if GetSwitchCount(cnum, 17) < 1 then
			return 1,0,"Eu não sei your're aqui novamente, mas eu acho que você tem algo a ver direito. Por que você não ir agora?"

		elseif GetItemCount(cnum, 371, 0) < 1 then
			return 1,0,"Eu não sei your're aqui novamente, mas eu acho que você tem algo a ver direito. Por que você não ir agora?"

		else
			AddMoney(cnum,10000)
			AddItemCount(cnum,370,1) -- ÁÖÈ²»ö ´«¹°°áÁ¤(370)
			AddItemCount(cnum,371,-1)
			AddSwitchCount(cnum,18,1) -- ÁÖÈ²»ö ´«¹°°áÁ¤¿¡ ´ëÇÑ ½ºÀ§Ä¡ °ª
			return 1,0,"Como você encontrou uma foto minha família? Ele foi queimado pelos monstros, eu não posso acreditar. Ah, ele me faz chorar. Mas feliz também. Por favor, tome isso, é de cristal de Ouro Tear. Obrigado, sua buthere não custa algum dinheiro."
		end



	elseif req == 8 then

		count4 = GetItemCount(cnum,id4,0)

		if GetSwitchCount(cnum,19) > 0 then
			return 1,0,"Você pode ter apenas um cristal de Angel's Tear. Por favor, encontrar um chefe de aldeia chamado Irena nas ruínas Cheseva."
		end

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Você pode obter um cristal de Angel's Tear depois de obter o Crystal of Golden Tear."
		end

		if GetItemCount(cnum,373,0) == 0 then -- Èñ¸ÁÀÇ ÁöÆÎÀÌ(373)
			return 1,0,"Se você encontrar Manpeace que está na pradaria Owalljae, você pode obter um bastão do desejo."
		end

		AddItemCount(cnum,id4,-count4) -- Èñ¸ÁÀÇ ÁöÆÎÀÌ(373)
		AddItemCount(cnum,374,1) --³ë¶õ»ö ´«¹°°áÁ¤(374)
		AddMoney(cnum,12000)
		AddSwitchCount(cnum,19,1) -- ³ë¶õ»ö ´«¹°°áÁ¤¿¡ ´ëÇÑ ½ºÀ§Ä¡ °ª
		return 1,0,"Ah, não posso estar chorando para sempre. Minha família está no passado. Muito obrigado. Eu te darei 12000GP como um presente. Você finalmente recolhidos todos os 3 cristais de lágrima."

	end
	return 0
end




