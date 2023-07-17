#include <a_samp>

public OnFilterScriptInit()
{
        return 1;
}
public OnFilterScriptExit()
{
        return 1;
}
public OnGameModeExit()
{
        return 1;
}
public OnPlayerStateChange(playerid, newstate, oldstate)
{
        if(newstate == PLAYER_STATE_DRIVER)
        {
        if((GetTickCount()-GetPVarInt(playerid, "cartime")) < 1000) // enters veh as driver faster than 1 once
        {
        SetPVarInt(playerid, "carspam", GetPVarInt(playerid, "carspam")+1);
        if(GetPVarInt(playerid, "carspam") >= 5) // allows 5 seconds leeway to compensate for glitching, then kicks
        {
        new name[24];
        new string128[128];
        GetPlayerName(playerid,name,24);
        format(string128,sizeof(string128),"GTAVN: %s da bi kick khoi server, ly do: Car Spam",name);
        SendClientMessageToAll(0xFFFF00AA,string128);
        printf(string128);
        return Kick(playerid);
        }
        }
        SetPVarInt(playerid, "cartime", GetTickCount());
        }
        return 1;
}
