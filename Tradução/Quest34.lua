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
		return 3,0,"Ah, meu, voc� deve ser o escolhido para vir at� aqui. Eu sou um espelho criado pelo Grande Rei Jove. Eu fui criado para ensinar habilidades secund�rias a alta Mixmasters classificados.",2,"habilidade secund�ria?",3,"Eu sou alto classificados!"

	elseif req == 2 then
		return 4,0,"habilidade secund�ria � um conhecimento atualizado da habilidade prim�ria. A habilidade s�o mais poderosos e algumas podem afetar alvos m�ltiplos. Secund�rias s�o muito dif�ceis. Voc� n�o pode aprend�-las durante a noite",12,"Quais s�o as compet�ncias?",13,"exig�ncia de aprendizagem?",1,"volta"

	elseif req == 3 then
		return 9,0,"Que habilidade voc� est� interessado em MixMaster jovens?",22,"Holy Fire",23,"Healing Wave",24,"Shock Wave",25,"Power Deter",26,"For�a da Gravidade",27,"Limpeza das ondas",28,"Choque Poison",1,"volta"

--��ų ���� �κ�

	elseif req == 12 then
		return 2,0,"Eu vejo voc�, voc� gosta da id�ia de Skill Secund�rio? Posso ensinar-lhe Fogo Sagrado, Healing Wave, onda de choque como uma habilidade �rea. Al�m disso, h� uma Deter Poder e For�a da Gravidade como uma habilidade alvo solo.",2,"de volta."

	elseif req == 13 then
		return 2,0,"Para aprender as habilidades da classe secund�ria, voc� deve dominar as habilidades prim�rias em primeiro lugar.",2,"de volta."



--��ų ���� �κ�

--Ȧ�� ���̾�
	elseif req == 22 then
		return 4,0,"Holy Fire � uma habilidade que ataca com a convoca��o do fogo deadlist dos C�us. Ele ataca tudo o que est� ao redor do alvo selecionado. Gostaria de saber Fogo Sagrado? GP precisava aprender Holy Fire � "..GetSkillMoney13..".",202,"Sim",203,"N�o",3,"volta"

	elseif req == 202 then
		learn = LearnSkill(cnum, 13)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Eu sou um jovem desculpe, voc� deve dominar Fire Breath antes de eu te ensinar isso. A complexidade vai quebrar voc� em peda�os.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� deve dominar o bafo de fogo para o "..GetSkill8.." aprender Holy Fire meu jovem aprendiz.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney13..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido a habilidade."

		else
			return 0
		end



	elseif req == 203 then
		return 1,0,"Escolha sabiamente MixMaster jovens."

		
--���� ���̺�
	elseif req == 23 then
		return 4,0,"Healing Wave � uma habilidade que faz toda a �rea do Heros e Henches recuperar a sua energia f�sica em uma determinada �rea. Gostaria de saber Healing Wave? GP precisava aprender � "..GetSkillMoney12..".",212,"Sim",213,"N�o",3,"volta"

	elseif req == 212 then
		learn = LearnSkill(cnum, 12)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"A cura � necess�rio para aprender uma onda de Cura.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� precisa aumentar a capacidade de Cura "..GetSkill6.." para aprender uma onda de Cura.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney12..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido a habilidade."

		else
			return 0

		end

	elseif req == 213 then
		return 1,0,"Escolha sabiamente MixMaster jovens."



--��ũ ����
	elseif req == 24 then
		return 4,0,"Shock Wave � uma habilidade grande �rea, que faz com que todos dentro de uma �rea-alvo, fraco por algum tempo. � uma habilidade muito poderosa quando cercado por inimigos. Gostaria de aprender uma habilidade shork popa? GP necess�rio para aprender esta habilidade � "..GetSkillMoney11..".",222,"Sim",223,"N�o",3,"volta"

	elseif req == 222 then
		learn = LearnSkill(cnum, 11)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Stun � necess�rio para aprender uma onda de choque.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� deve aumentar a habilidade de Stun "..GetSkill4.." para aprender uma onda de choque.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney11..".",3,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido a habilidade."
		else
			return 0

		end			


	elseif req == 223 then
		return 1,0,"Escolha sabiamente MixMaster jovens."



