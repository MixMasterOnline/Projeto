function NPC_QUEST_290(cnum,reqNumber) --  ¼±¹°ÁõÁ¤ NPC ¹«·á ¾ÆÀÌÅÛ ÁõÁ¤
	local req = reqNumber

	if req == 1 then
	return 2,0,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um.",2,"Julgamento de mega poder",3,"Teste de habilidade para o poder",4,"Julgamento de duplo poder "

	elseif req == 2 then

		return 9,0,"Julgamento para o poder mega completo ",12,"Teste de habilidade para o poder total ",13,"Julgamento de nuvens ",14,"Julgamento para aumentar a velocidade de ataque ",15,"Julgamento de poção de recuperação ",16,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",17,"Julgamento para transformação em Drago ",18,"Julgamento para transformação em Devilco ",19,"Julgamento para transformação em Birdco "

	elseif req == 3 then

		return 7,0,"Julgamento para transformação em Flowco ",22,"Julgamento para transformação em Beasco ",23,"Julgamento para transformação em Inseco ",24,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",25,"Julgamento para transformação em METACO ",26,"Julgamento para transformação em Mysco ",27,"Julgamento para transformação em Mameo "

	elseif req == 4 then

		return 7,0,"Julgamento para transformação em MintRable ",32,"Julgamento para transformação em WildBuma ",33,"Julgamento para transformação em Manta ",34,"Por favor, esvazie seu inventário. ",35,"Você tem a única chance de obter um item de julgamento. ",36,"O item de julgamento para o poder faz mega taxa herói ataque aumento de 100% por 5 minutos. ",37,"Por favor, esvazie seu inventário. "
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"O item de ensaio para poder habilidade faz taxa de herói habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"O item de julgamento por duplo poder faz danos herói ataque aumento de 200% por 5 minutos. "
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"O item alimentação mega julgamento por completo torna herói e classificar todas as henches 'ataque aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"O item de julgamento para o poder total habilidade torna herói e classificar todas as henches habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"O item de julgamento por nuvens torna herói e tomar todas as henches nas nuvens. "
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"O item de ensaio para rolagem de aumentar a velocidade de ataque faz 2X ataque aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"O item de ensaio para a poção de recuperação torna herói e todos os henches 'HP / MP recuperação 3X aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Você pode transformar em Drago Drago Core com um duplo clique. "
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Você pode transformar Devilco Core em Devilco por duplo clique "
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Você pode transformar Birdco Core em Birdco por clique duplo. "
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Você pode transformar Flowco Core em Flowco por clique duplo. "
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Você pode transformar Beasco Core em Beasco por clique duplo. "
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Você pode transformar Inseco Core em Inseco por clique duplo. "
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Você pode transformar METACO Core em METACO por clique duplo. "
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Você pode transformar Measco Core em Measco por clique duplo. "
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Você pode transformar Mameo Core em Mameo por clique duplo. "
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Você pode transformar MintRable Core em MintRable por clique duplo. "
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Você pode transformar WildBuma Core em WildBuma por clique duplo. "
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Você pode transformar Core Manta em Manta com um duplo clique .. "
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Olá. Vou te dar uma boa notícia. O que é isso? Eu vou te dar item de graça ~ ~ "

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"item de avaliação "
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Julgamento item2 "
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Julgamento item3 "
		
		end
	return 0
end




