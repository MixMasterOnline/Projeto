function NPC_QUEST_297(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 166) < 1 then
			return 3,0,"Ol�, eu sou Carrez. What's up? ",2,"Bem, Garrick apresent�-lo para mim .. ",3,"N�o, me desculpe. "

		else
			return 3,0,"Ser� que voc� conseguiu isso? ",101,"Yes",102,"[Informa��es da Quest.] "

		end


	elseif req == 2 then
		return 2,0,"Ah ~ Voc� precisa de algo de mim. ",12,"Sim. Voc� � o ca�ador. "


	elseif req == 12 then
		return 2,0,"Hu hu ~ ~ Eu costumava ca�ar no Dungeon of Valor. ",22,"Por acaso voc� sabe o tipo de item? "


	elseif req == 22 then
		return 2,0,"Claro que sim. Eu tenho muitas dessas coisas. ",32,"Voc� pode vend�-lo? "


	elseif req == 32 then
		return 2,0,"Me desculpe, mas eu n�o estou vendendo. By the way, se voc� dar-me um favor, eu vou te dar isso .. ",42,"Que favor? "


	elseif req == 42 then
		if GetHeroLv(cnum) < 50 then
			return 1,0,"Voc� est� t�o fraco que eu n�o lhe daria trabalho. Volte depois de ser sobre o n�vel 50. "
		else
			return 2,0,"Vou te dar algum trabalho se voc� ficar S�mbolo Hunter's para o seu n�vel. ",52,"S�mbolo de Ca�ador? "
		end


	elseif req == 52 then
		return 2,0,"Yep. Voc� deve tomar S�mbolo Hunter's para mim. Voc� pode obter o S�mbolo da Guild Representante. ",62,"Sim, eu vou busc�-la "


	elseif req == 62 then
		AddSwitchCount(cnum, 166, 1)
		StartQuest(cnum, 171)
		return 1,0,"Bem, eu espero que sim. "




--���� ����
	elseif req == 101 then
		return 8,0,"Escolha a faixa de n�vel de tomar ",112,"Nivel 50",113,"Nivel 80",114,"Nivel 100",115,"Nivel 120",116,"Nivel 140",117,"Nivel 150",118,"Nivel 160"





--����Ʈ ����
	elseif req == 102 then
		return 1,0,"Aqui pode proceder a Busca por 21 vezes de acordo com seu n�vel. O n�vel m�nimo � de 50 para a primeira miss�o. E voc� pode obter atrav�s da Quest quantos definido quando voc� se tornar n�vel 80.100.120.140.150.160. A Quest � levar o s�mbolo combinado com o n�vel. "





