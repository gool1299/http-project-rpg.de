/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_switch = _this select 0;
_whatanumber = 1;

switch (_switch) do
{
	case 0:
	{
		_query = "";
		switch (_whatanumber) do {
			case 1: {_query = format["UPDATE dynmarket SET prices='%1'",DYNMARKET_Items_CurrentPriceArr];};
		};

		_queryResult = [_query,1] call DB_fnc_asyncCall;
		diag_log "### DYNMARKET >> SUCCESSFULLY BACKUP'D CURRENT PRICES TO DATABASE!   ###";
	};
	
	case 1:
	{
		_query = switch(_whatanumber) do {
			case 1: {_returnCount = 11; format["SELECT prices FROM dynmarket WHERE id='1'"];};
		};


		_tickTime = diag_tickTime;
		_queryResult = [_query,2] call DB_fnc_asyncCall;

		_pricearray = _queryResult select 0;
		if (count _pricearray < 1) then {
			diag_log "########################## DYNAMIC MARKET ##########################";
			diag_log "### >> CAN'T LOAD PRICES FROM DATABASE: ERROR 01x                ###";
			diag_log "###        THE REQUESTED PRICEARRAY WAS UNEXPECTEDLY EMPTY!      ###";
			diag_log "###        IF YOU ARE RUNNING DYNMARKET FOR THE FIRST TIME,      ###";
			diag_log "###        PLEASE IGNORE THIS ERROR!                             ###";
			diag_log "####################################################################";
		} else {
			DYNMARKET_Items_CurrentPriceArr = _pricearray;
			{
				_itemName = _x select 0;
				_itemNewPrice = _x select 1;		
				_index = -1;
				{
					_index = _index + 1;
					_curItemName = _x select 0;
					if (_curItemName==_itemName) then {
						DYNMARKET_sellarraycopy set [_index,[_itemName,_itemNewPrice]];
					};
				} forEach DYNMARKET_sellarraycopy;
			} forEach DYNMARKET_Items_CurrentPriceArr;
			diag_log "########################## DYNAMIC MARKET ##########################";
			diag_log "### >> SUCCESSFULLY LOADED PRICES FROM DATABASE!                 ###";
			diag_log "####################################################################";
		};
	};
};