function NPC_QUEST_210(cnum,reqNumber) -- ������Ÿ ��� ����

local req, id1, id2, id3,count1,count2,count3
local req = reqNumber
local resultmsg,name1,name2,name3
id1=354
id2=355
id3=356
name1="origem do som"
name2="continuidade da vibra��o"
name3="som do vento"


count1 = GetItemCount(cnum,354,0)

if count1 == 0 then
	resultmsg = name1
end

count2 = GetItemCount(cnum,355,0)

if count2 == 0 then
	if resultmsg == nil then
		resultmsg = name2
	else
		resultmsg = resultmsg..","..name2
	end
end

count3 = GetItemCount(cnum, 356,0)

if count3 == 0 then
	if resultmsg == nil then
		resultmsg = name3
	else
		resultmsg = resultmsg..", "..name3
	end
end
	
	
	if req == 1 then
		if GetSwitchCount(cnum, 1000) < 1 then
			return 2,0,"A �rvore da Propaga��o est� ficando mais fraca. Ela tem poderes especiais para enfraquecer monstros. Ent�o, o poder dos monstros est�o a aumentar todos os dias. Voc� conhece algu�m que possa resolver esse problema?! ",2,"Eu vou te ajudar! "
		else
			if GetSwitchCount(cnum, 7) < 1 then
				return 2,0,"Voc� obt�m todas as contas? Se voc� esqueceu os itens, voc� pode verific�-lo na guia \"busca\" na parte inferior direita ",12,"sim"
			else
				return 1,0,"Voc� tem todas as esferas da �rvore, agora, encontrar a �rvore da Propaga��o n oriental Mekrita Litoral (X: 169, Y: 169). "
			end	
				
		end

	elseif req == 2 then
		return 2,0,"N�o, n�o seja rid�culo, olhar para si mesmo. Ok, eu vou lhe contar a hist�ria e voc� pode pass�-lo. H� muito tempo atr�s, eu encontrei um livro, quando eu estava viajando. O t�tulo do livro foi 'O Segredo do Crescimento. Enquanto eu estava lendo esse livro, eu encontrei um incr�vel segredo! ",3,"Qual � o segredo? "

	elseif req == 3 then
		return 2,0,"Um dos senten�a foi bastante interessante, ele diz: Eu tenho conseguido domestica��o, e agora voc� pode fazer monstros crescer rapidamente. Eu sou suspeita a este escritor tamb�m atacou a �rvore de propaga��o. ",4,"Uau. Isso � assustador. "

	elseif req == 4 then
		return 2,0,"Exatamente! Se n�o fizermos nada, estaremos cercados por muitos monstros. Eu n�o vou dizer-lhe para me ajudar, mas por favor, encontrar algu�m para me ajudar? ",5,"Eu vou te ajudar! "

	elseif req == 5 then
		return 2,0,"Deus, voc� � persistente. Ok eu vou test�-lo. Primeiro, v� e coletar esferas de xixi, e Manglock Metalocks. Depois de recolhidas estas contas, traz�-los para mim. Ah, eu espero n�o estar a cometer um erro, arriscando a sua seguran�a ",6,"Eu vou encontr�-los agora. "

	elseif req == 6 then
		StartQuest(cnum, 1)
		AddSwitchCount(cnum, 1000, 1)
		return 1,0,"Ah bom, voc� ainda est� vivo. Eu nunca vou lembr�-lo para ir e matar, fazer xixi, e Manglock Metalocks. "



	elseif req == 12 then
		if resultmsg ~= nil then
			return 1,0,"Voc� n�o pode me enganar assim. N�o h�..resultmsg.."
		else
			if GetSwitchCount(cnum, 7) < 1 then
				AddSwitchCount(cnum, 7, 1)
				AddSwitchCount(cnum, 8, 1)
				AddMoney(cnum, 3000)
				EndQuest(cnum, 1)
			end

			return 1,0,"Oh meu deus. Voc�s s�o incr�veis! Voc� tem coletado todos os tr�s contas. Eu n�o posso acreditar nisso. Muitos soldados n�o conseguiram fazer isso. Eu tenho f� em voc� agora, v� e fale com a �rvore da propaga��o que est� no leste Mekrita Litoral (X: 169, Y: 169). As contas lhe permitir� comunicar-se com a �rvore. Ooh! Vou dar-lhe algum dinheiro. Para ajudar voc� e um sinal de desculpas por n�o confiar em voc�! "
		end
	else
		return 0
	end
end
	
	
