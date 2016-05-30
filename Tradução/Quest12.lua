function NPC_QUEST_306(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 60) < 1 then
				return 3,0,"Quem é você? Por quevocê está aqui neste lugar deserta ? ",2,"Estou aqui para fazer a árvore ",3,"Posso arranjar-lhe um pouco de água. Estou com sede. "

			elseif GetSwitchCount(cnum, 60) > 0 then
				StartQuest(cnum, 13)				
				return 2,0,"Você encontrou o relógio? ",32,"Sim, eu o encontrei. "
			end
		
		elseif GetSwitchCount(cnum, 61) > 0 then
			return 1,0,"Quais são as suas palhaçadas para? Seu ir ser o herói que salva a árvore! Você deve ser rápido e salvar a Árvore da propagação. "
		else
			return 1,0,"Por favor, tente novamente mais tarde. "
		end


	elseif req == 2 then
		if GetItemCount(cnum, 378, 0) < 1 then
			return 1,0,"Você é realmente quem Predic enviados? Por que você não tem uma garrafa de vidro de Ouro? "
		else
			return 3,0,"Ah ... É você quem Predic me falou? Predic enviou-me uma pessoa muito confiável para mim, mas estou cauteloso. Eu não posso dar-lhe o espírito da árvore sem provar que você é o que ele mandou. Se você me der a resposta certa à pergunta, vou dar-lhe a alma da Árvore. ",12,"Que tipo de teste que é isso? ",13,"Por que eu deveria fazer um teste? "
		end

	elseif req == 3 then
		return 1,0,"Você é fraco! Eu não sei porque você veio aqui. Mas se você quiser viver, regressar à sua cidade natal. "



	elseif req == 12 then
		return 2,0,"Eu perdi um relógio durante a minha viagem para o deserto. Normalmente sou mais cauteloso, mas devo ter sido relaxante eu fui roubado. Não tenho a certeza que o monstro fez. Vou dar-lhe o espírito da árvore se você achar o relógio. ",22,"OK (ele só quer a minha ajuda) "

	elseif req == 13 then
		return 1,0,"Eu não me importo que seja difícil para você, Eu só me importo que você pode começar a minha confiança ou não. Se você acha que não pode lidar com isso, simplesmente ir embora. Eu não quero dar o meu Espírito precioso da Árvore de gente fraca como você. "



	elseif req == 22 then
		if CheckItemPocket(cnum, 1196, 5) < 0 then
			return 1,0,"Por que você está carregando tantas coisas? Vinde a mim, depois de limpar a sua unidade de inventário. Vou dar os itens que você deseja. "
 
		else
			AddItemCount(cnum, 1196, 5) -- Ã¼·ÂÀÇ ºñ¾à 3°³ Áö±Þ
			AddSwitchCount(cnum, 60, 1)
--			StartQuest(cnum, 13)
			return 1,0,"O relógio foi roubado em torno de aqui não há muito tempo por isso deve um monstro por aqui. Tome isso, a coisa mais importante no deserto é a força física. Se você está cansado, faça isso e ele irá recuperar sua força physcial. "
		end
	

	elseif req == 23 then
		return 1,0,"Umm .. O otimismo é a melhor maneira de resolver os problemas ... Hahaha "
		

	elseif req == 32 then
		if GetItemCount(cnum, 1194, 0) < 1 then
			return 1,0,"Será que Predic enviar-me um mentiroso? Se quiser, deixe-me rir, não é engraçado. Só me o relógio. "

		else 
			if CheckItemPocket(cnum, 1195, 1) < 0 then	
				return 1,0,"Seu inventário ainda está cheio. Eu não sei se você tem espaço para armazenar o espírito da árvore. "
			else
				AddItemCount(cnum, 1194, -1)				
				AddItemCount(cnum, 1195, 1)
				AddSwitchCount(cnum, 61, 1) --Äù½ºÆ® Á¾·á È®ÀÎ ½ºÀ§Ä¡°ª
				AddMoney(cnum, 30000)
				EndQuest(cnum, 13)
				return 1,0,"Você achou? Eu não acredito nisso. Eu dei-lhe a bombeado, o monstro mais forte por aqui. Predic enviou-me a pessoa certa com certeza!. Pegue isso. Eu rezo para o retorno Árvore da Propagação também. Eu te darei 30000GP para o seu serviço. Peço desculpas testei. Esta é uma árvore sagrada, não posso dar para a pessoa errada. "
			end
		end
	end
end





	
		
