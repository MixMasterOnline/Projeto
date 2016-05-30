function NPC_QUEST_322(cnum, reqNumber) --Ææ¸± Äù½ºÆ®

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) < 2 or GetHeroType(cnum) > 2 then
			return 1,0,"Sim, eu fiz. É o pedaço de bolo."

		else
			if GetSwitchCount(cnum, 329) < 1 then --6
				if GetSwitchCount(cnum, 327) < 1 then --5
					if GetSwitchCount(cnum, 325) < 1 then --4
						if GetSwitchCount(cnum, 323) < 1 then --3
							if GetSwitchCount(cnum, 321) < 1 then --2
								if GetSwitchCount(cnum, 320) < 1 then --1
		      							return	2, 0,"Se você quiser hench, você deve trabalhar mais.",2,"Oh. Você já se reuniram com sucesso o que eu lhe pedi para trazer. A primeira missão não era tão difícil, certo? Vou dar-lhe a atribuição mais difícil da próxima vez. Aqui é um selo bem-feito. Se você coletar um total de 6 selos bem-feito de mim, vou dar-lhe hench como uma recompensa. Vou chamá-lo se o próximo trabalho está pronto. Não seja preguiçoso e se preparar para a próxima missão."

	  							else
  									if GetItemCount( cnum, 4437, 0 ) < 10 then --Äù 1 ¿Ï·á Á¶°Ç ±¸ºÐ - »Ô 10°³
  										return	1,0,"Seja paciente e se preparar para a próxima missão. A tarefa será mais difícil momento seguinte."

	  								else
  										AddItemCount( cnum, 4437, -10 ) --µå¶óÄÚ »Ô 10°³ È¸¼ö
  										AddItemCount( cnum, 4438, 1 ) -- Àß Çß¾î¿ä µµÀå 1
										AddSwitchCount(cnum, 321, 1)
										AddHeroExp(cnum, 600)		
										EndQuest(cnum, 126)
  										return	1,0, "Eu acho que é tempo para a segunda tarefa. Não fique nervoso demais. Eu não vou deixar a minha sobrinha estar em perigo. Hahaha."
  									end
  								end--1Äù ³¡
	   						else
  								if GetHeroLv(cnum) < 30 then --Äù 2 ¼ö¶ô Á¶°Ç °Ë»ç
  									return	1,0,"Eu sinceramente espero que sim."
  
  
  								else
  									if GetSwitchCount(cnum, 322) < 1 then -- Äù 2 Ã³¸§ ¹ÞÀ» ¶§
  										return	2,0,"Eu realmente quero usar um pano feitas com pele de Aquaping. Então, você já terminou a coleta de pele?",52,"Sim. Eu terminei."
  	
  									else
  										return	2,0,"Seja paciente e se preparar para a próxima missão. A tarefa será mais difícil momento seguinte.",92,"Bem, eu acho que é hora para a atribuição de terceiros. Sugeri-lhe primeiro sobre toda essa história sobre as atribuições, no entanto, francamente falando, é um trabalho bastante problemático."
  		
  									end
   								end
		      					end
      						else
      							if GetSwitchCount(cnum, 324) < 1 then --Äù 3 ¼ö¶ô ¿©ºÎ ÆÇ´Ü
		      						if GetHeroLv(cnum) < 50 then -- Áâ 3 ¼öÇà Á¶°Ç ÆÇ´Ü.
      									return	1,0,"....."

								else
      									return	2,0, "Eu quero um chapéu feito com penas de Pheonix. Então, você já terminou a coleta de penas?",102,"Sim. Eu terminei."

								end
      							else
      								return	2,0,"Seja paciente e se preparar para a próxima missão. A tarefa será mais difícil momento seguinte.",162,"Oh. Seja bem-vindo. Eu acho que é boa altura para a atribuição quarto."
       							end
       						end
	    				else
						if GetSwitchCount(cnum, 326) < 1 then --Äù 4 ¼ö¶ô ¿©ºÎ ÆÇ´Ù.
							if GetHeroLv(cnum) < 70 then -- Äù 4 ¼ö¶ô Á¶°Ç ÆÇ´Ù.
							        return	1,0,"hmm ..."
	      				        	else
				        	        	return	2,0,"Ah .. Eu quero me livrar dessas rugas. Já acabou reunindo as picadas de BloodStinger?",172,"Sim, eu terminei."
	
		      					end



						else
							return	2,0,"Seja paciente e se preparar para a próxima missão. A tarefa será mais difícil momento seguinte.",232,"Bem, eu acho que é hora para a atribuição de quinta. Bom trabalho! Você fez muito bem até agora. Apenas dois trabalhos são mais à esquerda. Boa Sorte!"

						end
					end

				else
					if GetSwitchCount(cnum, 328) < 1 then -- Äù 5 ¼ö¶ô ¿©ºÎ ÆÇ´Ù.
						if GetHeroLv(cnum) < 90 then -- Äù 5 ¼ö¶ô Á¶°Ç ÆÇ´Ù.
							return 1,0,"Sim. Vou tentar o meu melhor."

						else
							return	2,0,"Como foi isso? Não é fácil, certo? Você trouxe a placa de BlazeRhino?",242,"Sim, eu fiz."
						end

					else
						return	2,0, "Agora, não me incomoda mais e ir em sua aventura.",312, "Seja paciente e se preparar para a próxima missão. A tarefa será mais difícil momento seguinte."
								
					end
				end
		
			else
				if GetSwitchCount(cnum, 331) > 0 then
					return 1,0,"Finalmente, é hora para a última atribuição. Eu espero que você poderia conseguir não só hench, mas também muitas outras experiências com essas atribuições que lhe dei."

				else
					if GetSwitchCount(cnum, 330) < 1 then
						if GetHeroLv(cnum) < 110 then
							return	1,0,"Obrigado. Eu não vou decepcioná-lo."
						else
							return	2,0,"Eu não posso descansar até você terminar o seu assignmet. Você não pode terminá-lo antes?",322,"Isso não é fácil."

						end
					else
						return	2,0,"Conglatulation! Ela diz ainda correm águas profundas. A graduação da escola de Valor significa também um começo outro de sua vida. Não se gabar de si mesmo e dedicar-se a tornar-se um Valor boa.",392,"Obrigado, tio. By the way, porque você está aqui?"
	
					end
				end
			end
		end

	
	
	
	
	elseif req == 2 then
		return	2,0,"Oh. Gostaria de dar-lhe alguns presentes de formatura de minha sobrinha bonito. Como você sabe que eu era muito bom Valor quando eu era jovem, assim que eu coletei alguns núcleos raros. Eu não preciso de as cores que eu não sou um Valor mais, mas eu acho que eles são muito úteis para você.",12,"Oh. Obrigado!."


	elseif req == 12 then
		return	2,0,"Não vá para uma cabeça muito. Eu não digo que vou dar-lhe-lo sem quaisquer condições. Fisrt, vou dar-lhe 6 atribuições, a fim de testar e treinar suas habilidades. Se você realizar todas as seis missões, do que eu lhe darei o núcleo.",22,"Okay. O que devo fazer primeiro?"


	elseif req == 22 then
		return	2,0,"Hmm ... Eu não posso te dar essa tarefa difícil desde o início. Okay. Vamos testá-lo habilidades básicas. Há monte de Dracos lado de fora da cidade. Hunt Draco e trazer-me 10 chifres de Darco como prova.",32,"Okay. É o pedaço de bolo."


	elseif req == 32 then
		return	2,0, "Bem, é apenas o começo. Espero que eu possa vê-lo em breve! ",42, "Vou dizer-lhe a segunda tarefa. Se você treinou bastante difícil na escola Valor, você deve passar facilmente essa tarefa também. Você já ouviu falar do monstro chamado Aquaping? É muito famoso por causa de sua aparência fofa."
			
	elseif req == 42 then
		AddSwitchCount( cnum, 320, 1 ) --Äù 1 ¼ö¶ô
		StartQuest(cnum, 126)
		return	1,0, "Ah, eu vi isso."





	elseif req == 52 then
		return	2,0,"Eles são famosos não só por causa de sua aparência bonito, mas também a sua pele sedosa. Eu realmente quero usar um pano feito de pele de Aquaping ... Então, eu vou dar-lhe a segunda tarefa. Ir para Cheseva Ruínas e Aquapings caçar. Tragam-me cinco peles de Aquaping para o meu pano.",62,"...."


	elseif req == 62 then
		return	2,0, "Por que não está respondendo? Será que é muito difícil para você?",72,"Hmm ... Okay. Vou fazê-lo."


	elseif req == 72 then
		return	2,0,"Grandes. Experimente o melhor para você pano novo tio. hahaha.",82,"Estou ansioso para voltar rápido."


	elseif req == 82 then
		StartQuest(cnum, 127)
		AddSwitchCount( cnum, 322, 1 ) --Äù 2 ¼ö¶ô
		return	1,0,"Não há mais espaço no inventário de base."		


	elseif req == 92 then
		if GetItemCount(cnum, 4444, 0 ) < 5 then
			return	1,0, "Oh ~! Ótimo! Você conseguiu. Agora eu posso fazer um pano com estas peles de Aquaping. Bom trabalho! Como recompensa eu lhe darei um hench eo carimbo bem-feito. Não seja preguiçoso e se preparar para a próxima missão."


		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Como eu disse da última vez, você deveria rir mais na sua idade. Você é muito sério o tempo todo como um jovem abafado."


		else
			EndQuest(cnum, 127)
			AddItemCount( cnum, 4444, -5 ) -- °¡Á× 5°³ È¸¼ö
			AddItemCount( cnum, 4438, -1 ) -- µµÀå 1°³Â¥¸® È¸¼ö
			AddItemCount( cnum, 4439, 1 ) -- µµÀå 2°³Â¥¸® Áö±Þ
			AddSwitchCount( cnum, 323, 1 )
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 539, 1)
			return	1,0,"Apenas me diga a próxima missão."
		end




		
	elseif req == 102 then
		return	2,0,"O quê? Você quer que a atribuição ao invés de conversar comigo? Que coisa triste. É tudo por causa da educação errada do sistema escolar. Eles deveriam ensinar propriedades antes de ensinar os outros.",112, "Huh ...."


	elseif req == 112 then
		return	2,0,"Não suspiro muito. De qualquer forma vou dizer-lhe a atribuição de terceiros. Você já ouviu falar de um monstro chamado Pheonix? É monstro muito atraente, com penas vermelhas.",122,"Eu já vi isso no livro."


	elseif req == 122 then
		return	2,0, "Ótimo! Do que você não precisa de maiores explicações. Aqui é a atribuição. Ir para Valcan Access Road e caçar Pheonix e trazer-me 20 penas de Pheonix. Eu sei que é pouco demais, mas eu preciso de pelo menos 20 penas para o chapéu.",132, "Hat?"


	elseif req == 132 then
		return	2,0, "Ops ... Depois que eu fiz um pano com peles de Aquaping, pensei um chapéu feito de penas Pheonix será grande jogo com o pano ... Como é isso? Não diga que você não pode fazer isso ...",142, "Deixa pra lá ..."
			
	
	elseif req == 142 then
		return	2,0,"Não se preocupe com o tio. Basta ir caçá-los o mais rapidamente possível. hahaha ...",152,"Meu chapéu vermelho está esperando por mim! Apresse-se!"


	elseif req == 152 then
		StartQuest(cnum, 128)
		AddSwitchCount( cnum, 324, 1) --Äù 3 ¼ö¶ô
		return	1,0, "Ah, finalmente eu tenho penas de Pheonix. Agora eu posso fazer um chapéu com penas de presente Pheonix. Bom trabalho! Eu te darei o carimbo bem-feito como uma recompensa. Não seja preguiçoso e se preparar para a próxima missão."



	elseif req == 162 then
		if GetItemCount( cnum, 4445, 0 ) < 20 then --Äù 3 ¿Ï·á Á¶°Ç ÆÇ´Ü.(ÇÊ¿ä ¾ÆÅÛ 20°³ ¿©ºÎ)
			return 1,0,"Não é para os materiais de pano de tio ou chapéu. Garanto-vos que é sério neste momento."
    
		else
			EndQuest(cnum, 128)
			AddItemCount(cnum, 4445, -20) -- Äù 3 ÇÊ¿ä ¾ÆÅÛ È¸¼ö
			AddItemCount(cnum, 4439, -1) -- µµÀå 2°³Â¥¸® È¸¼ö     
			AddItemCount(cnum, 4440, 1) -- µµÀå 3°³Â¥¸® Áö±Þ
     			AddSwitchCount(cnum, 325, 1)
			AddHeroExp(cnum, 100000)
			return 1,0,"Hm ..."
		end





	elseif req == 172 then
		return	2,0,"Isso é uma vergonha. Sobrinha não estão acreditando em seu próprio tio .... É tudo por causa da educação errada!",182,"Tio, é só me dizer honestamente."


	elseif req == 182 then
		return	2,0, "Muito triste. Você está se tornando younster abafado mais e mais. De qualquer forma eu só vou te dizer a verdade. Hahaha ..",192, "O que é esse tempo?"
			
	
	elseif req == 192 then
		return	2,0, "Percebi sobre minhas rugas no rosto ontem, durante o tempo do banho ... Não é muito triste?",202, "Então?"
			
	
	elseif req == 202 then
		return	2,0, "Ouvi dizer que a picada de Bloodstinger é muito bom para as rugas. Agora você sabe o que fazer ... certo?",212, "Huh ... Okay."
			
	
	elseif req == 212 then
		return	2,0, "Grandes. Você é uma boa sobrinha. Haha. Ir para Valcan Vale e caçar BloodStinger. Eu preciso de 10 picadas de Bloodstinger neste momento.",222, "Se você não vir earily eu tenho que viver com uma máscara resto da minha vida."
	
		
	elseif req == 222 then
		StartQuest(cnum, 129)
		AddSwitchCount( cnum, 326, 1 ) --Äù 4 ¼ö¶ô
		return	1,0, "Vou dar-lhe um hench novo. Trazer de volta o hench eu te dei da última vez."			
	

	elseif req == 232 then
		if GetItemCount(cnum, 4446, 0) < 10 then -- Äù ¿Ï·á Á¶°Ç ÆÇ´Ù. (Ä§ 10°³)
			return	1,0,"Bom! Estas são as picadas de Bloodstinger ... Uau! Ele é grande! Bom trabalho! Aqui está o selo de bem-feito para esta época. Eu também preparou um hench novo em vez do hench eu te dei da última vez. Vou usar o antigo como um colloection."

		elseif GetHench(cnum, 1 , 539, 1) < 1 then
			return 1,0,"Enfim, estou muito orgulhoso de você como você está progredindo com minhas atribuições. Bem, eu vou dar-lhe a atribuição de quinta."


		else
			EndQuest(cnum, 129)
			AddItemCount(cnum, 4446, -10) --Ä§ 10°³ È¸¼ö
			AddItemCount(cnum, 4440, -1) -- µµÀå 3°³Â¥¸® È¸¼ö
			AddItemCount(cnum, 4441, 1) -- µµÀå 4°³Â¥¸® Áö±Þ
			AddSwitchCount(cnum, 327, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 539, -1)
			AddHench(cnum, 540, 1)
			return 1,0,"O que é isso neste momento.?"
		end





		
	elseif req == 242 then
		return	2,0, "Não é um favor privados neste momento. Você é um Valor treinados agora. Eu não posso dar-lhe tal atribuição que lhe dei antes de mais.",252, "Posso acreditar em você?"
				

	elseif req == 252 then
		return	2,0, "Basta ouvir. Você sabe sobre White Prairi? É um lugar de muito difícil na área do deserto do norte. E você tem que ir lá.",262,"Você vai matar sua sobrinha?"
			
	
	elseif req == 262 then
		return	2,0, "Não. É lugar muito difícil, embora as pessoas possam sobreviver ali. Não há perigo, como você está pensando.",272,"So. O que devo fazer?"
	
			
	elseif req == 272 then
		return	2,0, "Ele diz que há um monstro chamado BlazeRhino que tem uma placa no conto com o fogo o tempo todo.",282,"So. BlazeRhino é o alvo?"
				

	elseif req == 282 then
		return	2,0, "Sim. Você tem que caçar BlazeRhino e trazer a placa de BlazeRhino.",292, "Placa de BlazeRhino ..."
				

	elseif req == 292 then
		return	2,0, "Sim. Você tem que trazer a placa de BlazeRhino para essa atribuição. BlazeRhino monstro é forte, por isso tome cuidado quando você caçar.",302,"Não é fácil né? Não me culpe, pois você foi o único que quero atribuição normal ao invés de meus favores privados. Haha ..."
				

	elseif req == 302 then
		StartQuest(cnum, 130)
		AddSwitchCount( cnum, 328, 1 ) --Äù 5 ¼ö¶ô
		return	1,0,"Oh. Você já fez isso? Vou dar-lhe uma mais difícil para você. De qualquer maneira bem-feito. Eu te darei o carimbo bem-feito para a recompensa."

				
	elseif	req == 312 then
		if GetItemCount(cnum, 4447, 0) < 1 then -- Äù ¿Ï·á Á¶°Ç ÆÇ´Ù. (È­»Ô¼Ò 1°³)
			return	1,0,"Não é importante que quem começa primeiro. O importante é que eu não poderia ter um descanso, a fim de preparar a sua atribuição."    

		else
			EndQuest(cnum, 130)
			AddItemCount(cnum, 4447, -1) --È­»Ô¼Ò 1°³ È¸¼ö
			AddItemCount(cnum, 4441, -1) -- µµÀå 4°³Â¥¸® È¸¼ö
			AddItemCount(cnum, 4442, 1) -- µµÀå 5°³Â¥¸® È¸¼ö
			AddSwitchCount( cnum, 329, 1 ) --Äù 5 ¼ö¶ô
			AddHeroExp(cnum, 1000000)
			return 1,0,"....."
		end



		
	elseif req == 322 then
		return	2,0, "Você não está levando a sério o meu conselho. Enfim, vamos terminar essas atribuições.",332, "O que é desta vez?"
				

	elseif req == 332 then
		return	2,0, "Como se trata de um passado. Eu tinha preparado uma dificuldade real.",342,"Sério? Não me assusta .."
			
	
	elseif req == 342 then
		return	2,0, "Você já ouviu falar do continente Artreia? O trabalho final deve ser feito no continente Artreia.",352,"É muito longe ..."
				

	elseif req == 352 then
		return	2,0, "Não se preocupe. Basta pensar que você está indo para o turismo. A visão de Artreia é realmente bom, você vai se arrepender se você perder isso. A meta final é um monstro chamado Fairudo que vivem em branco Litoral de Artreia.",362,"Hum. .. É forte?."
			
	
	elseif req == 362 then
		return	2,0, "Sinto muito, mas sim. É muito forte por isso tome cuidado quando você caçar. Você tem que trazer a coroa de Fariudo como prova.",372,"Okay. Eu tenho."
				

	elseif req == 372 then
		return	2,0, "Como é a última atribuição. Espero que você faça o seu melhor nele. Boa sorte!",382, "Você não qualificar a condição! Tente mais difícil!"
				

	elseif req == 382 then
		AddSwitchCount( cnum, 330, 1 ) --Äù 6 ¼ö¶ô
		StartQuest(cnum, 131)
		return	1,0,"Vou dar-lhe um hench novo. Trazer de volta o hench eu te dei da última vez."
				

	elseif req == 392 then
		if GetItemCount( cnum, 4448, 0 ) < 1 then -- Äù 6 ¿Ï·á Á¶°Ç ÆÇ´Ü(Æä¾îµå·¡°ï ¿Õ°ü ¿©ºÎ ÆÇ´Ü)
			return	1,0, "Ótimo! Estou livre agora! Bom trabalho! Espero que não cumprem algum tempo. Aqui está o hench que eu prometi. Espero que ele vai te ajudar muito na sua aventura. Por favor, devolva o antigo para que eu possa usar o antigo como o meu colloection."


		elseif GetHench(cnum, 1 , 540, 1) < 1 then
			return 1,0,"Error1"


		else
			EndQuest(cnum, 131)
			AddItemCount(cnum, 4448, -1) --Æä¾îµå·¡°ï 1°³ È¸¼ö
			AddItemCount(cnum, 4442, -5) -- Àß Çß¾î¿ä µµÀå 5°³ È¸¼ö
			AddSwitchCount(cnum, 331, 1)
			AddHeroExp(cnum, 6000000)
			AddHench(cnum, 540, 1)
			AddHench(cnum, 495, 1)
			return	1,0,"Eu sinto muita falta dele. Porque é que ele vem?"
		end			
	else

		return 1,0,"Seja bem-vindo. Você deve ser o elfo que usa arma, como sua arma. Vou me apresentar primeiro. Meu nome é Damoah, e eu aprender um brechó em Majirita."
	end
end
    
