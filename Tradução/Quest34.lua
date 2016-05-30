function NPC_QUEST_256(cnum, reqNumber)

req = reqNumber

GetSkill4 = GetSkillMaxLevel(4)
GetSkill6 = GetSkillMaxLevel(6)
GetSkill8 = GetSkillMaxLevel(8)
GetSkill23 = GetSkillMaxLevel(23)
GetSkill25 = GetSkillMaxLevel(25)



GetSkillMoney9   = GetSkillLarningGold(9)
GetSkillMoney10 = GetSkillLarningGold(10)
GetSkillMoney11 = GetSkillLarningGold(11)
GetSkillMoney12 = GetSkillLarningGold(12)
GetSkillMoney13 = GetSkillLarningGold(13)
GetSkillMoney30 = GetSkillLarningGold(30)
GetSkillMoney31 = GetSkillLarningGold(31)



	if req == 1 then
		return 3,0,"Ah, meu, você deve ser o escolhido para vir até aqui. Eu sou um espelho criado pelo Grande Rei Jove. Eu fui criado para ensinar habilidades secundárias a alta Mixmasters classificados.",2,"habilidade secundária?",3,"Eu sou alto classificados!"

	elseif req == 2 then
		return 4,0,"habilidade secundária é um conhecimento atualizado da habilidade primária. A habilidade são mais poderosos e algumas podem afetar alvos múltiplos. Secundárias são muito difíceis. Você não pode aprendê-las durante a noite",12,"Quais são as competências?",13,"exigência de aprendizagem?",1,"volta"

	elseif req == 3 then
		return 9,0,"Que habilidade você está interessado em MixMaster jovens?",22,"Holy Fire",23,"Healing Wave",24,"Shock Wave",25,"Power Deter",26,"Força da Gravidade",27,"Limpeza das ondas",28,"Choque Poison",1,"volta"

--½ºÅ³ ¼³¸í ºÎºÐ

	elseif req == 12 then
		return 2,0,"Eu vejo você, você gosta da idéia de Skill Secundário? Posso ensinar-lhe Fogo Sagrado, Healing Wave, onda de choque como uma habilidade área. Além disso, há uma Deter Poder e Força da Gravidade como uma habilidade alvo solo.",2,"de volta."

	elseif req == 13 then
		return 2,0,"Para aprender as habilidades da classe secundária, você deve dominar as habilidades primárias em primeiro lugar.",2,"de volta."



--½ºÅ³ Àû¿ë ºÎºÐ

--È¦¸® ÆÄÀÌ¾î
	elseif req == 22 then
		return 4,0,"Holy Fire é uma habilidade que ataca com a convocação do fogo deadlist dos Céus. Ele ataca tudo o que está ao redor do alvo selecionado. Gostaria de saber Fogo Sagrado? GP precisava aprender Holy Fire é "..GetSkillMoney13..".",202,"Sim",203,"Não",3,"volta"

	elseif req == 202 then
		learn = LearnSkill(cnum, 13)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Eu sou um jovem desculpe, você deve dominar Fire Breath antes de eu te ensinar isso. A complexidade vai quebrar você em pedaços.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você deve dominar o bafo de fogo para o "..GetSkill8.." aprender Holy Fire meu jovem aprendiz.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney13..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido a habilidade."

		else
			return 0
		end



	elseif req == 203 then
		return 1,0,"Escolha sabiamente MixMaster jovens."

		
--Èú¸µ ¿þÀÌºê
	elseif req == 23 then
		return 4,0,"Healing Wave é uma habilidade que faz toda a área do Heros e Henches recuperar a sua energia física em uma determinada área. Gostaria de saber Healing Wave? GP precisava aprender é "..GetSkillMoney12..".",212,"Sim",213,"Não",3,"volta"

	elseif req == 212 then
		learn = LearnSkill(cnum, 12)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"A cura é necessário para aprender uma onda de Cura.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você precisa aumentar a capacidade de Cura "..GetSkill6.." para aprender uma onda de Cura.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney12..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido a habilidade."

		else
			return 0

		end

	elseif req == 213 then
		return 1,0,"Escolha sabiamente MixMaster jovens."



