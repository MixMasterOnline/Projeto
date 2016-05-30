function NPC_QUEST_267(cnum, reqNumber)

req = reqNumber

GetSkill1 = GetSkillLarningGold(1)
GetSkill2 = GetSkillLarningGold(2)
GetSkill3 = GetSkillLarningGold(3)
GetSkill4 = GetSkillLarningGold(4)
GetSkill5 = GetSkillLarningGold(5)
GetSkill6 = GetSkillLarningGold(6)
GetSkill7 = GetSkillLarningGold(7)
GetSkill8 = GetSkillLarningGold(8)
GetSkill23 = GetSkillLarningGold(23)
GetSkill24 = GetSkillLarningGold(24)
GetSkill25 = GetSkillLarningGold(25)
GetSkill26 = GetSkillLarningGold(26)
GetSkill27 = GetSkillLarningGold(27)
GetSkill28 = GetSkillLarningGold(28)
GetSkill29 = GetSkillLarningGold(29)


	if req == 1 then
		return 3,0,"Primeiro nível de habilidade inclui rodeio, Contador e Shield como habilidades de defesa, Fire Breath, Drain, Poison e Blaze como habilidades delito e Stun, Strike, cura, purifica, Slow, Freeze, zelo ea pressa, competências Magic.",52,"Qual é a capacidade de aprendizagem?",53,"capacidade de aprendizagem"

	



	elseif req == 52 then
		return 5,0,"As habilidades são um aspecto importante para MixMaster. Habilidades de uso de MP e vai ajudar o seu caminho para se tornar o melhor MixMaster.",62,"1. Aprender Skills",63,"2. Aquisição de competências",64,"3. Usando as habilidades",1,"volta"

	elseif req == 53 then
		return 5,0,"Por favor, selecione a habilidade",72,"habilidade de defesa",73,"habilidade Offese",74,"skill Magic",1,"volta"


-- ½ºÅ³ ¼³¸í ºÎºÐ

	elseif req == 62 then
		return 2,0,"Não MixMaster, como eles são grandes não sei todas as habilidades, a menos que use o meu apoio. Diga o que você gostaria de aprender e você deve sacriface um GPS poucos",52,"volta"

	elseif req == 63 then
		return 2,0,"Só por sacrifacing algum dinheiro não permitem que você usar as habilidades. Você precisa ganhar pontos de SP, que receberá quando o nível de heróis sobe. Você pode verificar o SP na janela de habilidade.",52,"volta"

	elseif req == 64 then
		return 2,0,"Você pode usar a habilidade contra o seu adversário usando MP. Seu corpo não pode usar a habilidade consecutivamente embora. Sua mente deve ter um descanso após o uso de habilidades. Você pode usar a habilidade de selecionar a habilidade com o botão direito do mouse e clique no alvo.",52,"volta"



	
--½ºÅ³ ÇÐ½À ºÎºÐ

	elseif req == 72 then
		return 5,0,"Escolha a habilidade que você quer aprender",82,"1. Esquivar",83,"2. Counter",84,"3. Escudo",53,"volta"

	elseif req == 73 then
		return 6,0,"Escolha a habilidade que você quer aprender",92,"1. Fire Breath",93,"2. Dreno",94,"3. Veneno",95,"4. Labareda",53,"volta"

	elseif req == 74 then
		return 10,0,"Escolha a habilidade que você quer aprender",102,"1. Atordoar",103,"2. Strike",104,"3. Cura",105,"4. Purificar",106,"5. Slow",107,"6. Congelar",108,"7. Zelo",109,"8. Pressa",53,"volta"



--¹æ¾îÇü ½ºÅ³


--´åÁö
	elseif req == 82 then
		return 4,0,"Você selecionou a habilidade Dodge.",120,"explicação habilidade",121,"capacidade de aprendizagem",72,"volta"

--Ä«¿îÅÍ
	elseif req == 83 then
		return 4,0,"Você selecionou a habilidade Counter.",130,"explicação habilidade",131,"capacidade de aprendizagem",72,"volta"

--½Çµå
	elseif req == 84 then
		return 4,0,"Você selecionou a skill Shield.",140,"explicação habilidade",141,"capacidade de aprendizagem",72,"volta"





--°ø°ÝÇü ½ºÅ³

--ºê·¡½º
	elseif req == 92 then
		return 4,0,"Você selecionou a habilidade Fire Breath.",150,"explicação habilidade",151,"capacidade de aprendizagem",73,"volta"

