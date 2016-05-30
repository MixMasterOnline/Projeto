function NPC_QUEST_215(cnum, reqNumber) -- ¸¶Áö¸®Å¸ / ·©Å°½Ã½º

	req = reqNumber

	if req == 1 then
		return 6,0,"Você deseja verificar o nível de conhecê-lo, hein? Você tem um talento, mas não se orgulha. Meu teste não é fácil. Qual o nível que você vai ter ",2,"acima do nível 20 ",3,"acima do nível 50",4,"acima do nível 70",5,"acima do nível 90",6,"acima do nível 100"

	elseif req == 2 then

		if GetSwitchCount(cnum, 47) > 0 then
			return 1,0,"Você tem feito o teste já. Tente próximo teste. "
			
		elseif GetSwitchCount(cnum, 1021) < 1 then
			if GetHeroLv(cnum) < 20 then
				return 1,0,"Você não é qualificado para este teste. Volte depois de ter sido acima do nível 20 "
			
			else
				return 2,0,"Eu acho que você pode ser um bom Mix Master para ver seus olhos. O teste é pegar um Core Milta. Isso não é difícil. Vou te dar um Core bom se você passar nesse teste .. ",101,"Para aceitar teste "
			end
		else
			return 3,0,"Você pode terminar o primeiro teste? ",12,"Teste concluído ",13,"Para dar-lhe mais tarde "
		end
		
	elseif req == 3 then

		if GetSwitchCount(cnum, 47) < 1 then
			return 1,0,"Sua qualificação é suficiente, mas este teste é composto de forma sistemática. Então você deve passar o teste passo a passo. "
	
		elseif GetSwitchCount(cnum, 48) > 0 then
			return 1,0,"Você tem feito o teste já. Tente próximo teste "


		elseif GetSwitchCount(cnum, 1022) < 1 then
			if GetHeroLv(cnum) < 50 then
				return 1,0,"Você não é qualificado para este teste. Volte depois de mais de nível 50 "
										
			else
				return 2,0,"Uau, você deve ter tido problemas. Parece que você entrar no swing das batalhas. O próximo teste é trazer de volta Clawless Core depois de fazer isso até o nível 55. Vou te dar um Core bom se você passar nesse teste. ",102,"Para aceitar teste "
			end
		else
			return 3,0,"Você vai terminar o segundo teste? ",22,"Teste concluído ",23,"Para dar-lhe mais tarde "
		end				
	
	
	elseif req == 4 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 then
			return 1,0,"Sua qualificação é suficiente, mas este teste é composto de forma sistemática. Então você deve passar o teste passo a passo. "
			
		elseif GetSwitchCount(cnum, 49) > 0 then
			return 1,0,"Você tem feito o teste já. Tente próximo teste "

		elseif GetSwitchCount(cnum, 1023) < 1 then
			if GetHeroLv(cnum) < 70 then
				return 1,0,"Você não é qualificado para este teste. Volte depois de ser sobre o nível 70. "
			
			else
				return 2,0,"Você é o homem com força de vontade. Há apenas alguns que vieram a este ensaio stop.The próxima para trazer de volta um Core Ballza depois de fazer isso até o nível 75. Vou te dar um Core bom se você passar nesse teste. ",103,"Para aceitar teste "
			end
		else
			return 3,0,"Vai terminar o terceiro teste? ",32,"Teste concluído ",33,"Para dar-lhe mais tarde "
		end
		


	elseif req == 5 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 or GetSwitchCount(cnum, 49) < 1 then
			return 1,0,"Sua qualificação é suficiente, mas este teste é composto de forma sistemática. Então você deve passar o teste passo a passo. "
			
		elseif GetSwitchCount(cnum, 50) > 0 then
			return 1,0,"Você tem feito o teste já. Tente próximo teste "

		elseif GetSwitchCount(cnum, 1024) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"Você não é qualificado para este teste. Volte depois de ser sobre o nível 90. "
			
			else
				return 2,0,"Você parece o sonho de ser Mix Master. Não desista! Tentar e tentar! Este teste é para trazer de volta um Core WingCrusher depois de fazer isso até o nível 90 e todos os tipos de encantar itens por um. Vou te dar um Core bom se você passar nesse teste. ",104,"Para aceitar teste "
			end
		else
			return 4,0,"Vai terminar o quarto teste? ",42,"Teste concluído ",43,"Os tipos de item de Encantar ",44,"Para dar-lhe mais tarde "
		end

			
	elseif req == 6 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 or GetSwitchCount(cnum, 49) < 1 or GetSwitchCount(cnum, 50) < 1 then
			return 1,0,"Sua qualificação é suficiente, mas este teste é composto de forma sistemática. Então você deve passar o teste passo a passo"
			
		elseif GetSwitchCount(cnum, 51) > 0 then
			return 1,0,"Então, você precisa desenvolver suas habilidades. "


		elseif GetSwitchCount(cnum, 1025) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"Você não é qualificado para este teste. Volte depois de ser sobre o nível 100. "
										
			else
				return 2,0,"Sendo o Master Mix é coisa difícil. Está lembram meu velho amigo. Desejo-lhe passar no teste. O último teste é trazer de volta um Core WingStormer depois de fazer isso até o nível 100 e todos os tipos de encantar itens por 10. Vou te dar um Core bom se você passar nesse teste. ",105,"Para aceitar teste "
			end
		else
			return 4,0,"Vai terminar o quarto teste? ",52,"Teste concluído ",53,"Os tipos de item de Encantar ",54,"Para dar-lhe mais tarde "
		end







