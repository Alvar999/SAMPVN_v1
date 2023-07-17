#include <YSI\y_hooks>
#define NT_DISTANCE 25.0

new Text3D:cNametag[MAX_PLAYERS];

hook OnGameModeInit()
{
    SetTimer("UpdateNametag", 1000, true); // So we're using a timer, change the interval to what you want
    return 1;
}
hook OnPlayerConnect(playerid)
{
    cNametag[playerid] = CreateDynamic3DTextLabel("", 0x40FFFFFF, 0.0, 0.0, 0.2, NT_DISTANCE, .attachedplayer = playerid, .testlos = 1);
    return 1;
}
hook OnPlayerUpdate(playerid)
{
    SetTimer("UpdateNametag", 1000, true);
	return 1;
}
hook OnPlayerDisconnect(playerid, reason)
{
    if(IsValidDynamic3DTextLabel(cNametag[playerid]))
    {
    	DestroyDynamic3DTextLabel(cNametag[playerid]);
	}
    return 1;
}

forward UpdateNametag();
public UpdateNametag()
{
    foreach(new i : Player)
    {
        if(IsPlayerConnected(i))
        {
            new nametag[128], playername[MAX_PLAYER_NAME];
            GetPlayerName(i, playername, sizeof(playername));
            if(1< PlayerInfo[i][pAdmin] < 100000)
            {
                format(nametag, sizeof(nametag), "Administration");
            }
            else if(PlayerInfo[i][pFMember] < INVALID_FAMILY_ID)
            {
                new family = PlayerInfo[i][pFMember];
                format(nametag, sizeof(nametag), "%s",FamilyInfo[family][FamilyName]);
            }
            else if(PlayerInfo[i][pMember] >= 0)
            {
           		new iGroupID = PlayerInfo[i][pMember];
                format(nametag, sizeof(nametag),"%s", arrGroupData[iGroupID][g_szGroupName]);
            }
            UpdateDynamic3DTextLabelText(cNametag[i], 0x40FFFFFF, nametag);
            
        }
    }
}