--½º³»ÃÄ
	elseif req == 93 then
		return 4,0,"Você selecionou a habilidade Drain.",160,"explicação habilidade",161,"capacidade de aprendizagem",73,"volta"

--Æ÷ÀÌÁð
	elseif req == 94 then
		return 4,0,"Você selecionou a habilidade Poison.",310,"explicação habilidade",311,"capacidade de aprendizagem",73,"volta"

--ºí·¹ÀÌÁî
	elseif req == 95 then
		return 4,0,"Você selecionou a habilidade Blaze.",320,"explicação habilidade",321,"capacidade de aprendizagem",73,"volta"




--¸¶¹ýÇü

--½ºÅÏ
	elseif req == 102 then
		return 4,0,"Você selecionou a habilidade Stun.",170,"explicação habilidade",171,"capacidade de aprendizagem",74,"volta"

--½ºÆ®¶óÀÌÅ©
	elseif req == 103 then
		return 4,0,"Você selecionou a habilidade Strike.",180,"explicação habilidade",181,"capacidade de aprendizagem",74,"volta"

--Èú¸µ
	elseif req == 104 then
		return 4,0,"Você selecionou a habilidade de cura.",190,"explicação habilidade",191,"capacidade de aprendizagem",74,"volta"

--Å¬¸°Â¡
	elseif req == 105 then
		return 4,0,"Você selecionou a habilidade Purify.",330,"explicação habilidade",331,"capacidade de aprendizagem",74,"volta"

--½ð
	elseif req == 106 then
		return 4,0,"Você selecionou a habilidade lento.",340,"explicação habilidade",341,"capacidade de aprendizagem",74,"volta"

--ÇÁ¸®Áî
	elseif req == 107 then
		return 4,0,"Você selecionou a habilidade Freeze.",350,"explicação habilidade",351,"capacidade de aprendizagem",74,"volta"

--ºÎ½ºÅÍ
	elseif req == 108 then
		return 4,0,"Você selecionou a skill Zeal.",360,"explicação habilidade",361,"capacidade de aprendizagem",74,"volta"

--¹«ºê·¹½º
	elseif req == 109 then
		return 4,0,"Você selecionou a habilidade Haste.",370,"explicação habilidade",371,"capacidade de aprendizagem",74,"volta"



--ÇÐ½ÀÇÑ ½ºÅ³ Àû¿ë ºÎºÐ


-- ´åÁö
	elseif req == 120 then
		return 2,0,"Dodge é usado para evitar o ataque adversário. GP precisava aprender habilidades Dodge é "..GetSkill1..".",82,"volta"


	elseif req == 121 then
		return 4,0,"Gostaria de saber Dodge? GP precisava aprender Dodge é "..GetSkill1..".",201,"sim",202,"não",82,"volta"


	elseif req == 201 then

		learn = LearnSkill(cnum, 1)
	
		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",82,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",82,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill1..".",82,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem Dodge aprendido."
		else
			return 0
		end


	elseif req == 202 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--Ä«¿îÅÍ
	elseif req == 130 then
		return 2,0,"contra-ataques contra automaticamente quando atacados por um adversário. GP precisava aprender habilidades Contador é "..GetSkill3..".",83,"volta"


	elseif req == 131 then
		return 4,0,"Gostaria de saber Strike? GP precisava aprender Contador é "..GetSkill3..".",211,"sim",212,"não",83,"volta"


	elseif req == 211 then

		learn = LearnSkill(cnum, 3)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",83,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",83,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill3..".",83,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem Counter aprendido."
		else
			return 0
		end

	elseif req == 212 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."



