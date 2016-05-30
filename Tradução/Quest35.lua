 function NPC_QUEST_307(cnum,reqNumber)-- Å×½º(¹Í½º °¡ÀÌµå)
	local req = reqNumber

	if req == 1 then
	return 5,0,"Como evoluir monstro com Mix",2,"Você tem a chance única de obter uma Birdco.",3,"Eu não posso te dizer porque o seu nível iniciante é mais 10.You não conseguem atravessar a busca do Guia do Iniciante.",4,"Eu não posso dar-lhe muitos Henches .. Como sobre a caça?",5,"Wow ~ ~ Você tem uma Birdco bonito. Se você quiser ser um amigo Birdco, clique em [Para fazer amizade com um monstro]."

	elseif req == 2 then

		if GetSwitchCount(cnum,42) > 0 then
			return 1,0,"Você é tão me irritando. Basta ir caçar monstros."
		end

		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Em primeiro lugar, empurrar o [T] a chave em seu keyboard.Can você vê a sua caixa de Henches? Você pode levar em torno de Birdco click.But casal pode levá-lo ao redor depois de se recuperar a partir Mixbuilder."
		end

		if GetHench(cnum,1,4,1) > 2 then
		return 1,0,"Eu disse a você, você não pode falar para mim, porque seu nível está mais de 10!"
		end

		if GetHeroLv(cnum,1) < 10 then
		AddHench(cnum,4,1) -- ¹öµåÄÚ ¼ö¿©
		AddSwitchCount(cnum,42,1)	
		return 1,0,"Você pode colocar Hench na Caixa Hench arrastando por ele."
		end

	elseif req == 3 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Você tem que fazer um novo personagem para falar comigo."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Você pode ter um amigo novo monstro por batalha. Pergunte Tai atrás de mim como lutar."
		end
	
	elseif req == 4 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Por favor, fale com o primeiro Tes."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Para lutar com os monstros, você precisa estar armado com arma e armor.Come-se! Pegue armas e armaduras!"
		end
	
	elseif req == 5 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Para aprender a ser armado com itens"
		end

		if GetHeroLv(cnum,1) < 10 then		
		return 1,0,"Para aprender a lutar"
		end

	end

	return 0
end

   


 function NPC_QUEST_305(cnum,reqNumber)-- Å¸ÀÌ(ÀüÅõ °¡ÀÌµå)
 	local req = reqNumber

	if req == 1 then
		if GetHench(cnum,1,4,1) < 1 then
			return 1,0,"Eu te trouxe Drago."
		else
	return 6,0,"Eu Noa misto.",2,"Eu não pode misturá-los!",3,"Eu não posso chamá-lo iniciante, porque o seu nível é superior a 10. Você não pode começar com a busca do Guia do Iniciante.",4,"Pressione a tecla [U] botton no teclado e você pode ver a arma e armadura em seu item Caixa. Você pode ser armado com eles com um duplo clique.",5,"Você está me irritando. Basta ir caçar monstros.",6,"O ponteiro do mouse se transforma em um martelo quando você aponta para fora do monstro do castelo. Isto significa que são capazes de lutar. Saia e comece Núcleo de Drago."
	end

	elseif req == 2 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Você tem a chance única. 300GP não é muito dinheiro."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Eu disse a você, você não pode falar para mim, porque o seu nível é superior a 10."
		end

	elseif req == 3 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Você deve me trazer Drago Core. Eu não preciso de qualquer outra coisa."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Uau! Você tem o Core Drago. Drago e desejo Birdco para ser misturado. Encontrar Mixbuilder na aldeia. Mixbuilder está localizado em (123,31). Eu vou te dar 300GP para a mistura."
		end
	
	elseif req == 4 then

		if GetSwitchCount(cnum,14) > 1 then
		return 1,0,"Você tem que fazer um novo personagem para falar comigo."
		end

		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Eu não posso ver Noa. Será que face ao não misturam?"
		end

		if GetHench(cnum,1,1,1) < 1 then
		return 1,0,"HH ~ Noa Isso é tão bonito. Congulaturation! Você conseguiu o acesso para o Master Mix!." 
		end 

		if GetHench(cnum,1,1,1) > 0 then -- µå¶ó°í È®ÀÎ
		AddSwitchCount(cnum,14,1) 
		AddMoney(cnum,300) ---- ¹Í½ººñ¿ë Ãß°¡
		return 1,0,"Você elevei mais de 10 ... Hmmm ... Estou tão cansada, tchau ..."
		end
	
	elseif req == 5 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Para misturar Núcleos, os gêneros de núcleos deve ser different.Should Drago ser do sexo feminino se Birdco é masculina?"
		end

		if GetHench(cnum,1,17,1) < 1 then
		return 1,0,"Olá. Vou te dar uma boa notícia. O que é isso? Eu vou te dar item de graça ~ ~"
		end

		if GetHench(cnum,1,17,1) > 0 then
		return 1,0,"item de avaliação"  
		end

	elseif req == 6 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Julgamento item2"
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Julgamento item3"   
		end
	end


	return 0
end


