function NPC_QUEST_269(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 0 then
			return 1,0,"Ele deve estar chegando. Hm? Como posso ajudá-lo? "

		else

			if GetSwitchCount(cnum, 290) < 1 then
				if GetSwitchCount(cnum, 288) < 1 then		
					if GetSwitchCount(cnum, 286) < 1 then		
						if GetSwitchCount(cnum, 284) < 1 then		
							if GetSwitchCount(cnum, 282) < 1 then
								if GetSwitchCount(cnum, 280) < 1 then
									return 2,0,"Oi, eu tinha um palpite de que você iria me visitar logo depois que eu ouvi você se formou na Escola de Valor. Meu pressentimento veio ture. De qualquer forma agora eu devo dizer adeus a este glutão. Eu definir o meu carinho por ele muito bonito ... ",2,"Não se importe muito. Eu vou passar por aqui muitas vezes. "

								else
									if GetSwitchCount(cnum, 281) < 1 then
										if GetHeroLv(cnum) < 30 or GetHench(cnum, 1, 488, 26) < 1 then
											return 1,0,"Como foi a viagem? "

										else
											return 2, 0,"Hey ~! O comilão cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mantê-lo por enquanto. ",12,"Dê Vanyah para Master Mix Velha. " --¹İ³ÄÇÏ ¹İ³³
		
										end
									else
										return  2, 0,"Ok! Está pronto! O Comilão decidiu reforçar a Segunda! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam reforçar método para torná-lo mais forte. Como é isso? Parece muito forte, né? Eu posso fortalecê-la mais algumas vezes, de modo a entrar por mim mais tarde. ",22,"Sim" -- ¹İ³ÄÇÏ 2´Ü°è Áö±Ş ¹ŞÀ½.
		
									end
	
								end
							else
								if GetSwitchCount(cnum, 283) < 1 then
									if GetHeroLv( cnum ) < 50 or GetHench( cnum, 1, 489, 46 ) < 1 then
										return 1,0,"Como foi a viagem? "
			
									else
								
										return 2,0,"Hey ~! O comilão cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mantê-lo por enquanto. ",32,"Dê Vanyah para Master Mix Velha. "
						
									end				
	
								else
									return 2,0,"Ok! Está pronto! O Comilão decidiu reforçar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam reforçar método para torná-lo mais forte. Como é isso? Parece muito forte, né? Eu posso fortalecê-la mais algumas vezes, de modo a entrar por mim mais tarde. ",42,"Sim. "
	
								end
							end

						else
							if GetSwitchCount(cnum, 285) < 1 then
								if GetHeroLv(cnum) < 70 or GetHench( cnum, 1, 490, 66 ) < 1 then					
									return 1,0,"Como foi a viagem? "


								else
									return 2,0,"Hey ~! O comilão cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mantê-lo por enquanto. ",52,"Dê Vanyah para Master Mix Old .. "				
	
								end

							else
								return 2,0,"Ok! Está pronto! O Comilão decidiu reforçar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam reforçar método para torná-lo mais forte. Como é isso? Parece muito forte, né? Eu posso fortalecê-la mais algumas vezes, de modo a entrar por mim mais tarde. ",62,"Sim"
					
							end
						end

					else
						if GetSwitchCount(cnum, 287) < 1 then
							if GetHeroLv(cnum) < 90 or GetHench( cnum, 1, 491, 86 ) < 1 then
								return 1,0,"Como foi a viagem? "

							else
								return 2,0,"Hey ~! O comilão cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mantê-lo por enquanto. ",72,"Dê Vanyah para Master Mix Old "							

							end

						else
							return 2,0,"Ok! Está pronto! O Comilão decidiu reforçar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam reforçar método para torná-lo mais forte. Como é isso? Parece muito forte, né? Eu posso fortalecê-la mais algumas vezes, de modo a entrar por mim mais tarde. ",82,"Sim"

						end

					end
		
				else
					if GetSwitchCount(cnum, 289) < 1 then
						if GetHeroLv(cnum) < 110 or GetHench( cnum, 1, 492, 106 ) < 1 then
							return 1,0, "Como foi a viagem? "

						else
							return 2,0,"Hey ~! O comilão cresceu bastante. Vou fazer mais forte, como eu disse antes. Deixe-me mantê-lo por enquanto. ",92,"Dê Vanyah para Master Mix Velha. "

						end

					else
						return 2,0,"Ok! Está pronto! O Comilão decidiu reforçar o Terceiro! Oops .. Desculpe, Vanyah. Eu usei o meu hench secretam reforçar método para torná-lo mais forte. Como é isso? Parece muito forte, né? Eu posso fortalecê-la mais algumas vezes, de modo a entrar por mim mais tarde. ",102,"Sim"

					end

				end
			
			else
				return 1,0,"Eu tenho feito tudo o que posso fazer. Vou deixar que você sabe que se eu encontrar algum método adicional para torná-lo mais forte. Desejo a viagem segura. "

			end
		end


	elseif req == 2 then
		return 2,0, "As pessoas tornam-se sensíveis à medida que envelhecem, e assim como eu Bem, para o seu presente de formatura eu vou fazer o seu Vanyah mais forte com o meu método de segregar. Volte para a cidade e visitar-me se você acha que seu Vanyah tornou-se forte o suficiente. ",3,"Como eu posso decidir se Vanyah é forte o suficiente ou não? "


	elseif req == 3 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espaço no seu inventário de base. "
		else
			StartQuest(cnum, 115)
			AddHench(cnum, 488, 1 )
			AddHeroExp(cnum, 600)
			AddSwitchCount(cnum, 280, 1)
			return 1,0, "Eu tenho que te contar tudo? Você tem que descobrir por si mesmo. Não se esqueça que eu te disse. Tenha uma boa viagem. "
		end





	elseif req == 12 then
		AddSwitchCount(cnum, 281, 1)
		AddHench(cnum, 488, -1) --1´Ü°è ¹İ³ÄÇÏ¸¦ ¹İ³³
		return 0




	elseif req == 22 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espaço no seu inventário de base. "
		else
			EndQuest(cnum, 115)
			StartQuest(cnum, 116)--2´Ü°è ³¡³»°í 3´Ü°è Äù½ºÆ® Á¤º¸ º¸¿©ÁÜ
			AddSwitchCount(cnum, 282, 1)
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 489, 1) -- 2´Ü°è Áö±Ş ¹Ş°í Äù½ºÆ® Á¾·á.(Äù2 Á¾·á)
		return 0

		end





	elseif req == 32 then
		AddSwitchCount(cnum, 283, 1)
		AddHench(cnum, 489, -1) --2´Ü°è ¹İ³ÄÇÏ¸¦ ¹İ³³
		return 0




	elseif req == 42 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espaço no seu inventário de base. "
		else
			EndQuest(cnum, 116)--3´Ü°è Äù½ºÆ® Á¾·á
			StartQuest(cnum, 117)--3´Ü°è ³¡³»°í 4´Ü°è Äù½ºÆ® Á¤º¸ º¸¿©ÁÜ
			AddSwitchCount(cnum, 284, 1)
			AddHeroExp(cnum, 100000)
			AddHench(cnum, 490, 1) --3´Ü°è Áö±Ş ¹Ş°í Äù½ºÆ® Á¾·á.(Äù3 Á¾·á)
		return 0

		end




	elseif req == 52 then
		AddSwitchCount(cnum, 285, 1)
		AddHench(cnum, 490, -1) --3´Ü°è ¹İÇÏ³Ä¸¦ ¹İ³³
		return 0



	elseif req == 62 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espaço no seu inventário de base. "
		else
			EndQuest(cnum, 117)--4´Ü°è Äù½ºÆ® Á¾·á
			StartQuest(cnum, 118)--4´Ü°è ³¡³»°í 5´Ü°è Äù½ºÆ® Á¤º¸ º¸¿©ÁÜ
			AddSwitchCount(cnum, 286, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 491, 1) --4´Ü°è Áö±Ş ¹Ş°í Äù½ºÆ® Á¾·á.(Äù4 Á¾·á)
		return 0

		end






	elseif req == 72 then
		AddSwitchCount(cnum, 287, 1)
		AddHench(cnum, 491, -1) --4´Ü°è ¹İ³ÄÇÏ ¹İ³³
		return 0




	elseif req == 82 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espaço no seu inventário de base. "
		else
			EndQuest(cnum, 118)--5´Ü°è Äù½ºÆ® Á¾·á
			StartQuest(cnum, 119)--5´Ü°è ³¡³»°í 6´Ü°è Äù½ºÆ® Á¤º¸ º¸¿©ÁÜ
			AddSwitchCount(cnum, 288, 1)
			AddHeroExp(cnum, 1000000)
			AddHench(cnum, 492, 1) --5´Ü°è Áö±Ş ¹Ş°í Äù½ºÆ® Á¾·á.(Äù5 Á¾·á)
		return 0

		end




	elseif req == 92 then
		AddSwitchCount(cnum, 289, 1)
		AddHench(cnum, 492, -1) --5´Ü°è ¹İ³ÄÇÏ ¹İ³³
		return 0


	elseif req == 102 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Venha novamente quando tiver espaço no seu inventário de base. "
		else
			EndQuest(cnum, 119)--5´Ü°è Äù½ºÆ® Á¾·á
			AddSwitchCount(cnum, 290, 1)
			AddHeroExp(cnum, 6000000)
			AddHench(cnum, 493, 1) --6´Ü°è Áö±Ş ¹Ş°í Äù½ºÆ® Á¾·á.(Äù6 Á¾·á)
		return 0
		
		end


	else
		return 1,0,"Error"
	
	end
end