--Äù½ºÆ® ¼ö¶ô ÇßÀ» ¶§ Ã³¸®ºÎ
	elseif req == 101 then
		StartQuest(cnum, 109)
		AddSwitchCount(cnum, 1021, 1)
		return 1,0,"Eu vou esperar por você "
		

	elseif req == 102 then
		StartQuest(cnum, 110)
		AddSwitchCount(cnum, 1022, 1)
		return 1,0,"Eu vou esperar por você "


	elseif req == 103 then
		StartQuest(cnum, 111)
		AddSwitchCount(cnum, 1023, 1)
		return 1,0,"Eu vou esperar por você "


	elseif req == 104 then
		StartQuest(cnum, 112)
		AddSwitchCount(cnum, 1024, 1)
		return 1,0,"Eu vou esperar por você "


	elseif req == 105 then
		StartQuest(cnum, 113)
		AddSwitchCount(cnum, 1025, 1)
		return 1,0,"Eu vou esperar por você "





	
--·¹º§20	
	elseif req == 12 then
		if GetHench(cnum, 1, 29 ,1) == 0 then--Äí¸£¹Ì¸£
			return 1,0,"Eu não posso ver o Core que eu quero. Não perca tempo e trazê-lo de volta. "
			

		elseif GetHench(cnum, 1, 29, 1) > 1 then
			return 1,0,"Você precisa de apenas um núcleo. É melhor manter os outros núcleos no armazém. "


		else
			AddHench(cnum, 29, -1)--Äí¸£¹Ì¸£ »°±â		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 5001 then
				result = AddHench(cnum, 224 ,1)--È£³É
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 241 ,1)--ÃµÇÏ±º
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 212 ,1)--¹ÎÆ®·¡ÇÉ
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 210 ,1)--°ñµç¸ð½º
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "												 	
				
			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 251 ,1)--°×¸¶¸®¿À
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "

			end
		end	

		
				
	elseif req == 13 then
		return 1,0,"Não há limite de tempo. Acalme-se ~ "














				
--·¹º§50	
	elseif req == 22 then
		if GetHench(cnum,1, 224 ,55) == 0 then--È£³É »°±â
			return 1,0,"Eu não posso ver o Core que eu quero. Não perca tempo e trazê-lo de volta. "


		elseif GetHench(cnum, 1, 224, 1) > 1 then
			return 1,0,"Você precisa de apenas um núcleo. É melhor manter os outros núcleos no armazém. "


		else
			AddHench(cnum, 224, -1)		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 5001 then
				result = AddHench(cnum, 270 ,1)--½ºÄ·ÆÛ
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 271 ,1)--¼ÒµåÅ×ÀÏ·¯
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 266 ,1)--·Î¾â¹èÆ²
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 265 ,1)--°ñµç½ºÄÃ
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "												 	
				
			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 211 ,1)--ºí·¯µð½ã´õ
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "

			end	
		end	


	
	elseif req == 23 then
		return 1,0,"Não há limite de tempo. Acalme-se ~ "















		
--·¹º§ 70		
	elseif req == 32 then
		if GetHench(cnum, 1, 270,75) == 0 then--½ºÄ·ÆÛ »°±â
			return 1,0,"Eu não posso ver o Core que eu quero. Não perca tempo e trazê-lo de volta. "



		elseif GetHench(cnum, 1, 270, 1) > 1 then
			return 1,0,"Você precisa de apenas um núcleo. É melhor manter os outros núcleos no armazém "



		elseif	GetItemCount(cnum, 311, 0) < 1 or 
			GetItemCount(cnum, 312, 0) < 1 or GetItemCount(cnum, 313, 0) < 1 or 
			GetItemCount(cnum, 314, 0) < 1 or GetItemCount(cnum, 315, 0) < 1 or 
			GetItemCount(cnum, 316, 0) < 1 or GetItemCount(cnum, 317, 0) < 1 or 
			GetItemCount(cnum, 318, 0) < 1 or GetItemCount(cnum, 319, 0) < 1 then
			return 1,0,"Você não trazer de volta a encantar itens. Não perca tempo e trazê-lo de volta. "



		else
			AddHench(cnum, 270, -1)

			AddItemCount(cnum, 311, -1)
			AddItemCount(cnum, 312, -1)
			AddItemCount(cnum, 313, -1)
			AddItemCount(cnum, 314, -1)
			AddItemCount(cnum, 315, -1)
			AddItemCount(cnum, 316, -1)
			AddItemCount(cnum, 317, -1)
			AddItemCount(cnum, 318, -1)																							
			AddItemCount(cnum, 319, -1)

		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 9001 then
				result = AddHench(cnum, 267 ,1)--À®Å¬·¹¼Å
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				

				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 322 ,1)--È£³Ý
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 326 ,1)--¸ÇÆ¼ÇÃ·£
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "						

			end
		end					


	elseif req == 33 then
		return 1,0,"Não há limite de tempo. Acalme-se ~ "












		