--½Çµå
	elseif req == 140 then
		return 2,0,"Shield é uma habilidade que diminui os danos do ataque adversário. GP precisava aprender Shield é "..GetSkill7..".",84,"volta"


	elseif req == 141 then
		return 4,0,"Gostaria de saber Shield? GP precisava aprender Shield é "..GetSkill7..".",221,"sim",222,"não",84,"volta"


	elseif req == 221 then

		learn = LearnSkill(cnum, 7)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",84,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",84,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill7..".",84,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido Shield."
		else
			return 0
		end


	elseif req == 222 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--ºê·¡½º
	elseif req == 150 then
		return 2,0,"Fire Breath é uma habilidade de ataque de longa distância que atira uma bola ao alvo. GP precisava aprender skill Fire Breath é "..GetSkill8..".",92,"volta"


	elseif req == 151 then
		return 4,0,"Gostaria de saber Fire Breath? GP precisava aprender Fire Breath é "..GetSkill8..".",231,"sim",232,"não",92,"volta"


	elseif req == 231 then
		learn = LearnSkill(cnum, 8)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",92,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",92,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill8..".",92,"volta"

		elseif learn == 0 then
			return 1,0,"Você aprendeu Fire Breath."
		else
			return 0
		end

	elseif req == 232 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--½º³»ÃÄ
	elseif req == 160 then
		return 2,0,"Drain é uma habilidade que absorvem HP oponente. GP precisava aprender Drain é "..GetSkill5..".",93,"volta"


	elseif req == 161 then
		return 4,0,"Gostaria de saber de drenagem? GP precisava aprender Drain é "..GetSkill5..".",241,"sim",242,"não",93,"volta"


	elseif req == 241 then
		learn = LearnSkill(cnum, 5)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",93,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",93,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill5..".",93,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido Drain."
		else
			return 0
		end


	elseif req == 242 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--Æ÷ÀÌÁð
	elseif req == 310 then
		return 2,0,"Poison continuamente o jogador alvo danos em PVP por um certo tempo. GP precisava aprender habilidade Poison é "..GetSkill23..".",94,"volta"


	elseif req == 311 then
		return 4,0,"Gostaria de saber veneno? GP precisava aprender Poison é "..GetSkill23..".",401,"sim",402,"não",94,"volta"


	elseif req == 401 then
		learn = LearnSkill(cnum, 23)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",94,"volta"

		elseif learn == 2 then
			return 2,0,"Índice de qualificação errado",94,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill23..".",94,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem veneno aprendido."
		else
			return 0
		end


	elseif req == 402 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--ºí·¹ÀÌÁî
	elseif req == 320 then
		return 2,0,"Blaze continuamente o jogador alvo danos em PVP por um certo tempo. GP precisava aprender habilidades Blaze é "..GetSkill24..".",95,"volta"


	elseif req == 321 then
		return 4,0,"Gostaria de saber Blaze? GP precisava aprender Blaze é "..GetSkill24..".",411,"sim",412,"não",95,"volta"


	elseif req == 411 then
		learn = LearnSkill(cnum, 24)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",95,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",95,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill24..".",95,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido Blaze."
		else
			return 0
		end


	elseif req == 412 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."



--½ºÅÏ
	elseif req == 170 then
		return 2,0,"Stun é uma habilidade que o torna o alvo desmaiar durante um certo tempo. GP precisava aprender habilidades Stun é "..GetSkill4..".",102,"volta"


	elseif req == 171 then
		return 4,0,"Gostaria de saber Stun? GP precisava aprender Stun é "..GetSkill4..".",251,"sim",252,"não",102,"volta"


	elseif req == 251 then

		learn = LearnSkill(cnum, 4)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",102,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",102,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill4..".",102,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem Stun aprendido."
		else
			return 0
		end

	elseif req == 252 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."



