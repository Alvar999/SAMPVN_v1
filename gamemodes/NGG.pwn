#define SERVER_GM_TEXT "PC-Mobile"

#include <a_samp>
#include <foreach>
#include <a_mysql>
#include <a_actor>
#include <streamer>
#include <yom_buttons>
#include <keypad>
#include <ZCMD>
#include <dini>
#include <easydialog>
#include <sscanf2>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <YSI\y_ini>
#include <SimpleINI>
#include <mxini>
#pragma disablerecursion
#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "./includes/ngg.pwn"
#include "./includes/map.pwn"
#include "./includes/thuexe.pwn"
//#include "./includes/traicay.pwn"
#include "./includes/cansa.pwn"
//#include "./includes/huyhieu.pwn"
#include "./includes/danhhieu.pwn"

main() {}

public OnGameModeInit()
{
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
