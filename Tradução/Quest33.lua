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
		return 3,0,"Primeiro n�vel de habilidade inclui rodeio, Contador e Shield como habilidades de defesa, Fire Breath, Drain, Poison e Blaze como habilidades delito e Stun, Strike, cura, purifica, Slow, Freeze, zelo ea pressa, compet�ncias Magic.",52,"Qual � a capacidade de aprendizagem?",53,"capacidade de aprendizagem"

	



	elseif req == 52 then
		return 5,0,"As habilidades s�o um aspecto importante para MixMaster. Habilidades de uso de MP e vai ajudar o seu caminho para se tornar o melhor MixMaster.",62,"1. Aprender Skills",63,"2. Aquisi��o de compet�ncias",64,"3. Usando as habilidades",1,"volta"

	elseif req == 53 then
		return 5,0,"Por favor, selecione a habilidade",72,"habilidade de defesa",73,"habilidade Offese",74,"skill Magic",1,"volta"


-- ��ų ���� �κ�

	elseif req == 62 then
		return 2,0,"N�o MixMaster, como eles s�o grandes n�o sei todas as habilidades, a menos que use o meu apoio. Diga o que voc� gostaria de aprender e voc� deve sacriface um GPS poucos",52,"volta"

	elseif req == 63 then
		return 2,0,"S� por sacrifacing algum dinheiro n�o permitem que voc� usar as habilidades. Voc� precisa ganhar pontos de SP, que receber� quando o n�vel de her�is sobe. Voc� pode verificar o SP na janela de habilidade.",52,"volta"

	elseif req == 64 then
		return 2,0,"Voc� pode usar a habilidade contra o seu advers�rio usando MP. Seu corpo n�o pode usar a habilidade consecutivamente embora. Sua mente deve ter um descanso ap�s o uso de habilidades. Voc� pode usar a habilidade de selecionar a habilidade com o bot�o direito do mouse e clique no alvo.",52,"volta"



	
--��ų �н� �κ�

	elseif req == 72 then
		return 5,0,"Escolha a habilidade que voc� quer aprender",82,"1. Esquivar",83,"2. Counter",84,"3. Escudo",53,"volta"

	elseif req == 73 then
		return 6,0,"Escolha a habilidade que voc� quer aprender",92,"1. Fire Breath",93,"2. Dreno",94,"3. Veneno",95,"4. Labareda",53,"volta"

	elseif req == 74 then
		return 10,0,"Escolha a habilidade que voc� quer aprender",102,"1. Atordoar",103,"2. Strike",104,"3. Cura",105,"4. Purificar",106,"5. Slow",107,"6. Congelar",108,"7. Zelo",109,"8. Pressa",53,"volta"



--����� ��ų


--����
	elseif req == 82 then
		return 4,0,"Voc� selecionou a habilidade Dodge.",120,"explica��o habilidade",121,"capacidade de aprendizagem",72,"volta"

--ī����
	elseif req == 83 then
		return 4,0,"Voc� selecionou a habilidade Counter.",130,"explica��o habilidade",131,"capacidade de aprendizagem",72,"volta"

--�ǵ�
	elseif req == 84 then
		return 4,0,"Voc� selecionou a skill Shield.",140,"explica��o habilidade",141,"capacidade de aprendizagem",72,"volta"





--������ ��ų

--�귡��
	elseif req == 92 then
		return 4,0,"Voc� selecionou a habilidade Fire Breath.",150,"explica��o habilidade",151,"capacidade de aprendizagem",73,"volta"

--������
	elseif req == 93 then
		return 4,0,"Voc� selecionou a habilidade Drain.",160,"explica��o habilidade",161,"capacidade de aprendizagem",73,"volta"

--������
	elseif req == 94 then
		return 4,0,"Voc� selecionou a habilidade Poison.",310,"explica��o habilidade",311,"capacidade de aprendizagem",73,"volta"

--������
	elseif req == 95 then
		return 4,0,"Voc� selecionou a habilidade Blaze.",320,"explica��o habilidade",321,"capacidade de aprendizagem",73,"volta"




--������

