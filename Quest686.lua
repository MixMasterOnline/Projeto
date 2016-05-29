function NPC_QUEST_686(cnum, reqNumber)

req = reqNumber
-- VERIFICACAO DE ITENS
item1 = GetItemCount(cnum, 1401, 0)
item2 = GetItemCount(cnum, 1402, 0)
item3 = GetItemCount(cnum, 1403, 0)
item4 = GetItemCount(cnum, 1404, 0)
item5 = GetItemCount(cnum, 1405, 0)
item6 = GetItemCount(cnum, 1406, 0)
item7 = GetItemCount(cnum, 1407, 0)
item8 = GetItemCount(cnum, 1408, 0)
item9 = GetItemCount(cnum, 1409, 0)
item10 = GetItemCount(cnum, 1410, 0)
item11 = GetItemCount(cnum, 6487, 0)
item12 = GetItemCount(cnum, 6488, 0)
item13 = GetItemCount(cnum, 6489, 0)
item14 = GetItemCount(cnum, 6490, 0)
-- TERMINO

-- DIALOGO NPC
	if req == 1 then
		return 5,0,"Ola viajante, o senhor poderia me ajudar ?@@Estou a procura de alguns tickets, mas infelizmente estou machucado e nao posso sair a procura deles, o senhor poderia me ajudar ?@@Apos a entrega dos tickets posso lhe dar um monstro especial, que ira ajudar nas suas jornadas..",2,"Mashimaro",3,"Kambu",4,"FIre HornMameo",5,"Mashimaro Zone"

	elseif req == 2 then
		return 6,0,"Ola, voce tem algum ticket Mashimaro para me entregar ?",10,"Mashimaro Exchange Ticket (Lv.40)",11,"Mashimaro Exchange Ticket (Lv.60)",12,"Mashimaro Exchange Ticket (Lv.80)",13,"Mashimaro Exchange Ticket (Lv.100)",14,"Mashimaro Exchange Ticket (Lv.120)"

	elseif req == 3 then
		return 6,0,"Ola, voce tem algum ticket Kambu para me entregar ?",20,"Kambu Exchange Ticket (Lv.40)",21,"Kambu Exchange Ticket (Lv.60)",22,"Kambu Exchange Ticket (Lv.80)",23,"Kambu Exchange Ticket (Lv.100)",24,"Kambu Exchange Ticket (Lv.120)"
	
	elseif req == 4 then
		return 5,0,"Ola, voce tem algum ticket FIre HornMameo para me entregar ?",30,"FIre HornMameo Exchange Ticket (Lv.40)",31,"FIre HornMameo Exchange Ticket (Lv.60)",32,"FIre HornMameo Exchange Ticket (Lv.80)",33,"FIre HornMameo Exchange Ticket (Lv.100)"
-- TERMINO

-- MOVER PARA O MAPA Mashimaro Zone
	elseif req == 5 then
		MoveZone(cnum, 1, 254)
-- TERMINO	
	
-- DIALOGO Mashimaro Ticket
	elseif req == 10 then
	if item1 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1401, -1)
		AddHench(cnum, 804, 1)
		return 1,0,"Troca Realizada."
		end

	elseif req == 11 then
	if item2 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1402, -1)
		AddHench(cnum, 805, 1)
		return 1,0,"Troca Realizada."
		end

	elseif req == 12 then
	if item3 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1403, -1)
		AddHench(cnum, 806, 1)
		return 1,0,"Troca Realizada."
		end
		
	elseif req == 13 then
	if item4 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1404, -1)
		AddHench(cnum, 807, 1)
		return 1,0,"Troca Realizada."
		end
		
	elseif req == 14 then
	if item5 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1405, -1)
		AddHench(cnum, 808, 1)
		return 1,0,"Troca Realizada."
		end
-- TERMINO

-- DIALOGO Kambu Ticket
	elseif req == 20 then
	if item6 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1406, -1)
		AddHench(cnum, 809, 1)
		return 1,0,"Troca Realizada."
		end

	elseif req == 21 then
	if item7 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1407, -1)
		AddHench(cnum, 810, 1)
		return 1,0,"Troca Realizada."
		end

	elseif req == 22 then
	if item8 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1408, -1)
		AddHench(cnum, 811, 1)
		return 1,0,"Troca Realizada."
		end
		
	elseif req == 23 then
	if item9 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1409, -1)
		AddHench(cnum, 812, 1)
		return 1,0,"Troca Realizada."
		end
		
	elseif req == 24 then
	if item10 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 1410, -1)
		AddHench(cnum, 813, 1)
		return 1,0,"Troca Realizada."
		end
-- TERMINO

-- DIALOGO FIre HornMameo Ticket
	elseif req == 30 then
	if item11 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 6487, -1)
		AddHench(cnum, 800, 1)
		return 1,0,"Troca Realizada."
		end

	elseif req == 31 then
	if item12 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 6488, -1)
		AddHench(cnum, 801, 1)
		return 1,0,"Troca Realizada."
		end

	elseif req == 32 then
	if item13 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 6489, -1)
		AddHench(cnum, 802, 1)
		return 1,0,"Troca Realizada."
		end
		
	elseif req == 33 then
	if item14 < 1 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 6490, -1)
		AddHench(cnum, 803, 1)
		return 1,0,"Troca Realizada."
		end
-- TERMINO



	else
		return 0

	end

end

-- NPC PARA RETORNO A MAGIRITA
NPC_QUEST_687 = function(cnum, reqNumber)
  name = GetHeroName(cnum)
  req = reqNumber
  if req == 1 then
    return 2, 0, "<<NPC PARA RETORNO>@@Ola, o senhor deseja retornar para o mapa de magirita ?", 2, "Mover para magirita."
  elseif req == 2 then
    MoveZone(cnum, 57, 254)
  else
    return 0
  end
end
-- TERMINO


