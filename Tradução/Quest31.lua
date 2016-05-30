function NPC_QUEST_257(cnum,reqNumber) -- ·ç³ªÆ½ ÇÊµå(¼¿¸Ó) - ÄÉÀÍ
	local req = reqNumber

	if req == 1 then
		return 3,0,"[Não, eu não posso]",2,"Ouvi Quadra recebeu o bolo. Obrigado.",3,"Você é o único que já entregou o bolo. O que aconteceu?"

	elseif req == 2 then

		if GetSwitchCount(cnum, 1055) > 0 then
			return 1,0,"Hmm ..."
		end

		if GetSwitchCount(cnum, 1054) > 0 then
			return 2,0,"Você não tem espaço no inventário suficiente. Volte, quando você tem espaço livre suficiente",4,"Você já tem um bolo. Por favor, dê o bolo a Quadra no Pântano Ilusão."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Você deve ter em mente que, se você não levar este bolo no tempo, o bolo vai ser mimado."
		end

		if GetItemCount(cnum, 1047, 0) == 1 then
			return 1,0,"É uma pena que você deu a oportunidade de obter mais GP."
		end

		SetSwitchCount(cnum, 1054, 1)
		AddItemCount(cnum, 1047, 1) -- ÄÉÀÍ ±âÁõ
		StartQuest(cnum, 173)
		return 1,0,"Você já comeu o bolo ... @ Isso é o que eu pedi ... Hum! @ Você deve ter ficado com fome. @ Entendo ~ @ Então, vou dar a você outra vez. Desta vez, por favor! entregar a ele."

	elseif req == 3 then

		return 1,0,"Você já comeu o bolo ... @ Isso é o que eu pedi ... Hum! @ Você deve ter ficado com fome. @ Entendo ~ @ Então, vou dar a você outra vez. Desta vez, por favor! entregar a ele."

	elseif req == 4 then

			if GetItemCount(cnum, 1047, 0) == 0 then
			if GetSwitchCount(cnum, 1060) > 0 then

			AddItemCount(cnum, 1047, 1) -- ÄÉÀÍ ±âÁõ
			SetSwitchCount(cnum, 1054, 1)
			EndQuest(cnum, 173)
			StartQuest(cnum, 173)
			return 1,0,"Você ainda tem o bolo! @ Você não vai comê-lo desta vez, certo?"

			else

			AddItemCount(cnum, 1047, 1) -- ÄÉÀÍ ±âÁõ
			SetSwitchCount(cnum, 1054, 1)
			EndQuest(cnum, 173)
			StartQuest(cnum, 173)
			return 1,0,"Se você não levar um cartão de convite, não posso aceitar o seu bolo e dar-lhe o Colar da Devil's. Você pode obter um cartão de convite de captura Ordevil no Pântano Ilusão."

			end

		else
			return 1,0,"Ouvi Julias recebeu muito bem. Obrigado"

		end
	end
end


function NPC_QUEST_204(cnum,reqNumber) -- ÇöÈ¤ÀÇ ´Ë(°úµ¥¶ó) - ¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
	local req = reqNumber

	if req == 1 then

--		if GetItemCount(cnum, 1049, 0) == 0 then
--			return 1,0,"Como é a entrega do Colar do diabo está acontecendo?"
--		end


		if GetSwitchCount(cnum, 1056) > 0 then
			return 1,0,"Diabo levou ..."

		end

		if GetSwitchCount(cnum, 1055) > 0 then
			return 2,0,"Você não pode ter mais de um colar Diabo.",3,"Você não tem espaço no inventário suficiente. Volte, quando você tem espaço livre suficiente."

		end

		if GetItemCount(cnum, 1048, 0) == 1 then
			return 1,0,"Hmm, eu estou com fome, eu realmente gostaria de um bolo. Se você não tiver um bolo, você pode encontrar com Selman no campo Lunatic, e obter um bolo de cima dele."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Eu tenho um bolo."
		end		


		return 2,0,"Você não tem um bolo. Se você encontrar Selman no campo Lunatic, você pode obter um bolo.",2,"Obrigado! Este bolo gelado delicioso. Mas me desculpe, eu não tenho uma tarifa de entrega para o pagar. Você pode entregar o colar para Júlia na entrada do Dungeon Lunatic? Júlia vai lhe dar GP de compensação."

	elseif req == 2 then

		if GetItemCount(cnum, 1047, 0) == 0 then
		SetSwitchCount(cnum, 160, 1)
			return 1,0,"Sim, vou entregá-lo para você."
		end

		AddItemCount(cnum, 1047, -1) -- ÄÉÀÍ
		EndQuest(cnum, 173)
		return 2,0,"Eu não posso dar isso para você porque de não mais espaço em seu inventário.",12,"Está blurffing. @ É difícil obter o Devil's Necklace ... @ eu vou dar a você mais uma vez porque Julias precisa. @ E eu mencionei mais cedo, você deve ir com um convite obtidos Ordevil. @ Ele é um pouco exigente ~" 

	elseif req == 3 then

		if GetItemCount(cnum, 1048, 0) == 0 then
			if GetSwitchCount(cnum, 1061) > 0 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"Está blurffing. @ É difícil obter o Devil's Necklace ... @ eu vou dar a você mais uma vez porque Julias precisa. @ E eu mencionei mais cedo, você deve ir com um convite obtidos Ordevil. @ Ele é um pouco exigente ~"

				else
				AddItemCount(cnum, 1048, 1) -- ¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ Ãß°¡
				SetSwitchCount(cnum, 1054, 1)
				StartQuest(cnum, 174)
				return 1,0,"Você tem colar do Diabo! @ Diabo pode ser você mesmo? Huhu"

				end

			else
			AddItemCount(cnum, 1048, 1) -- ¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ Ãß°¡
			SetSwitchCount(cnum, 1054, 1)
			StartQuest(cnum, 174)
			return 1,0,"Eu tenho mais um pedido. Júlia está procurando por um cartão de convite. Ele não vai aceitar o Colar da Devil's sem o cartão de convite. Você pode obter o cartão do convite, se você pegar o Ordevil no Pântano Ilusão."

			end
		
		else
			return 1,0,"Você é o único que trouxe para mim. Obrigado"

		end


	elseif req == 12 then

		AddItemCount(cnum, 1048, 1) -- ¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ Ãß°¡
		SetSwitchCount(cnum, 1055, 1)
		StartQuest(cnum, 174)
		return 1,0,"Eu não vou aceitar Colar do Diabo sem um cartão de convite. Você pode obter um cartão de convite, se você pegar Ordevil no Pântano Ilusão. Por favor, traga-me um cartão de convite."
		end
	
	return 0