--����
	elseif req == 102 then
		return 4,0,"Voc� selecionou a habilidade Stun.",170,"explica��o habilidade",171,"capacidade de aprendizagem",74,"volta"

--��Ʈ����ũ
	elseif req == 103 then
		return 4,0,"Voc� selecionou a habilidade Strike.",180,"explica��o habilidade",181,"capacidade de aprendizagem",74,"volta"

--����
	elseif req == 104 then
		return 4,0,"Voc� selecionou a habilidade de cura.",190,"explica��o habilidade",191,"capacidade de aprendizagem",74,"volta"

--Ŭ��¡
	elseif req == 105 then
		return 4,0,"Voc� selecionou a habilidade Purify.",330,"explica��o habilidade",331,"capacidade de aprendizagem",74,"volta"

--��
	elseif req == 106 then
		return 4,0,"Voc� selecionou a habilidade lento.",340,"explica��o habilidade",341,"capacidade de aprendizagem",74,"volta"

--������
	elseif req == 107 then
		return 4,0,"Voc� selecionou a habilidade Freeze.",350,"explica��o habilidade",351,"capacidade de aprendizagem",74,"volta"

--�ν���
	elseif req == 108 then
		return 4,0,"Voc� selecionou a skill Zeal.",360,"explica��o habilidade",361,"capacidade de aprendizagem",74,"volta"

--���극��
	elseif req == 109 then
		return 4,0,"Voc� selecionou a habilidade Haste.",370,"explica��o habilidade",371,"capacidade de aprendizagem",74,"volta"



--�н��� ��ų ���� �κ�


-- ����
	elseif req == 120 then
		return 2,0,"Dodge � usado para evitar o ataque advers�rio. GP precisava aprender habilidades Dodge � "..GetSkill1..".",82,"volta"


	elseif req == 121 then
		return 4,0,"Gostaria de saber Dodge? GP precisava aprender Dodge � "..GetSkill1..".",201,"sim",202,"n�o",82,"volta"


	elseif req == 201 then

		learn = LearnSkill(cnum, 1)
	
		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",82,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",82,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill1..".",82,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem Dodge aprendido."
		else
			return 0
		end


	elseif req == 202 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--ī����
	elseif req == 130 then
		return 2,0,"contra-ataques contra automaticamente quando atacados por um advers�rio. GP precisava aprender habilidades Contador � "..GetSkill3..".",83,"volta"


	elseif req == 131 then
		return 4,0,"Gostaria de saber Strike? GP precisava aprender Contador � "..GetSkill3..".",211,"sim",212,"n�o",83,"volta"


	elseif req == 211 then

		learn = LearnSkill(cnum, 3)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",83,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",83,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill3..".",83,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem Counter aprendido."
		else
			return 0
		end

	elseif req == 212 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."



