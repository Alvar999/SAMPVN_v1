#include <YSI\y_hooks>


#define         ATTACH_INDEX1                       (7)

new DaLayThungHang[MAX_PLAYERS];

CMD:laytraicay(playerid, params[])
{
  if(!IsPlayerInRangeOfPoint(playerid, 10.0, 2513.87,-35.88, 25.61)) return SendClientMessage(playerid, COLOR_GREY, "Ban khong o khu vuc  Lay Xang.");
  if(PlayerInfo[playerid][pJob] == 45 || PlayerInfo[playerid][pJob2] == 45)
  {
      if(DaLayThungHang[playerid] == 0)
      {
         ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
        // SetPlayerAttachedObject(playerid, 1, 3799, 1, -0.044, 0.523, -0.014, 0, 86.5, 0, 0.201, 0.221, 0.261999);
        SetPlayerAttachedObject(playerid, ATTACH_INDEX1, 3799, 1, -0.044, 0.523, -0.014, 0, 86.5, 0, 0.201, 0.221, 0.261999, 0xFF00FF00);
         SetPlayerCheckpoint(playerid, -1874.20, 1416.74, 7.17, 3.0);
         CP[playerid] = 52015;
         DaLayThungHang[playerid] = 1;
      }
      else return SendClientMessageEx(playerid, COLOR_LIGHTRED, "Ban Vui Long Giao Thung Hang Nay.");
  }
  else return SendClientMessageEx(playerid, COLOR_LIGHTRED, "Ban chua nhan cong viec Giao Trai Cay , khong the su dung lenh nay.");
  return 1;
}

CMD:xinviecgtc(playerid, params[])
{
   if(!IsPlayerInRangeOfPoint(playerid, 10.0, 2273.0105,949.6379,10.8203)) return SendClientMessage(playerid, COLOR_GREY, "Ban khong o noi xin viec.");
   PlayerInfo[playerid][pJob] = 45;
   SendClientMessageEx(playerid, COLOR_LIGHTRED, "Ban da nhan duoc cong viec Giao Trai Cay nay thanh cong.");
   return 1;
}


CMD:trogiupgiaotraicay(playerid, params[])
{
	SendClientMessage(playerid, COLOR_GRAD3, "============================");
	SendClientMessage(playerid, COLOR_GRAD1, "Den Dia Diem Xin Viec De Xin Viec");
	SendClientMessage(playerid, COLOR_GRAD2, "Sau Do Den Quay Lay Trai Cay");
	SendClientMessage(playerid, COLOR_GRAD3, "Roi Den Cham Do Tren Radar Ha Hoan Thanh");
	SendClientMessage(playerid, COLOR_GRAD4, "Code By An [ Sever GtaTDM-Viet ]");
	SendClientMessage(playerid, COLOR_GRAD3, "============================");
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
    if(CP[playerid] == 52015)
    {
        if(IsPlayerInAnyVehicle(playerid))
        {
            SendClientMessageEx(playerid, COLOR_GREY, "Vui Long Xuong Xe De Giao Thung Trai Cay nay.");
            return 1;
        }
        ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
       // RemovePlayerAttachedObject(playerid, 1);
       RemovePlayerAttachedObject(playerid, ATTACH_INDEX1);
        DisablePlayerCheckpoint(playerid);
        CP[playerid] = 0;
        DaLayThungHang[playerid] = 0;
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban Da Giao 1 Thung Trai Cay Va Nhan Duoc 5000$");
	    return 1;
     }
    return 1;
}

