 function NPC_QUEST_319(cnum,reqNumber) -- NPCÇÒ¸®(Ä«¿À½º Å¥ºê)-·Ñ¸µ ÄÚ¾îÁî ÇÊµå
	local req, id1, count1

	id1 = 367

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1006) < 1 then
			return 2,0,"Oh eu posso sentir você precisa de algo. Hmm. .. Você deseja obter o Crystal Shira de Tear de Ouro? Há apenas uma maneira de tocar o coração de Shira. Trata-se de encontrar o seu retrato de família que perdeu.",2,"A explicação sobre a foto"
		else
			if GetSwitchCount(cnum, 16) < 1 then
				return 2,0,"Você descobriu as luvas da Elf?",3,"Sim"
			else
				return 1,0,"Agora, encontrar Gorden na zona sul de VeHerseba (X: 199 Y: 122). Gorden é o guardião da Masmorra do Vento, é só começar o Anel de chuva a partir daí. Boa sorte, o Dungeon é muito perigoso."
			end
		end

	elseif req == 2 then

		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"Por que você não encontrar Shira em VeHerseva (X: 75, Y: 58) em primeiro lugar."
		end

		return 2,0,"Caos Cube é um misterioso tesouro. Com o uso de anel de chuva, pode recriar objetos perdidos. Eu tenho o Cubo Chaos, mas você precisa Luvas da Elf para lidar com seu poder mágico",12,"Eu vou encontrar as luvas da Elf."

	elseif req == 12 then
		StartQuest(cnum, 7)
		AddSwitchCount(cnum, 1006, 1)
		return 1,0,"Você pode conseguir as luvas do elfo se você derrotar um monstro relativamente sábia na região de campo Rolling Cores."


	elseif req == 3 then

		count1 = GetItemCount(cnum,id1,0)

		if GetSwitchCount(cnum,16) > 0 then
			return 1,0,"Eu não tenho outra Cube Caos."
		end

		if GetSwitchCount(cnum,15) == 0 then
		return 1,0,"*** Antes de você seguir em frente com o World Quest, você deve falar com Shira em VeHerseba (X: 75.Y: 60)"
		end

		if GetItemCount(cnum,367,0) == 0 then -- ¿äÁ¤ÀÇ Àå°©(367)
			return 1,0,"Não minta para um psíquico! ~ Zap! ~"
		end

		AddSwitchCount(cnum,16,1)
		AddItemCount(cnum,id1,-count1) --¿äÁ¤ÀÇ Àå°©
		AddItemCount(cnum,366,1) --Ä«¿À½º Å¥ºê
		EndQuest(cnum, 7)
		return 1,0,"Você me trouxe as luvas da Elf, agora você pode prender Chaos Cube."

	end
	return 0
end
