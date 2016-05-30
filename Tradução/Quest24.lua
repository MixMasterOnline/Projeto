function NPC_QUEST_265(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 1 or GetHeroType(cnum) < 1 then
			return 1,0,"J� viste o nosso jovem mestre? Ouvi dizer que ele est� nesta cidade, por�m n�o consigo encontr�-lo. "

		else
			if GetSwitchCount(cnum, 312) < 1 and GetSwitchCount(cnum, 313) < 1 then --6������ ������ ������ ȸ��
				if GetSwitchCount(cnum, 310) < 1 then --5
					if GetSwitchCount(cnum, 308) < 1 then --4
						if GetSwitchCount(cnum, 306) < 1 then --3
							if GetSwitchCount(cnum, 304) < 1 then -- 2
								if GetSwitchCount(cnum, 303) < 1 then --1
									return	2, 0,"� prazer v�-la jovem mestre. Tem sido um tempo para v�-lo novamente. ",2,"Sim. Tem sido um longo tempo. "
								else
									if GetHeroLv(cnum) < 10 then -- 10���� �̸� �� ��
										return	1, 0,"Voc� n�o qualificados a condi��o julgamento ainda. Voc� pode n�o se tornou um Patriarca no estado actual. "

									elseif GetRemainPocket(cnum) < 1 then
										return 1,0,"N�o h� mais espa�o em seu invent�rio. "

									else
											AddItemCount(cnum, 4427, 1)
											AddSwitchCount(cnum, 304, 1)
											AddHeroExp(cnum, 600)
											EndQuest(cnum, 120)
										return	1, 0,"Parab�ns! Voc� passou na primeira tentativa. No entanto, foi apenas o come�o. Este � Sucessor Ring eu te dei agora � a prova que voc� foi o primeiro ensaio. Voc� tem que mant�-lo no fim de avan�ar a pr�xima fase. Certifique-se de n�o perd�-lo. "
									end
								end -- 1��

							else
								if GetSwitchCount(cnum, 305) < 1 then
									if GetHeroLv(cnum) < 30 then -- 30���� �̸� �� ��
										return	1, 0,"Por favor, dedique-se a pr�xima prova. "
									elseif GetItemCount(cnum, 4427, 0) < 1 then
										return 1,0,"Onde est� o anel do sucessor, que eu te dei yong mestre? Voc� n�o pode progredir sem o julgamento do anel. "

									else --30���� �̻��� ��
										return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o segundo julgamento. ",62,"O que � desta vez? "
									end

								else
									if GetItemCount( cnum, 4432, 0 ) < 10 then --�� ������ 10�� �̸� �� ��
										return	1, 0,"Voc� n�o qualificados a condi��o julgamento ainda. Voc� pode n�o se tornou um Patriarca no estado actual. "

									else -- �� ������ 10�� �̻��� ��
										return	2,0, "PARABENS! Voc� passou na segunda tentativa. Aqui est� o Anel do sucessor para o segundo julgamento. Voc� tem que mant�-lo no fim de avan�ar a pr�xima fase. Certifique-se de n�o perd�-lo. Tamb�m tenho preparado um pequeno presente para voc�! O Fennecus rec�m-nascido! ",150,"Eu n�o preciso de um animal de estima��o? "
									end
								end

							end --2��

						else
							if GetSwitchCount(cnum, 307) < 1 then --�� 3 ���� ����
								if GetHeroLv(cnum) < 50 then -- 50���� �̸��� ��
									return	1,0,"Por favor, dedique-se a pr�xima prova. "

								elseif GetItemCount(cnum, 4428, 0) < 1 then
									return 1,0,"Onde est� o anel do sucessor, que eu te dei yong mestre? Voc� n�o pode progredir sem o julgamento do anel. "

								else
									return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o terceiro ensaio ",82,"O que � desta vez? "

								end

							else
								if GetSwitchCount( cnum, 315 ) < 1 then --���츣���� �ֺ� �ʿ� �ִ� ���ƽý� ��ó NPC Ŭ�� ����(������ ���)
									return	1, 0, "Voc� n�o qualificados a condi��o julgamento ainda. Voc� pode n�o se tornou um Patriarca no estado actual. "

								elseif GetRemainPocket(cnum) < 1 then
									return 1,0,"N�o h� mais espa�o em seu invent�rio. "

								else --���츣���� �ֺ� �ʿ� �ִ� ���ƽý� ��ó NPC�� Ŭ�� ���� ���
									AddSwitchCount( cnum, 308, 1 )
									AddItemCount( cnum, 4428, -1 )
									AddItemCount( cnum, 4429, 1 )
									AddHeroExp(cnum, 100000)
									EndQuest(cnum, 122)
									return	1,0,"Conglatulation! Voc� passou na terceira tentativa. Aqui est� o Anel do sucessor para o terceiro ensaio. Voc� tem que mant�-lo no fim de avan�ar a pr�xima fase. Certifique-se de n�o perd�-lo. "
								end
							end
						end --3 ��

					else
						if GetSwitchCount(cnum, 309) < 1 then
							if GetHeroLv(cnum) < 70 then -- 70���� �̸� �� ��
								return 1,0,"Por favor, dedique-se a pr�xima prova. "

							elseif GetItemCount(cnum, 4429, 0) < 1 then
								return 1,0,"Onde est� o anel do sucessor, que eu te dei yong mestre? Voc� n�o pode progredir sem o julgamento do anel. "

							else
								return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o quarto ensaio ",92,"O que � desta vez? "
							end
						else
							if GetItemCount( cnum, 4433 , 0) < 1 then --��Ż��ī ���� ��� �� ������ ��ǥ�� ���� Ȯ��
								return	1,0, "Voc� n�o qualificados a condi��o julgamento ainda. Voc� pode n�o se tornou um Patriarca no estado actual. "

							else
								return	2,0,"PARABENS! Voc� passou na quarta tentativa. Aqui est� o Anel do sucessor para a quarta prova. Voc� tem que mant�-lo no fim de avan�ar a pr�xima fase. Certifique-se de n�o perd�-lo. Por ora, vou trocar o Fennecus com stonger um. ",162,"Isso � �timo!"
							end
						end
					end -- 4��

				else
					if GetSwitchCount(cnum, 314) > 0 then
						return 1,0,"Conglatulation! Meu Patriarca."

					else
						if GetSwitchCount(cnum, 311) < 1 then
							if GetHeroLv(cnum) < 90 then -- 90���� �̸� �� ��
								return	1,0,"Por favor, dedique-se a pr�xima prova."

							elseif GetItemCount(cnum, 4430, 0) < 1 and GetItemCount(cnum, 4431, 0) < 1 then
								return 1,0,"Onde est� o anel do sucessor, que eu te dei yong mestre? Voc� n�o pode progredir sem o julgamento do anel."
							else
								return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o quinto julgamento.",102,"O que � desta vez?"
							end
						else
							if GetHench(cnum, 1, 281, 80) < 1 and GetHench(cnum, 1, 282, 80) < 1 then -- 80��ġ�� ���� ���� Ȯ��
								return	1,0, "Voc� n�o qualificados a condi��o julgamento ainda. Voc� pode n�o se tornou um Patriarca no estado actual."

							else
								AddItemCount( cnum, 4431, -1 )
								return 2,0,"Conglatulation! Voc� passou na prova em quinto. Aqui est� o Anel do sucessor para o julgamento quinto. Voc� tem que mant�-lo no fim de avan�ar a pr�xima fase. Certifique-se de n�o perd�-lo.",142,"Conglatulation! Meu Patriarca."
							end
						end
					end
				end  --5 ��

			else
				if GetSwitchCount(cnum, 314) > 0 then
					return 1,0,"Conglatulation! Voc� passou na prova em quinto. Aqui est� o Anel do sucessor para o julgamento quinto. Voc� tem que mant�-lo no fim de avan�ar a pr�xima fase. Certifique-se de n�o perd�-lo."
				else
					return 2,0,"Sim. Tem sido um longo tempo desde que voc� saiu da casa.",142,"Por que voc� est� aqui?"
				end
			end
		end







	elseif req == 2 then
		return 2,0,"Eu tenho uma mensagem do Senhor. Meu Senhor quer dar a possibilidade de julgamento do sucessor, para todos os filhos neste momento.",12,"Ser� que significa que tenho uma chance tamb�m?"


	elseif req == 12 then
		return 2,0,"E claro que voc� tem. Voc� pode tamb�m se tornou um Patriarh se passa julgamento todas as sucessor investido pelo Senhor.",22,"Julgamento?"


	elseif req == 22 then
		return	2,0,"Meu Senhor, disse o filho, que passou o julgamento s� tem o direito de se tornar um Patriarca. O julgamento � composta de 6 etapas, e voc� deve passar todas as fases, a fim de tornar o Patriarca.",32,"Ent�o, o que devo fazer primeiro?"


	elseif req == 32 then
		return	2,0, "Bem, vou dizer-lhe o primeiro julgamento. Meu Senhor quer confirmar se voc� tem a capacidade b�sica de survice a vida do deserto ou n�o. Por favor, volte para mim depois que voc� chega a LV 10.",42, "Okay. Eu tenho."


	elseif req == 42 then
		return	2,0, "Agora. Vou dizer-lhe o segundo julgamento. Meu Senhor quer testar se voc� tem toneladas de for�a enouht proteger a fam�lia de monstros perigosos do deserto ou n�o. V� para o campo RollingCores e ca�ar o monstro chamado como BattleDragon. Traga chifres 10x de BattleDragon como prova. Boa Sorte!",52, "Okay. Eu vou tentar."

	elseif req == 52 then
		StartQuest(cnum, 120)
		AddSwitchCount(cnum, 303, 1) --�� 1 ����

	elseif req == 62 then
		return	2,0, "Bem, vou dizer-lhe o terceiro ensaio. Meu Senhor quer testar sua habilidade de encontrar �gua em �reas des�rticas. Existem v�rios o�sis perto Veherseva, por�m a maioria deles est�o polu�dos. V� para o deserto e encontrar o o�sis de seguran�a e voltar para mim. Voc� pode checar a condi��o de o�sis, examinando as plantas pr�ximas. Boa Sorte!",72,"Agora, vou dizer-lhe o quarto ensaio. Meu Senhor quer testar se voc� tem uma capacidade de superar o perigo ou n�o. Se voc� ir para a cidade Herseva, voc� vai encontrar um calabou�o antigo nomeado como Rojeta Dungeon. Explore todo o caminho at� ao 9 � piso do por�o e CrimsonMetal ca�ar. Traga a parte do bra�o de CrimsonMetal como uma evid�ncia de explora��o de masmorras. Boa sorte!"

	elseif req == 72 then
		StartQuest(cnum, 121)
		AddSwitchCount(cnum, 305, 1) --�� 2 ����

	elseif req == 82 then
		StartQuest(cnum, 122)
		AddSwitchCount(cnum, 307 ,1)
		return	1,0,"Bem, eu vou te dizer o julgamento em quinto. Meu Senhor quer testar sua capacidade como um Valor. Se voc� tiver mais de hench LV 80, o julgamento vai acabar facilmente. Se voc� n�o tiver um, voc� tem que trazer mais um Core LV 80."



	elseif req == 92 then
		StartQuest(cnum, 123)
		AddSwitchCount(cnum, 309 ,1)
		return	1,0, "Hm. N�o � demasiado grande?"




	elseif req == 102 then
		return 2,0, "Hum. .. Concordo com voc�. Do que eu vou decidir henchs poucos para o julgamento.",152,"Boas."


	elseif req == 152 then
		return 2,0,"Vamos ver. Henches sobre LV 80 ... Eu decidi! Neosoul e WingStormer! Traga ou n�cleo de neosoul ou WingStormer para mim.",153,"Voc� tem que devolver o Fennecus eu te dei antes. Oh, voc� n�o tem isso agora. Por favor, traga de volta para mim."


	elseif req == 153 then
		StartQuest(cnum, 124)
		AddSwitchCount(cnum, 311 ,1)
		return 1,0,"N�o h� mais espa�o no invent�rio de base."


	elseif req == 142 then
		if GetHench(cnum, 1, 538, 1) < 1 then
			return 1,0,"N�o h� mais espa�o no n�cleo de Invent�rio."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Rommel � nomeado ap�s famour geral na �rea Africano. Como voc� pode ver a partir do nome que ir� ajud�-lo atrav�s de sua aventura."

		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Mesmo que seja um rec�m-nascido, ele vai te ajudar muito, pois herdou o sangue Fennecus inteligente."


		else
			AddItemCount(cnum, 4430, -1 )
			AddItemCount(cnum, 4431, 1 )
			AddHeroExp(cnum, 5000000)
			AddSwitchCount(cnum, 314, 1)
			AddHench(cnum, 538, -1)
			AddHench(cnum, 494, 1)
			EndQuest(cnum, 124)
			EndQuest(cnum, 125)
			return 1,0,"Obrigado."
		end


-- ����Ʈ �߰� ����
	elseif req == 150 then
		return 2,0,"N�o h� mais espa�o no invent�rio de base.",151,"N�o h� mais espa�o em seu invent�rio item."


	elseif req == 151 then

--------------new


		if GetItemCount(cnum, 4427, 0) < 1 then
			return 1,0,"Onde est� o anel do sucessor, que eu te dei yong mestre? Voc� n�o pode progredir sem o julgamento do anel. "
		end

		if GetItemCount( cnum, 4432, 0 ) < 10 then --�� ������ 10�� �̸� �� ��
			return	1, 0,"Voc� n�o qualificados a condi��o julgamento ainda. Voc� pode n�o se tornou um Patriarca no estado actual. "
		end

		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Por favor, dedique-se a pr�xima prova."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Preparei um cresceu um tempo presente. Ele vai trabalhar em perfeita harmonia com seu n�vel atual. Oh, por favor, devolva um rec�m-nascido que eu te dei da �ltima vez."

		else
			AddItemCount(cnum, 4427, -1)
			AddItemCount(cnum, 4432, -10)
			AddSwitchCount(cnum, 306, 1)
			AddItemCount(cnum, 4428, 1)
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 537, 1)
			EndQuest(cnum, 121)
			return 1,0,"Obrigado."
		end



	elseif req == 162 then
		return 2,0,"Voc� tem que devolver o Fennecus eu te dei antes. Oh, voc� n�o tem isso agora. Por favor, traga de volta para mim.",163,"N�o h� mais espa�o em seu invent�rio."



	elseif req == 163 then
		if GetHench(cnum, 1, 537, 1) < 1 then
			return 1,0,"N�o h� mais espa�o no invent�rio de base."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Por favor, dedique-se a pr�xima prova."

		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Error1"

		else
			AddItemCount( cnum, 4433, -1 )
			AddItemCount( cnum, 4429, -1 )
			AddItemCount( cnum, 4430, 1 )
			AddSwitchCount(cnum, 310, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 537, -1)
			AddHench(cnum, 538, 1)
			EndQuest(cnum, 123)
			return 1,0,"Voc� pode ver a planta alguns o�sis de vegeta��o rasteira pr�xima a."
		end

	else
		return 1,0,"Voc� pode ver a planta alguns o�sis de vegeta��o rasteira pr�xima a. O que voc� vai fazer?"
	end
