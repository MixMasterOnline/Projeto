function NPC_QUEST_322(cnum, reqNumber) --�渱 ����Ʈ

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) < 2 or GetHeroType(cnum) > 2 then
			return 1,0,"Sim, eu fiz. � o peda�o de bolo."

		else
			if GetSwitchCount(cnum, 329) < 1 then --6
				if GetSwitchCount(cnum, 327) < 1 then --5
					if GetSwitchCount(cnum, 325) < 1 then --4
						if GetSwitchCount(cnum, 323) < 1 then --3
							if GetSwitchCount(cnum, 321) < 1 then --2
								if GetSwitchCount(cnum, 320) < 1 then --1
		      							return	2, 0,"Se voc� quiser hench, voc� deve trabalhar mais.",2,"Oh. Voc� j� se reuniram com sucesso o que eu lhe pedi para trazer. A primeira miss�o n�o era t�o dif�cil, certo? Vou dar-lhe a atribui��o mais dif�cil da pr�xima vez. Aqui � um selo bem-feito. Se voc� coletar um total de 6 selos bem-feito de mim, vou dar-lhe hench como uma recompensa. Vou cham�-lo se o pr�ximo trabalho est� pronto. N�o seja pregui�oso e se preparar para a pr�xima miss�o."

	  							else
  									if GetItemCount( cnum, 4437, 0 ) < 10 then --�� 1 �Ϸ� ���� ���� - �� 10��
  										return	1,0,"Seja paciente e se preparar para a pr�xima miss�o. A tarefa ser� mais dif�cil momento seguinte."

	  								else
  										AddItemCount( cnum, 4437, -10 ) --����� �� 10�� ȸ��
  										AddItemCount( cnum, 4438, 1 ) -- �� �߾�� ���� 1
										AddSwitchCount(cnum, 321, 1)
										AddHeroExp(cnum, 600)		
										EndQuest(cnum, 126)
  										return	1,0, "Eu acho que � tempo para a segunda tarefa. N�o fique nervoso demais. Eu n�o vou deixar a minha sobrinha estar em perigo. Hahaha."
  									end
  								end--1�� ��
	   						else
  								if GetHeroLv(cnum) < 30 then --�� 2 ���� ���� �˻�
  									return	1,0,"Eu sinceramente espero que sim."
  
  
  								else
  									if GetSwitchCount(cnum, 322) < 1 then -- �� 2 ó�� ���� ��
  										return	2,0,"Eu realmente quero usar um pano feitas com pele de Aquaping. Ent�o, voc� j� terminou a coleta de pele?",52,"Sim. Eu terminei."
  	
  									else
  										return	2,0,"Seja paciente e se preparar para a pr�xima miss�o. A tarefa ser� mais dif�cil momento seguinte.",92,"Bem, eu acho que � hora para a atribui��o de terceiros. Sugeri-lhe primeiro sobre toda essa hist�ria sobre as atribui��es, no entanto, francamente falando, � um trabalho bastante problem�tico."
  		
  									end
   								end
		      					end
      						else
      							if GetSwitchCount(cnum, 324) < 1 then --�� 3 ���� ���� �Ǵ�
		      						if GetHeroLv(cnum) < 50 then -- �� 3 ���� ���� �Ǵ�.
      									return	1,0,"....."

								else
      									return	2,0, "Eu quero um chap�u feito com penas de Pheonix. Ent�o, voc� j� terminou a coleta de penas?",102,"Sim. Eu terminei."

								end
      							else
      								return	2,0,"Seja paciente e se preparar para a pr�xima miss�o. A tarefa ser� mais dif�cil momento seguinte.",162,"Oh. Seja bem-vindo. Eu acho que � boa altura para a atribui��o quarto."
       							end
       						end
	    				else
						if GetSwitchCount(cnum, 326) < 1 then --�� 4 ���� ���� �Ǵ�.
							if GetHeroLv(cnum) < 70 then -- �� 4 ���� ���� �Ǵ�.
							        return	1,0,"hmm ..."
	      				        	else
				        	        	return	2,0,"Ah .. Eu quero me livrar dessas rugas. J� acabou reunindo as picadas de BloodStinger?",172,"Sim, eu terminei."
	
		      					end



						else
							return	2,0,"Seja paciente e se preparar para a pr�xima miss�o. A tarefa ser� mais dif�cil momento seguinte.",232,"Bem, eu acho que � hora para a atribui��o de quinta. Bom trabalho! Voc� fez muito bem at� agora. Apenas dois trabalhos s�o mais � esquerda. Boa Sorte!"

						end
					end

				else
					if GetSwitchCount(cnum, 328) < 1 then -- �� 5 ���� ���� �Ǵ�.
						if GetHeroLv(cnum) < 90 then -- �� 5 ���� ���� �Ǵ�.
							return 1,0,"Sim. Vou tentar o meu melhor."

						else
							return	2,0,"Como foi isso? N�o � f�cil, certo? Voc� trouxe a placa de BlazeRhino?",242,"Sim, eu fiz."
						end

					else
						return	2,0, "Agora, n�o me incomoda mais e ir em sua aventura.",312, "Seja paciente e se preparar para a pr�xima miss�o. A tarefa ser� mais dif�cil momento seguinte."
								
					end
				end
		
			else
				if GetSwitchCount(cnum, 331) > 0 then
					return 1,0,"Finalmente, � hora para a �ltima atribui��o. Eu espero que voc� poderia conseguir n�o s� hench, mas tamb�m muitas outras experi�ncias com essas atribui��es que lhe dei."

				else
					if GetSwitchCount(cnum, 330) < 1 then
						if GetHeroLv(cnum) < 110 then
							return	1,0,"Obrigado. Eu n�o vou decepcion�-lo."
						else
							return	2,0,"Eu n�o posso descansar at� voc� terminar o seu assignmet. Voc� n�o pode termin�-lo antes?",322,"Isso n�o � f�cil."

						end
					else
						return	2,0,"Conglatulation! Ela diz ainda correm �guas profundas. A gradua��o da escola de Valor significa tamb�m um come�o outro de sua vida. N�o se gabar de si mesmo e dedicar-se a tornar-se um Valor boa.",392,"Obrigado, tio. By the way, porque voc� est� aqui?"
	
					end
				end
			end
		end

	
	
	
	
	elseif req == 2 then
		return	2,0,"Oh. Gostaria de dar-lhe alguns presentes de formatura de minha sobrinha bonito. Como voc� sabe que eu era muito bom Valor quando eu era jovem, assim que eu coletei alguns n�cleos raros. Eu n�o preciso de as cores que eu n�o sou um Valor mais, mas eu acho que eles s�o muito �teis para voc�.",12,"Oh. Obrigado!."


	elseif req == 12 then
		return	2,0,"N�o v� para uma cabe�a muito. Eu n�o digo que vou dar-lhe-lo sem quaisquer condi��es. Fisrt, vou dar-lhe 6 atribui��es, a fim de testar e treinar suas habilidades. Se voc� realizar todas as seis miss�es, do que eu lhe darei o n�cleo.",22,"Okay. O que devo fazer primeiro?"


	elseif req == 22 then
		return	2,0,"Hmm ... Eu n�o posso te dar essa tarefa dif�cil desde o in�cio. Okay. Vamos test�-lo habilidades b�sicas. H� monte de Dracos lado de fora da cidade. Hunt Draco e trazer-me 10 chifres de Darco como prova.",32,"Okay. � o peda�o de bolo."


	elseif req == 32 then
		return	2,0, "Bem, � apenas o come�o. Espero que eu possa v�-lo em breve! ",42, "Vou dizer-lhe a segunda tarefa. Se voc� treinou bastante dif�cil na escola Valor, voc� deve passar facilmente essa tarefa tamb�m. Voc� j� ouviu falar do monstro chamado Aquaping? � muito famoso por causa de sua apar�ncia fofa."
			
	elseif req == 42 then
		AddSwitchCount( cnum, 320, 1 ) --�� 1 ����
		StartQuest(cnum, 126)
		return	1,0, "Ah, eu vi isso."





	elseif req == 52 then
		return	2,0,"Eles s�o famosos n�o s� por causa de sua apar�ncia bonito, mas tamb�m a sua pele sedosa. Eu realmente quero usar um pano feito de pele de Aquaping ... Ent�o, eu vou dar-lhe a segunda tarefa. Ir para Cheseva Ru�nas e Aquapings ca�ar. Tragam-me cinco peles de Aquaping para o meu pano.",62,"...."


	elseif req == 62 then
		return	2,0, "Por que n�o est� respondendo? Ser� que � muito dif�cil para voc�?",72,"Hmm ... Okay. Vou faz�-lo."


	elseif req == 72 then
		return	2,0,"Grandes. Experimente o melhor para voc� pano novo tio. hahaha.",82,"Estou ansioso para voltar r�pido."


	elseif req == 82 then
		StartQuest(cnum, 127)
		AddSwitchCount( cnum, 322, 1 ) --�� 2 ����
		return	1,0,"N�o h� mais espa�o no invent�rio de base."		


	elseif req == 92 then
		if GetItemCount(cnum, 4444, 0 ) < 5 then
			return	1,0, "Oh ~! �timo! Voc� conseguiu. Agora eu posso fazer um pano com estas peles de Aquaping. Bom trabalho! Como recompensa eu lhe darei um hench eo carimbo bem-feito. N�o seja pregui�oso e se preparar para a pr�xima miss�o."


		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Como eu disse da �ltima vez, voc� deveria rir mais na sua idade. Voc� � muito s�rio o tempo todo como um jovem abafado."


		else
			EndQuest(cnum, 127)
			AddItemCount( cnum, 4444, -5 ) -- ���� 5�� ȸ��
			AddItemCount( cnum, 4438, -1 ) -- ���� 1��¥�� ȸ��
			AddItemCount( cnum, 4439, 1 ) -- ���� 2��¥�� ����
			AddSwitchCount( cnum, 323, 1 )
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 539, 1)
			return	1,0,"Apenas me diga a pr�xima miss�o."
		end




		
	elseif req == 102 then
		return	2,0,"O qu�? Voc� quer que a atribui��o ao inv�s de conversar comigo? Que coisa triste. � tudo por causa da educa��o errada do sistema escolar. Eles deveriam ensinar propriedades antes de ensinar os outros.",112, "Huh ...."


	elseif req == 112 then
		return	2,0,"N�o suspiro muito. De qualquer forma vou dizer-lhe a atribui��o de terceiros. Voc� j� ouviu falar de um monstro chamado Pheonix? � monstro muito atraente, com penas vermelhas.",122,"Eu j� vi isso no livro."


	elseif req == 122 then
		return	2,0, "�timo! Do que voc� n�o precisa de maiores explica��es. Aqui � a atribui��o. Ir para Valcan Access Road e ca�ar Pheonix e trazer-me 20 penas de Pheonix. Eu sei que � pouco demais, mas eu preciso de pelo menos 20 penas para o chap�u.",132, "Hat?"


	elseif req == 132 then
		return	2,0, "Ops ... Depois que eu fiz um pano com peles de Aquaping, pensei um chap�u feito de penas Pheonix ser� grande jogo com o pano ... Como � isso? N�o diga que voc� n�o pode fazer isso ...",142, "Deixa pra l� ..."
			
	
	elseif req == 142 then
		return	2,0,"N�o se preocupe com o tio. Basta ir ca��-los o mais rapidamente poss�vel. hahaha ...",152,"Meu chap�u vermelho est� esperando por mim! Apresse-se!"


	elseif req == 152 then
		StartQuest(cnum, 128)
		AddSwitchCount( cnum, 324, 1) --�� 3 ����
		return	1,0, "Ah, finalmente eu tenho penas de Pheonix. Agora eu posso fazer um chap�u com penas de presente Pheonix. Bom trabalho! Eu te darei o carimbo bem-feito como uma recompensa. N�o seja pregui�oso e se preparar para a pr�xima miss�o."



	elseif req == 162 then
		if GetItemCount( cnum, 4445, 0 ) < 20 then --�� 3 �Ϸ� ���� �Ǵ�.(�ʿ� ���� 20�� ����)
			return 1,0,"N�o � para os materiais de pano de tio ou chap�u. Garanto-vos que � s�rio neste momento."
    
		else
			EndQuest(cnum, 128)
			AddItemCount(cnum, 4445, -20) -- �� 3 �ʿ� ���� ȸ��
			AddItemCount(cnum, 4439, -1) -- ���� 2��¥�� ȸ��     
			AddItemCount(cnum, 4440, 1) -- ���� 3��¥�� ����
     			AddSwitchCount(cnum, 325, 1)
			AddHeroExp(cnum, 100000)
			return 1,0,"Hm ..."
		end





	elseif req == 172 then
		return	2,0,"Isso � uma vergonha. Sobrinha n�o est�o acreditando em seu pr�prio tio .... � tudo por causa da educa��o errada!",182,"Tio, � s� me dizer honestamente."


	elseif req == 182 then
		return	2,0, "Muito triste. Voc� est� se tornando younster abafado mais e mais. De qualquer forma eu s� vou te dizer a verdade. Hahaha ..",192, "O que � esse tempo?"
			
	
	elseif req == 192 then
		return	2,0, "Percebi sobre minhas rugas no rosto ontem, durante o tempo do banho ... N�o � muito triste?",202, "Ent�o?"
			
	
	elseif req == 202 then
		return	2,0, "Ouvi dizer que a picada de Bloodstinger � muito bom para as rugas. Agora voc� sabe o que fazer ... certo?",212, "Huh ... Okay."
			
	
	elseif req == 212 then
		return	2,0, "Grandes. Voc� � uma boa sobrinha. Haha. Ir para Valcan Vale e ca�ar BloodStinger. Eu preciso de 10 picadas de Bloodstinger neste momento.",222, "Se voc� n�o vir earily eu tenho que viver com uma m�scara resto da minha vida."
	
		
	elseif req == 222 then
		StartQuest(cnum, 129)
		AddSwitchCount( cnum, 326, 1 ) --�� 4 ����
		return	1,0, "Vou dar-lhe um hench novo. Trazer de volta o hench eu te dei da �ltima vez."			
	

	elseif req == 232 then
		if GetItemCount(cnum, 4446, 0) < 10 then -- �� �Ϸ� ���� �Ǵ�. (ħ 10��)
			return	1,0,"Bom! Estas s�o as picadas de Bloodstinger ... Uau! Ele � grande! Bom trabalho! Aqui est� o selo de bem-feito para esta �poca. Eu tamb�m preparou um hench novo em vez do hench eu te dei da �ltima vez. Vou usar o antigo como um colloection."

		elseif GetHench(cnum, 1 , 539, 1) < 1 then
			return 1,0,"Enfim, estou muito orgulhoso de voc� como voc� est� progredindo com minhas atribui��es. Bem, eu vou dar-lhe a atribui��o de quinta."


		else
			EndQuest(cnum, 129)
			AddItemCount(cnum, 4446, -10) --ħ 10�� ȸ��
			AddItemCount(cnum, 4440, -1) -- ���� 3��¥�� ȸ��
			AddItemCount(cnum, 4441, 1) -- ���� 4��¥�� ����
			AddSwitchCount(cnum, 327, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 539, -1)
			AddHench(cnum, 540, 1)
			return 1,0,"O que � isso neste momento.?"
		end





		
	elseif req == 242 then
		return	2,0, "N�o � um favor privados neste momento. Voc� � um Valor treinados agora. Eu n�o posso dar-lhe tal atribui��o que lhe dei antes de mais.",252, "Posso acreditar em voc�?"
				

	elseif req == 252 then
		return	2,0, "Basta ouvir. Voc� sabe sobre White Prairi? � um lugar de muito dif�cil na �rea do deserto do norte. E voc� tem que ir l�.",262,"Voc� vai matar sua sobrinha?"
			
	
	elseif req == 262 then
		return	2,0, "N�o. � lugar muito dif�cil, embora as pessoas possam sobreviver ali. N�o h� perigo, como voc� est� pensando.",272,"So. O que devo fazer?"
	
			
	elseif req == 272 then
		return	2,0, "Ele diz que h� um monstro chamado BlazeRhino que tem uma placa no conto com o fogo o tempo todo.",282,"So. BlazeRhino � o alvo?"
				

	elseif req == 282 then
		return	2,0, "Sim. Voc� tem que ca�ar BlazeRhino e trazer a placa de BlazeRhino.",292, "Placa de BlazeRhino ..."
				

	elseif req == 292 then
		return	2,0, "Sim. Voc� tem que trazer a placa de BlazeRhino para essa atribui��o. BlazeRhino monstro � forte, por isso tome cuidado quando voc� ca�ar.",302,"N�o � f�cil n�? N�o me culpe, pois voc� foi o �nico que quero atribui��o normal ao inv�s de meus favores privados. Haha ..."
				

	elseif req == 302 then
		StartQuest(cnum, 130)
		AddSwitchCount( cnum, 328, 1 ) --�� 5 ����
		return	1,0,"Oh. Voc� j� fez isso? Vou dar-lhe uma mais dif�cil para voc�. De qualquer maneira bem-feito. Eu te darei o carimbo bem-feito para a recompensa."

				
	elseif	req == 312 then
		if GetItemCount(cnum, 4447, 0) < 1 then -- �� �Ϸ� ���� �Ǵ�. (ȭ�Լ� 1��)
			return	1,0,"N�o � importante que quem come�a primeiro. O importante � que eu n�o poderia ter um descanso, a fim de preparar a sua atribui��o."    

		else
			EndQuest(cnum, 130)
			AddItemCount(cnum, 4447, -1) --ȭ�Լ� 1�� ȸ��
			AddItemCount(cnum, 4441, -1) -- ���� 4��¥�� ȸ��
			AddItemCount(cnum, 4442, 1) -- ���� 5��¥�� ȸ��
			AddSwitchCount( cnum, 329, 1 ) --�� 5 ����
			AddHeroExp(cnum, 1000000)
			return 1,0,"....."
		end



		
	elseif req == 322 then
		return	2,0, "Voc� n�o est� levando a s�rio o meu conselho. Enfim, vamos terminar essas atribui��es.",332, "O que � desta vez?"
				

	elseif req == 332 then
		return	2,0, "Como se trata de um passado. Eu tinha preparado uma dificuldade real.",342,"S�rio? N�o me assusta .."
			
	
	elseif req == 342 then
		return	2,0, "Voc� j� ouviu falar do continente Artreia? O trabalho final deve ser feito no continente Artreia.",352,"� muito longe ..."
				

	elseif req == 352 then
		return	2,0, "N�o se preocupe. Basta pensar que voc� est� indo para o turismo. A vis�o de Artreia � realmente bom, voc� vai se arrepender se voc� perder isso. A meta final � um monstro chamado Fairudo que vivem em branco Litoral de Artreia.",362,"Hum. .. � forte?."
			
	
	elseif req == 362 then
		return	2,0, "Sinto muito, mas sim. � muito forte por isso tome cuidado quando voc� ca�ar. Voc� tem que trazer a coroa de Fariudo como prova.",372,"Okay. Eu tenho."
				

	elseif req == 372 then
		return	2,0, "Como � a �ltima atribui��o. Espero que voc� fa�a o seu melhor nele. Boa sorte!",382, "Voc� n�o qualificar a condi��o! Tente mais dif�cil!"
				

	elseif req == 382 then
		AddSwitchCount( cnum, 330, 1 ) --�� 6 ����
		StartQuest(cnum, 131)
		return	1,0,"Vou dar-lhe um hench novo. Trazer de volta o hench eu te dei da �ltima vez."
				

	elseif req == 392 then
		if GetItemCount( cnum, 4448, 0 ) < 1 then -- �� 6 �Ϸ� ���� �Ǵ�(���巡�� �հ� ���� �Ǵ�)
			return	1,0, "�timo! Estou livre agora! Bom trabalho! Espero que n�o cumprem algum tempo. Aqui est� o hench que eu prometi. Espero que ele vai te ajudar muito na sua aventura. Por favor, devolva o antigo para que eu possa usar o antigo como o meu colloection."


		elseif GetHench(cnum, 1 , 540, 1) < 1 then
			return 1,0,"Error1"


		else
			EndQuest(cnum, 131)
			AddItemCount(cnum, 4448, -1) --���巡�� 1�� ȸ��
			AddItemCount(cnum, 4442, -5) -- �� �߾�� ���� 5�� ȸ��
			AddSwitchCount(cnum, 331, 1)
			AddHeroExp(cnum, 6000000)
			AddHench(cnum, 540, 1)
			AddHench(cnum, 495, 1)
			return	1,0,"Eu sinto muita falta dele. Porque � que ele vem?"
		end			
	else

		return 1,0,"Seja bem-vindo. Voc� deve ser o elfo que usa arma, como sua arma. Vou me apresentar primeiro. Meu nome � Damoah, e eu aprender um brech� em Majirita."
	end
end
    
