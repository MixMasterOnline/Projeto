function NPC_QUEST_201(cnum, reqNumber) --°Ô¸¯

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 165) < 1 then
			if GetSwitchCount(cnum, 164) < 1 then
				return 3,0,"Ei, ei ... ",2,"Quem é você? ",3,"Hum. .. homem louco .. "
	
			else
				return 4,0,"Recebeste Poção? ",62,"Sim, senhor ",63,"É tão difícil ",64,"[Informações da Quest.] "

			end

		else
			return 3,0,"Você conseguiu o material? ",92,"Sim, senhor. ",93,"Para explicar as coisas "

		
		end

 

	elseif req == 2 then
		return 2,0,"Eu sou o assistente do palácio que vivenciaram o Dungeon of Valor. A ganância do momento fez quem eu sou .. ",12,"Por que você está fazendo isso? "

	elseif req == 12 then
		return 2,0,"Fui para o Calabouço de Valor há 10 anos. E eu descobri que ninguém poderia imaginar. ",22,"O que você descobriu? "

	elseif req == 22 then
		return 2,0,"Eu não posso te dizer agora, porque eu não ",32,"Como eu posso fazer? "

	elseif req == 32 then
		return 2,0,"Poderia dar-me um favor? Eu estou sob uma maldição. Para purificar essa maldição, eu preciso do item especial na aldeia. Quer levá-lo para mim? Vou te dar um bom presente, se você bing-lo. ",42,"O item? "

	elseif req == 42 then
		return 2,0,"O item é [Curse Purificante Potion]. Parece que você não pode obtê-lo facilmente. Poção é na aldeia. Estive aqui como este há dez anos. ",52,"Eu vou buscá-la. "

	elseif req == 52 then
		StartQuest(cnum, 169)
		AddSwitchCount(cnum, 164, 1)
		return 1,0,"Eu vou esperar por você. "




	elseif req == 62 then
		if GetItemCount(cnum, 8019, 0) < 1 then
			return 1,0,"Você está me traindo? "

		else
			EndQuest(cnum, 169)
			return 2,0,"Finalmente eu tenho a partir desta maldição. Obrigado. Eu vou te dar presente em recompensa. Bem, você é capaz de ler as cartas de Rune? O quê? Huh, huh ~ Talvez você não pode ler este book.Hm.. Então eu vou fazer isso por você. Basta levar o material. ",72,"Que coisas? "

		end


	elseif req == 63 then
		return 1,0,"Você acha que é para obter a poção? A Maldição Purificante Poção é muito caro, porque pode ser feito apenas no santuário. "


	elseif req == 64 then
		return 1,0,"[Curse Purificante Potiono] @ Ele pode purificar a maldição alta e comerciante em Magirita Mekrita e estão vendendo-o. "





	elseif req == 72 then
		return 2,0,"Eu descobrir o livro que mostra como fazer [Mix Enchant] no Dungeon of Valor. Eu vou fazer isso para você, se você tomá-lo ",82,"Eu vou buscá-la. "



	elseif req == 82 then
		AddItemCount(cnum, 8019, -1)
		AddSwitchCount(cnum, 165, 1)
		StartQuest(cnum, 170)
		return 1,0,"Agora, vou tentar a poção? Kek .... É como um veneno ... eu estarei aqui, você pode parar a qualquer momento. "



--°è¿­ ¼±ÅÃ ºÎºÐ
	elseif req == 92 then
		return 6,0,"Escolha o tipo que você quer fazer ",122,"Poção Mix Tipo Dragon",123,"Poção Mix Tipo Devil",124,"Poção Mix Tipo Besta",125,"Poção Mix Tipo Bird",126,"Proximo"



	elseif req == 126 then
		return 6,0,"Escolha o tipo que você quer fazer ",132,"Poção Mix Tipo Inseto",133,"Poção Mix Tipo Planta",134,"Poção Mix Tipo Mistério",135,"Poção Mix Tipo Metal",92,"Antes" 