--�ǵ�
	elseif req == 140 then
		return 2,0,"Shield � uma habilidade que diminui os danos do ataque advers�rio. GP precisava aprender Shield � "..GetSkill7..".",84,"volta"


	elseif req == 141 then
		return 4,0,"Gostaria de saber Shield? GP precisava aprender Shield � "..GetSkill7..".",221,"sim",222,"n�o",84,"volta"


	elseif req == 221 then

		learn = LearnSkill(cnum, 7)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",84,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",84,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill7..".",84,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido Shield."
		else
			return 0
		end


	elseif req == 222 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--�귡��
	elseif req == 150 then
		return 2,0,"Fire Breath � uma habilidade de ataque de longa dist�ncia que atira uma bola ao alvo. GP precisava aprender skill Fire Breath � "..GetSkill8..".",92,"volta"


	elseif req == 151 then
		return 4,0,"Gostaria de saber Fire Breath? GP precisava aprender Fire Breath � "..GetSkill8..".",231,"sim",232,"n�o",92,"volta"


	elseif req == 231 then
		learn = LearnSkill(cnum, 8)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",92,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",92,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill8..".",92,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� aprendeu Fire Breath."
		else
			return 0
		end

	elseif req == 232 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--������
	elseif req == 160 then
		return 2,0,"Drain � uma habilidade que absorvem HP oponente. GP precisava aprender Drain � "..GetSkill5..".",93,"volta"


	elseif req == 161 then
		return 4,0,"Gostaria de saber de drenagem? GP precisava aprender Drain � "..GetSkill5..".",241,"sim",242,"n�o",93,"volta"


	elseif req == 241 then
		learn = LearnSkill(cnum, 5)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",93,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",93,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill5..".",93,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido Drain."
		else
			return 0
		end


	elseif req == 242 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--������
	elseif req == 310 then
		return 2,0,"Poison continuamente o jogador alvo danos em PVP por um certo tempo. GP precisava aprender habilidade Poison � "..GetSkill23..".",94,"volta"


	elseif req == 311 then
		return 4,0,"Gostaria de saber veneno? GP precisava aprender Poison � "..GetSkill23..".",401,"sim",402,"n�o",94,"volta"


	elseif req == 401 then
		learn = LearnSkill(cnum, 23)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",94,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de qualifica��o errado",94,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill23..".",94,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem veneno aprendido."
		else
			return 0
		end


	elseif req == 402 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--������
	elseif req == 320 then
		return 2,0,"Blaze continuamente o jogador alvo danos em PVP por um certo tempo. GP precisava aprender habilidades Blaze � "..GetSkill24..".",95,"volta"


	elseif req == 321 then
		return 4,0,"Gostaria de saber Blaze? GP precisava aprender Blaze � "..GetSkill24..".",411,"sim",412,"n�o",95,"volta"


	elseif req == 411 then
		learn = LearnSkill(cnum, 24)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",95,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",95,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill24..".",95,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido Blaze."
		else
			return 0
		end


	elseif req == 412 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."



--����
	elseif req == 170 then
		return 2,0,"Stun � uma habilidade que o torna o alvo desmaiar durante um certo tempo. GP precisava aprender habilidades Stun � "..GetSkill4..".",102,"volta"


	elseif req == 171 then
		return 4,0,"Gostaria de saber Stun? GP precisava aprender Stun � "..GetSkill4..".",251,"sim",252,"n�o",102,"volta"


	elseif req == 251 then

		learn = LearnSkill(cnum, 4)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",102,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",102,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill4..".",102,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem Stun aprendido."
		else
			return 0
		end

	elseif req == 252 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."



--��Ʈ����ũ
	elseif req == 180 then
		return 2,0,"Strike � uma habilidade que d� um alvo dano cr�tico. GP precisava aprender Strike � "..GetSkill2..".",103,"volta"


	elseif req == 181 then
		return 4,0,"Gostaria de saber Strike? GP precisava aprender habilidades Strike � "..GetSkill2..".",261,"sim",262,"n�o",103,"volta"


	elseif req == 261 then
		learn = LearnSkill(cnum, 2)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",103,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",103,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill2..".",103,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido Strike."
		else
			return 0
		end

	elseif req == 262 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--����
	elseif req == 190 then
		return 2,0,"A cura � uma habilidade que recupera o HP do alvo. GP precisava aprender cura � "..GetSkill6..".",104,"volta"


	elseif req == 191 then
		return 4,0,"Gostaria de saber curar? GP precisava aprender cura � "..GetSkill6..".",271,"sim",272,"n�o",104,"volta"


	elseif req == 271 then
		learn = LearnSkill(cnum, 6)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",104,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",104,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill6..".",104,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� aprendeu Cura."
		else
			return 0
		end

	elseif req == 272 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--Ŭ��¡
	elseif req == 330 then
		return 2,0,"Purificar � uma habilidade que purifica as metas de veneno. GP precisava aprender Purify � "..GetSkill25..".",105,"volta"


	elseif req == 331 then
		return 4,0,"Gostaria de saber Purify? GP precisava aprender Purify � "..GetSkill25..".",421,"sim",422,"n�o",105,"volta"


	elseif req == 421 then
		learn = LearnSkill(cnum, 25)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",105,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",105,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill25..".",105,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem Purify aprendido."
		else
			return 0
		end


	elseif req == 422 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--��
	elseif req == 340 then
		return 2,0,"Lento � uma habilidade que diminui a velocidade de movimento do alvo por um certo tempo. GP precisava aprender � lento "..GetSkill26..".",106,"volta"


	elseif req == 341 then
		return 4,0,"Voc� gostaria de aprender lento? GP precisava aprender � lento "..GetSkill26..".",431,"sim",432,"n�o",106,"volta"


	elseif req == 431 then
		learn = LearnSkill(cnum, 26)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",106,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",106,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill26..".",106,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem Slow aprendido."
		else
			return 0
		end


	elseif req == 432 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--������
	elseif req == 350 then
		return 2,0,"Freeze � uma habilidade que diminui a velocidade de ataque do alvo por um certo tempo. GP precisava aprender Freeze � "..GetSkill27..".",107,"volta"


	elseif req == 351 then
		return 4,0,"Gostaria de saber Freeze? GP precisava aprender Freeze � "..GetSkill27..".",441,"sim",442,"n�o",107,"volta"


	elseif req == 441 then
		learn = LearnSkill(cnum, 27)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",107,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",107,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill27..".",107,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido Freeze."
		else
			return 0
		end


	elseif req == 442 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--�ν���
	elseif req == 360 then
		return 2,0,"O zelo � uma habilidade que aumenta a velocidade de ataque do alvo por um certo tempo. GP precisava aprender Zeal � "..GetSkill28..".",108,"volta"


	elseif req == 361 then
		return 4,0,"Gostaria de saber zelo? GP precisava aprender Zeal � "..GetSkill28..".",451,"sim",452,"n�o",108,"volta"


	elseif req == 451 then
		learn = LearnSkill(cnum, 28)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",108,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",108,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill28..".",108,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem aprendido Zeal."
		else
			return 0
		end


	elseif req == 452 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."


