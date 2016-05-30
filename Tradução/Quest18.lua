 function NPC_QUEST_242(cnum,reqNumber) -- ¹Â³×Å¸(¿É¼Ç »ý¼º ¾ÆÀÌÅÛ NPC)
	local req = reqNumber

	if req == 1 then
		return 9,0,"Hey nós somos conhecidos como os gêmeos de encantar! Nós trabalhamos duro dia-a-dia para encantar itens. Posso acrescentar muitas opções para os seus itens. Você quer saber mais? ",2,"Cinzel de Archer ",3,"Cinzel de ladrão ",4,"Cinzel de Valor ",5,"Cinzel do Poder ",6,"Cinzel de Rapidez ",7,"Cinzel de Precisão ",8,"Chisel da Fortuna ",9,"Chisel da Vida "   

	elseif req == 2 then
		return 3,0,"Cinzel de Archer precisa aumentar a taxa de 1, mas ele não funciona 100%. Uma central de bombagem que você pode obter o item. Mas lembre-se você nunca verá o seu núcleo novamente. Você ainda quer trocar? ",12,"Sim, eu quero trocá-lo. ",13,"Como usar o cinzel de Archer? "

	elseif req == 3 then
		return 3,0,"Cinzel de Thief aumentam capacidade de evasão em 1, mas não com 100% de sucesso. Você pode Trocar com um núcleo Ballza. Mas lembre-se que você nunca verá o seu núcleo novamente. Você quer fazer a troca, no entanto,? ",22,"Sim, eu quero trocá-lo. ",23,"Como usar formão do ladrão? "

	elseif req == 4 then
		return 3,0,"Cinzel de Valor aumentar o poder de ataque por um, mas não 100% de sucesso. Vou trocá-lo com um Core Rainova. Tenha em mente que você nunca vai ver o seu Hench novamente. Você ainda quer trocar? ",32,"Sim, eu quero trocá-lo. ",33,"Como usar o cinzel de Valor "
	
	elseif req == 5 then
		return 3,0,"Cinzel do Poder aumenta o poder de um não com 100% de sucesso. Vou trocá-lo com um núcleo Lausta. Tenha em mente que você nunca vai ver o seu Hench novamente. Você ainda quer trocar? ",42,"Sim, eu quero trocá-lo. ",43,"Como usar formão do Poder "

	elseif req == 6 then
		return 3,0,"Cinzel de rapidez por um rápido aumento, mas não 100%. Um núcleo BeetlePete você pode obter o martelo de rapidez. Lembre-se que você nunca irá ver a sua Hench após a troca. Você ainda quer trocar? ",52,"Sim, eu quero trocá-lo. ",53,"Como usar o cinzel de Rapidez "

	elseif req == 7 then
		return 3,0,"Cinzel de Precisão aumentar a precisão por um sucesso, mas não com 100%. Vou trocá-lo com um núcleo Thunderbird. Mas devo avisá-lo, você nunca vai ver o seu Hench novamente. Você ainda quer trocar? ",62,"Sim, eu quero trocá-lo. ",63,"Como usar o cinzel de Precisão "

	elseif req == 8 then
		return 3,0,"Cinzel de fortuna aumentar a sua sorte por 1, mas não com uma probabilidade de 100%. Um núcleo Chikaki você pode obter o cinzel da fortuna. Mas vou manter o núcleo para sempre. Você ainda quer trocar? ",72,"Sim, eu quero trocá-lo. ",73,"Como usar o martelo da Fortuna "

	elseif req == 9 then
		return 3,0,"Cinzel de vida aumenta HP por 2 a alguma taxa de sucesso. Um Amazonez você pode obter um. Mas você nunca vai ver o Núcleo de novo, você sabe. Você ainda quer trocar? ",82,"Sim, eu quero trocá-lo. ",83,"método de usar formão de vida "







	elseif req == 12 then

		if GetSwitchCount(cnum, 1026) > 0 then
			return 1,0,"Troca de Archer Chisel está disponível apenas uma vez. "
		end
		

		if GetHench(cnum,1,81,1) > 1 then --Àè¿À·£ÅÏ 81
			return 1,0,"Se você tiver mais de 2 bombeado em seu inventário, você não pode trocar todos os itens. Por que você não guarde Pumped útil em outro lugar? "
		end

		if GetHench(cnum,1,81,1) < 1 then
			return 1,0,"Você só deve trazer bombeado, outros são unnesessary. " 
		end   

		if CheckItemPocket(cnum,311,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                end
	
		AddHench(cnum,81,-1) --Àè¿À·£ÅÏ °¡Á®°¡±â
		AddItemCount(cnum,311,1) -- ±Ã»çÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1026 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 13 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "






	elseif req == 22 then

		if GetSwitchCount(cnum, 1027) > 0 then
			return 1,0,"Troca de Thief Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,270,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 Ballza em seu inventário, você não pode trocar todos os itens. "
		end

		if GetHench(cnum,1,270,1) < 1 then
			return 1,0,"Você só deve trazer Ballza, outros são unnesessary. " 
		end   

		 if CheckItemPocket(cnum,313,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,270,-1) --½ºÄ·ÆÛ °¡Á®°¡±â
		AddItemCount(cnum,313,1) -- µµµÏÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1027 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 23 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "






	elseif req == 32 then

		if GetSwitchCount(cnum, 1028) > 0 then
			return 1,0,"Troca de Valor Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,109,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 Rainova em seu inventário, você não pode trocar todos os itens. "
		end

		if GetHench(cnum,1,109,1) < 1 then
			return 1,0,"Você deve trazer Rainova. Outras coisas que não são necessárias agora. " 
		end   

		 if CheckItemPocket(cnum,312,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,109,-1) --¶óÀÌ³ë¹Ù °¡Á®°¡±â
		AddItemCount(cnum,312,1) -- ¿ë±âÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1028 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 33 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "






	elseif req == 42 then

		if GetSwitchCount(cnum, 1029) > 0 then
			return 1,0,"Troca de poder Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,37,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 Lausta em seu inventário, você não pode trocar todos os itens. "
		end

		if GetHench(cnum,1,37,1) < 1 then
			return 1,0,"Você só deve trazer Lausta, outros são desnecessários. " 
		end   

		 if CheckItemPocket(cnum,314,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,37,-1) --±×¶õ»þ °¡Á®°¡±â
		AddItemCount(cnum,314,1) -- ÈûÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1029 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 43 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "






	elseif req == 52 then

		if GetSwitchCount(cnum, 1030) > 0 then
			return 1,0,"Troca de Rapidez Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,173,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 BeetlePete em seu inventário, você não pode trocar todos os itens. "
		end 

		if GetHench(cnum,1,173,1) < 1 then
			return 1,0,"Você só deve trazer BeetlePete, outros são desnecessários. " 
		end  

		 if CheckItemPocket(cnum,315,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,173,-1) --ÅÍÆ²ºñÆ² °¡Á®°¡±â
		AddItemCount(cnum,315,1) -- ¹ÎÃ¸ÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1030 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 53 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "







	elseif req == 62 then

		if GetSwitchCount(cnum, 1031) > 0 then
			return 1,0,"Troca de Precisão Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,145,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 Thunderbird no seu inventário, você não pode trocar todos os itens. "
		end 

		if GetHench(cnum,1,145,1) < 1 then
			return 1,0,"Você só deve levar o Thunderbird, outros são desnecessários. " 
		end  

		 if CheckItemPocket(cnum,316,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,145,-1) --½ã´õ¹öµå °¡Á®°¡±â
		AddItemCount(cnum,316,1) -- Á¤È®ÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1031 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 63 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "






	elseif req == 72 then

		if GetSwitchCount(cnum, 1032) > 0 then
			return 1,0,"Troca de Fortune Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,242,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 Chikaki em seu inventário, você não pode trocar todos os itens. "
		end

		if GetHench(cnum,1,242,1) < 1 then
			return 1,0,"Você só deve trazer Chikaki, outros são desnecessários " 
		end   

		 if CheckItemPocket(cnum,317,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,242,-1) --ÁöÇÏ°É °¡Á®°¡±â
		AddItemCount(cnum,317,1) -- Çà¿îÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1032 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 73 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "







	elseif req == 82 then

		if GetSwitchCount(cnum, 1033) > 0 then
			return 1,0,"Troca de Vida Chisel está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,196,1) > 1 then 
			return 1,0,"Se você tiver mais de 2 Amazonez em seu inventário, você não pode trocar todos os itens. "
		end

		if GetHench(cnum,1,196,1) < 1 then
			return 1,0,"Você só deve trazer Amazonez, outros são desnecessários. " 
		end  

		 if CheckItemPocket(cnum,318,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,196,-1) --Å²Å¸ÄïÅ× °¡Á®°¡±â
		AddItemCount(cnum,318,1) -- »ý¸íÀÇ Á¤ Ãß°¡
		AddSwitchCount(cnum, 1033 ,1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 83 then
		return 1,0,"Se você der um duplo clique no item enchant no inventário e clique no item que você gostaria de adicionar a opção. O item terá a opção extra depois. "
	end

	return 0
end



 function NPC_QUEST_287(cnum,reqNumber) -- Á¦³×Å¸(¾÷±×·¹ÀÌµå ¾ÆÀÌÅÛ NPC)
	local req = reqNumber

	if req == 1 then
	return 2,0,"Ei, eu sou metade da mundialmente famosa Encantar Twins. Eu posso criar o que é chamado de Star Tear. ",2,"O que é um Tear Star? "

	elseif req == 2 then
	return 3,0,"Tear Star pode aumentar a opção para cada item. Assim, qualquer opção addtional que foi criado pelo meu irmão, pode ser reforçada com a minha Tear Star. Eu preciso de escamas de um Greentail fazer um. Você quer trocar uma GreenTail de Star lágrima? ",12,"Sim, eu quero trocar. ",13,"Como usar Tear Star "

	elseif req == 12 then

		if GetSwitchCount(cnum, 1034) > 0 then
			return 1,0,"Troca de Tear Star está disponível apenas uma vez. "
		end

		if GetHench(cnum,1,45,1) > 1 then 
			return 1,0,"Se houver mais de dois Greentail no inventário, você não pode trocar. Por que você não guarde Greentail usful no armazenamento. "
		end

		if GetHench(cnum,1,45,1) < 1 then
			return 1,0,"Você deve trazer o núcleo de Greentail. Outras coisas que não são necessárias agora. " 
		end  

		 if CheckItemPocket(cnum,319,1) < 0 then
                    	return 1,0,"Como o estoque está cheio, você não pode trocar. Por favor, limpar o estoque. "
                 end
	
		AddHench(cnum,45,-1) --±×¸°Å×ÀÏ °¡Á®°¡±â
		AddItemCount(cnum,319,1) -- Æ¼¾î½ºÅ¸ Ãß°¡
		AddSwitchCount(cnum, 1034, 1)
		return 1,0,"Troca foi feita com sucesso. "

	elseif req == 13 then
		return 1,0,"Dê um duplo clique na Estrela da Lágrima no inventário e clique no item que você deseja atualizar. "
	end

	return 0
end




		



	
		