function NPC_QUEST_291(cnum,reqNumber) --  ¼±¹°ÁõÁ¤ NPC ¹«·á ¾ÆÀÌÅÛ ÁõÁ¤
	local req = reqNumber

	if req == 1 then
	return 2,0,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",2,"Julgamento de mega poder ",3,"Teste de habilidade para o poder ",4,"Julgamento de duplo poder "

	elseif req == 2 then

		return 9,0,"Julgamento para o poder mega completo ",12,"Teste de habilidade para o poder total ",13,"Julgamento de nuvens ",14,"Julgamento para aumentar a velocidade de ataque ",15,"Julgamento de poção de recuperação ",16,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",17,"Julgamento para transformação em Drago ",18,"Julgamento para transformação em Devilco ",19,"Julgamento para transformação em Birdco "

	elseif req == 3 then

		return 7,0,"Julgamento para transformação em Flowco ",22,"Julgamento para transformação em Beasco ",23,"Julgamento para transformação em Inseco ",24,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",25,"Julgamento para transformação em METACO ",26,"Julgamento para transformação em Mysco ",27,"Julgamento para transformação em Mameo "

	elseif req == 4 then

		return 7,0,"Julgamento para transformação em MintRable ",32,"Julgamento para transformação em WildBuma ",33,"Julgamento para transformação em Manta ",34,"Por favor, esvazie seu inventário. ",35,"Você tem a única chance de obter um item de julgamento. ",36,"O item de julgamento para o poder faz mega taxa herói ataque aumento de 100% por 5 minutos. ",37,"Por favor, esvazie seu inventário. "
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"O item de ensaio para poder habilidade faz taxa de herói habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"O item de julgamento por duplo poder faz danos herói ataque aumento de 200% por 5 minutos. "
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"O item alimentação mega julgamento por completo torna herói e todo o dano henches 'ataque aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"O item de julgamento para o poder total habilidade torna herói e classificar todas as henches habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"O item de julgamento por nuvens torna herói e tomar todas as henches nas nuvens. "
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"O item de ensaio para rolagem de aumentar a velocidade de ataque faz 2X ataque aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"O item de ensaio para a poção de recuperação torna herói e todos os henches 'HP / MP recuperação 3X aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Você pode transformar em Drago Drago Core com um duplo clique. "
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Você pode transformar Devilco Core em Devilco por duplo "
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Você pode transformar Birdco Core em Birdco por clique duplo. "
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Você pode transformar Flowco Core em Flowco por clique duplo. "
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Você pode transformar Beasco Core em Beasco por clique duplo. "
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Você pode transformar Inseco Core em Inseco por clique duplo. "
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Você pode transformar METACO Core em METACO por clique duplo. "
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Você pode transformar Measco Core em Measco por clique duplo. "
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Você pode transformar Mameo Core em Mameo por clique duplo. "
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Você pode transformar MintRable Core em MintRable por clique duplo. "
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Você pode transformar WildBuma Core em WildBuma por clique duplo. "
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Você pode transformar Core Manta em Manta com um duplo clique .. "
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Olá. Vou te dar uma boa notícia. O que é isso? Eu vou te dar item de graça ~ ~ "

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"item de avaliação "
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Julgamento item2 "
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Julgamento item3 "
		
		end
	return 0
end



function NPC_QUEST_292(cnum,reqNumber) --  ¼±¹°ÁõÁ¤ NPC ¹«·á ¾ÆÀÌÅÛ ÁõÁ¤
	local req = reqNumber

	if req == 1 then
	return 2,0,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",2,"Julgamento de mega poder ",3,"Teste de habilidade para o poder ",4,"Julgamento de duplo poder "

	elseif req == 2 then

		return 9,0,"Julgamento para o poder mega completo ",12,"Teste de habilidade para o poder total ",13,"Julgamento de nuvens ",14,"Julgamento para aumentar a velocidade de ataque ",15,"Julgamento de poção de recuperação ",16,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",17,"Julgamento para transformação em Drago ",18,"Julgamento para transformação em Devilco ",19,"Julgamento para transformação em Birdco "

	elseif req == 3 then

		return 7,0,"Julgamento para transformação em Flowco ",22,"Julgamento para transformação em Beasco ",23,"Julgamento para transformação em Inseco ",24,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",25,"Julgamento para transformação em METACO ",26,"Julgamento para transformação em Mysco ",27,"Julgamento para transformação em Mameo "

	elseif req == 4 then

		return 7,0,"Julgamento para transformação em MintRable ",32,"Julgamento para transformação em WildBuma ",33,"Julgamento para transformação em Manta ",34,"Por favor, esvazie seu inventário. ",35,"Você tem a única chance de obter um item de julgamento. ",36,"O item de julgamento para o poder faz mega taxa herói ataque aumento de 100% por 5 minutos. ",37,"Por favor, esvazie seu inventário. "
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"O item de ensaio para poder habilidade faz taxa de herói habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"O item de julgamento por duplo poder faz danos herói ataque aumento de 200% por 5 minutos. "
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"O item alimentação mega julgamento por completo torna herói e todo o dano henches 'ataque aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"O item de julgamento para o poder total habilidade torna herói e classificar todas as henches habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"O item de julgamento por nuvens torna herói e tomar todas as henches nas nuvens. "
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"O item de ensaio para rolagem de aumentar a velocidade de ataque faz 2X ataque aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"O item de ensaio para a poção de recuperação torna herói e todos os henches 'HP / MP recuperação 3X aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Você pode transformar em Drago Drago Core com um duplo clique. "
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Você pode transformar Devilco Core em Devilco por duplo "
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Você pode transformar Birdco Core em Birdco por clique duplo. "
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Você pode transformar Flowco Core em Flowco por clique duplo. "
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Você pode transformar Beasco Core em Beasco por clique duplo. "
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Você pode transformar Inseco Core em Inseco por clique duplo. "
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Você pode transformar METACO Core em METACO por clique duplo. "
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Você pode transformar Measco Core em Measco por clique duplo. "
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Você pode transformar Mameo Core em Mameo por clique duplo. "
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Você pode transformar MintRable Core em MintRable por clique duplo. "
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Você pode transformar WildBuma Core em WildBuma por clique duplo. "
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Você pode transformar Core Manta em Manta com um duplo clique .. "
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Olá. Vou te dar uma boa notícia. O que é isso? Eu vou te dar item de graça ~ ~ "

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"item de avaliação "
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Julgamento item2 "
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Julgamento item3 "
		
		end
	return 0
