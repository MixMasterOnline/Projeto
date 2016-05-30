function NPC_QUEST_261(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 216) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"Você quer me matar esses monstros?"


			else
				return 2,0,"Você tem a prova?",2,"Aqui está ele."


			end
		else
			return 4,0,"Não",32,"Quest da Informação",33,"O que eu quero fazer é matar os monstros Head. Kill Cupidos e Ninja Girls na entrada das Ruínas de Sinan e me traga a prova que você matou",34,"Quais podem ser as provas?"

		end


	elseif req == 2 then
		return 2,0,"Você pode me trazer Cupido setas e cabelo de Ninja Girls como a prova, eu quero você para me trazer 20 Cupido Arrows e 3 Ninja cabelo das meninas",12,"OK."


	elseif req == 12 then
		return 2,0,"Por favor, escolha seu personagem alcance do nível",22,"120-129"


	elseif req == 22 then
		StartQuest(cnum, 168)
		AddSwitchCount(cnum, 216, 1)



	elseif req == 32 then
		return 5,0,"130-139",42,"140-149",43,"150 ou superior",44,"Você não terminá-lo ainda, eu sei que você pode fazê-lo",45,"alcance Level está incorreto."



	elseif req == 42 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"alcance Level está incorreto."


		else
			
			if GetSwitchCount(cnum, 217) < 1 then

				if GetHeroLv(cnum) < 120 or GetHeroLv(cnum) >= 130 then
					return 1,0,"Você fez isso. Obrigado pela vossa ajuda, porém, eles têm a vida eterna e irão re-spawn e voltar novamente e novamente. Você pode continuar fazendo esse favor para mim? Eu te darei EXP como recompensa"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 217, 1)
					AddHeroExp(cnum, 6000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 120 or GetHeroLv(cnum) >= 130 then
					return 1,0,"Você não terminá-lo ainda, eu sei que você pode fazê-lo"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 600000)
				end

			end
			return 1,0,"alcance Level não é correto."
		end



	elseif req == 43 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"alcance Level não é correto."


		else
			
			if GetSwitchCount(cnum, 218) < 1 then

				if GetHeroLv(cnum) < 130 or GetHeroLv(cnum) >= 140 then
					return 1,0,"Você fez isso. Obrigado pela vossa ajuda, porém, eles têm a vida eterna e irão re-spawn e voltar novamente e novamente. Você pode continuar fazendo esse favor para mim? Eu te darei EXP como recompensa"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 218, 1)
					AddHeroExp(cnum, 20000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 130 or GetHeroLv(cnum) >= 140 then
					return 1,0,"Você não terminá-lo ainda, eu sei que você pode fazê-lo"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 2000000)
				end

			end
			return 1,0,"alcance Level não é correto. "
		end



	elseif req == 44 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"alcance Level não é correto."


		else
			
			if GetSwitchCount(cnum, 219) < 1 then

				if GetHeroLv(cnum) < 140 or GetHeroLv(cnum) >= 150 then
					return 1,0,"Você fez isso. Obrigado pela vossa ajuda, porém, eles têm a vida eterna e irão re-spawn e voltar novamente e novamente. Você pode continuar fazendo esse favor para mim? Eu te darei EXP como recompensa"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 219, 1)
					AddHeroExp(cnum, 80000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 140 or GetHeroLv(cnum) >= 150 then
					return 1,0,"Você não terminá-lo ainda, eu sei que você pode fazê-lo"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 8000000)
				end

			end
			return 1,0,"alcance Level não é correto."
		end



	elseif req == 45 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"alcance Level não é correto."


		else
			
			if GetSwitchCount(cnum, 220) < 1 then

				if GetHeroLv(cnum) < 150 then
					return 1,0,"Você fez isso. Obrigado pela vossa ajuda, porém, eles têm a vida eterna e irão re-spawn e voltar novamente e novamente. Você pode continuar fazendo esse favor para mim? Eu te darei EXP como recompensa"

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 220, 1)
					AddHeroExp(cnum, 100000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 150 then
					return 1,0,"Você pode me trazer Cupido setas e cabelo de Ninja Girls como a prova, eu quero você para me trazer 20 Cupido Arrows e 3 Ninja cabelo das meninas."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 10000000)
				end

			end
			return 1,0,"Primeiro nível de habilidade inclui rodeio, Contador e Shield como habilidades de defesa, Fire Breath, Drain, Poison e Blaze como habilidades delito e Stun, Strike, cura, purifica, Slow, Freeze, zelo ea pressa, competências Magic."
		end
	

	elseif req == 34 then
		return 1,0,"Qual é a capacidade de aprendizagem?"

	else
		return 0

	end
end	







