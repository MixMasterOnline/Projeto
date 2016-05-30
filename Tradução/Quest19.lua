function NPC_QUEST_215(cnum, reqNumber) -- ������Ÿ / ��Ű�ý�

	req = reqNumber

	if req == 1 then
		return 6,0,"Voc� deseja verificar o n�vel de conhec�-lo, hein? Voc� tem um talento, mas n�o se orgulha. Meu teste n�o � f�cil. Qual o n�vel que voc� vai ter ",2,"acima do n�vel 20 ",3,"acima do n�vel 50",4,"acima do n�vel 70",5,"acima do n�vel 90",6,"acima do n�vel 100"

	elseif req == 2 then

		if GetSwitchCount(cnum, 47) > 0 then
			return 1,0,"Voc� tem feito o teste j�. Tente pr�ximo teste. "
			
		elseif GetSwitchCount(cnum, 1021) < 1 then
			if GetHeroLv(cnum) < 20 then
				return 1,0,"Voc� n�o � qualificado para este teste. Volte depois de ter sido acima do n�vel 20 "
			
			else
				return 2,0,"Eu acho que voc� pode ser um bom Mix Master para ver seus olhos. O teste � pegar um Core Milta. Isso n�o � dif�cil. Vou te dar um Core bom se voc� passar nesse teste .. ",101,"Para aceitar teste "
			end
		else
			return 3,0,"Voc� pode terminar o primeiro teste? ",12,"Teste conclu�do ",13,"Para dar-lhe mais tarde "
		end
		
	elseif req == 3 then

		if GetSwitchCount(cnum, 47) < 1 then
			return 1,0,"Sua qualifica��o � suficiente, mas este teste � composto de forma sistem�tica. Ent�o voc� deve passar o teste passo a passo. "
	
		elseif GetSwitchCount(cnum, 48) > 0 then
			return 1,0,"Voc� tem feito o teste j�. Tente pr�ximo teste "


		elseif GetSwitchCount(cnum, 1022) < 1 then
			if GetHeroLv(cnum) < 50 then
				return 1,0,"Voc� n�o � qualificado para este teste. Volte depois de mais de n�vel 50 "
										
			else
				return 2,0,"Uau, voc� deve ter tido problemas. Parece que voc� entrar no swing das batalhas. O pr�ximo teste � trazer de volta Clawless Core depois de fazer isso at� o n�vel 55. Vou te dar um Core bom se voc� passar nesse teste. ",102,"Para aceitar teste "
			end
		else
			return 3,0,"Voc� vai terminar o segundo teste? ",22,"Teste conclu�do ",23,"Para dar-lhe mais tarde "
		end				
	
	
	elseif req == 4 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 then
			return 1,0,"Sua qualifica��o � suficiente, mas este teste � composto de forma sistem�tica. Ent�o voc� deve passar o teste passo a passo. "
			
		elseif GetSwitchCount(cnum, 49) > 0 then
			return 1,0,"Voc� tem feito o teste j�. Tente pr�ximo teste "

		elseif GetSwitchCount(cnum, 1023) < 1 then
			if GetHeroLv(cnum) < 70 then
				return 1,0,"Voc� n�o � qualificado para este teste. Volte depois de ser sobre o n�vel 70. "
			
			else
				return 2,0,"Voc� � o homem com for�a de vontade. H� apenas alguns que vieram a este ensaio stop.The pr�xima para trazer de volta um Core Ballza depois de fazer isso at� o n�vel 75. Vou te dar um Core bom se voc� passar nesse teste. ",103,"Para aceitar teste "
			end
		else
			return 3,0,"Vai terminar o terceiro teste? ",32,"Teste conclu�do ",33,"Para dar-lhe mais tarde "
		end
		


	elseif req == 5 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 or GetSwitchCount(cnum, 49) < 1 then
			return 1,0,"Sua qualifica��o � suficiente, mas este teste � composto de forma sistem�tica. Ent�o voc� deve passar o teste passo a passo. "
			
		elseif GetSwitchCount(cnum, 50) > 0 then
			return 1,0,"Voc� tem feito o teste j�. Tente pr�ximo teste "

		elseif GetSwitchCount(cnum, 1024) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"Voc� n�o � qualificado para este teste. Volte depois de ser sobre o n�vel 90. "
			
			else
				return 2,0,"Voc� parece o sonho de ser Mix Master. N�o desista! Tentar e tentar! Este teste � para trazer de volta um Core WingCrusher depois de fazer isso at� o n�vel 90 e todos os tipos de encantar itens por um. Vou te dar um Core bom se voc� passar nesse teste. ",104,"Para aceitar teste "
			end
		else
			return 4,0,"Vai terminar o quarto teste? ",42,"Teste conclu�do ",43,"Os tipos de item de Encantar ",44,"Para dar-lhe mais tarde "
		end

			
	elseif req == 6 then

		if GetSwitchCount(cnum, 47) < 1 or GetSwitchCount(cnum, 48) < 1 or GetSwitchCount(cnum, 49) < 1 or GetSwitchCount(cnum, 50) < 1 then
			return 1,0,"Sua qualifica��o � suficiente, mas este teste � composto de forma sistem�tica. Ent�o voc� deve passar o teste passo a passo"
			
		elseif GetSwitchCount(cnum, 51) > 0 then
			return 1,0,"Ent�o, voc� precisa desenvolver suas habilidades. "


		elseif GetSwitchCount(cnum, 1025) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"Voc� n�o � qualificado para este teste. Volte depois de ser sobre o n�vel 100. "
										
			else
				return 2,0,"Sendo o Master Mix � coisa dif�cil. Est� lembram meu velho amigo. Desejo-lhe passar no teste. O �ltimo teste � trazer de volta um Core WingStormer depois de fazer isso at� o n�vel 100 e todos os tipos de encantar itens por 10. Vou te dar um Core bom se voc� passar nesse teste. ",105,"Para aceitar teste "
			end
		else
			return 4,0,"Vai terminar o quarto teste? ",52,"Teste conclu�do ",53,"Os tipos de item de Encantar ",54,"Para dar-lhe mais tarde "
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 109)
		AddSwitchCount(cnum, 1021, 1)
		return 1,0,"Eu vou esperar por voc� "
		

	elseif req == 102 then
		StartQuest(cnum, 110)
		AddSwitchCount(cnum, 1022, 1)
		return 1,0,"Eu vou esperar por voc� "


	elseif req == 103 then
		StartQuest(cnum, 111)
		AddSwitchCount(cnum, 1023, 1)
		return 1,0,"Eu vou esperar por voc� "


	elseif req == 104 then
		StartQuest(cnum, 112)
		AddSwitchCount(cnum, 1024, 1)
		return 1,0,"Eu vou esperar por voc� "


	elseif req == 105 then
		StartQuest(cnum, 113)
		AddSwitchCount(cnum, 1025, 1)
		return 1,0,"Eu vou esperar por voc� "





	