--50���� ��

	elseif req == 112 then
		if GetHeroLv(cnum) < 50 then
			return 1,0,"Seu n�vel deve ser superior a 50LV. "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				if GetItemCount(cnum,8020, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunters (50LV). "
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (50LV). Vou exchage o s�mbolo com tipo de item como promessa. ",202,"[Para trocar agora] ",203,"Para trocar mais tarde "

				end


			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "


			end
		end


	elseif req == 202 then
		return 6,0,"Escolha o tipo de item que deseja trocar com. ",302,"Dragon tipo Item ",303,"Devil tipo Item ",304,"Animal tipo Item ",305,"Bird tipo Item ",306,"Seguinte "


	elseif req == 306 then
		return 6,0,"Escolha o tipo de item que deseja trocar com, ",312,"Inseto tipo Item ",313,"Planta tipo Item ",314,"Mist�rio tipo Item ",315,"Metal tipo Item ",202,"Antes "


	elseif req == 302 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com Chama do Drag�o. "
		
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end

		end


	elseif req == 303 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com Magic Book of Darkness. "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end

		end



	elseif req == 304 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com chifre do unic�rnio "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end
		end


	elseif req == 305 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com Asa de Anjo. "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end
		end



	elseif req == 312 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com f�sseis de insetos. "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end
		end



	elseif req == 313 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com a Vida Flor. "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end
		end


	elseif req == 314 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com Crystal Soul. "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end
		end



	elseif req == 315 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (50LV). "

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (50LV) com cora��o forte. "
			else
				return 1,0,"Voc� n�o pode tomar 50LV Quest mais porque voc� j� deu. "

			end
		end






--80���� ��

	elseif req == 113 then
		if GetHeroLv(cnum) < 80 then
			return 1,0,"Your level should be over 80LV."
		
		else
			if GetSwitchCount(cnum, 168) < 1 then
				if GetItemCount(cnum,8021, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (80LV). Vou exchage o s�mbolo com tipo de item como promessa. ",212,"[Para trocar agora] ",213,"Para trocar mais tarde "

				end
	

			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
		

			end
		end



	elseif req == 212 then
		return 6,0,"Escolha o tipo de item que deseja trocar com. ",322,"Item Tipo Dragon",323,"Item Tipo Devil ",324,"Item Tipo Animal",325,"Item Tipo Bird",326,"Proximo"


	elseif req == 326 then
		return 6,0,"Escolha o tipo de item que deseja trocar com. ",332,"Item Tipo Inseto",333,"Item Tipo Planta",334,"Item Tipo Misterio",335,"Item Tipo Metal",212,"Anterior"


	elseif req == 322 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� troquei S�mbolo Hunter (80LV) com Chama do Drag�o. "
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end



	elseif req == 323 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� troquei S�mbolo Hunter (80LV) com Magic Book of Darkness "
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end



	elseif req == 324 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� troquei S�mbolo Hunter (80LV) com chifre do unic�rnio. "
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end



	elseif req == 325 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� troquei S�mbolo Hunter (80LV) com Asa de Anjo "
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end



	elseif req == 332 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (80LV) com f�sseis de insetos "
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end


	elseif req == 333 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (80LV) with Life Flower."
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end



	elseif req == 334 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (80LV) with Soul's Jewelry."
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end



	elseif req == 335 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (80LV). "

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (80LV) with Strong Heart."
			else
				return 1,0,"Voc� n�o pode tomar 80LV Quest mais porque voc� j� deu duas vezes. "
			
			end
		end




--100���� ��

	elseif req == 114 then
		if GetHeroLv(cnum) < 100 then
			return 1,0,"Seu n�vel deve ser superior a 100LV. "

		else
			if GetSwitchCount(cnum, 169) < 1 then
				if GetItemCount(cnum,8022, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV). "
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (100LV). Vou exchage o s�mbolo com tipo de item como promessa. ",222,"[Para trocar agora] ",223,"Para trocar mais tarde "

				end


			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes. "


			end
		end




	elseif req == 222 then
		return 6,0,"Escolha o tipo de item que deseja trocar com ",342,"Item Tipo Dragon",343,"Item Tipo Devil ",344,"Item Tipo Animal",345,"Item Tipo Bird",346,"Proximo"


	elseif req == 346 then
		return 6,0,"Escolha o tipo de item que deseja trocar com ",352,"Item Tipo Inseto",353,"Item Tipo Planta",354,"Item Tipo Misterio",355,"Item Tipo Mera",222,"Proximo"



	elseif req == 342 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com Flame Drangon's."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end



	elseif req == 343 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com Magic Book of Darkness."

			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end



	elseif req == 344 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com chifre do unic�rnio."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end



	elseif req == 345 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com Asa de Anjo."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end



	elseif req == 352 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com f�sseis de insetos."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end


	elseif req == 353 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com flor de vida."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end



	elseif req == 354 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com Crystal Soul."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end



	elseif req == 355 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (100LV)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (100LV) com cora��o forte."
			else
				return 1,0,"Voc� n�o pode tomar 100LV Quest mais porque voc� j� deu tr�s vezes."

			end
		end


--120���� ��

	elseif req == 115 then
		if GetHeroLv(cnum) < 120 then
			return 1,0,"Seu n�vel deve ser superior a 120LV."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				if GetItemCount(cnum,8023, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (120LV). Vou exchage o s�mbolo com tipo de item como promessa. ",232,"[Para trocar agora]",233,"Para trocar mais tarde"

				end


			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."


			end
		end



	elseif req == 232 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",362,"Dragon tipo Item",363,"Devil tipo Item",364,"Animal tipo Item",365,"Bird tipo Item",366,"Seguinte"


	elseif req == 366 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",372,"Inseto tipo Item",373,"Planta tipo Item",374,"Mist�rio tipo Item",375,"Mera tipo Item",232,"Seguinte "



	elseif req == 362 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com Flame Drangon's."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end

		end



	elseif req == 363 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com Magic Book of Darkness."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end



	elseif req == 364 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com chifre do unic�rnio."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end



	elseif req == 365 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com Asa de Anjo."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end



	elseif req == 372 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com f�sseis de insetos."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end


	elseif req == 373 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com flor de vida."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end



	elseif req == 374 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com Crystal Soul."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end



	elseif req == 375 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (120LV)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (120LV) com cora��o forte."
			else
				return 1,0,"Voc� n�o pode tomar 120LV Quest mais porque voc� j� tr�s vezes."

			end
		end


--140���� ��

	elseif req == 116 then
		if GetHeroLv(cnum) < 140 then
			return 1,0,"Seu n�vel deve ser superior a 140LV."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				if GetItemCount(cnum,8024, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (140LV). Vou exchage o s�mbolo com tipo de item como promessa.",242,"[Para trocar agora]",243,"Para trocar mais tarde"

				end


			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."


			end
		end



	elseif req == 242 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",382,"Dragon tipo Item",383,"Devil tipo Item",384,"Animal tipo Item",385,"Bird tipo Item",386,"Seguinte"


	elseif req == 386 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",392,"Inseto tipo Item",393,"Planta tipo Item",394,"Mist�rio tipo Item",395,"Mera tipo Item ",242,"Seguinte"



	elseif req == 382 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com Flame Drangon's."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 383 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com Magic Book of Darkness."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 384 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com chifre do unic�rnio."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 385 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com Asa de Anjo."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 392 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com f�sseis de insetos."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end


	elseif req == 393 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com flor de vida."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 394 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com Crystal Soul."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 395 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (140LV)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (140LV) com cora��o forte."
			else
				return 1,0,"Voc� n�o pode tomar 140LV Quest mais porque voc� j� deu quatro vezes."

			end
		end


--150���� ��

	elseif req == 117 then
		if GetHeroLv(cnum) < 150 then
			return 1,0,"Seu n�vel deve ser superior a 150LV."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				if GetItemCount(cnum,8025, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (150LV). Vou exchage o s�mbolo com tipo de item como promessa.",252,"[Para trocar agora]",253,"Para trocar mais tarde"

				end


			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."


			end

		end

	elseif req == 252 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",402,"Dragon tipo Item",403,"Devil tipo Item",404,"Animal tipo Item",405,"Bird tipo Item",406,"Seguinte"


	elseif req == 406 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",412,"Inseto tipo Item",413,"Planta tipo Item",414,"Mist�rio tipo Item",415,"Mera tipo Item ",252,"Seguinte"



	elseif req == 402 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com Flame Drangon's."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 403 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com Magic Book of Darkness."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 404 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com chifre do unic�rnio."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 405 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com Asa de Anjo."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 412 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com f�sseis de insetos."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end


	elseif req == 413 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com flor de vida."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 414 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com Crystal Soul."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 415 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (150LV)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (150LV) com cora��o forte."
			else
				return 1,0,"Voc� n�o pode tomar 150LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



--160���� ��

	elseif req == 118 then
		if GetHeroLv(cnum) < 160 then
			return 1,0,"Seu n�vel deve ser superior a 160LV."

		else
			if GetSwitchCount(cnum, 173) < 1 then

				if GetItemCount(cnum,8026, 0) < 1 then
					return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."
			
				else
					return 2,0,"Uau, voc� tem Symbol Hunter (160LV). Vou exchage o s�mbolo com tipo de item como promessa.",262,"[Para trocar agora]",263,"Para trocar mais tarde"

				end


			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."


			end
		end



	elseif req == 262 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",422,"Dragon tipo Item",423,"Devil tipo Item",424,"Animal tipo Item",425,"Bird tipo Item",426,"Seguinte"


	elseif req == 426 then
		return 6,0,"Escolha o tipo de item que deseja trocar com",432,"Inseto tipo Item",433,"Planta tipo Item",434,"Mist�rio tipo Item",435,"Mera tipo Item",262,"Seguinte "



	elseif req == 422 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com Flame Drangon's."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 423 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com Magic Book of Darkness."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 424 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com chifre do unic�rnio."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 425 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com Asa de Anjo."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 432 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com f�sseis de insetos."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end


	elseif req == 433 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com flor de vida."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 434 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com Crystal Soul."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end



	elseif req == 435 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Eu n�o posso ver S�mbolo Hunter (160LV)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Eu j� exchaged S�mbolo Hunter (160LV) com cora��o forte."
			else
				return 1,0,"Voc� n�o pode tomar 160LV Quest mais porque voc� j� deu quatro vezes."

			end
		end

	else
		return 0

	end
end