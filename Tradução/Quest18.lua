 function NPC_QUEST_242(cnum,reqNumber) -- �³�Ÿ(�ɼ� ���� ������ NPC)
	local req = reqNumber

	if req == 1 then
		return 9,0,"Hey n�s somos conhecidos como os g�meos de encantar! N�s trabalhamos duro dia-a-dia para encantar itens. Posso acrescentar muitas op��es para os seus itens. Voc� quer saber mais? ",2,"Cinzel de Archer ",3,"Cinzel de ladr�o ",4,"Cinzel de Valor ",5,"Cinzel do Poder ",6,"Cinzel de Rapidez ",7,"Cinzel de Precis�o ",8,"Chisel da Fortuna ",9,"Chisel da Vida "   

	elseif req == 2 then
		return 3,0,"Cinzel de Archer precisa aumentar a taxa de 1, mas ele n�o funciona 100%. Uma central de bombagem que voc� pode obter o item. Mas lembre-se voc� nunca ver� o seu n�cleo novamente. Voc� ainda quer trocar? ",12,"Sim, eu quero troc�-lo. ",13,"Como usar o cinzel de Archer? "

	elseif req == 3 then
		return 3,0,"Cinzel de Thief aumentam capacidade de evas�o em 1, mas n�o com 100% de sucesso. Voc� pode Trocar com um n�cleo Ballza. Mas lembre-se que voc� nunca ver� o seu n�cleo novamente. Voc� quer fazer a troca, no entanto,? ",22,"Sim, eu quero troc�-lo. ",23,"Como usar form�o do ladr�o? "

	elseif req == 4 then
		return 3,0,"Cinzel de Valor aumentar o poder de ataque por um, mas n�o 100% de sucesso. Vou troc�-lo com um Core Rainova. Tenha em mente que voc� nunca vai ver o seu Hench novamente. Voc� ainda quer trocar? ",32,"Sim, eu quero troc�-lo. ",33,"Como usar o cinzel de Valor "
	
	elseif req == 5 then
		return 3,0,"Cinzel do Poder aumenta o poder de um n�o com 100% de sucesso. Vou troc�-lo com um n�cleo Lausta. Tenha em mente que voc� nunca vai ver o seu Hench novamente. Voc� ainda quer trocar? ",42,"Sim, eu quero troc�-lo. ",43,"Como usar form�o do Poder "

	elseif req == 6 then
		return 3,0,"Cinzel de rapidez por um r�pido aumento, mas n�o 100%. Um n�cleo BeetlePete voc� pode obter o martelo de rapidez. Lembre-se que voc� nunca ir� ver a sua Hench ap�s a troca. Voc� ainda quer trocar? ",52,"Sim, eu quero troc�-lo. ",53,"Como usar o cinzel de Rapidez "

	elseif req == 7 then
		return 3,0,"Cinzel de Precis�o aumentar a precis�o por um sucesso, mas n�o com 100%. Vou troc�-lo com um n�cleo Thunderbird. Mas devo avis�-lo, voc� nunca vai ver o seu Hench novamente. Voc� ainda quer trocar? ",62,"Sim, eu quero troc�-lo. ",63,"Como usar o cinzel de Precis�o "

	elseif req == 8 then
		return 3,0,"Cinzel de fortuna aumentar a sua sorte por 1, mas n�o com uma probabilidade de 100%. Um n�cleo Chikaki voc� pode obter o cinzel da fortuna. Mas vou manter o n�cleo para sempre. Voc� ainda quer trocar? ",72,"Sim, eu quero troc�-lo. ",73,"Como usar o martelo da Fortuna "

	elseif req == 9 then
		return 3,0,"Cinzel de vida aumenta HP por 2 a alguma taxa de sucesso. Um Amazonez voc� pode obter um. Mas voc� nunca vai ver o N�cleo de novo, voc� sabe. Voc� ainda quer trocar? ",82,"Sim, eu quero troc�-lo. ",83,"m�todo de usar form�o de vida "







	elseif req == 12 then

		if GetSwitchCount(cnum, 1026) > 0 then
			return 1,0,"Troca de Archer Chisel est� dispon�vel apenas uma vez. "
		end
		

		if GetHench(cnum,1,81,1) > 1 then --������� 81
			return 1,0,"Se voc� tiver mais de 2 bombeado em seu invent�rio, voc� n�o pode trocar todos os itens. Por que voc� n�o guarde Pumped �til em outro lugar? "
		end

		if GetHench(cnum,1,81,1) < 1 then
			return 1,0,"Voc� s� deve trazer bombeado, outros s�o unnesessary. " 
		end   

		if CheckItemPocket(cnum,311,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                end
	
		AddHench(cnum,81,-1) --������� ��������
		AddItemCount(cnum,311,1) -- �û��� �� �߰�
		AddSwitchCount(cnum, 1026 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 13 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "






	elseif req == 22 then

		if GetSwitchCount(cnum, 1027) > 0 then
			return 1,0,"Troca de Thief Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,270,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 Ballza em seu invent�rio, voc� n�o pode trocar todos os itens. "
		end

		if GetHench(cnum,1,270,1) < 1 then
			return 1,0,"Voc� s� deve trazer Ballza, outros s�o unnesessary. " 
		end   

		 if CheckItemPocket(cnum,313,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,270,-1) --��ķ�� ��������
		AddItemCount(cnum,313,1) -- ������ �� �߰�
		AddSwitchCount(cnum, 1027 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 23 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "






	elseif req == 32 then

		if GetSwitchCount(cnum, 1028) > 0 then
			return 1,0,"Troca de Valor Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,109,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 Rainova em seu invent�rio, voc� n�o pode trocar todos os itens. "
		end

		if GetHench(cnum,1,109,1) < 1 then
			return 1,0,"Voc� deve trazer Rainova. Outras coisas que n�o s�o necess�rias agora. " 
		end   

		 if CheckItemPocket(cnum,312,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,109,-1) --���̳�� ��������
		AddItemCount(cnum,312,1) -- ����� �� �߰�
		AddSwitchCount(cnum, 1028 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 33 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "






	elseif req == 42 then

		if GetSwitchCount(cnum, 1029) > 0 then
			return 1,0,"Troca de poder Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,37,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 Lausta em seu invent�rio, voc� n�o pode trocar todos os itens. "
		end

		if GetHench(cnum,1,37,1) < 1 then
			return 1,0,"Voc� s� deve trazer Lausta, outros s�o desnecess�rios. " 
		end   

		 if CheckItemPocket(cnum,314,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,37,-1) --�׶��� ��������
		AddItemCount(cnum,314,1) -- ���� �� �߰�
		AddSwitchCount(cnum, 1029 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 43 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "






	elseif req == 52 then

		if GetSwitchCount(cnum, 1030) > 0 then
			return 1,0,"Troca de Rapidez Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,173,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 BeetlePete em seu invent�rio, voc� n�o pode trocar todos os itens. "
		end 

		if GetHench(cnum,1,173,1) < 1 then
			return 1,0,"Voc� s� deve trazer BeetlePete, outros s�o desnecess�rios. " 
		end  

		 if CheckItemPocket(cnum,315,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,173,-1) --��Ʋ��Ʋ ��������
		AddItemCount(cnum,315,1) -- ��ø�� �� �߰�
		AddSwitchCount(cnum, 1030 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 53 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "







	elseif req == 62 then

		if GetSwitchCount(cnum, 1031) > 0 then
			return 1,0,"Troca de Precis�o Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,145,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 Thunderbird no seu invent�rio, voc� n�o pode trocar todos os itens. "
		end 

		if GetHench(cnum,1,145,1) < 1 then
			return 1,0,"Voc� s� deve levar o Thunderbird, outros s�o desnecess�rios. " 
		end  

		 if CheckItemPocket(cnum,316,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,145,-1) --������� ��������
		AddItemCount(cnum,316,1) -- ��Ȯ�� �� �߰�
		AddSwitchCount(cnum, 1031 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 63 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "






	elseif req == 72 then

		if GetSwitchCount(cnum, 1032) > 0 then
			return 1,0,"Troca de Fortune Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,242,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 Chikaki em seu invent�rio, voc� n�o pode trocar todos os itens. "
		end

		if GetHench(cnum,1,242,1) < 1 then
			return 1,0,"Voc� s� deve trazer Chikaki, outros s�o desnecess�rios " 
		end   

		 if CheckItemPocket(cnum,317,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,242,-1) --���ϰ� ��������
		AddItemCount(cnum,317,1) -- ����� �� �߰�
		AddSwitchCount(cnum, 1032 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 73 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "







	elseif req == 82 then

		if GetSwitchCount(cnum, 1033) > 0 then
			return 1,0,"Troca de Vida Chisel est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,196,1) > 1 then 
			return 1,0,"Se voc� tiver mais de 2 Amazonez em seu invent�rio, voc� n�o pode trocar todos os itens. "
		end

		if GetHench(cnum,1,196,1) < 1 then
			return 1,0,"Voc� s� deve trazer Amazonez, outros s�o desnecess�rios. " 
		end  

		 if CheckItemPocket(cnum,318,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,196,-1) --ŲŸ���� ��������
		AddItemCount(cnum,318,1) -- ������ �� �߰�
		AddSwitchCount(cnum, 1033 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 83 then
		return 1,0,"Se voc� der um duplo clique no item enchant no invent�rio e clique no item que voc� gostaria de adicionar a op��o. O item ter� a op��o extra depois. "
	end

	return 0
end



 function NPC_QUEST_287(cnum,reqNumber) -- ����Ÿ(���׷��̵� ������ NPC)
	local req = reqNumber

	if req == 1 then
	return 2,0,"Ei, eu sou metade da mundialmente famosa Encantar Twins. Eu posso criar o que � chamado de Star Tear. ",2,"O que � um Tear Star? "

	elseif req == 2 then
	return 3,0,"Tear Star pode aumentar a op��o para cada item. Assim, qualquer op��o addtional que foi criado pelo meu irm�o, pode ser refor�ada com a minha Tear Star. Eu preciso de escamas de um Greentail fazer um. Voc� quer trocar uma GreenTail de Star l�grima? ",12,"Sim, eu quero trocar. ",13,"Como usar Tear Star "

	elseif req == 12 then

		if GetSwitchCount(cnum, 1034) > 0 then
			return 1,0,"Troca de Tear Star est� dispon�vel apenas uma vez. "
		end

		if GetHench(cnum,1,45,1) > 1 then 
			return 1,0,"Se houver mais de dois Greentail no invent�rio, voc� n�o pode trocar. Por que voc� n�o guarde Greentail usful no armazenamento. "
		end

		if GetHench(cnum,1,45,1) < 1 then
			return 1,0,"Voc� deve trazer o n�cleo de Greentail. Outras coisas que n�o s�o necess�rias agora. " 
		end  

		 if CheckItemPocket(cnum,319,1) < 0 then
                    	return 1,0,"Como o estoque est� cheio, voc� n�o pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,45,-1) --�׸����� ��������
		AddItemCount(cnum,319,1) -- Ƽ�Ÿ �߰�
		AddSwitchCount(cnum, 1034, 1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 13 then
		return 1,0,"D� um duplo clique na Estrela da L�grima no invent�rio e clique no item que voc� deseja atualizar. "
	end

	return 0
end




		



	
		