--���극��
	elseif req == 370 then
		return 2,0,"�mpeto � uma habilidade que aumenta a velocidade de movimento do alvo por um certo tempo. GP precisava aprender pressa � "..GetSkill29..".",109,"volta"


	elseif req == 371 then
		return 4,0,"Gostaria de saber Haste? GP precisava aprender pressa � "..GetSkill29..".",461,"sim",462,"n�o",109,"volta"


	elseif req == 461 then
		learn = LearnSkill(cnum, 29)

		if learn == 1 then
			return 2,0,"Voc� j� aprendeu habilidade.",109,"volta"

		elseif learn == 2 then
			return 2,0,"�ndice de habilidade errada",109,"volta"
		
		elseif learn == 5 then
			return 2,0,"GP � insuficiente. GP que � necess�rio para aprender habilidades Dodge � "..GetSkill29..".",109,"volta"

		elseif learn == 0 then
			return 1,0,"Voc� tem pressa aprendeu."
		else
			return 0
		end


	elseif req == 462 then
		return 1,0,"Sim. Por favor, tome uma decis�o depois de pensar muito."



	elseif req == 502 then
		return 4,0,"Nova nove habilidades sejam adicionados. N�s preparamos o evento que voc� pode redefinir suas habilidades de forma gratuita. Ele est� dispon�vel apenas uma vez por personagem. Voc� vai para processo de inicializa��o de habilidade?",701,"Sim, eu gostaria de",702,"N�o, obrigado.",1,"volta"




		
--��ų �ʱ�ȭ �۾�		
	elseif req == 701 then	

		switch1 = GetSwitchCount(cnum, 242)

		
		if switch1 > 0 then
			return 1,0,"Voc� j� inicializado habilidade. Ele est� dispon�vel apenas uma vez."
			
		else
			skillpoint = ClearHeroSkill(cnum)			
			
			if skillpoint == 0 then
				return 1,0,"N�o h� nenhum ponto para inicializar."
			else
				AddSwitchCount(cnum, 242, 1)
				return 1,0,"Habilidade de inicializa��o foi conclu�da. Aproveite este evento."
			end
		end
	
	elseif req == 702 then
		return 1,0,"Por favor, tome uma decis�o depois de pensar muito."
			
		
	else
		return 1,0,"O processo de redefini��o de compet�ncias n�o � conclu�da normalmente."				
	end	
end