--¾ÆÀÌÅÛ ¼±ÅÃ ºÎºÐ
	elseif req == 122 then -- µå·¡°ï
		return 3,0,"Você pode fazer Escama de Dragão e Jewerly Dragão. Escolha o item. Coloque o item de material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",142,"Escala de Dragão ",143,"Jóias do Dragão "
 

	elseif req == 123 then -- ¾Ç¸¶
		return 3,0,"Você pode fazer asa de morcego e Contrato do Diabo. Escolha o item. Coloque o item de material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",152,"Asa de Morcego ",153,"Contrato do Diabo "


	elseif req == 124 then -- Áü½Â
		return 3,0,"Você pode fazer Sharp dente e símbolo do Animal. Escolha o item. Coloque o item de material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",162,"Sharp de dente ",163,"Símbolo do Animal "


	elseif req == 125 then -- »õ
		return 3,0,"Você pode fazer Plumas de Cristal do Vento e do vento. Escolha o item.Put o item material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",172,"Plumas de Vento ",173,"Wind Crystal "


	elseif req == 132 then -- °ïÃæ
		return 3,0,"Você pode fazer doce de seiva e de Rainbow Shell inseto. Escolha o item.Put o item material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",182,"Sweet Sap ",183,"Casca de Inseto Rainbow "


	elseif req == 133 then -- ½Ä¹°
		return 3,0,"Você pode fazer Twing da Vida e da Folha da Vida. Escolha o item.Put o item material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",192,"Twing da Vida ",193,"salto da vida "


	elseif req == 134 then -- ¹Ì½ºÅ×¸®		 
		return 3,0,"Você pode fazer Mystic Wand e Chaos Crystal. Escolha o item.Put o item material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",202,"Mystic Wand ",203,"Chaos Crystal "


	elseif req == 135 then -- ¸ÞÅ»
		return 3,0,"Você pode fazer Red Metal e peça de máquina de vida. Escolha o item.Put o item material para a primeira garrafa de vidro branco, branco no terceiro. O item material é para ser apenas um. ",212,"Red Metal",213,"Chave da máquina da vida "










	elseif req == 93 then
		return 2,0,"Primeiro de tudo, cada Encantar Item necessidade item como característica [Chama do Dragão] e [Magic Book of Darkness]. Você tem que misturar o item characteristc e pequeno frasco de vidro para a Primeira Encantar. E para o Enchant Segundo, você precisa Big garrafa de vidro. ",102,"Característica item ... Como posso conseguir isso? "



	elseif req == 102 then
		return 3,0,"Você pode obter itens característicos de caçar monstros em Calabouço em Valor.And da Quest completa também. ",112,"Conte-me sobre o item que eu preciso ",113,"Conte-me sobre a Quest "



	elseif req == 112 then
		return 1,0,""


	elseif req == 113 then
		return 1,0,"Eu não sei nada sobre isso. Vá para [Carrez] em Mekrita.He irá explicar sobre isso para mais detalhes. "










	elseif req == 142 then
		if GetSwitchCount(cnum, 1035) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 250, 3, 1)
		
		end

	elseif req == 143 then
		if GetSwitchCount(cnum, 1036) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 251, 3, 1)
		end


	elseif req == 152 then
		if GetSwitchCount(cnum, 1037) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 252, 3, 1)

		end

	elseif req == 153 then
		if GetSwitchCount(cnum, 1038) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 253, 3, 1)

		end

	elseif req == 162 then
		if GetSwitchCount(cnum, 1039) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 254, 3, 1)

		end

	elseif req == 163 then
		if GetSwitchCount(cnum, 1040) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 255, 3, 1)

		end

	elseif req == 172 then
		if GetSwitchCount(cnum, 1041) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 256, 3, 1)

		end

	elseif req == 173 then
		if GetSwitchCount(cnum, 1042) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 257, 3, 1)

		end

	elseif req == 182 then
		if GetSwitchCount(cnum, 1043) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 258, 3, 1)

		end

	elseif req == 183 then
		if GetSwitchCount(cnum, 1044) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 259, 3, 1)

		end

	elseif req == 192 then
		if GetSwitchCount(cnum, 1045) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 260, 3, 1)

		end

	elseif req == 193 then
		if GetSwitchCount(cnum, 1046) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 261, 3, 1)	
 
		end

	elseif req == 202 then
		if GetSwitchCount(cnum, 1047) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 262, 3, 1)

		end

	elseif req == 203 then
		if GetSwitchCount(cnum, 1048) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 263, 3, 1)

		end

	elseif req == 212 then
		if GetSwitchCount(cnum, 1049) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 264, 3, 1)

		end

	elseif req == 213 then
		if GetSwitchCount(cnum, 1050) > 0 then
			return 1,0,"Troca de item está disponível apenas uma vez "

		else
			QuestItemCart(cnum, 265, 3, 1)

		end



	elseif req == 250 then
		result1 = ItemOrderMatch(cnum, 3, 4286 , 0, 8017)

		if result1 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result1 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 320, 1)
			AddSwitchCount(cnum, 1035, 1)
			EndQuest(cnum, 170)			
			return 1,0,"Você conseguirá fazer escala do Dragão! "

		end




	elseif req == 251 then
		result2 = ItemOrderMatch(cnum, 3, 4286 , 0, 8018)

		if result2 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result2 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 328, 1)			
			AddSwitchCount(cnum, 1036, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Dragon's Jewelry!"

		end



	elseif req == 252 then
		result3 = ItemOrderMatch(cnum, 3, 4287 , 0, 8017)

		if result3 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result3 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 321, 1)
			AddSwitchCount(cnum, 1037, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Wing of Bat!"

		end



	elseif req == 253 then
		result4 = ItemOrderMatch(cnum, 3, 4287 , 0, 8018)

		if result4 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result4 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 329, 1)
			AddSwitchCount(cnum, 1038, 1)
			EndQuest(cnum, 170)			
			return 1,0,"Você tem sucesso em fazer Devil's Contract!"

		end



	elseif req == 254 then
		result5 = ItemOrderMatch(cnum, 3, 4288 , 0, 8017)

		if result5 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result5 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 322, 1)			
			AddSwitchCount(cnum, 1039, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Sharp Tooth!"

		end



	elseif req == 255 then
		result6 = ItemOrderMatch(cnum, 3, 4288 , 0, 8018)

		if result6 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result6 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 330, 1)			
			AddSwitchCount(cnum, 1040, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Symbol of Animal!"

		end




	elseif req == 256 then
		result7 = ItemOrderMatch(cnum, 3, 4289 , 0, 8017)

		if result7 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result7 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 323, 1)			
			AddSwitchCount(cnum, 1041, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Plumes of Wind!"

		end



	elseif req == 257 then
		result8 = ItemOrderMatch(cnum, 3, 4289 , 0, 8018)

		if result8 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result8 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 331, 1)			
			AddSwitchCount(cnum, 1042, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Wing Crystal!"

		end




	elseif req == 258 then
		result9 = ItemOrderMatch(cnum, 3, 4290 , 0, 8017)

		if result9 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result9 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 324, 1)			
			AddSwitchCount(cnum, 1043, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Sweet Sap!"

		end



	elseif req == 259 then
		result10 = ItemOrderMatch(cnum, 3, 4290 , 0, 8018)

		if result10 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result10 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 332, 1)			
			AddSwitchCount(cnum, 1044, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Shell of Rainbow Insect!"

		end




	elseif req == 260 then
		result11 = ItemOrderMatch(cnum, 3, 4291 , 0, 8017)

		if result11 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result11 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 325, 1)			
			AddSwitchCount(cnum, 1045, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Twing of Life!"

		end



	elseif req == 261 then
		result12 = ItemOrderMatch(cnum, 3, 4291 , 0, 8018)

		if result12 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result12 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 333, 1)			
			AddSwitchCount(cnum, 1046, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Leaf of Life!"

		end



	elseif req == 262 then
		result13 = ItemOrderMatch(cnum, 3, 4292 , 0, 8017)

		if result13 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result13 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 327, 1)			
			AddSwitchCount(cnum, 1047, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Mystic Wand!"

		end



	elseif req == 263 then
		result14 = ItemOrderMatch(cnum, 3, 4292 , 0, 8018)

		if result14 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result14 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 335, 1)			
			AddSwitchCount(cnum, 1048, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Chaos Crystal!"

		end


	elseif req == 264 then
		result15 = ItemOrderMatch(cnum, 3, 4293 , 0, 8017)

		if result15 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result15 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 326, 1)			
			AddSwitchCount(cnum, 1049, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Red Metal!"

		end



	elseif req == 265 then
		result16 = ItemOrderMatch(cnum, 3, 4293 , 0, 8018)

		if result16 < 0 then
			return 1,0,"Tente novamente um pouco mais tarde! "

		elseif result16 == 0 then
			return 1,0,"Não é para o item de organizar a ordem ou não é o item que quer NPC. "

		else
			ClearCart(cnum)
			AddItemCount(cnum, 334, 1)			
			AddSwitchCount(cnum, 1050, 1)
			EndQuest(cnum, 170)
			return 1,0,"Você tem sucesso em fazer Key of Machine Life!"

		end



	else
		return 0

	end
end		





