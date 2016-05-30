function NPC_QUEST_212(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 3,0,"Bem-vindo, meu nome é Lamia e eu sou o guardião de Dungeon Valor. Você vai precisar de um Premium Zone ingresso para entrar. Você gostaria de entrar?",2,"Sim",3,"Não"


	elseif req == 2 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 8499, 0) < 1 then 
			return 1,0,"Eu não consigo encontrar o seu ingresso Premium Zone. Por favor, retorne quando você tem uma."


		else
			return 2,0,"Premium Zone ingresso recebido. Você gostaria de entrar agora?",12,"Digite",13,"Mais tarde"


		end


	elseif req == 12 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 8499, 0) < 1 then 
			return 1,0,"Eu não consigo encontrar o seu ingresso Premium Zone. Por favor, retorne quando você tem uma."


		else
			MoveZone(cnum, 96, 254)
		
		end


	else
		return 0

	end
end


function NPC_QUEST_214(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Você encontrou o que você estava procurando? Se você quiser sair, me avise.",2,"Deixar Dungeon de Valor",3,"Fica aqui mais um pouco"


	elseif req == 2	then
		MoveZone(cnum, 35, 254)


	else
		return 0

	end
end