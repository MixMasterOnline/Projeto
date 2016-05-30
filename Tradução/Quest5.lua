function NPC_QUEST_270(cnum,reqNumber) -- Ȳ�ݻ��� ���(�õ�)--�츣���� �Ա�
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1004) < 1 then
			return 2,0,"Pente de Ouro? Oh, eu lamento que só pode ser usado por seres humanos. Não é uma árvore. Mas eu sei como eu posso apagar a memória da árvore. Mas, por favor me ajudar e eu vou te dizer como. Eu costumava levantar um pássaro chamado 'Elly'. Elly era propriedade do Rei do Magirita. Elly tem salvado muitas vidas inocentes, alertando-nos com a sua voz antes do ataque de monstros na cidade. Eu estava tão orgulhoso de Elly ",2,"Ok, por favor continue. "
		else
			if GetSwitchCount(cnum, 13) < 1 then
				return 2,0,"Você trouxe o Golden Bird Escultura? ",13,"Sim "
			else
				return 1,0,"Agora, sei que as lágrimas Shiras pode ajudá-lo. Vá até a cidade VeHerseba (X: 75 Y: 60) e ter uma conversa com com Shira. "
			end
		end
	
	elseif req == 2 then
		return 2,0,"Então, depois de anos, monstros percebi isso e os aplicativos. . monstros horríveis. Eles apedrejaram e ela é uma estátua. Por favor, me ajudar a trazer Escultura Elly pela captura de um Monoeye. Ouvi dizer que eles estão por aqui. ",12,"Oh quão triste, eu vou ajudá-lo. "

	elseif req == 12 then
		StartQuest(cnum, 5)
		AddSwitchCount(cnum, 1004, 1) 
		return 1,0,"Vou esperar por você. Muito obrigado. "


	elseif req == 13 then
		if GetSwitchCount(cnum,12) == 0 then
			return 1,0,"*** Antes de você seguir em frente com o World Quest, você deve falar com Alena em Fishscroll (X: 180.Y: 123) "
		end

		if GetSwitchCount(cnum,13) > 0 then
			return 1,0,"Ah, que maravilha! Escultura de Phoenix. Esta é Elly! Muito obrigado! Aqui é um dom [5 pontos livres]. "
		end
		
		if GetItemCount(cnum,363,0) == 0 then
			return 1,0,"Tenho medo de que não é uma piada. "
		end

		AddHeroFreePoint(cnum,5)  -- ��������Ʈ 5�� �߰�
		AddSwitchCount(cnum,13,1) -- Ȳ�ݻ� ������
		EndQuest(cnum, 5)
		return 1,0,"Oh! Lovely Elly, transformado em uma escultura como esta ... mas eu não posso ficar triste para sempre, Por favor, tome esta escultura. Eu estou feliz só de saber que ele está de volta a partir de monstros. Esta é uma [5 livres pontos] dom. "

	end
	return 0
 end
		

