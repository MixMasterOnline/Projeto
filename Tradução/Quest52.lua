function NPC_QUEST_313(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 182) < 1 then
			return 2,0,"Capitao Patrick foi navegar no AeroBomber em Veherseba depois que a ilha no ceu ''Elysion'' foi descoberta. Voce poderia me ajudar a reparar o barco furado para poder voltar para Atreia ?",2,"Claro. Eu irei."

		else
			if GetSwitchCount(cnum, 183) < 1 then
				if GetItemCount(cnum, 8027, 0) < 5 or GetItemCount(cnum, 8028, 0) < 5 then
					return 1,0,"Voce nao entendeu ainda? Eu nao posso sair daqui sem reparar o barco"

				else
					AddItemCount(cnum, 8027, -5)
					AddItemCount(cnum, 8028, -5)
					AddSwitchCount(cnum, 183, 1)
					EndQuest(cnum, 164)
					return 1,0,"Voce voltou seguro. Eu aprecio isso. Os materiais que voce entregou sao suficientes para reparar o barco. Eu serei rapido. Fale comigo daqui a pouco por favor."
				end

			else
				return 3,0,"Obrigado, gracas a voce o barco esta reparado. Vamos para Purmai agora ou voce quer esperar algum tempo ?",32,"Vamos agora !",33,"Espere um pouco. Preciso de um tempo para estar pronto."

			end

		end


	elseif req == 2 then
		return 2,0,"Terriveis monstros apareceram recentemente em nossa vila em Prumai, esta perigoso. Eu vim ate aqui para pedir ajuda. Em nossa Vila Valors, se voce cacar os monstros pode receber pocoes e equipamentos como recompensa. Voce gostaria de nos ajudar ?",12,"Sem problema."



	elseif req == 12 then
		return 2,0,"Voce ira nos ajudar a cacar os monstros em Atreia? Oh! Eu aprecio isso. Porem, o barco esta furado, entao nao podemos ir. Precisamos de [Wooden Board] 5ea e [Big Nail] 5ea para reparar ele. Por favor, recupero dos monstros que nos roubaram.",22,"Isso e facil!",23,"Eu nao sei se eu posso fazer isso."




	elseif req == 22 then
		StartQuest(cnum, 164)
		AddSwitchCount(cnum, 182, 1)
		return 1,0,"Volte seguro."



	elseif req == 23 then
		return 1,0,"Isso e mal. Mas, mesmo assim obrigado."




	elseif req == 32 then
		return 2,0,"Espere um segundo. Irei leva-lo para Purmai agora mesmo",42,"[Move to Prumai]"


	elseif req == 33 then
		return 1,0,"Humm. Fale comigo quando estiver pronto."


	elseif req == 42 then
		MoveZone(cnum, 111, 254)


	else
		return 0

	end
end