--½ºÆ®¶óÀÌÅ©
	elseif req == 180 then
		return 2,0,"Strike é uma habilidade que dá um alvo dano crítico. GP precisava aprender Strike é "..GetSkill2..".",103,"volta"


	elseif req == 181 then
		return 4,0,"Gostaria de saber Strike? GP precisava aprender habilidades Strike é "..GetSkill2..".",261,"sim",262,"não",103,"volta"


	elseif req == 261 then
		learn = LearnSkill(cnum, 2)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",103,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",103,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill2..".",103,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido Strike."
		else
			return 0
		end

	elseif req == 262 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--Èú¸µ
	elseif req == 190 then
		return 2,0,"A cura é uma habilidade que recupera o HP do alvo. GP precisava aprender cura é "..GetSkill6..".",104,"volta"


	elseif req == 191 then
		return 4,0,"Gostaria de saber curar? GP precisava aprender cura é "..GetSkill6..".",271,"sim",272,"não",104,"volta"


	elseif req == 271 then
		learn = LearnSkill(cnum, 6)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",104,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",104,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill6..".",104,"volta"

		elseif learn == 0 then
			return 1,0,"Você aprendeu Cura."
		else
			return 0
		end

	elseif req == 272 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--Å¬¸°Â¡
	elseif req == 330 then
		return 2,0,"Purificar é uma habilidade que purifica as metas de veneno. GP precisava aprender Purify é "..GetSkill25..".",105,"volta"


	elseif req == 331 then
		return 4,0,"Gostaria de saber Purify? GP precisava aprender Purify é "..GetSkill25..".",421,"sim",422,"não",105,"volta"


	elseif req == 421 then
		learn = LearnSkill(cnum, 25)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",105,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",105,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill25..".",105,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem Purify aprendido."
		else
			return 0
		end


	elseif req == 422 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--½ð
	elseif req == 340 then
		return 2,0,"Lento é uma habilidade que diminui a velocidade de movimento do alvo por um certo tempo. GP precisava aprender é lento "..GetSkill26..".",106,"volta"


	elseif req == 341 then
		return 4,0,"Você gostaria de aprender lento? GP precisava aprender é lento "..GetSkill26..".",431,"sim",432,"não",106,"volta"


	elseif req == 431 then
		learn = LearnSkill(cnum, 26)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",106,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",106,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill26..".",106,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem Slow aprendido."
		else
			return 0
		end


	elseif req == 432 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--ÇÁ¸®Áî
	elseif req == 350 then
		return 2,0,"Freeze é uma habilidade que diminui a velocidade de ataque do alvo por um certo tempo. GP precisava aprender Freeze é "..GetSkill27..".",107,"volta"


	elseif req == 351 then
		return 4,0,"Gostaria de saber Freeze? GP precisava aprender Freeze é "..GetSkill27..".",441,"sim",442,"não",107,"volta"


	elseif req == 441 then
		learn = LearnSkill(cnum, 27)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",107,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",107,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill27..".",107,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido Freeze."
		else
			return 0
		end


	elseif req == 442 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--ºÎ½ºÅÍ
	elseif req == 360 then
		return 2,0,"O zelo é uma habilidade que aumenta a velocidade de ataque do alvo por um certo tempo. GP precisava aprender Zeal é "..GetSkill28..".",108,"volta"


	elseif req == 361 then
		return 4,0,"Gostaria de saber zelo? GP precisava aprender Zeal é "..GetSkill28..".",451,"sim",452,"não",108,"volta"


	elseif req == 451 then
		learn = LearnSkill(cnum, 28)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",108,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",108,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill28..".",108,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido Zeal."
		else
			return 0
		end


	elseif req == 452 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."


--¹«ºê·¹½º
	elseif req == 370 then
		return 2,0,"Ímpeto é uma habilidade que aumenta a velocidade de movimento do alvo por um certo tempo. GP precisava aprender pressa é "..GetSkill29..".",109,"volta"


	elseif req == 371 then
		return 4,0,"Gostaria de saber Haste? GP precisava aprender pressa é "..GetSkill29..".",461,"sim",462,"não",109,"volta"


	elseif req == 461 then
		learn = LearnSkill(cnum, 29)

		if learn == 1 then
			return 2,0,"Você já aprendeu habilidade.",109,"volta"

		elseif learn == 2 then
			return 2,0,"índice de habilidade errada",109,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender habilidades Dodge é "..GetSkill29..".",109,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem pressa aprendeu."
		else
			return 0
		end


	elseif req == 462 then
		return 1,0,"Sim. Por favor, tome uma decisão depois de pensar muito."



	elseif req == 502 then
		return 4,0,"Nova nove habilidades sejam adicionados. Nós preparamos o evento que você pode redefinir suas habilidades de forma gratuita. Ele está disponível apenas uma vez por personagem. Você vai para processo de inicialização de habilidade?",701,"Sim, eu gostaria de",702,"Não, obrigado.",1,"volta"




		
--½ºÅ³ ÃÊ±âÈ­ ÀÛ¾÷		
	elseif req == 701 then	

		switch1 = GetSwitchCount(cnum, 242)

		
		if switch1 > 0 then
			return 1,0,"Você já inicializado habilidade. Ele está disponível apenas uma vez."
			
		else
			skillpoint = ClearHeroSkill(cnum)			
			
			if skillpoint == 0 then
				return 1,0,"Não há nenhum ponto para inicializar."
			else
				AddSwitchCount(cnum, 242, 1)
				return 1,0,"Habilidade de inicialização foi concluída. Aproveite este evento."
			end
		end
	
	elseif req == 702 then
		return 1,0,"Por favor, tome uma decisão depois de pensar muito."
			
		
	else
		return 1,0,"O processo de redefinição de competências não é concluída normalmente."				
	end	
end
