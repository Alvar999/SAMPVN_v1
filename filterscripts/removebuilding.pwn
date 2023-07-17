// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#include <a_samp>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
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

public OnPlayerConnect(playerid)
{
	RemoveBuildingForPlayer(playerid, 2942, 1497.7467041016, -1749.8747558594, 15.088212013245, 0.25);
	//city hall
	RemoveBuildingForPlayer(playerid, 4024, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4045, 1479.3359, -1802.2891, 12.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 4046, 1479.5234, -1852.6406, 24.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 4047, 1531.6328, -1852.6406, 24.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 1527, 1448.2344, -1755.8984, 14.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 4217, 1449.2500, -1852.5703, 22.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1407.1953, -1749.3125, 13.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 1266, 1482.0859, -1859.9688, 25.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1405.2344, -1821.1172, 13.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1417.9766, -1832.5313, 11.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1405.5781, -1831.6953, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 1393.2734, -1796.3516, 16.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1465.4766, -1848.2500, 12.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1466.9453, -1847.8438, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1419.7344, -1846.5469, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1420.4297, -1845.3438, 12.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1419.6953, -1844.2031, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1420.4922, -1842.4375, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1419.7266, -1842.8516, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 1419.6719, -1842.0313, 12.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 4170, 1433.9531, -1844.4063, 21.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1447.1016, -1832.5000, 12.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1432.3047, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 4174, 1435.7656, -1823.6641, 15.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1456.3984, -1832.5313, 11.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1464.0938, -1831.8828, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1260, 1482.0859, -1859.9688, 25.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 4004, 1479.5234, -1852.6406, 24.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 1357, 1487.6953, -1848.1094, 12.8125, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1486.2109, -1848.1250, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1468.0625, -1847.7891, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 1488.9219, -1848.2734, 12.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1480.0313, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 3997, 1479.3359, -1802.2891, 12.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 4171, 1503.3984, -1848.3359, 21.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1504.8438, -1832.5313, 11.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1499.0469, -1832.2734, 12.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1515.3828, -1850.0547, 12.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1514.4219, -1850.0391, 12.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1512.9453, -1832.3516, 13.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1516.6875, -1850.0547, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1404.9141, -1765.2656, 12.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 4173, 1427.2734, -1756.1797, 15.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1415.3125, -1748.5625, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1429.5313, -1748.4219, 12.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1438.0313, -1747.9375, 13.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1447.9063, -1748.2266, 12.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1516.0000, -1748.6016, 13.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 4048, 1531.6328, -1852.6406, 24.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1538.9453, -1849.2734, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 1538.8359, -1847.6250, 13.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1538.3906, -1847.9297, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1539.1016, -1847.2969, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1529.2891, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1549.5313, -1832.3125, 12.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1555.6641, -1830.5938, 13.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4175, 1524.4141, -1823.8516, 15.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1554.8203, -1816.1563, 13.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1553.2578, -1764.8125, 12.7969, 0.25);
	RemoveBuildingForPlayer(playerid, 4172, 1534.7656, -1756.1797, 15.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1533.2656, -1749.0234, 12.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1522.1641, -1748.5703, 13.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1553.7031, -1747.9375, 13.4063, 0.25);
	////
	RemoveBuildingForPlayer(playerid, 5397, 1866.329, -1789.780, 20.945, 0.250);
	RemoveBuildingForPlayer(playerid, 5536, 1866.329, -1789.780, 20.945, 0.250);
	/*//park
	RemoveBuildingForPlayer(playerid, 4026, 1497.7969, -1543.7109, 17.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1304.7734, -1780.1094, 12.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4057, 1479.5547, -1693.1406, 19.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 4210, 1479.5625, -1631.4531, 12.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 4218, 1497.7031, -1546.6172, 43.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1457.9375, -1620.6953, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1496.8672, -1707.8203, 13.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1468.9844, -1713.5078, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1479.6953, -1716.7031, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1488.7656, -1713.7031, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1289, 1504.7500, -1711.8828, 13.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1258, 1445.0078, -1704.7656, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1258, 1445.0078, -1692.2344, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1445.8125, -1650.0234, 22.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1457.7266, -1710.0625, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1461.6563, -1707.6875, 11.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1468.9844, -1704.6406, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1463.0625, -1701.5703, 13.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1479.6953, -1702.5313, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1457.5547, -1697.2891, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1468.9844, -1694.0469, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1479.3828, -1692.3906, 15.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 4186, 1479.5547, -1693.1406, 19.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1461.1250, -1687.5625, 11.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1463.0625, -1690.6484, 13.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 641, 1458.6172, -1684.1328, 11.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1457.2734, -1666.2969, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1468.9844, -1682.7188, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1471.4063, -1666.1797, 22.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1479.3828, -1682.3125, 15.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1458.2578, -1659.2578, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1449.8516, -1655.9375, 22.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1477.9375, -1652.7266, 15.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1479.6094, -1653.2500, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1457.3516, -1650.5703, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1454.4219, -1642.4922, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1467.8516, -1646.5938, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1472.8984, -1651.5078, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1465.9375, -1639.8203, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1466.4688, -1637.9609, 15.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1449.5938, -1635.0469, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1467.7109, -1632.8906, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1232, 1465.8906, -1629.9766, 15.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1472.6641, -1627.8828, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1479.4688, -1626.0234, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 3985, 1479.5625, -1631.4531, 12.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 4206, 1479.5547, -1639.6094, 13.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1232, 1465.8359, -1608.3750, 15.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1488.7656, -1704.5938, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1494.2109, -1694.4375, 13.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1488.7656, -1693.7344, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1496.9766, -1686.8516, 11.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 641, 1494.1406, -1689.2344, 11.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1488.7656, -1682.6719, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1480.6094, -1666.1797, 22.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1488.2266, -1666.1797, 22.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1486.4063, -1651.3906, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1491.3672, -1646.3828, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1493.1328, -1639.4531, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1486.1797, -1627.7656, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1491.2188, -1632.6797, 13.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1232, 1494.4141, -1629.9766, 15.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 1232, 1494.3594, -1608.3750, 15.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 4016, 1497.7969, -1543.7109, 17.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 1288, 1504.7500, -1705.4063, 13.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1287, 1504.7500, -1704.4688, 13.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1286, 1504.7500, -1695.0547, 13.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1285, 1504.7500, -1694.0391, 13.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1498.9609, -1684.6094, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1504.1641, -1662.0156, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1504.7188, -1670.9219, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1503.1875, -1621.1250, 11.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1501.2813, -1624.5781, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1498.3594, -1616.9688, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 712, 1508.4453, -1668.7422, 22.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1505.6953, -1654.8359, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1508.5156, -1647.8594, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 625, 1513.2734, -1642.4922, 13.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 1258, 1510.8906, -1607.3125, 13.6953, 0.25);*/
	//Taxi
	RemoveBuildingForPlayer(playerid, 6463, 389.7734, -2028.4688, 19.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2028.5000, 32.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2021.6406, 29.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2017.4531, 24.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2017.4297, 16.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2021.6328, 10.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2028.5156, 8.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2035.3984, 10.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2039.6406, 16.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2039.6563, 24.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 3751, 389.8750, -2035.3828, 29.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2039.6406, 16.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2039.6563, 24.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 6298, 389.7734, -2028.4688, 19.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 6461, 389.7734, -2028.5000, 20.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2028.5000, 32.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2021.6406, 29.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2017.4531, 24.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2017.4297, 16.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2021.6328, 10.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2028.5156, 8.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2035.3984, 10.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 3752, 389.8750, -2035.3828, 29.9531, 0.25);
	//////////////
    RemoveBuildingForPlayer(playerid, 5517, 1883.5234, -1576.4453, 20.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 5634, 1931.3125, -1574.8438, 16.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 740, 1887.1953, -1565.8984, 9.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 740, 1863.3125, -1568.6484, 11.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 1261, 1885.8516, -1550.5781, 24.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1891.9688, -1622.0000, 12.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1857.5469, -1608.1172, 16.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1870.2578, -1602.8047, 12.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 1835.1406, -1600.1797, 12.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1842.4219, -1569.4609, 12.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 5476, 1883.5234, -1576.4453, 20.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 1267, 1885.8516, -1550.5781, 24.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 5630, 1928.4922, -1575.9688, 20.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 1931.7422, -1569.8828, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2114.5547, -1928.1875, 5.0313, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2113.3984, -1925.0391, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2115.6719, -1922.7656, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2123.3594, -1928.0703, 6.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2122.6563, -1916.7891, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2116.9297, -1916.0781, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2121.5078, -1909.5313, 10.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2110.2734, -1906.5859, 5.0313, 0.25);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
