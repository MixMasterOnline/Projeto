function NPC_QUEST_211(cnum,reqNumber) -- ¸¶Áö¸®Å¸ ¼­ºÎÇØ¾È (µàÅ©ÇÁ)- ¾ÆÀÌ½º Å©¸²
	local req = reqNumber

	if req == 1 then
		return 3,0,"[Não, eu não]",2,"Macca disse que recebeu o sorvete bem, obrigado.",3,"Acho que já deu o sorvete, não é?"

	elseif req == 2 then

		if GetSwitchCount(cnum, 1052) > 0 then
			return 1,0,"O inventário não tem espaço suficiente para manter gelado."
		end

		if GetSwitchCount(cnum, 1051) > 0 then
			return 1,0,"Você tem sorvete já. Por favor, dê gelado para Macca nos prados do Sul Mekrita."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Há uma coisa que você tem que pensar ... A menos que você tomar sorvete com Macca em Meadows of Southern Mekrita em breve, será gelado derreter."
		end

		if GetItemCount(cnum,1044,0) == 1 then -- ¾ÆÀÌ½ºÅ©¸²
			return 1,0,"Me desculpe, mas você abandonou a chance de ter um monte de GP"
		end

		AddItemCount(cnum,1044,1) -- ¾ÆÀÌ½ºÅ©¸² ±âÁõ
		AddSwitchCount(cnum, 1051, 1)
		return 1,0,"Laboz disse que recebeu a rosa ea carta. Graças"

	elseif req == 3 then

		return 1,0,"Você quis terminar a entrega da carta também?"
		
		end

	return 0

end


function NPC_QUEST_223(cnum,reqNumber) -- ¸ÞÅ©¸®Å¸ ³²ºÎÃÊ¿ø (¸»Ä«)-ÆíÁö
	local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1053) > 0 then
			return 1,0,"Eu não posso dar-lhe a letra, se há uma rosa no inventário."
		end

		if GetSwitchCount(cnum, 1052) > 0 then
			return 1,0,"Você não pode ter correspondência com mais de um."
		end
		
		if GetItemCount(cnum,1046,0) == 1 then
			return 1,0,"Para fazer esta quest, você deve ter mais de um espaço vazio no seu inventário ..."
		end

		if GetItemCount(cnum,1045,0) == 1 then --ÆíÁö
			return 1,0,"Eu desejo muito gelado! Por acaso você tem sorvete? Você pode obter sorvete de duto, no oeste do Mar da Magirita."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Tenho iceream."
		end

		return 2,0,"Você não tem sorvete. Você pode obter a partir de sorvete Dukfu no oeste do Mar da Magirita.",2,"Muito obrigado por este frio gelado.! By the way, oh meu deus! Eu não tenho nenhuma taxa de entrega. Hm ... Você pode pegar esta carta para Laboz na Damp Islava área? Laboz ? lhe dará uma grande quantidade de GP em recompensa por sua bondade."

	elseif req == 2 then

		if GetItemCount(cnum,1044,0) == 0 then
			return 1,0,"Sim, eu vou entregar esta carta."
		end

		AddItemCount(cnum,1044,-1) -- ¾ÆÀÌ½ºÅ©¸²
		return 2,0,"Bem, há mais uma coisa. Ou seja gosta Laboz subiu muito. Laboz não vai ler esta carta a menos que haja rosa. Você pode conseguir uma rosa de derrotar ForceFlyer em Islaba Damp área.",12,"Obrigado por a rosa ea carta" 

	elseif req == 12 then

		AddItemCount(cnum,1045,1) -- ÆíÁö Ãß°¡
		AddSwitchCount(cnum, 1052, 1)
		return 1,0,"Eu não vou ler qualquer letra, sem rosa! Você pode conseguir uma rosa de derrotar ForceFlyer em Islaba Damp área. Por favor, dê-me uma rosa."
		end
	
	return 0
end

function NPC_QUEST_213(cnum,reqNumber) -- ¾ÆÀÌ½½¶ó¹Ù ½ÀÁö´ë (¶óº¸Áî) 
	local req = reqNumber

	if req == 1 then


		if GetSwitchCount(cnum, 1053) > 0 then
			return 1,0,"Você não tem a carta. Você pode obter a carta, se cumprir Macca no Sul do Mekrita Meadows."
		end

		if GetItemCount(cnum,1046,0) == 0 then
			return 1,0,"Você tem o leter e rosa? Se você me der eles, eu vou te pagar tudo. Mas eu posso pagar-lhe com o meu humor dita, porque eu sou extremamente temperamental. Você pode obter lotes de GP, se você está na sorte .."
		end

		if GetItemCount(cnum,1045,0) == 0 then
			return 1,0,"[Para dar a carta e levantou-se]"
		end

		return 2,0,"Você não tem rosa.",12,"Você não tem a carta."

	elseif req == 12 then

		if GetItemCount(cnum,1046,0) == 0 then
			return 1,0,"Vou pagar-lhe 300 GP. A rosa murcha."
		end

		if GetItemCount(cnum,1045,0) == 0 then
			return 1,0,"Vou pagar-lhe 1000 GP. A rosa murcha um pouco."
		end

		random = SetRandom(cnum,0,1000)

		if random < 350 then
			
			AddItemCount(cnum,1046-1) -- Àå¹Ì²É
			AddItemCount(cnum,1045,-1) -- ÆíÁö
			AddMoney(cnum,300)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Vou pagar-lhe 3000 GP. A rosa não olha fresco!"

		elseif random >= 350 and random < 650 then
			
			AddItemCount(cnum,1046,-1) --Àå¹Ì²É
			AddItemCount(cnum,1045,-1) --ÆíÁö
			AddMoney(cnum,1000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Vou pagar-lhe 30.000 GP. A rosa parece fresco."

		elseif random >= 650 and random < 900 then
			
			AddItemCount(cnum,1046,-1) --Àå¹Ì²É
			AddItemCount(cnum,1045,-1) --ÆíÁö
			AddMoney(cnum,3000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Vou pagar-lhe 90.000 GP. A rosa parece muito fresco."

		elseif random >= 900 and random < 995 then
			
			AddItemCount(cnum,1046,-1) --Àå¹Ì²É
			AddItemCount(cnum,1045,-1) --ÆíÁö
			AddMoney(cnum,30000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Eu vou lhe pagar 150.000 GP tudo que tenho. Você é a pessoa de sorte!"

		elseif random >= 995 and random < 998 then
			
			AddItemCount(cnum,1046,-1) --Àå¹Ì²É
			AddItemCount(cnum,1045,-1) --ÆíÁö
			AddMoney(cnum,90000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Você pode por favor me fazer um favor? Pode dar este bolo para Quadra no Pântano Ilusão? Quadra realmente gosta de bolo. Você deve ser rápido, porém, de outra forma o bolo será arruinado."

		elseif random >= 998 and random <= 1000 then
			
			AddItemCount(cnum,1046,-1) -- Àå¹Ì²É
			AddItemCount(cnum,1045,-1) -- ÆíÁö
			AddMoney(cnum,150000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"[Sim, eu posso entregá-lo por você]"
			end

		else
			return 0
		
		end
		return 0
end

		

  

		
	

	
		

