function NPC_QUEST_210(cnum,reqNumber) -- ¸¶Áö¸®Å¸ °æºñº´ µ©ºí

local req, id1, id2, id3,count1,count2,count3
local req = reqNumber
local resultmsg,name1,name2,name3
id1=354
id2=355
id3=356
name1="origem do som"
name2="continuidade da vibração"
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
			return 2,0,"A Árvore da Propagação está ficando mais fraca. Ela tem poderes especiais para enfraquecer monstros. Então, o poder dos monstros estão a aumentar todos os dias. Você conhece alguém que possa resolver esse problema?! ",2,"Eu vou te ajudar! "
		else
			if GetSwitchCount(cnum, 7) < 1 then
				return 2,0,"Você obtém todas as contas? Se você esqueceu os itens, você pode verificá-lo na guia \"busca\" na parte inferior direita ",12,"sim"
			else
				return 1,0,"Você tem todas as esferas da árvore, agora, encontrar a Árvore da Propagação n oriental Mekrita Litoral (X: 169, Y: 169). "
			end	
				
		end

	elseif req == 2 then
		return 2,0,"Não, não seja ridículo, olhar para si mesmo. Ok, eu vou lhe contar a história e você pode passá-lo. Há muito tempo atrás, eu encontrei um livro, quando eu estava viajando. O título do livro foi 'O Segredo do Crescimento. Enquanto eu estava lendo esse livro, eu encontrei um incrível segredo! ",3,"Qual é o segredo? "

	elseif req == 3 then
		return 2,0,"Um dos sentença foi bastante interessante, ele diz: Eu tenho conseguido domesticação, e agora você pode fazer monstros crescer rapidamente. Eu sou suspeita a este escritor também atacou a Árvore de propagação. ",4,"Uau. Isso é assustador. "

	elseif req == 4 then
		return 2,0,"Exatamente! Se não fizermos nada, estaremos cercados por muitos monstros. Eu não vou dizer-lhe para me ajudar, mas por favor, encontrar alguém para me ajudar? ",5,"Eu vou te ajudar! "

	elseif req == 5 then
		return 2,0,"Deus, você é persistente. Ok eu vou testá-lo. Primeiro, vá e coletar esferas de xixi, e Manglock Metalocks. Depois de recolhidas estas contas, trazê-los para mim. Ah, eu espero não estar a cometer um erro, arriscando a sua segurança ",6,"Eu vou encontrá-los agora. "

	elseif req == 6 then
		StartQuest(cnum, 1)
		AddSwitchCount(cnum, 1000, 1)
		return 1,0,"Ah bom, você ainda está vivo. Eu nunca vou lembrá-lo para ir e matar, fazer xixi, e Manglock Metalocks. "



	elseif req == 12 then
		if resultmsg ~= nil then
			return 1,0,"Você não pode me enganar assim. Não há..resultmsg.."
		else
			if GetSwitchCount(cnum, 7) < 1 then
				AddSwitchCount(cnum, 7, 1)
				AddSwitchCount(cnum, 8, 1)
				AddMoney(cnum, 3000)
				EndQuest(cnum, 1)
			end

			return 1,0,"Oh meu deus. Vocês são incríveis! Você tem coletado todos os três contas. Eu não posso acreditar nisso. Muitos soldados não conseguiram fazer isso. Eu tenho fé em você agora, vá e fale com a Árvore da propagação que está no leste Mekrita Litoral (X: 169, Y: 169). As contas lhe permitirá comunicar-se com a árvore. Ooh! Vou dar-lhe algum dinheiro. Para ajudar você e um sinal de desculpas por não confiar em você! "
		end
	else
		return 0
	end
end
	
	