--����20	
	elseif req == 12 then
		if GetHench(cnum, 1, 29 ,1) == 0 then--���̸�
			return 1,0,"Eu n�o posso ver o Core que eu quero. N�o perca tempo e traz�-lo de volta. "
			

		elseif GetHench(cnum, 1, 29, 1) > 1 then
			return 1,0,"Voc� precisa de apenas um n�cleo. � melhor manter os outros n�cleos no armaz�m. "


		else
			AddHench(cnum, 29, -1)--���̸� ����		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 5001 then
				result = AddHench(cnum, 224 ,1)--ȣ��
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 241 ,1)--õ�ϱ�
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 212 ,1)--��Ʈ����
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 210 ,1)--����
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "												 	
				
			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 251 ,1)--�׸�����
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 109)
				AddSwitchCount(cnum, 47, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "

			end
		end	

		
				
	elseif req == 13 then
		return 1,0,"N�o h� limite de tempo. Acalme-se ~ "














				
--����50	
	elseif req == 22 then
		if GetHench(cnum,1, 224 ,55) == 0 then--ȣ�� ����
			return 1,0,"Eu n�o posso ver o Core que eu quero. N�o perca tempo e traz�-lo de volta. "


		elseif GetHench(cnum, 1, 224, 1) > 1 then
			return 1,0,"Voc� precisa de apenas um n�cleo. � melhor manter os outros n�cleos no armaz�m. "


		else
			AddHench(cnum, 224, -1)		
			random = SetRandom(cnum, 1, 10000)
			
			if random < 5001 then
				result = AddHench(cnum, 270 ,1)--��ķ��
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 271 ,1)--�ҵ����Ϸ�
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 266 ,1)--�ξ��Ʋ
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 265 ,1)--��罺��
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "												 	
				
			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 211 ,1)--������
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 110)
				AddSwitchCount(cnum, 48, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "

			end	
		end	


	
	elseif req == 23 then
		return 1,0,"N�o h� limite de tempo. Acalme-se ~ "















		
--���� 70		
	elseif req == 32 then
		if GetHench(cnum, 1, 270,75) == 0 then--��ķ�� ����
			return 1,0,"Eu n�o posso ver o Core que eu quero. N�o perca tempo e traz�-lo de volta. "



		elseif GetHench(cnum, 1, 270, 1) > 1 then
			return 1,0,"Voc� precisa de apenas um n�cleo. � melhor manter os outros n�cleos no armaz�m "



		elseif	GetItemCount(cnum, 311, 0) < 1 or 
			GetItemCount(cnum, 312, 0) < 1 or GetItemCount(cnum, 313, 0) < 1 or 
			GetItemCount(cnum, 314, 0) < 1 or GetItemCount(cnum, 315, 0) < 1 or 
			GetItemCount(cnum, 316, 0) < 1 or GetItemCount(cnum, 317, 0) < 1 or 
			GetItemCount(cnum, 318, 0) < 1 or GetItemCount(cnum, 319, 0) < 1 then
			return 1,0,"Voc� n�o trazer de volta a encantar itens. N�o perca tempo e traz�-lo de volta. "



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
				result = AddHench(cnum, 267 ,1)--��Ŭ����
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				

				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 322 ,1)--ȣ��
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 326 ,1)--��Ƽ�÷�
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 111)
				AddSwitchCount(cnum, 49, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "						

			end
		end					


	elseif req == 33 then
		return 1,0,"N�o h� limite de tempo. Acalme-se ~ "












		
--���� 90		
	elseif req == 42 then
		if GetHench(cnum, 1, 267, 90) == 0 then--��Ŭ���� ����
			return 1,0,"Eu n�o posso ver o Core que eu quero. N�o perca tempo e traz�-lo de volta. "


		elseif GetHench(cnum, 1, 267, 1) > 1 then
			return 1,0,"Eu n�o posso ver o Core que eu quero. Voc� precisa de apenas um n�cleo. � melhor manter os outros n�cleos no armaz�m "


			
		elseif	GetItemCount(cnum, 311, 0) < 5 or 
			GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or 
			GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or 
			GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or 
			GetItemCount(cnum, 318, 0) < 5 or GetItemCount(cnum, 319, 0) < 5 then
			return 1,0,"Voc� n�o trazer de volta a encantar itens. N�o perca tempo e traz�-lo de volta. "
			 
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
				result = AddHench(cnum, 282 ,1)--�����跹�̼�
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end

				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 287 ,1)--ȭ�Լ�
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 299 ,1)--��������
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 112)
				AddSwitchCount(cnum, 50, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "

			end
		end							
		
		
	elseif req == 43 then
		return 1,0,"Cinzel de Archer, Chisel do ladr�o, form�o de Valor, form�o de Poder, form�o de Agility, form�o de Precis�o, Cinzel da Vida, Tear Star "
			
	elseif req == 44 then
		return 1,0,"N�o h� limite de tempo. Acalme-se ~ "	












		
--���� 100		
	elseif req == 52 then
		if GetHench(cnum, 1, 282, 100) == 0 then--�����跹�̼� ����
			return 1,0,"Eu n�o posso ver o Core que eu quero. N�o perca tempo e traz�-lo de volta. "


		elseif GetHench(cnum, 1, 282, 1) > 1 then
			return 1,0,"Eu n�o posso ver o Core que eu quero. Voc� precisa de apenas um n�cleo. � melhor manter os outros n�cleos no armaz�m "


			
		elseif	GetItemCount(cnum, 311, 0) < 10 or GetItemCount(cnum, 312, 0) < 10 or 
			GetItemCount(cnum, 313, 0) < 10 or GetItemCount(cnum, 314, 0) < 10 or 
			GetItemCount(cnum, 315, 0) < 10 or GetItemCount(cnum, 316, 0) < 10 or 
			GetItemCount(cnum, 317, 0) < 10 or GetItemCount(cnum, 318, 0) < 10 or 
			GetItemCount(cnum, 319, 0) < 10 then
			return 1,0,"Voc� n�o trazer de volta a encantar itens. N�o perca tempo e traz�-lo de volta. "
			 
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
				result = AddHench(cnum, 296 ,1)--�߿���
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 335 ,1)--�����
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "
				
			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 338 ,1)--��ĸƾ
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end
				
				EndQuest(cnum, 113)
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 331 ,1)--�÷ο�
				if result < -1 then
					return 1,0,"Voc� precisa de algum espa�o para colocar em Core. "
				end

				EndQuest(cnum, 113)				
				AddSwitchCount(cnum, 51, 1)	
				return 1,0,"Maravilhosa. N�o posso deixar de dar o Core que eu promis. Mas voc� sabe se este acceptting � tamb�m o teste? Se voc� mostrar suas habilidades, voc� vai receber algo mais do que prometeu um. "	

			end
		end							
		
		
	elseif req == 53 then
		return 1,0,"Cinzel de Archer, Chisel do ladr�o, form�o de Valor, form�o de Poder, form�o de Agility, form�o de Precis�o, Cinzel da Vida, Tear Star "
			
	elseif req == 54 then
		return 1,0,"N�o h� limite de tempo. Acalme-se ~ "		

	end
end			
		