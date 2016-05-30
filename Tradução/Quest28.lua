function NPC_QUEST_248(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 317) < 1 then			
			if GetSwitchCount(cnum, 316) < 1 then
				return 2,0,"Ah ~ Voc� deve ser "..name.." que � fazer o teste de admiss�o. Voc� chegou a terminar o teste? Ou se tiver alguma outra coisa a fazer?",2,"Estou aqui para terminar o teste"

			else
				return 2,0,"Bem-vindo, � o seu divertimento turn�?",32,"Bem-vindo, voc� parar quando eu preciso de voc�."

			end
		
		else
			if GetSwitchCount(cnum, 318) < 1 then			
				if GetHeroLv(cnum) < 20 then
					return 1,0,"Voc� tem um problema?"


				else
					return 2,0,"Como � que vai o meu caso?",42,"Aqui est� o exemplo."

				end
			else
				return 2,0,"Aceitamos novos membros ap�s o teste simples. "..name.." Que tal se juntar a n�s para fazer parte da guilda grande?",62,"O que posso fazer?"

			end

		end

		


	elseif req == 2 then
		return 2,0,"Primeiro de tudo, n�s vamos dar-lhe o certificado de novo membro. Este certificado vai fazer voc� ter um monte de trabalhos da nossa guilda. H� um monte de tarefa a partir de coisas f�ceis de coisas dif�ceis, mas o mais perigoso, mais paga. Que tal fazer o teste de admiss�o?",12,"Boa"

	
	elseif req == 12 then
		return 2,0,"Voc� � o homem de decis�o. Bem, vou dizer-lhe as informa��es de teste. � natural que a qualifica��o Mixbuilder Guild ser uma experi�ncia pouco da mistura? O teste � fazer PoochDev pela mistura. Quando voc� sai da vila, voc� � capaz de muita ca�a de monstros. Voc� n�o precisa se preocupar com as coisas. OK. Obrigado",22,"Hum. .. Eu n�o fiz PoochDev ainda. Embora eu n�o sou t�o mixbuilder bom, eu posso fazer isso."



	elseif req == 22 then
		AddSwitchCount(cnum, 316, 1)
		StartQuest(cnum, 143)
		return 1,0,"Uau. Voc� fez bom trabalho para o novato, embora seja um simples teste. Congulaturations! "..name.." � agora o nosso novo membro Mixbuilder Guild. Espero conseguir junto com voc�. Aqui est� o certificado. Para fazer trabalhos relacionados com guild, voc� deve ter isso. N�o perca! At� logo."








	elseif req == 32 then
		if GetHench(cnum, 1, 61 ,1) < 1 then
			return 1,0,"Eu estava prestes a chamar um membro, porque l� vem um trabalho. Voc� vai levar esse trabalho? � muito f�cil."

		else
			AddHench(cnum, 61, -1)
			AddItemCount(cnum, 4435, 1)
			AddSwitchCount(cnum, 317, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 143)
			return 1,0,"Deixe-me ouvir sobre o trabalho."

		end




	elseif req == 42 then
		return 2,0,"Esta tarefa � de Mutant Lab.Nowadays existem monstros estranhos descobertos ao redor de Prairie Owalljae e Campo Tamer. Algumas pesquisas, disse que a apar�ncia � como Mutante Douba em dist�ncia, mas � diferente quando Douba ver no pr�ximo. Laborat�rio est� esperando a possibilidade de o bith de novo mutante. A tarefa � fazer com que a amostra de mutante Douba como eu disse. Acho que vai demorar muito tempo para obter a amostra, porque voc� tem a pesquisa de campo grande. Obrigado ..",52,"O que � isso? � este o exemplo? O que � esta planta na terra?"


	elseif req == 52 then
		AddSwitchCount(cnum, 318, 1)
		StartQuest(cnum, 144)
		return 1,0,"Oh ~ Isso � o exemplo de um monstro mutante. � mesmo que Monser normal � primeira vista. Bem, os pesquisadores v�o lidar com eles. Obrigado. Aqui est� o item em recompensa. Estes s�o os Hench e da experi�ncia. Da pr�xima vez eu vou contat�-lo novamente."





	elseif req == 62 then
		if GetItemCount(cnum, 4436, 0) < 1 then
			return 1,0,"erro"

		else
			AddSwitchCount(cnum, 319, 1)
			AddHench(cnum, 29, 1)
			AddHeroExp(cnum, 8100)
			AddItemCount(cnum, 4436, -1)
			EndQuest(cnum, 144)
			return 1,0,"Ei, voc� olha como turista ou explorador. Quer dar-me um favor?"

		end

	else
		return 1,0,"O que posso fazer por voc�?"

	end
end