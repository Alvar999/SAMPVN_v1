#include <a_samp>
#include <streamer>
#pragma tabsize 0

#undef MAX_PLAYERS
#define MAX_PLAYERS 500


public OnFilterScriptExit() {
    for(new i; i < MAX_PLAYERS; i++) {
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) {
			TogglePlayerControllable(i, false);
		}
	}
}

public OnFilterScriptInit() {

    for(new i; i < MAX_PLAYERS; i++) {
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) {
			TogglePlayerControllable(i, false);
		}
	}
    CreateDynamicObject(7025, 1905.52844, -1553.82007, 16.07230,   0.00000, 0.00000, 1.44000);
	CreateDynamicObject(16151, 1840.23657, -1581.49878, 13.02230,   0.00000, 0.00000, 146.88000);
	CreateDynamicObject(1256, 1835.02991, -1590.57776, 13.27080,   0.00000, 0.00000, -193.32001);
	CreateDynamicObject(1256, 1834.05640, -1594.77441, 13.27080,   0.00000, 0.00000, 167.16003);
	CreateDynamicObject(3861, 1837.76257, -1599.59338, 13.70000,   0.00000, 0.00000, 178.02010);
	CreateDynamicObject(8657, 1847.37463, -1601.78601, 13.77240,   0.00000, 0.00000, -90.12000);
	CreateDynamicObject(8657, 1883.28589, -1601.77722, 13.77240,   0.00000, 0.00000, -90.06000);
	CreateDynamicObject(8657, 1914.20398, -1601.76526, 13.77240,   0.00000, 0.00000, -89.94000);
	CreateDynamicObject(3861, 1842.54163, -1599.65515, 13.70000,   0.00000, 0.00000, 178.62006);
	CreateDynamicObject(3861, 1847.10107, -1599.63672, 13.70000,   0.00000, 0.00000, 178.86011);
	CreateDynamicObject(3861, 1852.81299, -1599.62109, 13.70000,   0.00000, 0.00000, 179.45988);
	CreateDynamicObject(1273, 1838.77209, -1598.97754, 13.48410,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1273, 1838.77209, -1598.97754, 13.48410,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1273, 1838.21619, -1598.25317, 13.48410,   0.00000, 0.00000, -1.56000);
	CreateDynamicObject(1273, 1837.42310, -1598.21960, 13.48410,   0.00000, 0.00000, -2.10000);
	CreateDynamicObject(1273, 1836.60779, -1598.92700, 13.48410,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1210, 1843.43213, -1598.92957, 13.43690,   90.00000, 0.00000, 181.32011);
	CreateDynamicObject(1550, 1842.59106, -1598.95605, 13.72670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1254, 1841.69556, -1598.96631, 13.48650,   0.00000, 0.00000, -1.74000);
	CreateDynamicObject(1581, 1847.19604, -1598.83032, 13.58090,   0.00000, 0.00000, 180.84012);
	CreateDynamicObject(1248, 1853.71814, -1599.02942, 13.53410,   0.00000, 0.00000, 178.49998);
	CreateDynamicObject(1248, 1852.00183, -1599.00232, 13.54407,   0.00000, 0.00000, 179.28009);
	CreateDynamicObject(955, 1858.08594, -1600.76147, 13.03470,   0.00000, 0.00000, 179.33987);
	CreateDynamicObject(955, 1860.73047, -1600.79761, 13.03470,   0.00000, 0.00000, 179.40007);
	CreateDynamicObject(11665, 1846.03430, -1574.49377, 13.35180,   0.00000, 0.00000, -50.04001);
	CreateDynamicObject(3749, 1870.60620, -1579.81580, 17.87530,   0.00000, 0.00000, -91.56000);
	CreateDynamicObject(987, 1868.50513, -1589.95740, 12.55600,   0.00000, 0.00000, -92.40000);
	CreateDynamicObject(987, 1869.06030, -1559.40381, 12.62547,   0.00000, 0.00000, -90.42001);
	CreateDynamicObject(8657, 1930.58569, -1586.91406, 13.77240,   0.00000, 0.00000, -0.96000);
	CreateDynamicObject(8657, 1931.14734, -1555.95532, 13.77240,   0.00000, 0.00000, -0.96000);
	CreateDynamicObject(8657, 1931.12708, -1552.93811, 13.86840,   0.00000, 0.00000, -0.90000);
    for(new i, Float: fPlayerPos[3]; i < MAX_PLAYERS; i++) {
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) {
			Streamer_UpdateEx(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			GetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			SetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2] + 2.5);
			TogglePlayerControllable(i, true);
		}
	}
	// Headroom for static objects - streamed limits are completely independent (cause of old crashing)
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, 965);
}
