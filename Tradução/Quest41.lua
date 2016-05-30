function NPC_QUEST_229(cnum,reqNumber)
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Ola, eu sou Monez. Se voce quiser urdidura para outros lugares, voce precisa ter um anel Warp e pagar 500GP. Mas, voce pode mover-se para Free Battle Zone sem eles!",2,"Mover-se para VeHerseba [area masmorra]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Rudis",6,"Mover-se para Battle Zone Free",7,"Mover-se para Islaba zona humida"

	elseif req == 2 then
		targetzone = 60 

	elseif req == 3 then
		targetzone = 63 

	elseif req == 4 then
		targetzone = 59 

	elseif req == 5 then
		targetzone = 67 

	elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0

	elseif req == 7 then
                targetzone = 14 
	else 
		return 1,0,"Nao disponivel Quest!"
	end 				


	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --

function NPC_QUEST_231(cnum,reqNumber) -- ���츣���� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Oh, e tao quente aqui! Eu cresci fazendo o Assistente Magirita que esta mudanca me doi! Voce quer Warp? Warp Ring e 500GP, por favor.",2,"Mover-se para Magirita",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Rudis",6,"Mover-se para Battle Zone Free",7,"Mover-se para Magirita Western Shore"

        elseif req == 2 then
		targetzone = 57 -- ������Ÿ

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 67 -- ���

        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0

        elseif req == 7 then
                targetzone = 6 -- ������Ÿ �����ؾ�
	
        else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0  and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --

function NPC_QUEST_232(cnum,reqNumber) -- �츣���� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Ola eu sou Monez. Bem, meu nome real e Monezzetta. Eu sou uma garota Monez. Voce pode dizer? Warp Ring e 500GP favor",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Magirita",4,"Mover-se para Mekrita",5,"Mover-se para Rudis",6,"Mover-se para Battle Zone Free",7,"Mover-se para Valcan Acesso Rodoviario"
                     
        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 57 -- ������Ÿ

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 67 -- ���

        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0

        elseif req == 7 then
                targetzone = 33 -- ��ĭ ���Է�

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0  then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --

function NPC_QUEST_230(cnum,reqNumber) -- ��ũ��Ÿ NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom dia! Estou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel Warp e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Magirita",5,"Mover-se para Rudis",6,"Mover-se para Battle Zone Free",7,"Mover-se para Rollingcores"

        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 57 -- ������Ÿ

        elseif req == 5 then
		targetzone = 67 -- ���

        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0

        elseif req == 7 then
                targetzone = 50 -- �Ѹ��ھ��� �ʵ�

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0  then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --
function NPC_QUEST_233(cnum,reqNumber) -- ��� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Ola, voce quer deformar? Otimo dia para deformar hey! Oh, eu amo entortando .. Warp Ring e 500GP e necessario.",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Mover-se para Battle Zone Free",7,"Mover-se para Campo Rollingcores"


        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 57 -- ������Ÿ

        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0

        elseif req == 7 then
                targetzone = 50 -- �Ѹ��ھ��� �ʵ�

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0  then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --


function NPC_QUEST_274(cnum,reqNumber) -- PK����  NPC 
  	local req = reqNumber
  	req = reqNumber

	if req == 1 then
	        return 2, 0,"Gostaria de voltar a Mekrita?.",2,"Mover-se para Mekrita"

        elseif req == 2 then
		MoveZone(cnum,59,253)
		return 0	
	end 				
end --


function NPC_QUEST_226(cnum,reqNumber) -- ���̽���� ������ NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Os ingressos, por favor! Se nao, Warp anel e 500GP e necessaria!",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Mover-se para Magirita costa ocidental",7,"Mover-se para Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 57 -- ������Ÿ

        elseif req == 6 then 
		targetzone = 6 -- ������Ÿ �����ؾ�

        elseif req == 7 then
                targetzone = 67 -- ���

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --


function NPC_QUEST_225(cnum,reqNumber) -- ������Ÿ �����ؾ� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Meu nome e Monez. Se voce deseja mover outros lugares, voce deve ter um anel Warp e 500GP. No entanto, voce pode mover para Free Battle zona sem ele.",2,"Mover-se para VeHerserva [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Mover para a area de pantano Islava",7,"Mover-se para Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 57 -- ������Ÿ

        elseif req == 6 then 
                targetzone = 14 -- ���̽���� ������

        elseif req == 7 then
                targetzone = 67 -- ���

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --


function NPC_QUEST_227(cnum,reqNumber) -- ��ĭ ���Է� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0, "Onde voce gostaria de ir!? Warp anel e 500GP, por favor!.",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Ir para o campo Rollingcores",7,"Mover-se para Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 57 -- ������Ÿ

        elseif req == 6 then 
		targetzone = 50 -- �Ѹ� �ھ��� �ʵ�

        elseif req == 7 then
                targetzone = 67 -- ���

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end -- 


function NPC_QUEST_228(cnum,reqNumber) -- �Ѹ��ھ��� �ʵ� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Warp anel e 500GP.",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Mover-se para Valcan Acesso Rodoviario",7,"Mover-se para Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����

        elseif req == 3 then
		targetzone = 63 -- �츣����

        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ

        elseif req == 5 then
		targetzone = 57 -- ������Ÿ

        elseif req == 6 then 
		targetzone = 33 -- ��ĭ ���Է�

        elseif req == 7 then
                targetzone = 67 -- ���

	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500- money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --


function NPC_QUEST_235(cnum,reqNumber) -- ��ĭ ��� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
        return 7, 0, "Onde voce gostaria de ir!? Warp anel e 500GP, por favor!.",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Ir para o campo Rollingcores",7,"Mover-se para Rudis"

    elseif req == 2 then
		targetzone = 60 -- ���츣����
    elseif req == 3 then
		targetzone = 63 -- �츣����
    elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
    elseif req == 5 then
		targetzone = 57 -- ������Ÿ
    elseif req == 6 then 
		targetzone = 50 -- �Ѹ� �ھ��� �ʵ�
    elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end



function NPC_QUEST_281(cnum,reqNumber) -- �������� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
        return 7, 0, "Onde voce gostaria de ir!? Warp anel e 500GP, por favor!.",2,"Mover-se para VeHerseba [Dungeon Area]",3,"Mover-se para Herseba",4,"Mover-se para Mekrita",5,"Mover-se para Magirita",6,"Ir para o campo Rollingcores",7,"Mover-se para Rudis"

    elseif req == 2 then
		targetzone = 60 -- ���츣����
    elseif req == 3 then
		targetzone = 63 -- �츣����
    elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
    elseif req == 5 then
		targetzone = 57 -- ������Ÿ
    elseif req == 6 then 
		targetzone = 50 -- �Ѹ� �ھ��� �ʵ�
    elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Nao disponivel Quest!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 and GetItemCount(cnum,4366,0) == 0 and GetItemCount(cnum,4367,0) == 0 and GetItemCount(cnum,4368,0) == 0 and GetItemCount(cnum,119,0) == 0 then 
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."e"..remain.."GP e"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."e"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."nao estao disponiveis agora. Assim, nao pode deformar."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end