end

function NPC_QUEST_289(cnum,reqNumber) -- ·ç³ªÆ½ ´øÀü ÀÔ±¸(ÁÙ¸®¾î½º)
	local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1056) > 0 then
			return 1,0,"Você não tem que colar o Diabo. Você pode começar a se você falar com Quadra no Pântano Ilusão."

		end

		if GetItemCount(cnum, 1049, 0) == 0 then -- ÃÊ´ëÀå
		SetSwitchCount(cnum, 1061, 1)
			return 1,0,"Você tem o Colar da Devil's e um cartão de convite? Se você dá pra mim, eu poderia pagá-lo. Mas cabe a mim se eu quero pagar-lhe ou não. Eu sou muito caprichoso. Se você tiver sorte, eu poderia te dar um monte de GP."
		end

		if GetItemCount(cnum, 1048, 0) == 0 then --¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
		SetSwitchCount(cnum, 1061, 1)
			return 1,0,"[Dê colar e um cartão de convite]"
		end

		return 2,0,"Você não tem um cartão de convite. Você pode obter um cartão de convite, se você pegar Ordevil no Pântano Ilusão.",12,"Você não tem que colar o Diabo. Você pode obter uma Quadra-se na ilusão Swamp."

	elseif req == 12 then

		if GetItemCount(cnum, 1049, 0) == 0 then
			return 1,0,"Aqui está 300GP para o serviço fornecido."
		end

		if GetItemCount(cnum, 1048, 0) == 0 then
			return 1,0,"Aqui está 1000GP para o serviço fornecido."
		end

		random = SetRandom(cnum, 0, 1000)

		if random < 350 then
			
			AddItemCount(cnum, 1049, -1) -- ÃÊ´ëÀå
			AddItemCount(cnum, 1048, -1) -- ¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
			AddMoney(cnum,300)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aqui está 3000GP para o serviço fornecido."

		elseif random >= 350 and random < 650 then
			
			AddItemCount(cnum, 1049, -1) --ÃÊ´ëÀå
			AddItemCount(cnum, 1048, -1) --¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
			AddMoney(cnum,1000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aqui está 30000GP para o serviço fornecido."

		elseif random >= 650 and random < 900 then
			
			AddItemCount(cnum, 1049, -1) --ÃÊ´ëÀå
			AddItemCount(cnum, 1048, -1) --¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
			AddMoney(cnum,3000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aqui está 90000GP para o serviço fornecido."

		elseif random >= 900 and random < 995 then
			
			AddItemCount(cnum, 1049, -1) --ÃÊ´ëÀå
			AddItemCount(cnum, 1048, -1) --¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
			AddMoney(cnum, 30000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Eu lhe darei todo o meu dinheiro, 150000GP. Considere-se uma pessoa de sorte."

		elseif random >= 995 and random < 998 then
			
			AddItemCount(cnum, 1049, -1) --ÃÊ´ëÀå
			AddItemCount(cnum, 1048, -1) --¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
			AddMoney(cnum,90000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Bem-vindo ao Ruínas de Sinan. Eu sou o último descendente do Sinan. Eu quero que você me faça um favor. Toda a história Sinan é grande é enterrado neste lugar. Um dia, há alguns monstros muito forte veio e invadiu este lugar. Eles são poderosos demais para eu cuidar. Estou à procura de um herói para me ajudar no combate contra esses monstros poderosos, mas eu sinto que você não é forte o suficiente para me ajudar. Por favor, volte depois que você se tornar mais forte"

		elseif random >= 998 and random < 1000 then
			
			AddItemCount(cnum, 1049, -1) -- ÃÊ´ëÀå
			AddItemCount(cnum, 1048, -1) -- ¾Ç¸¶ÀÇ ¸ñ°ÉÀÌ
			AddMoney(cnum, 150000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Bem-vindo ao Ruínas de Sinan. Eu sou o último descendente do Sinan. Eu quero que você me faça um favor. Toda a história Sinan é grande é enterrado neste lugar. Um dia, há alguns monstros muito forte veio e invadiu este lugar. Eles são poderosos demais para eu cuidar. Estou à procura de um herói para me ajudar na luta contra esses monstros poderosos. Eu sei que é muito para pedir. Mas, você pode matar os monstros?"
			end
		end
		return 0
end

		

  

		
	

	
		

