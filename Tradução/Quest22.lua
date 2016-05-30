function NPC_QUEST_253(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 174) < 1 then
			return 2,0,"Olá, Você veio para ficar Símbolo do Caçador, também?",2,"Sim"
		
		else
			return 3,0,"Recebeste Chisel?",52,"Sim, eu entendi.",53,"Como posso obtê-lo?"

		end



	elseif req == 2 then
		return 2,0,"Bem, você tem que provar que você é um caçador.",12,"Como posso fazer isso?"


	elseif req == 12 then
		return 2,0,"É muito simples. Você sabe o que fazer Chisel encantar item?",22,"Isso é bom senso."


	elseif req == 22 then
		return 2,0,"Boas. A única coisa a provar é apenas trazer Chisel.",32,"Qual Chisel que eu tenho que levar? "


	elseif req == 32 then
		return 2,0,"Símbolo de Hunter é composta por 7 etapas. Existem etapas de nível 50, 80, 100, 120, 140, 150, 160. De acordo com o nível, o número de Cinzel são diferentes. Level 50 precisa de apenas um por cada tipo. Como o nível cresce, o número de Chisel você precisa crescer um por um. Então você precisa de 7 Cinzel nível 160.",42,"Isso é tudo?"


	elseif req == 42 then
		AddSwitchCount(cnum, 174, 1)
		StartQuest(cnum, 172)
		return 1,0,"Sim, sair e buscá-la. Eu estarei esperando por você."


	elseif req == 52 then
		return 8,0,"Qual o símbolo que você quer exchage com?",62,"Lv50 símbolo",63,"LV80 símbolo",64,"LV100 símbolo",65,"LV120 símbolo",66,"LV140 símbolo",67,"LV150 símbolo",68,"LV160 símbolo"


	elseif req == 53 then
		return 1,0,"Você pode obter itens de NPC Chisel Munett no sul Rudis. Talvez você se prepare para a Core já que ele gosta Core."


	elseif req == 62 then
		if GetHeroLv(cnum) < 50 then
			return 1,0,"Seu nível deve ser superior a 50LV."

		elseif GetSwitchCount(cnum, 175) > 0 then
			return 1,0,"Sua chance de câmbio é um símbolo com Lv50."

		elseif GetItemCount(cnum, 311, 0) < 1 or GetItemCount(cnum, 312, 0) < 1 or GetItemCount(cnum, 313, 0) < 1 or GetItemCount(cnum, 314, 0) < 1 or GetItemCount(cnum, 315, 0) < 1 or GetItemCount(cnum, 316, 0) < 1 or GetItemCount(cnum, 317, 0) < 1 or GetItemCount(cnum, 318, 0) < 1 then
			return 1,0,"Você tem que chegar Cinzel mais .."

		else
			if GetSwitchCount(cnum, 175) < 1 then
				AddItemCount(cnum, 311, -1)
				AddItemCount(cnum, 312, -1)
				AddItemCount(cnum, 313, -1)
				AddItemCount(cnum, 314, -1)
				AddItemCount(cnum, 315, -1)
				AddItemCount(cnum, 316, -1)
				AddItemCount(cnum, 317, -1)
				AddItemCount(cnum, 318, -1)
				AddItemCount(cnum, 8020, 1)
				AddSwitchCount(cnum, 175, 1)
				EndQuest(cnum, 172)
				return 1,0,"Eu exchaged Lv50 Símbolo com Cinzel."
			else
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo Lv50. "
			end

		end


	elseif req == 63 then
		if GetHeroLv(cnum) < 80 then
			return 1,0,"Seu nível deve ser superior a 80LV."

		elseif GetSwitchCount(cnum, 176) > 0 then
			return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV80. "

		elseif GetItemCount(cnum, 311, 0) < 2 or GetItemCount(cnum, 312, 0) < 2 or GetItemCount(cnum, 313, 0) < 2 or GetItemCount(cnum, 314, 0) < 2 or GetItemCount(cnum, 315, 0) < 2 or GetItemCount(cnum, 316, 0) < 2 or GetItemCount(cnum, 317, 0) < 2 or GetItemCount(cnum, 318, 0) < 2 then
			return 1,0,"Você tem que chegar Cinzel mais .. "

		else
			if GetSwitchCount(cnum, 176) < 2 then
				AddItemCount(cnum, 311, -2)
				AddItemCount(cnum, 312, -2)
				AddItemCount(cnum, 313, -2)
				AddItemCount(cnum, 314, -2)
				AddItemCount(cnum, 315, -2)
				AddItemCount(cnum, 316, -2)
				AddItemCount(cnum, 317, -2)
				AddItemCount(cnum, 318, -2)
				AddItemCount(cnum, 8021, 1)
				AddSwitchCount(cnum,176, 1)
				EndQuest(cnum, 172)
				return 1,0,"Eu exchaged Símbolo LV80 com Cinzel "
			else
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV80. "
			end

		end


	elseif req == 64 then
		if GetHeroLv(cnum) < 100 then
			return 1,0,"Seu nível deve ser superior a 100LV. "

		elseif GetSwitchCount(cnum, 177) > 0 then
			return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV100. "


		elseif GetItemCount(cnum, 311, 0) < 3 or GetItemCount(cnum, 312, 0) < 3 or GetItemCount(cnum, 313, 0) < 3 or GetItemCount(cnum, 314, 0) < 3 or GetItemCount(cnum, 315, 0) < 3 or GetItemCount(cnum, 316, 0) < 3 or GetItemCount(cnum, 317, 0) < 3 or GetItemCount(cnum, 318, 0) < 3 then
			return 1,0,"Você tem que chegar Cinzel mais .. "

		else
			if GetSwitchCount(cnum, 177) < 3 then
				AddItemCount(cnum, 311, -3)
				AddItemCount(cnum, 312, -3)
				AddItemCount(cnum, 313, -3)
				AddItemCount(cnum, 314, -3)
				AddItemCount(cnum, 315, -3)
				AddItemCount(cnum, 316, -3)
				AddItemCount(cnum, 317, -3)
				AddItemCount(cnum, 318, -3)
				AddItemCount(cnum, 8022, 1)
				AddSwitchCount(cnum,177, 1)
				EndQuest(cnum, 172)
				return 1,0,"Eu exchaged Símbolo LV100 com Cinzel. "
			else
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV100. "
			end
		end


	elseif req == 65 then
		if GetHeroLv(cnum) < 120 then
			return 1,0,"Seu nível deve ser superior a 120LV. "

		elseif GetSwitchCount(cnum, 178) > 0 then
			return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV120. "

		elseif GetItemCount(cnum, 311, 0) < 4 or GetItemCount(cnum, 312, 0) < 4 or GetItemCount(cnum, 313, 0) < 4 or GetItemCount(cnum, 314, 0) < 4 or GetItemCount(cnum, 315, 0) < 4 or GetItemCount(cnum, 316, 0) < 4 or GetItemCount(cnum, 317, 0) < 4 or GetItemCount(cnum, 318, 0) < 4 then
			return 1,0,"Você tem que chegar Cinzel mais .. "

		else
			if GetSwitchCount(cnum, 178) < 3 then
				AddItemCount(cnum, 311, -4)
				AddItemCount(cnum, 312, -4)
				AddItemCount(cnum, 313, -4)
				AddItemCount(cnum, 314, -4)
				AddItemCount(cnum, 315, -4)
				AddItemCount(cnum, 316, -4)
				AddItemCount(cnum, 317, -4)
				AddItemCount(cnum, 318, -4)
				AddItemCount(cnum, 8023, 1)
				AddSwitchCount(cnum,178, 1)
				EndQuest(cnum, 172)
				return 1,0,"Eu exchaged LV120 Símbolo com Cinzel. "
			else
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV120. "
			
			end

		end


	elseif req == 66 then
		if GetHeroLv(cnum) < 140 then
			return 1,0,"Seu nível deve ser superior a 140LV. "

		elseif GetSwitchCount(cnum, 179) > 0 then
			return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV140. "


		elseif GetItemCount(cnum, 311, 0) < 5 or GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or GetItemCount(cnum, 318, 0) < 5 then
			return 1,0,"Você tem que chegar Cinzel mais .. "

		else
			if GetSwitchCount(cnum, 179) < 4 then
				AddItemCount(cnum, 311, -5)
				AddItemCount(cnum, 312, -5)
				AddItemCount(cnum, 313, -5)
				AddItemCount(cnum, 314, -5)
				AddItemCount(cnum, 315, -5)
				AddItemCount(cnum, 316, -5)
				AddItemCount(cnum, 317, -5)
				AddItemCount(cnum, 318, -5)
				AddItemCount(cnum, 8024, 1)
				AddSwitchCount(cnum,179, 1)
				EndQuest(cnum, 172)
				return 1,0,"Troquei LV140 Símbolo com Cinzel. "
			else
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV140. "				

			end

		end



	elseif req == 67 then
		if GetHeroLv(cnum) < 150 then
			return 1,0,"Seu nível deve ser superior a 150LV. "


		elseif GetSwitchCount(cnum, 180) > 0 then
			return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV150. "



		elseif GetItemCount(cnum, 311, 0) < 6 or GetItemCount(cnum, 312, 0) < 6 or GetItemCount(cnum, 313, 0) < 6 or GetItemCount(cnum, 314, 0) < 6 or GetItemCount(cnum, 315, 0) < 6 or GetItemCount(cnum, 316, 0) < 6 or GetItemCount(cnum, 317, 0) < 6 or GetItemCount(cnum, 318, 0) < 6 then
			return 1,0,"Você tem que chegar Cinzel mais .. "

		else
			if GetSwitchCount(cnum, 180) < 4 then
				AddItemCount(cnum, 311, -6)
				AddItemCount(cnum, 312, -6)
				AddItemCount(cnum, 313, -6)
				AddItemCount(cnum, 314, -6)
				AddItemCount(cnum, 315, -6)
				AddItemCount(cnum, 316, -6)
				AddItemCount(cnum, 317, -6)
				AddItemCount(cnum, 318, -6)
				AddItemCount(cnum, 8025, 1)
				AddSwitchCount(cnum,180, 1)
				EndQuest(cnum, 172)
				return 1,0,"Eu exchaged LV150 Símbolo com Cinzel. "
			else			
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV150. "
		
			end
		end


	elseif req == 68 then
		if GetHeroLv(cnum) < 160 then
			return 1,0,"Seu nível deve ser superior a 160LV. "

		elseif GetSwitchCount(cnum, 181) > 0 then
			return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV160. "

		elseif GetItemCount(cnum, 311, 0) < 7 or GetItemCount(cnum, 312, 0) < 7 or GetItemCount(cnum, 313, 0) < 7 or GetItemCount(cnum, 314, 0) < 7 or GetItemCount(cnum, 315, 0) < 7 or GetItemCount(cnum, 316, 0) < 7 or GetItemCount(cnum, 317, 0) < 7 or GetItemCount(cnum, 318, 0) < 7 then
			return 1,0,"Você tem que chegar Cinzel mais .. "

		else
			if GetSwitchCount(cnum, 181) < 4 then			
				AddItemCount(cnum, 311, -7)
				AddItemCount(cnum, 312, -7)
				AddItemCount(cnum, 313, -7)
				AddItemCount(cnum, 314, -7)
				AddItemCount(cnum, 315, -7)
				AddItemCount(cnum, 316, -7)
				AddItemCount(cnum, 317, -7)
				AddItemCount(cnum, 318, -7)
				AddItemCount(cnum, 8026, 1)
				AddSwitchCount(cnum,181, 1)
				EndQuest(cnum, 172)
				return 1,0,"Troquei LV160 Símbolo com Cinzel. "
			else
				return 1,0,"Sua chance de troca é somente uma vez com o símbolo LV160. "

			end			

		end

	else
		return 0

	end
end