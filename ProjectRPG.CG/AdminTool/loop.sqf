VehicleMarkers_TOGGLE = true;
Veh_Markers = [];

while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "AdminTool\activate.sqf";


  waitUntil {!alive player};
};