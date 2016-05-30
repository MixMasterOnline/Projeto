function NPC_QUEST_270(cnum,reqNumber) -- »≤±›ªı¿« ∫Òπ–(ø√µÚ)--«Ï∏£ººπŸ ¿‘±∏
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1004) < 1 then
			return 2,0,"Pente de Ouro? Oh, eu lamento que s√≥ pode ser usado por seres humanos. N√£o √© uma √°rvore. Mas eu sei como eu posso apagar a mem√≥ria da √°rvore. Mas, por favor me ajudar e eu vou te dizer como. Eu costumava levantar um p√°ssaro chamado 'Elly'. Elly era propriedade do Rei do Magirita. Elly tem salvado muitas vidas inocentes, alertando-nos com a sua voz antes do ataque de monstros na cidade. Eu estava t√£o orgulhoso de Elly ",2,"Ok, por favor continue. "
		else
			if GetSwitchCount(cnum, 13) < 1 then
				return 2,0,"Voc√™ trouxe o Golden Bird Escultura? ",13,"Sim "
			else
				return 1,0,"Agora, sei que as l√°grimas Shiras pode ajud√°-lo. V√° at√© a cidade VeHerseba (X: 75 Y: 60) e ter uma conversa com com Shira. "
			end
		end
	
	elseif req == 2 then
		return 2,0,"Ent√£o, depois de anos, monstros percebi isso e os aplicativos. . monstros horr√≠veis. Eles apedrejaram e ela √© uma est√°tua. Por favor, me ajudar a trazer Escultura Elly pela captura de um Monoeye. Ouvi dizer que eles est√£o por aqui. ",12,"Oh qu√£o triste, eu vou ajud√°-lo. "

	elseif req == 12 then
		StartQuest(cnum, 5)
		AddSwitchCount(cnum, 1004, 1) 
		return 1,0,"Vou esperar por voc√™. Muito obrigado. "


	elseif req == 13 then
		if GetSwitchCount(cnum,12) == 0 then
			return 1,0,"*** Antes de voc√™ seguir em frente com o World Quest, voc√™ deve falar com Alena em Fishscroll (X: 180.Y: 123) "
		end

		if GetSwitchCount(cnum,13) > 0 then
			return 1,0,"Ah, que maravilha! Escultura de Phoenix. Esta √© Elly! Muito obrigado! Aqui √© um dom [5 pontos livres]. "
		end
		
		if GetItemCount(cnum,363,0) == 0 then
			return 1,0,"Tenho medo de que n√£o √© uma piada. "
		end

		AddHeroFreePoint(cnum,5)  -- «¡∏Æ∆˜¿Œ∆Æ 5¡° √ﬂ∞°
		AddSwitchCount(cnum,13,1) -- »≤±›ªı ¡∂∞¢ªÛ
		EndQuest(cnum, 5)
		return 1,0,"Oh! Lovely Elly, transformado em uma escultura como esta ... mas eu n√£o posso ficar triste para sempre, Por favor, tome esta escultura. Eu estou feliz s√≥ de saber que ele est√° de volta a partir de monstros. Esta √© uma [5 livres pontos] dom. "

	end
	return 0
 end
		

