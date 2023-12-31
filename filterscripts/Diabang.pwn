//-----------------------IntrozeN---------------------
//-----------------------Gang---------------------
//-----------------------Creator----------------------
//-----------------------Dich boi Gabby Sama-------------------------
//-----------------------Upload tai http://svo.vn -------------------------

#include <a_samp>

#define dcmd(%1,%2,%3) if (!strcmp((%3)[1], #%1, true, (%2)) && ((((%3)[(%2) + 1] == '\0') && (dcmd_%1(playerid, ""))) || (((%3)[(%2) + 1] == ' ') && (dcmd_%1(playerid, (%3)[(%2) + 2]))))) return 1
#define COLOR_GREENLIGHT 0x9ACD32AA
#define COLOR_DARKRED 0xC10B07FF

forward Createzone(playerid,color);

new Makingzone[MAX_PLAYERS];
new Float:ZMinX;
new Float:ZMaxX;
new Float:ZMinY;
new Float:ZMaxY;
new GangZone;
new Create;

public OnFilterScriptInit()
{
    print("\n----------------------------------");
    print("Gang Zone Creator");
    print("----------------------------------\n");
    if(!fexist("/savedzones.txt")) fopen("/savedzones.txt", io_readwrite);
    return 1;
}

public OnFilterScriptExit()
{
    GangZoneHideForAll(GangZone);
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    dcmd(zone,4,cmdtext);
    return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == 0)
    {
        if(response)
        {
            if(listitem == 0)
            {
                if(Makingzone[playerid] == 1) return SendClientMessage(playerid,COLOR_DARKRED,".: THONG TIN: Ban da san sang tao khu vuc Gang Zone. Hay an CHON hoac HUY BO de Luu hoac Go bo Gang Zone :.");
                ShowPlayerDialog(playerid,1,2,"MAU GANG ZONE","Blue\nRed\nGreen\nPurple\nYellow\nGrey\nLightblue\nWhite\nBlack","Chon","Huy Bo");
                Makingzone[playerid] = 1;
            }
            if(listitem == 1)
            {
                if(Makingzone[playerid] == 0) return SendClientMessage(playerid,COLOR_DARKRED,".: THONG TIN: Ban da khong tao khu vuc Gang Zone. Hay tao 1 khu vuc Gane Zone truoc :.");
                new string[128];
                KillTimer(Create);
                format(string,sizeof(string),"GangZoneCreate(%f,%f,%f,%f);\r\n",ZMinX,ZMinY,ZMaxX,ZMaxY);
                new File:save = fopen("/savedzones.txt", io_append);
                fwrite(save, string);
                fclose(save);
                SendClientMessage(playerid,COLOR_GREENLIGHT,".: THONG TIN: Khu vuc Gang Zone duoc luu o Scriptfiles - savedzones.txt :.");
                Makingzone[playerid] = 0;
            }
            if(listitem == 2)
            {
                if(Makingzone[playerid] == 0) return SendClientMessage(playerid,COLOR_DARKRED,".: THONG TIN: Ban da khong tao khu vuc Gang Zone. Hay tao 1 khu vuc Gane Zone truoc :.");
                KillTimer(Create);
                GangZoneDestroy(GangZone);
                SendClientMessage(playerid,COLOR_GREENLIGHT,".: THONG TIN: Khu vuc tao Gang Zone da bi Huy bo :.");
                Makingzone[playerid] = 0;
            }
        }
    }
    if(dialogid == 1)
    {
        if(response)
        {
            if(listitem == 0)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0x0000FFAA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 1)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0xFF0000AA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 2)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0x00FF00AA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 3)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0xFF00FFAA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 4)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0xFFFF00AA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 5)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0x888888AA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 6)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0x00FFFFAA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 7)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0xFFFFFFAA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            if(listitem == 8)
            {
                new Float:Z;
                new color;
                GetPlayerPos(playerid,ZMinX,ZMinY,Z);
                color = 0x000000AA;
                GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
                GangZoneShowForPlayer(playerid,GangZone,color);
                Create = SetTimerEx("Createzone",100,1,"ud",playerid,color);
            }
            SendClientMessage(playerid,COLOR_GREENLIGHT,".: THONG TIN: Gang Zone da duoc tao :.");
            SendClientMessage(playerid,COLOR_GREENLIGHT,".: THONG TIN: Kiem tra tren Minimap cua ban neu cam thay khu vuc Gang Zone da vua du, hay an /zone va chon Savezone de luu Gang Zone :.");
        }
        else if(!response)
        {
            Makingzone[playerid] = 0;
        }
    }
    return 1;
}

public Createzone(playerid,color)
{
    GangZoneHideForPlayer(playerid,GangZone);
    GangZoneDestroy(GangZone);
    new Float:Z;
    GetPlayerPos(playerid,ZMaxX,ZMaxY,Z);
    GangZone = GangZoneCreate(ZMinX,ZMinY,ZMaxX,ZMaxY);
    GangZoneShowForPlayer(playerid,GangZone,color);
    return 1;
}

dcmd_zone(playerid,params[])
{
    #pragma unused params
    ShowPlayerDialog(playerid,0,2,"Gang Zone Creator","Createzone\nSavezone\nCancelzone","Chon","Huy Bo");
    return 1;
}