end



function NPC_QUEST_310(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Colete alguns exemplos."

		else
			return 2,0,"Parece saud�vel, no entanto, n�o influenciada pelo o�sis. Voc� tem que encontrar outro o�sis.",2,"Erro"

		end

	elseif req == 2 then
		return 1,0,"Voc� pode ver a planta alguns o�sis de vegeta��o rasteira pr�xima a."

	else
		return 1,0,"Voc� pode ver a planta alguns o�sis de vegeta��o rasteira pr�xima a. O que voc� vai fazer?"

	end
end


function NPC_QUEST_309(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Colete alguns exemplos"

		else
			return 2,0,"Parece saud�vel, no entanto, n�o influenciada pelo o�sis. Voc� tem que encontrar outro o�sis.",2,"Erro"

		end


	elseif req == 2 then
		return 1,0,"Voc� pode ver a plantar algumas saud�veis ??nas proximidades do o�sis."

	else
		return 1,0,"Voc� pode ver a planta alguns o�sis de vegeta��o rasteira pr�xima a. O que voc� vai fazer?"

	end
end


function NPC_QUEST_308(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Colete alguns exemplos"

		else
			return 2,0,"A planta se parece muito saud�vel, porque de o�sis. Voc� encontrou o o�sis limpo!",2,"Erro"

		end

	elseif req == 2 then
		AddSwitchCount(cnum, 315, 1)
		return 1,0,"Porque n�o � que ela vem? Tenho medo de que ela poderia encontrou situa��o perigosa."

	else
		return 1,0,"Oh. Bem-vindo a minha Penril sobrinha linda! Ouvi dizer que est�o se formando Valor escola este ano. Ser� que voc� passar no exame final?"

	end
end
