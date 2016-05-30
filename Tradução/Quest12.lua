function NPC_QUEST_306(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 60) < 1 then
				return 3,0,"Quem � voc�? Por quevoc� est� aqui neste lugar deserta ? ",2,"Estou aqui para fazer a �rvore ",3,"Posso arranjar-lhe um pouco de �gua. Estou com sede. "

			elseif GetSwitchCount(cnum, 60) > 0 then
				StartQuest(cnum, 13)				
				return 2,0,"Voc� encontrou o rel�gio? ",32,"Sim, eu o encontrei. "
			end
		
		elseif GetSwitchCount(cnum, 61) > 0 then
			return 1,0,"Quais s�o as suas palha�adas para? Seu ir ser o her�i que salva a �rvore! Voc� deve ser r�pido e salvar a �rvore da propaga��o. "
		else
			return 1,0,"Por favor, tente novamente mais tarde. "
		end


	elseif req == 2 then
		if GetItemCount(cnum, 378, 0) < 1 then
			return 1,0,"Voc� � realmente quem Predic enviados? Por que voc� n�o tem uma garrafa de vidro de Ouro? "
		else
			return 3,0,"Ah ... � voc� quem Predic me falou? Predic enviou-me uma pessoa muito confi�vel para mim, mas estou cauteloso. Eu n�o posso dar-lhe o esp�rito da �rvore sem provar que voc� � o que ele mandou. Se voc� me der a resposta certa � pergunta, vou dar-lhe a alma da �rvore. ",12,"Que tipo de teste que � isso? ",13,"Por que eu deveria fazer um teste? "
		end

	elseif req == 3 then
		return 1,0,"Voc� � fraco! Eu n�o sei porque voc� veio aqui. Mas se voc� quiser viver, regressar � sua cidade natal. "



	elseif req == 12 then
		return 2,0,"Eu perdi um rel�gio durante a minha viagem para o deserto. Normalmente sou mais cauteloso, mas devo ter sido relaxante eu fui roubado. N�o tenho a certeza que o monstro fez. Vou dar-lhe o esp�rito da �rvore se voc� achar o rel�gio. ",22,"OK (ele s� quer a minha ajuda) "

	elseif req == 13 then
		return 1,0,"Eu n�o me importo que seja dif�cil para voc�, Eu s� me importo que voc� pode come�ar a minha confian�a ou n�o. Se voc� acha que n�o pode lidar com isso, simplesmente ir embora. Eu n�o quero dar o meu Esp�rito precioso da �rvore de gente fraca como voc�. "



	elseif req == 22 then
		if CheckItemPocket(cnum, 1196, 5) < 0 then
			return 1,0,"Por que voc� est� carregando tantas coisas? Vinde a mim, depois de limpar a sua unidade de invent�rio. Vou dar os itens que voc� deseja. "
 
		else
			AddItemCount(cnum, 1196, 5) -- ü���� ��� 3�� ����
			AddSwitchCount(cnum, 60, 1)
--			StartQuest(cnum, 13)
			return 1,0,"O rel�gio foi roubado em torno de aqui n�o h� muito tempo por isso deve um monstro por aqui. Tome isso, a coisa mais importante no deserto � a for�a f�sica. Se voc� est� cansado, fa�a isso e ele ir� recuperar sua for�a physcial. "
		end
	

	elseif req == 23 then
		return 1,0,"Umm .. O otimismo � a melhor maneira de resolver os problemas ... Hahaha "
		

	elseif req == 32 then
		if GetItemCount(cnum, 1194, 0) < 1 then
			return 1,0,"Ser� que Predic enviar-me um mentiroso? Se quiser, deixe-me rir, n�o � engra�ado. S� me o rel�gio. "

		else 
			if CheckItemPocket(cnum, 1195, 1) < 0 then	
				return 1,0,"Seu invent�rio ainda est� cheio. Eu n�o sei se voc� tem espa�o para armazenar o esp�rito da �rvore. "
			else
				AddItemCount(cnum, 1194, -1)				
				AddItemCount(cnum, 1195, 1)
				AddSwitchCount(cnum, 61, 1) --����Ʈ ���� Ȯ�� ����ġ��
				AddMoney(cnum, 30000)
				EndQuest(cnum, 13)
				return 1,0,"Voc� achou? Eu n�o acredito nisso. Eu dei-lhe a bombeado, o monstro mais forte por aqui. Predic enviou-me a pessoa certa com certeza!. Pegue isso. Eu rezo para o retorno �rvore da Propaga��o tamb�m. Eu te darei 30000GP para o seu servi�o. Pe�o desculpas testei. Esta � uma �rvore sagrada, n�o posso dar para a pessoa errada. "
			end
		end
	end
end





	
		