--·¹º§ 90		
	elseif req == 42 then
		if GetHench(cnum, 1, 267, 90) == 0 then--À®Å¬·¡¼Å »°±â
			return 1,0,"Eu não posso ver o Core que eu quero. Não perca tempo e trazê-lo de volta. "


		elseif GetHench(cnum, 1, 267, 1) > 1 then
			return 1,0,"Eu não posso ver o Core que eu quero. Você precisa de apenas um núcleo. É melhor manter os outros núcleos no armazém "


			
		elseif	GetItemCount(cnum, 311, 0) < 5 or 
			GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or 
			GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or 
			GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or 
			GetItemCount(cnum, 318, 0) < 5 or GetItemCount(cnum, 319, 0) < 5 then
			return 1,0,"Você não trazer de volta a encantar itens. Não perca tempo e trazê-lo de volta. "
			 
		else
			AddHench(cnum, 267, -1)
			
			AddItemCount(cnum, 311, -5)
			AddItemCount(cnum, 312, -5)
			AddItemCount(cnum, 313, -5)
			AddItemCount(cnum, 314, -5)
			AddItemCount(cnum, 315, -5)
			AddItemCount(cnum, 316, -5)
			AddItemCount(cnum, 317, -5)
			AddItemCount(cnum, 318, -5)																							
			AddItemCount(cnum, 319, -5)
						
			random = SetRandom(cnum, 1, 10000)
			
			if random < 9001 then
				result = AddHench(cnum, 282 ,1)--À®½ºÅè·¹ÀÌ¼Å
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end

				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 287 ,1)--È­»Ô¼Ò
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 299 ,1)--¿À¸£µ¥ºô
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "

			end
		end							
		
		
	elseif req == 43 then
		return 1,0,"Cinzel de Archer, Chisel do ladrão, formão de Valor, formão de Poder, formão de Agility, formão de Precisão, Cinzel da Vida, Tear Star "
			
	elseif req == 44 then
		return 1,0,"Não há limite de tempo. Acalme-se ~ "	












		
--·¹º§ 100		
	elseif req == 52 then
		if GetHench(cnum, 1, 282, 100) == 0 then--À®½ºÅè·¹ÀÌ¼Å »°±â
			return 1,0,"Eu não posso ver o Core que eu quero. Não perca tempo e trazê-lo de volta. "


		elseif GetHench(cnum, 1, 282, 1) > 1 then
			return 1,0,"Eu não posso ver o Core que eu quero. Você precisa de apenas um núcleo. É melhor manter os outros núcleos no armazém "


			
		elseif	GetItemCount(cnum, 311, 0) < 10 or GetItemCount(cnum, 312, 0) < 10 or 
			GetItemCount(cnum, 313, 0) < 10 or GetItemCount(cnum, 314, 0) < 10 or 
			GetItemCount(cnum, 315, 0) < 10 or GetItemCount(cnum, 316, 0) < 10 or 
			GetItemCount(cnum, 317, 0) < 10 or GetItemCount(cnum, 318, 0) < 10 or 
			GetItemCount(cnum, 319, 0) < 10 then
			return 1,0,"Você não trazer de volta a encantar itens. Não perca tempo e trazê-lo de volta. "
			 
		else
			AddHench(cnum, 282, -1)
			
			AddItemCount(cnum, 311, -10)
			AddItemCount(cnum, 312, -10)
			AddItemCount(cnum, 313, -10)
			AddItemCount(cnum, 314, -10)
			AddItemCount(cnum, 315, -10)
			AddItemCount(cnum, 316, -10)
			AddItemCount(cnum, 317, -10)
			AddItemCount(cnum, 318, -10)																							
			AddItemCount(cnum, 319, -10)
						
			random = SetRandom(cnum, 1, 10000)
			
			if random < 7001 then
				result = AddHench(cnum, 296 ,1)--»ß¿¡º¼
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 335 ,1)--·¹µå°ï
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "
				
			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 338 ,1)--¸ð½ºÄ¸Æ¾
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 331 ,1)--ÇÃ·Î¿ö
				if result < -1 then
					return 1,0,"Você precisa de algum espaço para colocar em Core. "
				end

				EndQuest(cnum, 113)				
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. Não posso deixar de dar o Core que eu promis. Mas você sabe se este acceptting é também o teste? Se você mostrar suas habilidades, você vai receber algo mais do que prometeu um. "	

			end
		end							
		
		
	elseif req == 53 then
		return 1,0,"Cinzel de Archer, Chisel do ladrão, formão de Valor, formão de Poder, formão de Agility, formão de Precisão, Cinzel da Vida, Tear Star "
			
	elseif req == 54 then
		return 1,0,"Não há limite de tempo. Acalme-se ~ "		

	end
end			
		