--¼îÅ© ½ºÅÏ
	elseif req == 24 then
		return 4,0,"Shock Wave é uma habilidade grande área, que faz com que todos dentro de uma área-alvo, fraco por algum tempo. É uma habilidade muito poderosa quando cercado por inimigos. Gostaria de aprender uma habilidade shork popa? GP necessário para aprender esta habilidade é "..GetSkillMoney11..".",222,"Sim",223,"Não",3,"volta"

	elseif req == 222 then
		learn = LearnSkill(cnum, 11)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Stun é necessário para aprender uma onda de choque.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você deve aumentar a habilidade de Stun "..GetSkill4.." para aprender uma onda de choque.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney11..".",3,"volta"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido a habilidade."
		else
			return 0

		end			


	elseif req == 223 then
		return 1,0,"Escolha sabiamente MixMaster jovens."



--½ºÇÇ¸´ À§Å«
	elseif req == 25 then
		return 4,0,"Power Deter é uma habilidade que dá dano em um adversário e atrasa o oponente ao mesmo tempo. Você precisa dominar Dodge, Strike, drenagem e protetor antes de aprender Power Deter. Gostaria de saber Power Deter? GP precisava aprender é "..GetSkillMoney9..".",232,"Sim",233,"Não",3,"volta"

	elseif req == 232 then
		learn = LearnSkill(cnum, 9)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Você precisa dominar Dodge, Strike, Strike, Drenagem e Proteção de aprender uma Deter Power.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você precisa dominar Dodge, Strike, Strike, Drenagem e Proteção para aprender o Deter Power.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney9..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido a habilidade."
		else 
			return 0
		end


	elseif req == 233 then
		return 1,0,"Escolha sabiamente MixMaster jovens."


--½½·Î¿ì Æ÷½º
	elseif req == 26 then
		return 4,0,"Gravidade é uma habilidade que dá dano a um oponente e retarda. Você precisa dominar Dodge, Strike, Drenagem e Proteção para aprender Força da Gravidade. Gostaria de saber da gravidade da Força? GP precisava aprender Gravidade é "..GetSkillMoney10..".",242,"Sim",243,"Não",3,"volta"
		
	elseif req == 242 then

		learn = LearnSkill(cnum, 10)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Você precisa dominar Dodge, Strike, Drenagem e Proteção para aprender Força da Gravidade.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você precisa dominar Dodge, Strike, Drenagem e Proteção para aprender Força da Gravidade. .",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney10..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido a habilidade."
		else
			return 0
		end


	elseif req == 243 then
		return 1,0,"Escolha sabiamente MixMaster jovens."


--Å¬¸°Â¡ ¿þÀÌºê
	elseif req == 27 then
		return 4,0,"A limpeza das ondas é uma habilidade de longo alcance que desintoxicar um herói e membros ao redor. Gostaria de saber de limpeza Wave? GP necessário para aprender esta habilidade é "..GetSkillMoney30..".",252,"Sim",253,"Não",3,"volta"

	elseif req == 252 then
		learn = LearnSkill(cnum, 30)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Você precisa aprender a habilidade Purify limpeza Wave.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você deve atualizar habilidade Purify até "..GetSkill25.." aprender limpeza Wave.",3,"Voltar"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney10..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Você tem aprendido a habilidade."
		else
			return 0

		end			


	elseif req == 253 then
		return 1,0,"Escolha sabiamente MixMaster jovens."


--Æ÷ÀÌÁð ¼îÅ©
	elseif req == 28 then
		return 4,0,"Choque Poison é uma habilidade de longo alcance que atacar um inimigo e monstros por aí com veneno. Gostaria de saber Choque veneno? GP precisava aprender é "..GetSkillMoney31.."",262,"Sim",263,"Não",3,"Voltar"

	elseif req == 262 then
		learn = LearnSkill(cnum, 31)

		if learn == 1 then
			return 2,0,"Você já aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"Número habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Você precisará de habilidade para aprender Choque Poison Poison.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Você deve atualizar habilidade Poison até "..GetSkill23.." Choque de aprender Poison.",3,"Voltar"

		elseif learn == 5 then
			return 2,0,"GP é insuficiente. GP que é necessário para aprender uma habilidade é "..GetSkillMoney31..".",3,"Voltar"

		elseif learn == 0 then

			return 1,0,"Você tem aprendido a habilidade."
		else
			return 0

		end			


	elseif req == 263 then
		return 1,0,"Por favor, tome uma decisão depois de pensar muito."


	else
		return 1,0,"Mensagem Erorr"
	end
end