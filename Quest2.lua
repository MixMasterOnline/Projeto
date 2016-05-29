function NPC_QUEST_251(cnum,reqNumber) -- ������ ����

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 1001) < 1 then 
				return 2,0,"Ajude-me ... Algu�m ajuda? ",2,"Eu posso te ajudar "
			else
				if GetSwitchCount(cnum, 9) < 1 then
					return 2,0,"Colocar a folha da vida n�o �? ",32,"Sim",33,"Uma informa��o sobre a folha de vida. "
				else
					AddSwitchCount(cnum,10,1) --Switch#10
					return 1,0,"Ah, para o mal que eu temo. Eu posso sentir o mal acontecer. V� ao encontro Anez, o vidente de Magirita (X: 100, Y: 100) "
				end
				
			end
		else
			return 3,0,"M�todo para a recupera��o. . . Eu preciso? ",12,"Sim, eu encontrei alguns m�todos. ",13,"Preciso de mais tempo. "
		end


	elseif req == 2 then
		if GetSwitchCount(cnum, 8) < 1 then
			return 1,0,". . ."
		
		else
			return 2,0,"N�o falei com todos os seres humanos nos anos de muitos. Nenhuma �rvore comum, eu sou. Mais de mil anos eu tenho vivido. Monstros atacaram-me para controlar o poder da mina. Eu sou fraco agora. Traga-me um 'Folha de Vida. Eu posso recuperar o meu poder de ent�o. ",101,"Onde posso encontrar um? "
		end


	elseif req == 101 then
		StartQuest(cnum, 2)
		AddItemCount(cnum,354,-1)--���� ����
		AddItemCount(cnum,355,-1)
		AddItemCount(cnum,356,-1)
		AddSwitchCount(cnum, 1001, 1)
		return 1,0,"Na plan�cie do sul do Mekrita a Folha de recupera��o �. Derrota DooDoo para ele. Para mim, dar a essas esferas. � a minha sa�de vai ajudar. N�o ser� nenhuma utilidade para voc�. "
		


	elseif req == 32 then
		if GetItemCount(cnum,357,0) == 0 then
			return 1,0,"Folha da Vida, que eu preciso. DooDoo vai ter um. "
		
		else
			AddMoney(cnum,3000) -- 3000GP �߰�
			AddSwitchCount(cnum,9,1) -- Switch#9 ȸ���� �ٻ��
			AddItemCount(cnum,357,-1)
			EndQuest(cnum, 2)
			return 1,0,"Aprecie eu fa�o. Oferecemos-lhe 3000GP. Mas ainda inquieta, eu sinto. V� ao encontro Anez, o vidente de Magirita (X: 100, Y: 100) "
		end



	elseif req == 33 then
		return 1,0,"Na plan�cie do sul do Mekrita a Folha da Vida �. Derrota DooDoo para ele. Para mim, dar a essas contas? � a minha sa�de vai ajudar. N�o ser� nenhuma utilidade para voc�. "



	elseif req == 12 then
		if GetItemCount(cnum, 1195, 0) < 1 then
			return 1,0,"Veja, eu n�o a alma da �rvore "
		else
			return 2,0,"Oh. Minha nota. . . Ries. ",22,"Use os cristais ea �rvore "
		end


	elseif req == 13 then
		return 1,0,"Tempo .. Esteja atento. Ficando mais forte, o poder dos monstros s�o. "


	elseif req == 22 then
		AddItemCount(cnum, 378, -1)
		AddItemCount(cnum, 364, -1)
		AddItemCount(cnum, 370, -1)
		AddItemCount(cnum, 374, -1)
		AddItemCount(cnum, 379, -1)
		AddItemCount(cnum, 375, -1)		
		AddSwitchCount(cnum, 84, 1)
		return 1,0,"Obrigado jovem her�i. Voc� tem recuperado a mem�ria e os pontos fortes, mas os monstros ainda s�o fortes. Se voc� encontrar Andeli no Vale do Twin (X: 102 Y: 142), ele vai lhe dizer onde os monstros se escondem decis�o. Vou dar o Esp�rito da �rvore de volta para voc�. Andeli confian�a de que vai comprar. Mantenha-o com sabedoria "
	end

	return 0
 end