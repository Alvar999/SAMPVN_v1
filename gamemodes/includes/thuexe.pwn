#include <YSI\y_hooks>

new TaxiVehicleRent[MAX_PLAYERS];
new Timespawn[MAX_PLAYERS];
new TaxiCostRent[MAX_PLAYERS];
new TaxiTimeRent[MAX_PLAYERS];

stock IsATaxiRent(carid)
{
	for (new v = 0; v < MAX_PLAYERS; v++) {
	    if(carid == TaxiVehicleRent[v]) return 1;
	}
	return 0;
}


hook OnPlayerDisconnect(playerid, reason)
{
	DestroyVehicle(TaxiVehicleRent[playerid]);
	KillTimer(GetPVarInt(playerid, "Thuetaxivip"));
	TaxiVehicleRent[playerid] = -1;
	PlayerInfo[playerid][pCash] -= TaxiCostRent[playerid];
	
	TaxiCostRent[playerid] = 0;
	TaxiTimeRent[playerid] = 0;
	Timespawn[playerid] = 0;
	return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    new vehicle = GetPlayerVehicleID(playerid);
	    if(IsATaxiRent(vehicle))
	    {
		    if(vehicle == TaxiVehicleRent[playerid])
		    {
			    SendClientMessageEx(playerid,-1,"{FF0000}[{FFFF66}Dich vu thue xe{FF0000}] {FFFFFF}Day la xe thue cua ban, neu ra khoi xe 30s sau xe se bi thu hoi` !");
			    SetPVarInt(playerid,"rakhoixe",1);
			    KillTimer(GetPVarInt(playerid, "Thuetaxivip"));
			    DeletePVar(playerid, "Thuetaxivip");
			}
			else {
			    SendClientMessageEx(playerid,-1,"{FF0000}[{FFFF66}Dich vu thue xe{FF0000}] {FFFFFF}Day khong phai chiec xe cua ban[/thuexe hoac /huythuexe]");
		        RemovePlayerFromVehicle(playerid);
		        new Float:slx, Float:sly, Float:slz;
				GetPlayerPos(playerid, slx, sly, slz);
				SetPlayerPos(playerid, slx, sly, slz+2);
			}
		}
	}
	if(newstate == PLAYER_STATE_ONFOOT)
	{
		if(GetPVarInt(playerid,"rakhoixe") == 1)
		{
		    new string[322];
		    DeletePVar(playerid,"rakhoixe");
		    SetPVarInt(playerid, "Thuetaxivip", SetTimerEx("Thuetaxivip", 30000, 1, "i", playerid));
			format(string, sizeof(string), "~w~Chi phi di xe~n~~r~$%d",TaxiCostRent[playerid]);
			GameTextForPlayer(playerid, string, 3000, 3);

			PlayerInfo[playerid][pCash] -= TaxiCostRent[playerid];
			TaxiCostRent[playerid] = 0;
			TaxiTimeRent[playerid] = 0;
		}
	}
	return 1;
}
task Demtaxi[1000]()
{
	foreach(new i: Player)
	{
	    new string[3333];
	    if(IsPlayerInAnyVehicle(i))
		{
		    if(GetPVarInt(i,"rakhoixe") == 1 && TaxiVehicleRent[i] != INVALID_VEHICLE_ID)
		    {
				TaxiTimeRent[i] += 1;
				format(string, sizeof(string), "~r~%d ~w~: ~g~$%d",TaxiTimeRent[i],TaxiCostRent[i]);
				GameTextForPlayer(i, string, 15000, 6);
			    if(TaxiTimeRent[i] >= 16)
				{
					TaxiTimeRent[i] = 0;
					if(IsPlayerConnected(i))
					{
	  					TaxiCostRent[i] += 100;
					}
				}
				if(TaxiCostRent[i] > GetPlayerCash(i))
				{
				    RemovePlayerFromVehicle(i);
				    new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(i, slx, sly, slz);
					SetPlayerPos(i, slx, sly, slz + 2);
				    GameTextForPlayer(i, "~r~Het tien!", 4000, 4);
				    ////
				}
		    }
		}
		if(GetPVarInt(i,"doixespawn") == 1)
		{
		    format(string, sizeof(string), "~r~%d",Timespawn[i]);
		    GameTextForPlayer(i, string, 15000, 5);
		    Timespawn[i] += 1;
		    if(Timespawn[i] == 31)
		    {
		        Timespawn[i] = 0;
				format(string, sizeof(string), "~r~Xe da duoc tao!",TaxiCostRent[i]);
				GameTextForPlayer(i, string, 3000, 3);
				
				new Float:x,Float:y,Float:z;
				GetPlayerPos(i, x,y,z);
				TaxiVehicleRent[i] = CreateVehicle(505, x,y+4,z+1, -1, -1, -1, -1);
				SendClientMessageEx(i,-1,"{FF0000}[{FFFF66}Dich vu thue xe{FF0000}] {FFFFFF}Mot chiec xe da duoc chuyen den cho cua ban, khong len xe 30s sau xe se duoc thu hoi` !.");

				SetPVarInt(i, "Thuetaxivip", SetTimerEx("Thuetaxivip", 30000, 1, "i", i));
				SetPVarInt(i, "thuetaxi",1);
				DeletePVar(i,"doixespawn");
		    }
		}
	}
	return 1;
}

