function NPC_QUEST_269(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 0 then
			return 1,0,"Ele deve estar chegando. Hm? Como posso ajud�-lo? "

		else

			if GetSwitchCount(cnum, 290) < 1 then
				if GetSwitchCount(cnum, 288) < 1 then		
					if GetSwitchCount(cnum, 286) < 1 then		
						if GetSwitchCount(cnum, 284) < 1 then		
							if GetSwitchCount(cnum, 282) < 1 then
								if GetSwitchCount(cnum, 280) < 1 then
									return 2,0,"Oi, eu tinha um palpite de que voc� iria me visitar logo depois que eu ouvi voc� se formou na Escola de Valor. Meu pressentimento veio ture. De qualquer forma agora eu devo dizer adeus a este glut�o. Eu definir o meu carinho por ele muito bonito ... ",2,"N�o se importe muito. Eu vou passar por aqui muitas vezes. "

								else
									if GetSwitchCount(cnum, 281) < 1 then
										if GetHeroLv(cnum) < 30 or GetHench(cnum, 1, 488, 26) < 1 then
											return 1,0,"Como foi a viagem? "

										else
											return 2, 0,"Hey ~! O comil�o cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mant�-lo por enquanto. ",12,"D� Vanyah para Master Mix Velha. " --�ݳ��� �ݳ�
		
										end
									else
										return  2, 0,"Ok! Est� pronto! O Comil�o decidiu refor�ar a Segunda! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam refor�ar m�todo para torn�-lo mais forte. Como � isso? Parece muito forte, n�? Eu posso fortalec�-la mais algumas vezes, de modo a entrar por mim mais tarde. ",22,"Sim" -- �ݳ��� 2�ܰ� ���� ����.
		
									end
	
								end
							else
								if GetSwitchCount(cnum, 283) < 1 then
									if GetHeroLv( cnum ) < 50 or GetHench( cnum, 1, 489, 46 ) < 1 then
										return 1,0,"Como foi a viagem? "
			
									else
								
										return 2,0,"Hey ~! O comil�o cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mant�-lo por enquanto. ",32,"D� Vanyah para Master Mix Velha. "
						
									end				
	
								else
									return 2,0,"Ok! Est� pronto! O Comil�o decidiu refor�ar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam refor�ar m�todo para torn�-lo mais forte. Como � isso? Parece muito forte, n�? Eu posso fortalec�-la mais algumas vezes, de modo a entrar por mim mais tarde. ",42,"Sim. "
	
								end
							end

						else
							if GetSwitchCount(cnum, 285) < 1 then
								if GetHeroLv(cnum) < 70 or GetHench( cnum, 1, 490, 66 ) < 1 then					
									return 1,0,"Como foi a viagem? "


								else
									return 2,0,"Hey ~! O comil�o cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mant�-lo por enquanto. ",52,"D� Vanyah para Master Mix Old .. "				
	
								end

							else
								return 2,0,"Ok! Est� pronto! O Comil�o decidiu refor�ar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam refor�ar m�todo para torn�-lo mais forte. Como � isso? Parece muito forte, n�? Eu posso fortalec�-la mais algumas vezes, de modo a entrar por mim mais tarde. ",62,"Sim"
					
							end
						end

					else
						if GetSwitchCount(cnum, 287) < 1 then
							if GetHeroLv(cnum) < 90 or GetHench( cnum, 1, 491, 86 ) < 1 then
								return 1,0,"Como foi a viagem? "

							else
								return 2,0,"Hey ~! O comil�o cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mant�-lo por enquanto. ",72,"D� Vanyah para Master Mix Old "							

							end

						else
							return 2,0,"Ok! Est� pronto! O Comil�o decidiu refor�ar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam refor�ar m�todo para torn�-lo mais forte. Como � isso? Parece muito forte, n�? Eu posso fortalec�-la mais algumas vezes, de modo a entrar por mim mais tarde. ",82,"Sim"

						end

					end
		
				else
					if GetSwitchCount(cnum, 289) < 1 then
						if GetHeroLv(cnum) < 110 or GetHench( cnum, 1, 492, 106 ) < 1 then
							return 1,0, "Como foi a viagem? "

						else
							return 2,0,"Hey ~! O comil�o cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mant�-lo por enquanto. ",92,"D� Vanyah para Master Mix Velha. "

						end

					else
						return 2,0,"Ok! Est� pronto! O Comil�o decidiu refor�ar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam refor�ar m�todo para torn�-lo mais forte. Como � isso? Parece muito forte, n�? Eu posso fortalec�-la mais algumas vezes, de modo a entrar por mim mais tarde. ",102,"Sim"

					end

				end
			
			else
				return 1,0,"Eu tenho feito tudo o que posso fazer. Vou deixar que voc� sabe que se eu encontrar algum m�todo adicional para torn�-lo mais forte. Desejo a viagem segura. "

			end
		end


	elseif req == 2 then
		return 2,0, "As pessoas tornam-se sens�veis � medida que envelhecem, e assim como eu Bem, para o seu presente de formatura eu vou fazer o seu Vanyah mais forte com o meu m�todo de segregar. Volte para a cidade e visitar-me se voc� acha que seu Vanyah tornou-se forte o suficiente. ",3,"Como eu posso decidir se Vanyah � forte o suficiente ou n�o? "


	elseif req == 3 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espa�o no seu invent�rio de base. "
		else
			StartQuest(cnum, 115)
			AddHench(cnum, 488, 1 )
			AddHeroExp(cnum, 600)
			AddSwitchCount(cnum, 280, 1)
			return 1,0, "Eu tenho que te contar tudo? Voc� tem que descobrir por si mesmo. N�o se esque�a que eu te disse. Tenha uma boa viagem. "
		end





	elseif req == 12 then
		AddSwitchCount(cnum, 281, 1)
		AddHench(cnum, 488, -1) --1�ܰ� �ݳ��ϸ� �ݳ�
		return 0




	elseif req == 22 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espa�o no seu invent�rio de base. "
		else
			EndQuest(cnum, 115)
			StartQuest(cnum, 116)--2�ܰ� ������ 3�ܰ� ����Ʈ ���� ������
			AddSwitchCount(cnum, 282, 1)
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 489, 1) -- 2�ܰ� ���� �ް� ����Ʈ ����.(��2 ����)
		return 0

		end





	elseif req == 32 then
		AddSwitchCount(cnum, 283, 1)
		AddHench(cnum, 489, -1) --2�ܰ� �ݳ��ϸ� �ݳ�
		return 0




	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espa�o no seu invent�rio de base. "
		else
			EndQuest(cnum, 116)--3�ܰ� ����Ʈ ����
			StartQuest(cnum, 117)--3�ܰ� ������ 4�ܰ� ����Ʈ ���� ������
			AddSwitchCount(cnum, 284, 1)
			AddHeroExp(cnum, 100000)
			AddHench(cnum, 490, 1) --3�ܰ� ���� �ް� ����Ʈ ����.(��3 ����)
		return 0

		end




	elseif req == 52 then
		AddSwitchCount(cnum, 285, 1)
		AddHench(cnum, 490, -1) --3�ܰ� ���ϳĸ� �ݳ�
		return 0



	elseif req == 62 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espa�o no seu invent�rio de base. "
		else
			EndQuest(cnum, 117)--4�ܰ� ����Ʈ ����
			StartQuest(cnum, 118)--4�ܰ� ������ 5�ܰ� ����Ʈ ���� ������
			AddSwitchCount(cnum, 286, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 491, 1) --4�ܰ� ���� �ް� ����Ʈ ����.(��4 ����)
		return 0

		end






	elseif req == 72 then
		AddSwitchCount(cnum, 287, 1)
		AddHench(cnum, 491, -1) --4�ܰ� �ݳ��� �ݳ�
		return 0




	elseif req == 82 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espa�o no seu invent�rio de base. "
		else
			EndQuest(cnum, 118)--5�ܰ� ����Ʈ ����
			StartQuest(cnum, 119)--5�ܰ� ������ 6�ܰ� ����Ʈ ���� ������
			AddSwitchCount(cnum, 288, 1)
			AddHeroExp(cnum, 1000000)
			AddHench(cnum, 492, 1) --5�ܰ� ���� �ް� ����Ʈ ����.(��5 ����)
		return 0

		end




	elseif req == 92 then
		AddSwitchCount(cnum, 289, 1)
		AddHench(cnum, 492, -1) --5�ܰ� �ݳ��� �ݳ�
		return 0


	elseif req == 102 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espa�o no seu invent�rio de base. "
		else
			EndQuest(cnum, 119)--5�ܰ� ����Ʈ ����
			AddSwitchCount(cnum, 290, 1)
			AddHeroExp(cnum, 6000000)
			AddHench(cnum, 493, 1) --6�ܰ� ���� �ް� ����Ʈ ����.(��6 ����)
		return 0
		
		end


	else
		return 1,0,"Error"
	
	end
end