end




function NPC_QUEST_293(cnum,reqNumber) --  ¼±¹°ÁõÁ¤ NPC ¹«·á ¾ÆÀÌÅÛ ÁõÁ¤
	local req = reqNumber

	if req == 1 then
	return 2,0,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",2,"Julgamento de mega poder ",3,"Teste de habilidade para o poder ",4,"Julgamento de duplo poder "

	elseif req == 2 then

		return 9,0,"Julgamento para o poder mega completo ",12,"Teste de habilidade para o poder total ",13,"Julgamento de nuvens ",14,"Julgamento para aumentar a velocidade de ataque ",15,"Julgamento de poção de recuperação ",16,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",17,"Julgamento para transformação em Drago ",18,"Julgamento para transformação em Devilco ",19,"Julgamento para transformação em Birdco "

	elseif req == 3 then

		return 7,0,"Julgamento para transformação em Flowco ",22,"Julgamento para transformação em Beasco ",23,"Julgamento para transformação em Inseco ",24,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",25,"Julgamento para transformação em METACO ",26,"Julgamento para transformação em Mysco ",27,"Julgamento para transformação em Mameo "

	elseif req == 4 then

		return 7,0,"Julgamento para transformação em MintRable ",32,"Julgamento para transformação em WildBuma ",33,"Julgamento para transformação em Manta ",34,"Por favor, esvazie seu inventário. ",35,"Você tem a única chance de obter um item de julgamento. ",36,"O item de julgamento para o poder faz mega taxa herói ataque aumento de 100% por 5 minutos. ",37,"Por favor, esvazie seu inventário. "
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"O item de ensaio para poder habilidade faz taxa de herói habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"O item de julgamento por duplo poder faz danos herói ataque aumento de 200% por 5 minutos. "
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"O item alimentação mega julgamento por completo torna herói e todo o dano henches 'ataque aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"O item de julgamento para o poder total habilidade torna herói e classificar todas as henches habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"O item de julgamento por nuvens torna herói e tomar todas as henches nas nuvens. "
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"O item de ensaio para rolagem de aumentar a velocidade de ataque faz 2X ataque aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"O item de ensaio para a poção de recuperação torna herói e todos os henches 'HP / MP recuperação 3X aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Você pode transformar em Drago Drago Core com um duplo clique. "
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Você pode transformar Devilco Core em Devilco por duplo "
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Você pode transformar Birdco Core em Birdco por clique duplo. "
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Você pode transformar Flowco Core em Flowco por clique duplo. "
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Você pode transformar Beasco Core em Beasco por clique duplo. "
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Você pode transformar Inseco Core em Inseco por clique duplo. "
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Você pode transformar METACO Core em METACO por clique duplo. "
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Você pode transformar Measco Core em Measco por clique duplo. "
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Você pode transformar Mameo Core em Mameo por clique duplo. "
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Você pode transformar MintRable Core em MintRable por clique duplo. "
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Você pode transformar WildBuma Core em WildBuma por clique duplo. "
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Você pode transformar Core Manta em Manta com um duplo clique .. "
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Olá. Vou te dar uma boa notícia. O que é isso? Eu vou te dar item de graça ~ ~ "

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"item de avaliação "
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Julgamento item2 "
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Julgamento item3 "
		
		end
	return 0