forward Thuetaxivip(playerid);
public Thuetaxivip(playerid)
{
	DestroyVehicle(TaxiVehicleRent[playerid]);
	SendClientMessageEx(playerid,-1,"{FF0000}[{FFFF66}Dich vu thue xe{FF0000}] {FFFFFF}Xe thue da bi thu hoi` !");
    KillTimer(GetPVarInt(playerid, "Thuetaxivip"));
    TaxiVehicleRent[playerid] = -1;
    DeletePVar(playerid, "Thuetaxivip");
    DeletePVar(playerid, "thuetaxi");
    DeletePVar(playerid, "doixespawn");
	return 1;
}



CMD:thuexe(playerid, params[])
{
    if(GetPVarInt(playerid,"doixespawn") == 1) return SendClientMessageEx(playerid, COLOR_WHITE,"Ban dang doi 1 chiec xe roi` !");
	if(TaxiVehicleRent[playerid] != INVALID_VEHICLE_ID && GetPVarInt(playerid,"thuetaxi") != 1)
	{
		SetPVarInt(playerid,"doixespawn",1);
		SendClientMessageEx(playerid,-1,"{FF0000}[{FFFF66}Dich vu TAXI{FF0000}] {FFFFFF}Ban da thue 1 chiec xe vui long doi 30s. de xe duoc chuyen den cho cua ban !");
	}
	else{
	    SendClientMessageEx(playerid,-1,"{FF0000}[{FFFF66}Dich vu TAXI{FF0000}] {FFFFFF}Ban da thue taxi roi.");
	}
    return 1;
}
CMD:huythuexe(playerid, params[])
{
	if(GetPVarInt(playerid,"thuetaxi") == 1)
	{
		if(GetPVarInt(playerid,"rakhoixe") == 1) return SendClientMessageEx(playerid, COLOR_YELLOW,"{FF0000}[{FFFF66}Dich vu thue xe{FF0000}] {FFFFFF}Hay xuong xe thue!!");
		DestroyVehicle(TaxiVehicleRent[playerid]);
		SendClientMessageEx(playerid,-1,"{FF0000}[{FFFF66}Dich vu thue xe{FF0000}] {FFFFFF}Xe cua ban da bi thu hoi` !");
	    KillTimer(GetPVarInt(playerid, "Thuetaxivip"));
	    DeletePVar(playerid, "Thuetaxivip");
        DeletePVar(playerid, "thuetaxi");
	    TaxiVehicleRent[playerid] = -1;
	}
	else {SendClientMessageEx(playerid,COLOR_YELLOW,"Chua co chiec xe nao duoc dat ra");}
	return 1;
}
