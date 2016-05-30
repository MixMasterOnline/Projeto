function NPC_QUEST_248(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 317) < 1 then			
			if GetSwitchCount(cnum, 316) < 1 then
				return 2,0,"Ah ~ Você deve ser "..name.." que é fazer o teste de admissão. Você chegou a terminar o teste? Ou se tiver alguma outra coisa a fazer?",2,"Estou aqui para terminar o teste"

			else
				return 2,0,"Bem-vindo, é o seu divertimento turnê?",32,"Bem-vindo, você parar quando eu preciso de você."

			end
		
		else
			if GetSwitchCount(cnum, 318) < 1 then			
				if GetHeroLv(cnum) < 20 then
					return 1,0,"Você tem um problema?"


				else
					return 2,0,"Como é que vai o meu caso?",42,"Aqui está o exemplo."

				end
			else
				return 2,0,"Aceitamos novos membros após o teste simples. "..name.." Que tal se juntar a nós para fazer parte da guilda grande?",62,"O que posso fazer?"

			end

		end

		


	elseif req == 2 then
		return 2,0,"Primeiro de tudo, nós vamos dar-lhe o certificado de novo membro. Este certificado vai fazer você ter um monte de trabalhos da nossa guilda. Há um monte de tarefa a partir de coisas fáceis de coisas difíceis, mas o mais perigoso, mais paga. Que tal fazer o teste de admissão?",12,"Boa"

	
	elseif req == 12 then
		return 2,0,"Você é o homem de decisão. Bem, vou dizer-lhe as informações de teste. É natural que a qualificação Mixbuilder Guild ser uma experiência pouco da mistura? O teste é fazer PoochDev pela mistura. Quando você sai da vila, você é capaz de muita caça de monstros. Você não precisa se preocupar com as coisas. OK. Obrigado",22,"Hum. .. Eu não fiz PoochDev ainda. Embora eu não sou tão mixbuilder bom, eu posso fazer isso."



	elseif req == 22 then
		AddSwitchCount(cnum, 316, 1)
		StartQuest(cnum, 143)
		return 1,0,"Uau. Você fez bom trabalho para o novato, embora seja um simples teste. Congulaturations! "..name.." é agora o nosso novo membro Mixbuilder Guild. Espero conseguir junto com você. Aqui está o certificado. Para fazer trabalhos relacionados com guild, você deve ter isso. Não perca! Até logo."








	elseif req == 32 then
		if GetHench(cnum, 1, 61 ,1) < 1 then
			return 1,0,"Eu estava prestes a chamar um membro, porque lá vem um trabalho. Você vai levar esse trabalho? É muito fácil."

		else
			AddHench(cnum, 61, -1)
			AddItemCount(cnum, 4435, 1)
			AddSwitchCount(cnum, 317, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 143)
			return 1,0,"Deixe-me ouvir sobre o trabalho."

		end




	elseif req == 42 then
		return 2,0,"Esta tarefa é de Mutant Lab.Nowadays existem monstros estranhos descobertos ao redor de Prairie Owalljae e Campo Tamer. Algumas pesquisas, disse que a aparência é como Mutante Douba em distância, mas é diferente quando Douba ver no próximo. Laboratório está esperando a possibilidade de o bith de novo mutante. A tarefa é fazer com que a amostra de mutante Douba como eu disse. Acho que vai demorar muito tempo para obter a amostra, porque você tem a pesquisa de campo grande. Obrigado ..",52,"O que é isso? É este o exemplo? O que é esta planta na terra?"


	elseif req == 52 then
		AddSwitchCount(cnum, 318, 1)
		StartQuest(cnum, 144)
		return 1,0,"Oh ~ Isso é o exemplo de um monstro mutante. É mesmo que Monser normal à primeira vista. Bem, os pesquisadores vão lidar com eles. Obrigado. Aqui está o item em recompensa. Estes são os Hench e da experiência. Da próxima vez eu vou contatá-lo novamente."





	elseif req == 62 then
		if GetItemCount(cnum, 4436, 0) < 1 then
			return 1,0,"erro"

		else
			AddSwitchCount(cnum, 319, 1)
			AddHench(cnum, 29, 1)
			AddHeroExp(cnum, 8100)
			AddItemCount(cnum, 4436, -1)
			EndQuest(cnum, 144)
			return 1,0,"Ei, você olha como turista ou explorador. Quer dar-me um favor?"

		end

	else
		return 1,0,"O que posso fazer por você?"

	end
end