end




function NPC_QUEST_294(cnum,reqNumber) --  ¼±¹°ÁõÁ¤ NPC ¹«·á ¾ÆÀÌÅÛ ÁõÁ¤
	local req = reqNumber

	if req == 1 then
	return 2,0,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",2,"Julgamento de mega poder ",3,"Teste de habilidade para o poder ",4,"Julgamento de duplo poder "

	elseif req == 2 then

		return 9,0,"Julgamento para o poder mega completo ",12,"Teste de habilidade para o poder total ",13,"Julgamento de nuvens ",14,"Julgamento para aumentar a velocidade de ataque ",15,"Julgamento de poção de recuperação ",16,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",17,"Julgamento para transformação em Drago ",18,"Julgamento para transformação em Devilco ",19,"Julgamento para transformação em Birdco "

	elseif req == 3 then

		return 7,0,"Julgamento para transformação em Flowco ",22,"Julgamento para transformação em Beasco ",23,"Julgamento para transformação em Inseco ",24,"Por favor me lembro. Você receberá o item único, que é menos do que pagou item ~ OK! Tome um por um. ",25,"Julgamento para transformação em METACO ",26,"Julgamento para transformação em Mysco ",27,"Julgamento para transformação em Mameo "

	elseif req == 4 then

		return 7,0,"Julgamento para transformação em MintRable ",32,"Julgamento para transformação em WildBuma ",33,"Julgamento para transformação em Manta ",34,"Por favor, esvazie seu inventário. ",35,"Você tem a única chance de obter um item de julgamento. ",36,"O item de julgamento para o poder faz mega taxa herói ataque aumento de 100% por 5 minutos. ",37,"Por favor, esvazie seu inventário. "
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"O item de ensaio para poder habilidade faz taxa de herói habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"O item de julgamento por duplo poder faz danos herói ataque aumento de 200% por 5 minutos. "
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"O item alimentação mega julgamento por completo torna herói e todo o dano henches 'ataque aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"O item de julgamento para o poder total habilidade torna herói e classificar todas as henches habilidade aumento de 100% por 5 minutos. "
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"O item de julgamento por nuvens torna herói e tomar todas as henches nas nuvens. "
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"O item de ensaio para rolagem de aumentar a velocidade de ataque faz 2X ataque aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"O item de ensaio para a poção de recuperação torna herói e todos os henches 'HP / MP recuperação 3X aumentar a velocidade por 5 minutos. "
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Você pode transformar em Drago Drago Core com um duplo clique. "
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Você pode transformar Devilco Core em Devilco por duplo "
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Você pode transformar Birdco Core em Birdco por clique duplo. "
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Você pode transformar Flowco Core em Flowco por clique duplo. "
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Você pode transformar Beasco Core em Beasco por clique duplo. "
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Você pode transformar Inseco Core em Inseco por clique duplo. "
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Você pode transformar METACO Core em METACO por clique duplo. "
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Você pode transformar Measco Core em Measco por clique duplo. "
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Você pode transformar Mameo Core em Mameo por clique duplo. "
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Você pode transformar MintRable Core em MintRable por clique duplo. "
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Você pode transformar WildBuma Core em WildBuma por clique duplo. "
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Por favor, esvazie seu inventário. "

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Você tem a única chance de obter um item de julgamento. "
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Você pode transformar Core Manta em Manta com um duplo clique .. "
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Bem-vindo! Você quer um pouco [pontos de experiência]? Vai custar-lhe um núcleo embora. Umm .. Primeiro, clique em um nível adequado para você. "

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"[Nível 20 ou menos] "
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"[Lvl 21 ~ 40] "
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"[Nível 41 ou superior] "
		
		end
	return 0
end