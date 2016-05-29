function NPC_QUEST_251(cnum,reqNumber) -- ¹ø½ÄÀÇ ³ª¹«

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 1001) < 1 then 
				return 2,0,"Ajude-me ... Alguém ajuda? ",2,"Eu posso te ajudar "
			else
				if GetSwitchCount(cnum, 9) < 1 then
					return 2,0,"Colocar a folha da vida não é? ",32,"Sim",33,"Uma informação sobre a folha de vida. "
				else
					AddSwitchCount(cnum,10,1) --Switch#10
					return 1,0,"Ah, para o mal que eu temo. Eu posso sentir o mal acontecer. Vá ao encontro Anez, o vidente de Magirita (X: 100, Y: 100) "
				end
				
			end
		else
			return 3,0,"Método para a recuperação. . . Eu preciso? ",12,"Sim, eu encontrei alguns métodos. ",13,"Preciso de mais tempo. "
		end


	elseif req == 2 then
		if GetSwitchCount(cnum, 8) < 1 then
			return 1,0,". . ."
		
		else
			return 2,0,"Não falei com todos os seres humanos nos anos de muitos. Nenhuma árvore comum, eu sou. Mais de mil anos eu tenho vivido. Monstros atacaram-me para controlar o poder da mina. Eu sou fraco agora. Traga-me um 'Folha de Vida. Eu posso recuperar o meu poder de então. ",101,"Onde posso encontrar um? "
		end


	elseif req == 101 then
		StartQuest(cnum, 2)
		AddItemCount(cnum,354,-1)--±¸½½ »¯±â
		AddItemCount(cnum,355,-1)
		AddItemCount(cnum,356,-1)
		AddSwitchCount(cnum, 1001, 1)
		return 1,0,"Na planície do sul do Mekrita a Folha de recuperação é. Derrota DooDoo para ele. Para mim, dar a essas esferas. É a minha saúde vai ajudar. Não será nenhuma utilidade para você. "
		


	elseif req == 32 then
		if GetItemCount(cnum,357,0) == 0 then
			return 1,0,"Folha da Vida, que eu preciso. DooDoo vai ter um. "
		
		else
			AddMoney(cnum,3000) -- 3000GP Ãß°¡
			AddSwitchCount(cnum,9,1) -- Switch#9 È¸º¹ÀÇ ÀÙ»ç±Í
			AddItemCount(cnum,357,-1)
			EndQuest(cnum, 2)
			return 1,0,"Aprecie eu faço. Oferecemos-lhe 3000GP. Mas ainda inquieta, eu sinto. Vá ao encontro Anez, o vidente de Magirita (X: 100, Y: 100) "
		end



	elseif req == 33 then
		return 1,0,"Na planície do sul do Mekrita a Folha da Vida é. Derrota DooDoo para ele. Para mim, dar a essas contas? É a minha saúde vai ajudar. Não será nenhuma utilidade para você. "



	elseif req == 12 then
		if GetItemCount(cnum, 1195, 0) < 1 then
			return 1,0,"Veja, eu não a alma da árvore "
		else
			return 2,0,"Oh. Minha nota. . . Ries. ",22,"Use os cristais ea árvore "
		end


	elseif req == 13 then
		return 1,0,"Tempo .. Esteja atento. Ficando mais forte, o poder dos monstros são. "


	elseif req == 22 then
		AddItemCount(cnum, 378, -1)
		AddItemCount(cnum, 364, -1)
		AddItemCount(cnum, 370, -1)
		AddItemCount(cnum, 374, -1)
		AddItemCount(cnum, 379, -1)
		AddItemCount(cnum, 375, -1)		
		AddSwitchCount(cnum, 84, 1)
		return 1,0,"Obrigado jovem herói. Você tem recuperado a memória e os pontos fortes, mas os monstros ainda são fortes. Se você encontrar Andeli no Vale do Twin (X: 102 Y: 142), ele vai lhe dizer onde os monstros se escondem decisão. Vou dar o Espírito da Árvore de volta para você. Andeli confiança de que vai comprar. Mantenha-o com sabedoria "
	end

	return 0
 end