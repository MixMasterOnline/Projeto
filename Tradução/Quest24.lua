function NPC_QUEST_265(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 1 or GetHeroType(cnum) < 1 then
			return 1,0,"Já viste o nosso jovem mestre? Ouvi dizer que ele está nesta cidade, porém não consigo encontrá-lo. "

		else
			if GetSwitchCount(cnum, 312) < 1 and GetSwitchCount(cnum, 313) < 1 then --6¹ø±îÁö ÁøÇàÇÑ À¯Àúµé È¸±Í
				if GetSwitchCount(cnum, 310) < 1 then --5
					if GetSwitchCount(cnum, 308) < 1 then --4
						if GetSwitchCount(cnum, 306) < 1 then --3
							if GetSwitchCount(cnum, 304) < 1 then -- 2
								if GetSwitchCount(cnum, 303) < 1 then --1
									return	2, 0,"É prazer vê-la jovem mestre. Tem sido um tempo para vê-lo novamente. ",2,"Sim. Tem sido um longo tempo. "
								else
									if GetHeroLv(cnum) < 10 then -- 10·¹º§ ¹Ì¸¸ ÀÏ ¶§
										return	1, 0,"Você não qualificados a condição julgamento ainda. Você pode não se tornou um Patriarca no estado actual. "

									elseif GetRemainPocket(cnum) < 1 then
										return 1,0,"Não há mais espaço em seu inventário. "

									else
											AddItemCount(cnum, 4427, 1)
											AddSwitchCount(cnum, 304, 1)
											AddHeroExp(cnum, 600)
											EndQuest(cnum, 120)
										return	1, 0,"Parabéns! Você passou na primeira tentativa. No entanto, foi apenas o começo. Este é Sucessor Ring eu te dei agora é a prova que você foi o primeiro ensaio. Você tem que mantê-lo no fim de avançar a próxima fase. Certifique-se de não perdê-lo. "
									end
								end -- 1³¡

							else
								if GetSwitchCount(cnum, 305) < 1 then
									if GetHeroLv(cnum) < 30 then -- 30·¹º§ ¹Ì¸¸ ÀÏ ¶§
										return	1, 0,"Por favor, dedique-se a próxima prova. "
									elseif GetItemCount(cnum, 4427, 0) < 1 then
										return 1,0,"Onde está o anel do sucessor, que eu te dei yong mestre? Você não pode progredir sem o julgamento do anel. "

									else --30·¹º§ ÀÌ»óÀÏ ¶§
										return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o segundo julgamento. ",62,"O que é desta vez? "
									end

								else
									if GetItemCount( cnum, 4432, 0 ) < 10 then --»Ô °³¼ö°¡ 10°³ ¹Ì¸¸ ÀÏ ¶§
										return	1, 0,"Você não qualificados a condição julgamento ainda. Você pode não se tornou um Patriarca no estado actual. "

									else -- »Ô °³¼ö°¡ 10°³ ÀÌ»óÀÏ ¶§
										return	2,0, "PARABENS! Você passou na segunda tentativa. Aqui está o Anel do sucessor para o segundo julgamento. Você tem que mantê-lo no fim de avançar a próxima fase. Certifique-se de não perdê-lo. Também tenho preparado um pequeno presente para você! O Fennecus recém-nascido! ",150,"Eu não preciso de um animal de estimação? "
									end
								end

							end --2³¡

						else
							if GetSwitchCount(cnum, 307) < 1 then --Äù 3 Á¶°Ç ½ÃÀÛ
								if GetHeroLv(cnum) < 50 then -- 50·¹º§ ¹Ì¸¸ÀÏ ¶§
									return	1,0,"Por favor, dedique-se a próxima prova. "

								elseif GetItemCount(cnum, 4428, 0) < 1 then
									return 1,0,"Onde está o anel do sucessor, que eu te dei yong mestre? Você não pode progredir sem o julgamento do anel. "

								else
									return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o terceiro ensaio ",82,"O que é desta vez? "

								end

							else
								if GetSwitchCount( cnum, 315 ) < 1 then --º£Çì¸£¼¼¹Ù ÁÖº¯ ¸Ê¿¡ ÀÖ´Â ¿À¾Æ½Ã½º ±ÙÃ³ NPC Å¬¸¯ ¿©ºÎ(¾ÈÇßÀ» °æ¿ì)
									return	1, 0, "Você não qualificados a condição julgamento ainda. Você pode não se tornou um Patriarca no estado actual. "

								elseif GetRemainPocket(cnum) < 1 then
									return 1,0,"Não há mais espaço em seu inventário. "

								else --º£Çì¸£¼¼¹Ù ÁÖº¯ ¸Ê¿¡ ÀÖ´Â ¿À¾Æ½Ã½º ±ÙÃ³ NPC¸¦ Å¬¸¯ ÇßÀ» °æ¿ì
									AddSwitchCount( cnum, 308, 1 )
									AddItemCount( cnum, 4428, -1 )
									AddItemCount( cnum, 4429, 1 )
									AddHeroExp(cnum, 100000)
									EndQuest(cnum, 122)
									return	1,0,"Conglatulation! Você passou na terceira tentativa. Aqui está o Anel do sucessor para o terceiro ensaio. Você tem que mantê-lo no fim de avançar a próxima fase. Certifique-se de não perdê-lo. "
								end
							end
						end --3 ³¡

					else
						if GetSwitchCount(cnum, 309) < 1 then
							if GetHeroLv(cnum) < 70 then -- 70·¹º§ ¹Ì¸¸ ÀÏ ¶§
								return 1,0,"Por favor, dedique-se a próxima prova. "

							elseif GetItemCount(cnum, 4429, 0) < 1 then
								return 1,0,"Onde está o anel do sucessor, que eu te dei yong mestre? Você não pode progredir sem o julgamento do anel. "

							else
								return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o quarto ensaio ",92,"O que é desta vez? "
							end
						else
							if GetItemCount( cnum, 4433 , 0) < 1 then --¸ÞÅ»¸®Ä« ¸ó½ºÅÍ »ç³É ÈÄ ¿ÏÁÖÀÇ ÁõÇ¥ÀÇ ¿©ºÎ È®ÀÎ
								return	1,0, "Você não qualificados a condição julgamento ainda. Você pode não se tornou um Patriarca no estado actual. "

							else
								return	2,0,"PARABENS! Você passou na quarta tentativa. Aqui está o Anel do sucessor para a quarta prova. Você tem que mantê-lo no fim de avançar a próxima fase. Certifique-se de não perdê-lo. Por ora, vou trocar o Fennecus com stonger um. ",162,"Isso é ótimo!"
							end
						end
					end -- 4³¡

				else
					if GetSwitchCount(cnum, 314) > 0 then
						return 1,0,"Conglatulation! Meu Patriarca."

					else
						if GetSwitchCount(cnum, 311) < 1 then
							if GetHeroLv(cnum) < 90 then -- 90·¹º§ ¹Ì¸¸ ÀÏ ¶§
								return	1,0,"Por favor, dedique-se a próxima prova."

							elseif GetItemCount(cnum, 4430, 0) < 1 and GetItemCount(cnum, 4431, 0) < 1 then
								return 1,0,"Onde está o anel do sucessor, que eu te dei yong mestre? Você não pode progredir sem o julgamento do anel."
							else
								return	2,0,"Bem-vindo meu jovem mestre. Meu senhor lhe deu o quinto julgamento.",102,"O que é desta vez?"
							end
						else
							if GetHench(cnum, 1, 281, 80) < 1 and GetHench(cnum, 1, 282, 80) < 1 then -- 80ÇîÄ¡ÀÇ ¼ÒÀ¯ ¿©ºÎ È®ÀÎ
								return	1,0, "Você não qualificados a condição julgamento ainda. Você pode não se tornou um Patriarca no estado actual."

							else
								AddItemCount( cnum, 4431, -1 )
								return 2,0,"Conglatulation! Você passou na prova em quinto. Aqui está o Anel do sucessor para o julgamento quinto. Você tem que mantê-lo no fim de avançar a próxima fase. Certifique-se de não perdê-lo.",142,"Conglatulation! Meu Patriarca."
							end
						end
					end
				end  --5 ³¡

			else
				if GetSwitchCount(cnum, 314) > 0 then
					return 1,0,"Conglatulation! Você passou na prova em quinto. Aqui está o Anel do sucessor para o julgamento quinto. Você tem que mantê-lo no fim de avançar a próxima fase. Certifique-se de não perdê-lo."
				else
					return 2,0,"Sim. Tem sido um longo tempo desde que você saiu da casa.",142,"Por que você está aqui?"
				end
			end
		end







	elseif req == 2 then
		return 2,0,"Eu tenho uma mensagem do Senhor. Meu Senhor quer dar a possibilidade de julgamento do sucessor, para todos os filhos neste momento.",12,"Será que significa que tenho uma chance também?"


	elseif req == 12 then
		return 2,0,"E claro que você tem. Você pode também se tornou um Patriarh se passa julgamento todas as sucessor investido pelo Senhor.",22,"Julgamento?"


	elseif req == 22 then
		return	2,0,"Meu Senhor, disse o filho, que passou o julgamento só tem o direito de se tornar um Patriarca. O julgamento é composta de 6 etapas, e você deve passar todas as fases, a fim de tornar o Patriarca.",32,"Então, o que devo fazer primeiro?"


	elseif req == 32 then
		return	2,0, "Bem, vou dizer-lhe o primeiro julgamento. Meu Senhor quer confirmar se você tem a capacidade básica de survice a vida do deserto ou não. Por favor, volte para mim depois que você chega a LV 10.",42, "Okay. Eu tenho."


	elseif req == 42 then
		return	2,0, "Agora. Vou dizer-lhe o segundo julgamento. Meu Senhor quer testar se você tem toneladas de força enouht proteger a família de monstros perigosos do deserto ou não. Vá para o campo RollingCores e caçar o monstro chamado como BattleDragon. Traga chifres 10x de BattleDragon como prova. Boa Sorte!",52, "Okay. Eu vou tentar."

	elseif req == 52 then
		StartQuest(cnum, 120)
		AddSwitchCount(cnum, 303, 1) --Äù 1 ¼ö¶ô

	elseif req == 62 then
		return	2,0, "Bem, vou dizer-lhe o terceiro ensaio. Meu Senhor quer testar sua habilidade de encontrar água em áreas desérticas. Existem vários oásis perto Veherseva, porém a maioria deles estão poluídos. Vá para o deserto e encontrar o oásis de segurança e voltar para mim. Você pode checar a condição de oásis, examinando as plantas próximas. Boa Sorte!",72,"Agora, vou dizer-lhe o quarto ensaio. Meu Senhor quer testar se você tem uma capacidade de superar o perigo ou não. Se você ir para a cidade Herseva, você vai encontrar um calabouço antigo nomeado como Rojeta Dungeon. Explore todo o caminho até ao 9 º piso do porão e CrimsonMetal caçar. Traga a parte do braço de CrimsonMetal como uma evidência de exploração de masmorras. Boa sorte!"

	elseif req == 72 then
		StartQuest(cnum, 121)
		AddSwitchCount(cnum, 305, 1) --Äù 2 ¼ö¶ô

	elseif req == 82 then
		StartQuest(cnum, 122)
		AddSwitchCount(cnum, 307 ,1)
		return	1,0,"Bem, eu vou te dizer o julgamento em quinto. Meu Senhor quer testar sua capacidade como um Valor. Se você tiver mais de hench LV 80, o julgamento vai acabar facilmente. Se você não tiver um, você tem que trazer mais um Core LV 80."



	elseif req == 92 then
		StartQuest(cnum, 123)
		AddSwitchCount(cnum, 309 ,1)
		return	1,0, "Hm. Não é demasiado grande?"




	elseif req == 102 then
		return 2,0, "Hum. .. Concordo com você. Do que eu vou decidir henchs poucos para o julgamento.",152,"Boas."


	elseif req == 152 then
		return 2,0,"Vamos ver. Henches sobre LV 80 ... Eu decidi! Neosoul e WingStormer! Traga ou núcleo de neosoul ou WingStormer para mim.",153,"Você tem que devolver o Fennecus eu te dei antes. Oh, você não tem isso agora. Por favor, traga de volta para mim."


	elseif req == 153 then
		StartQuest(cnum, 124)
		AddSwitchCount(cnum, 311 ,1)
		return 1,0,"Não há mais espaço no inventário de base."


	elseif req == 142 then
		if GetHench(cnum, 1, 538, 1) < 1 then
			return 1,0,"Não há mais espaço no núcleo de Inventário."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Rommel é nomeado após famour geral na área Africano. Como você pode ver a partir do nome que irá ajudá-lo através de sua aventura."

		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Mesmo que seja um recém-nascido, ele vai te ajudar muito, pois herdou o sangue Fennecus inteligente."


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


-- Äù½ºÆ® Ãß°¡ »çÇ×
	elseif req == 150 then
		return 2,0,"Não há mais espaço no inventário de base.",151,"Não há mais espaço em seu inventário item."


	elseif req == 151 then

--------------new


		if GetItemCount(cnum, 4427, 0) < 1 then
			return 1,0,"Onde está o anel do sucessor, que eu te dei yong mestre? Você não pode progredir sem o julgamento do anel. "
		end

		if GetItemCount( cnum, 4432, 0 ) < 10 then --»Ô °³¼ö°¡ 10°³ ¹Ì¸¸ ÀÏ ¶§
			return	1, 0,"Você não qualificados a condição julgamento ainda. Você pode não se tornou um Patriarca no estado actual. "
		end

		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Por favor, dedique-se a próxima prova."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Preparei um cresceu um tempo presente. Ele vai trabalhar em perfeita harmonia com seu nível atual. Oh, por favor, devolva um recém-nascido que eu te dei da última vez."

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
		return 2,0,"Você tem que devolver o Fennecus eu te dei antes. Oh, você não tem isso agora. Por favor, traga de volta para mim.",163,"Não há mais espaço em seu inventário."



	elseif req == 163 then
		if GetHench(cnum, 1, 537, 1) < 1 then
			return 1,0,"Não há mais espaço no inventário de base."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Por favor, dedique-se a próxima prova."

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
			return 1,0,"Você pode ver a planta alguns oásis de vegetação rasteira próxima a."
		end

	else
		return 1,0,"Você pode ver a planta alguns oásis de vegetação rasteira próxima a. O que você vai fazer?"
	end
end



function NPC_QUEST_310(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Colete alguns exemplos."

		else
			return 2,0,"Parece saudável, no entanto, não influenciada pelo oásis. Você tem que encontrar outro oásis.",2,"Erro"

		end

	elseif req == 2 then
		return 1,0,"Você pode ver a planta alguns oásis de vegetação rasteira próxima a."

	else
		return 1,0,"Você pode ver a planta alguns oásis de vegetação rasteira próxima a. O que você vai fazer?"

	end
end


function NPC_QUEST_309(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Colete alguns exemplos"

		else
			return 2,0,"Parece saudável, no entanto, não influenciada pelo oásis. Você tem que encontrar outro oásis.",2,"Erro"

		end


	elseif req == 2 then
		return 1,0,"Você pode ver a plantar algumas saudáveis ??nas proximidades do oásis."

	else
		return 1,0,"Você pode ver a planta alguns oásis de vegetação rasteira próxima a. O que você vai fazer?"

	end
end


function NPC_QUEST_308(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Colete alguns exemplos"

		else
			return 2,0,"A planta se parece muito saudável, porque de oásis. Você encontrou o oásis limpo!",2,"Erro"

		end

	elseif req == 2 then
		AddSwitchCount(cnum, 315, 1)
		return 1,0,"Porque não é que ela vem? Tenho medo de que ela poderia encontrou situação perigosa."

	else
		return 1,0,"Oh. Bem-vindo a minha Penril sobrinha linda! Ouvi dizer que estão se formando Valor escola este ano. Será que você passar no exame final?"

	end
end
