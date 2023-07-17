// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT
// Thx For Using My Script!
#include <a_samp>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
    print(" SkinMenu By Monster[HD]");
    print("--------------------------------------\n");
    return 1;
}

public OnFilterScriptExit()
{
        return 1;
}

#else

main()
{
    print("\n----------------------------------");
    print(" Blank Gamemode by your name here");
    print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
    // Don't use these lines if it's a filterscript
    AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
    return 1;
}

public OnGameModeExit()
{
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
    SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
    SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (strcmp("/skinmenus", cmdtext, true, 10) == 0)
    {
            ShowPlayerDialog(playerid,6,DIALOG_STYLE_LIST,"Skins","Cj\nBigSmoke\nCop\nGang Baller\nSkater\nGrove Member\nGangsta\nBiker\nNoob\nTruth\nmaccer\nDJ\nWeridGuyXD\nKillerXD\nDrugSeller\nRockstar","Ok", "Cancel");
            return 1;
    }
    return 0;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid) // Lookup the dialogid
    {
        case 6:
        {
            if(!response)
            {
                SendClientMessage(playerid, 0xFF0000FF, "You cancelled.");
                return 1; // We processed it
            }
            switch(listitem) // This is far more efficient than using an if-elseif-else structure
            {
                case 0: // Listitems start with 0, not 1
                {
                    SetPlayerSkin(playerid,1);
                }
                case 1:
                {
                    SetPlayerSkin(playerid,269);

                }
                case 2:
                {

                    SetPlayerSkin(playerid,280);
                }
                case 3:
                {
                    SetPlayerSkin(playerid,103);
                }
                case 4:
                {
                    SetPlayerSkin(playerid,23);
                }
                case 5:
                {

                        SetPlayerSkin(playerid,106);
                }
                case 6:
                {
                    SetPlayerSkin(playerid,21);
                }
                case 7:
                {
                    SetPlayerSkin(playerid,247);
                }
                case 8:
                {
                    SetPlayerSkin(playerid,127);
                }
                case 9:
                {
                    SetPlayerSkin(playerid,3);
                }
                case 10:
                {
                    SetPlayerSkin(playerid,2);
                }
                case 11:
                {
                    SetPlayerSkin(playerid,19);
                }
                case 12:
                {
                    SetPlayerSkin(playerid,32);
                }
                case 13:
                {
                    SetPlayerSkin(playerid,33);
                }
                case 14:
                {
                    SetPlayerSkin(playerid,29);
                }
                case 15:
                {
                    SetPlayerSkin(playerid,181);
                }
			}
		}
  	}
   	return 0;
}