--���Ǹ� ��ū
	elseif req == 25 then
		return 4,0,"Power Deter � uma habilidade que d� dano em um advers�rio e atrasa o oponente ao mesmo tempo. Voc� precisa dominar Dodge, Strike, drenagem e protetor antes de aprender Power Deter. Gostaria de saber Power Deter? GP precisava aprender � "..GetSkillMoney9..".",232,"Sim",233,"N�o",3,"volta"

	elseif req == 232 then
		learn = LearnSkill(cnum, 9)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Voc� precisa dominar Dodge, Strike, Strike, Drenagem e Prote��o de aprender uma Deter Power.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� precisa dominar Dodge, Strike, Strike, Drenagem e Prote��o para aprender o Deter Power.",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney9..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido a habilidade."
		else 
			return 0
		end


	elseif req == 233 then
		return 1,0,"Escolha sabiamente MixMaster jovens."


--���ο� ����
	elseif req == 26 then
		return 4,0,"Gravidade � uma habilidade que d� dano a um oponente e retarda. Voc� precisa dominar Dodge, Strike, Drenagem e Prote��o para aprender For�a da Gravidade. Gostaria de saber da gravidade da For�a? GP precisava aprender Gravidade � "..GetSkillMoney10..".",242,"Sim",243,"N�o",3,"volta"
		
	elseif req == 242 then

		learn = LearnSkill(cnum, 10)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Voc� precisa dominar Dodge, Strike, Drenagem e Prote��o para aprender For�a da Gravidade.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� precisa dominar Dodge, Strike, Drenagem e Prote��o para aprender For�a da Gravidade. .",3,"volta"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney10..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido a habilidade."
		else
			return 0
		end


	elseif req == 243 then
		return 1,0,"Escolha sabiamente MixMaster jovens."


--Ŭ��¡ ���̺�
	elseif req == 27 then
		return 4,0,"A limpeza das ondas � uma habilidade de longo alcance que desintoxicar um her�i e membros ao redor. Gostaria de saber de limpeza Wave? GP necess�rio para aprender esta habilidade � "..GetSkillMoney30..".",252,"Sim",253,"N�o",3,"volta"

	elseif req == 252 then
		learn = LearnSkill(cnum, 30)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Voc� precisa aprender a habilidade Purify limpeza Wave.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� deve atualizar habilidade Purify at� "..GetSkill25.." aprender limpeza Wave.",3,"Voltar"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney10..".",3,"Voltar"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido a habilidade."
		else
			return 0

		end			


	elseif req == 253 then
		return 1,0,"Escolha sabiamente MixMaster jovens."


--������ ��ũ
	elseif req == 28 then
		return 4,0,"Choque Poison � uma habilidade de longo alcance que atacar um inimigo e monstros por a� com veneno. Gostaria de saber Choque veneno? GP precisava aprender � "..GetSkillMoney31.."",262,"Sim",263,"N�o",3,"Voltar"

	elseif req == 262 then
		learn = LearnSkill(cnum, 31)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu a habilidade.",3,"Voltar"

		elseif learn == 2 then
			return 2,0,"N�mero habilidade errada",3,"Voltar"

		elseif learn == 3 then
			return 2,0,"Voc� precisar� de habilidade para aprender Choque Poison Poison.",3,"volta"

		elseif learn == 4 then
			return 2,0,"Voc� deve atualizar habilidade Poison at� "..GetSkill23.." Choque de aprender Poison.",3,"Voltar"

		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender uma habilidade � "..GetSkillMoney31..".",3,"Voltar"

		elseif learn == 0 then

			return 1,0,"Voc� tem aprendido a habilidade."
		else
			return 0

		end			


	elseif req == 263 then
		return 1,0,"Por favor, tome uma decis�o depois de pensar muito."


	else
		return 1,0,"Mensagem Erorr"
	end
end