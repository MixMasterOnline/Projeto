 function NPC_QUEST_307(cnum,reqNumber)-- �׽�(�ͽ� ���̵�)
	local req = reqNumber

	if req == 1 then
	return 5,0,"Como evoluir monstro com Mix",2,"Voc� tem a chance �nica de obter uma Birdco.",3,"Eu n�o posso te dizer porque o seu n�vel iniciante � mais 10.You n�o conseguem atravessar a busca do Guia do Iniciante.",4,"Eu n�o posso dar-lhe muitos Henches .. Como sobre a ca�a?",5,"Wow ~ ~ Voc� tem uma Birdco bonito. Se voc� quiser ser um amigo Birdco, clique em [Para fazer amizade com um monstro]."

	elseif req == 2 then

		if GetSwitchCount(cnum,42) > 0 then
			return 1,0,"Voc� � t�o me irritando. Basta ir ca�ar monstros."
		end

		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Em primeiro lugar, empurrar o [T] a chave em seu keyboard.Can voc� v� a sua caixa de Henches? Voc� pode levar em torno de Birdco click.But casal pode lev�-lo ao redor depois de se recuperar a partir Mixbuilder."
		end

		if GetHench(cnum,1,4,1) > 2 then
		return 1,0,"Eu disse a voc�, voc� n�o pode falar para mim, porque seu n�vel est� mais de 10!"
		end

		if GetHeroLv(cnum,1) < 10 then
		AddHench(cnum,4,1) -- ������ ����
		AddSwitchCount(cnum,42,1)	
		return 1,0,"Voc� pode colocar Hench na Caixa Hench arrastando por ele."
		end

	elseif req == 3 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Voc� tem que fazer um novo personagem para falar comigo."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Voc� pode ter um amigo novo monstro por batalha. Pergunte Tai atr�s de mim como lutar."
		end
	
	elseif req == 4 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Por favor, fale com o primeiro Tes."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Para lutar com os monstros, voc� precisa estar armado com arma e armor.Come-se! Pegue armas e armaduras!"
		end
	
	elseif req == 5 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Para aprender a ser armado com itens"
		end

		if GetHeroLv(cnum,1) < 10 then		
		return 1,0,"Para aprender a lutar"
		end

	end

	return 0
end

   


 function NPC_QUEST_305(cnum,reqNumber)-- Ÿ��(���� ���̵�)
 	local req = reqNumber

	if req == 1 then
		if GetHench(cnum,1,4,1) < 1 then
			return 1,0,"Eu te trouxe Drago."
		else
	return 6,0,"Eu Noa misto.",2,"Eu n�o pode mistur�-los!",3,"Eu n�o posso cham�-lo iniciante, porque o seu n�vel � superior a 10. Voc� n�o pode come�ar com a busca do Guia do Iniciante.",4,"Pressione a tecla [U] botton no teclado e voc� pode ver a arma e armadura em seu item Caixa. Voc� pode ser armado com eles com um duplo clique.",5,"Voc� est� me irritando. Basta ir ca�ar monstros.",6,"O ponteiro do mouse se transforma em um martelo quando voc� aponta para fora do monstro do castelo. Isto significa que s�o capazes de lutar. Saia e comece N�cleo de Drago."
	end

	elseif req == 2 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Voc� tem a chance �nica. 300GP n�o � muito dinheiro."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Eu disse a voc�, voc� n�o pode falar para mim, porque o seu n�vel � superior a 10."
		end

	elseif req == 3 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Voc� deve me trazer Drago Core. Eu n�o preciso de qualquer outra coisa."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Uau! Voc� tem o Core Drago. Drago e desejo Birdco para ser misturado. Encontrar Mixbuilder na aldeia. Mixbuilder est� localizado em (123,31). Eu vou te dar 300GP para a mistura."
		end
	
	elseif req == 4 then

		if GetSwitchCount(cnum,14) > 1 then
		return 1,0,"Voc� tem que fazer um novo personagem para falar comigo."
		end

		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Eu n�o posso ver Noa. Ser� que face ao n�o misturam?"
		end

		if GetHench(cnum,1,1,1) < 1 then
		return 1,0,"HH ~ Noa Isso � t�o bonito. Congulaturation! Voc� conseguiu o acesso para o Master Mix!." 
		end 

		if GetHench(cnum,1,1,1) > 0 then -- ���� Ȯ��
		AddSwitchCount(cnum,14,1) 
		AddMoney(cnum,300) ---- �ͽ���� �߰�
		return 1,0,"Voc� elevei mais de 10 ... Hmmm ... Estou t�o cansada, tchau ..."
		end
	
	elseif req == 5 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Para misturar N�cleos, os g�neros de n�cleos deve ser different.Should Drago ser do sexo feminino se Birdco � masculina?"
		end

		if GetHench(cnum,1,17,1) < 1 then
		return 1,0,"Ol�. Vou te dar uma boa not�cia. O que � isso? Eu vou te dar item de gra�a ~ ~"
		end

		if GetHench(cnum,1,17,1) > 0 then
		return 1,0,"item de avalia��o"  
		end

	elseif req == 6 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Julgamento item2"
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Julgamento item3"   
		end
	end


	return 0
end


