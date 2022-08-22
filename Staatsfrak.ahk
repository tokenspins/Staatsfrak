#NoEnv
#IfWinActive, GTA:SA:MP
#SingleInstance Force
If(!A_IsAdmin)
{
Run *RunAs "%A_ScriptFullPath%"
ExitApp
}
A_Data = %A_ScriptDir%\Data
IfNotExist, %A_Data%
FileCreateDir, %A_Data%
IfNotExist, %A_ScriptDir%\API.dll
{
TrayTip, Staatsfraktionskeybinder, Keybinderdatein werden heruntergeladen..., 1, 1
URLDownloadToFile, https://github.com/tokenspins/Staatsfrak-release/raw/main/Files/API.dll, %A_ScriptDir%\API.dll
}
IfNotExist, %A_ScriptDir%\Gametext.dll
{
TrayTip, Staatsfraktionskeybinder, Keybinderdatein werden heruntergeladen..., 1, 1
URLDownloadToFile https://github.com/tokenspins/Staatsfrak-release/raw/main/Files/Gametext.dll, %A_ScriptDir%\Gametext.dll
}
IfNotExist, %A_Data%\trenn1.png
{
TrayTip, Staatsfraktionskeybinder, Keybinderdatein werden heruntergeladen..., 1, 1
URLDownloadToFile https://github.com/tokenspins/Staatsfrak-release/raw/main/Files/trenn1.png, %A_Data%\trenn1.png
}
IfNotExist, %A_Data%\trenn2.png
{
TrayTip, Staatsfraktionskeybinder, Keybinderdatein werden heruntergeladen..., 1, 1
URLDownloadToFile https://github.com/tokenspins/Staatsfrak-release/raw/main/Files/trenn2.png, %A_Data%\trenn2.png
}
IfNotExist, %A_Data%\Army-personnel-icon.png
{
TrayTip, Staatsfraktionskeybinder, Keybinderdatein werden heruntergeladen..., 1, 1
URLDownloadToFile https://github.com/tokenspins/Staatsfrak-release/raw/main/Files/Army-personnel-icon.png, %A_Data%\Army-personnel-icon.png
}
IfNotExist, %A_Data%\Police-Officer-icon.png
{
TrayTip, Staatsfraktionskeybinder, Keybinderdatein werden heruntergeladen..., 1, 1
URLDownloadToFile https://github.com/tokenspins/Staatsfrak-release/raw/main/Files/Police-Officer-icon.png, %A_Data%\Police-Officer-icon.png
}
global ERROR_OK                     := 0
global ERROR_PROCESS_NOT_FOUND      := 1
global ERROR_OPEN_PROCESS           := 2
global ERROR_INVALID_HANDLE         := 3
global ERROR_MODULE_NOT_FOUND       := 4
global ERROR_ENUM_PROCESS_MODULES   := 5
global ERROR_ZONE_NOT_FOUND         := 6
global ERROR_CITY_NOT_FOUND         := 7
global ERROR_READ_MEMORY            := 8
global ERROR_WRITE_MEMORY           := 9
global ERROR_ALLOC_MEMORY           := 10
global ERROR_FREE_MEMORY            := 11
global ERROR_WAIT_FOR_OBJECT        := 12
global ERROR_CREATE_THREAD          := 13
global ADDR_ZONECODE                := 0xA49AD4
global ADDR_POSITION_X              := 0xB6F2E4
global ADDR_POSITION_Y              := 0xB6F2E8
global ADDR_POSITION_Z              := 0xB6F2EC
global ADDR_CPED_PTR                := 0xB6F5F0
global ADDR_CPED_HPOFF              := 0x540
global ADDR_CPED_ARMOROFF           := 0x548
global ADDR_CPED_MONEY              := 0x0B7CE54
global ADDR_CPED_INTID              := 0xA4ACE8
global ADDR_CPED_SKINIDOFF          := 0x22
global ADDR_VEHICLE_PTR             := 0xBA18FC
global ADDR_VEHICLE_HPOFF           := 0x4C0
global ADDR_VEHICLE_DOORSTATE       := 0x4F8
global ADDR_VEHICLE_ENGINESTATE     := 0x428
global ADDR_VEHICLE_LIGHTSTATE      := 0x584
global ADDR_VEHICLE_MODEL           := 0x22
global ADDR_VEHICLE_TYPE            := 0x590
global ADDR_VEHICLE_DRIVER          := 0x460
global ADDR_VEHICLE_X               := 0x44
global ADDR_VEHICLE_Y               := 0x48
global ADDR_VEHICLE_Z               := 0x4C
global oAirplaneModels := [417, 425, 447, 460, 469, 476, 487, 488, 497, 511, 512, 513, 519, 520, 548, 553, 563, 577, 592, 593]
global oBikeModels := [481,509,510]
global ovehicleNames := ["Landstalker","Bravura","Buffalo","Linerunner","Perrenial","Sentinel","Dumper","Firetruck","Trashmaster","Stretch","Manana","Infernus","Voodoo","Pony","Mule","Cheetah","Ambulance","Leviathan","Moonbeam","Esperanto","Taxi","Washington","Bobcat","Whoopee","BFInjection","Hunter","Premier","Enforcer","Securicar","Banshee","Predator","Bus","Rhino","Barracks","Hotknife","Trailer","Previon","Coach","Cabbie","Stallion","Rumpo","RCBandit","Romero","Packer","Monster","Admiral","Squalo","Seasparrow","Pizzaboy","Tram","Trailer","Turismo","Speeder","Reefer","Tropic","Flatbed","Yankee","Caddy","Solair","Berkley'sRCVan","Skimmer","PCJ-600","Faggio","Freeway","RCBaron","RCRaider","Glendale","Oceanic","Sanchez","Sparrow","Patriot","Quad","Coastguard","Dinghy","Hermes","Sabre","Rustler","ZR-350","Walton","Regina","Comet","BMX","Burrito","Camper","Marquis","Baggage","Dozer","Maverick","NewsChopper","Rancher","FBIRancher","Virgo","Greenwood","Jetmax","Hotring","Sandking","BlistaCompact","PoliceMaverick","Boxvillde","Benson","Mesa","RCGoblin","HotringRacerA","HotringRacerB","BloodringBanger","Rancher","SuperGT","Elegant","Journey","Bike","MountainBike","Beagle","Cropduster","Stunt","Tanker","Roadtrain","Nebula","Majestic","Buccaneer","Shamal","hydra","FCR-900","NRG-500","HPV1000","CementTruck","TowTruck","Fortune","Cadrona","FBITruck","Willard","Forklift","Tractor","Combine","Feltzer","Remington","Slamvan","Blade","Freight","Streak","Vortex","Vincent","Bullet","Clover","Sadler","Firetruck","Hustler","Intruder","Primo","Cargobob","Tampa","Sunrise","Merit","Utility","Nevada","Yosemite","Windsor","Monster","Monster","Uranus","Jester","Sultan","Stratum","Elegy","Raindance","RCTiger","Flash","Tahoma","Savanna","Bandito","FreightFlat","StreakCarriage","Kart","Mower","Dune","Sweeper","Broadway","Tornado","AT-400","DFT-30","Huntley","Stafford","BF-400","NewsVan","Tug","Trailer","Emperor","Wayfarer","Euros","Hotdog","Club","FreightBox","Trailer","Andromada","Dodo","RCCam","Launch","PoliceCar","PoliceCar","PoliceCar","PoliceRanger","Picador","S.W.A.T","Alpha","Phoenix","GlendaleShit","SadlerShit","Luggage","Luggage","Stairs","Boxville","Tiller","UtilityTrailer"]
global oweaponNames := ["Fist","Brass Knuckles","Golf Club","Nightstick","Knife","Baseball Bat","Shovel","Pool Cue","Katana","Chainsaw","Purple Dildo","Dildo","Vibrator","Silver Vibrator","Flowers","Cane","Grenade","Tear Gas","Molotov Cocktail", "", "", "", "9mm","Silenced 9mm","Desert Eagle","Shotgun","Sawnoff Shotgun","Combat Shotgun","Micro SMG/Uzi","MP5","AK-47","M4","Tec-9","Country Rifle","Sniper Rifle","RPG","HS Rocket","Flamethrower","Minigun","Satchel Charge","Detonator","Spraycan","Fire Extinguisher","Camera","Night Vis Goggles","Thermal Goggles","Parachute"]
global oradiostationNames := ["Playback FM", "K Rose", "K-DST", "Bounce FM", "SF-UR", "Radio Los Santos", "Radio X", "CSR 103.9", "K-JAH West", "Master Sounds 98.3", "WCTR Talk Radio", "User Track Player", "Radio Off"]
global oweatherNames := ["EXTRASUNNY_LA", "SUNNY_LA", "EXTRASUNNY_SMOG_LA", "SUNNY_SMOG_LA", "CLOUDY_LA", "SUNNY_SF", "EXTRASUNNY_SF", "CLOUDY_SF", "RAINY_SF", "FOGGY_SF", "SUNNY_VEGAS", "EXTRASUNNY_VEGAS", "CLOUDY_VEGAS", "EXTRASUNNY_COUNTRYSIDE", "SUNNY_COUNTRYSIDE", "CLOUDY_COUNTRYSIDE", "RAINY_COUNTRYSIDE", "EXTRASUNNY_DESERT", "SUNNY_DESERT", "SANDSTORM_DESERT", "UNDERWATER", "EXTRACOLOURS_1", "EXTRACOLOURS_2"]
global ADDR_SAMP_INCHAT_PTR                 := 0x21a10c
global ADDR_SAMP_INCHAT_PTR_OFF             := 0x55
global ADDR_SAMP_USERNAME                   := 0x219A6F
global FUNC_SAMP_SENDCMD                    := 0x65c60
global FUNC_SAMP_SENDSAY                    := 0x57f0
global FUNC_SAMP_ADDTOCHATWND               := 0x64520
global ADDR_SAMP_CHATMSG_PTR                := 0x21a0e4
global FUNC_SAMP_SHOWGAMETEXT               := 0x9c2c0
global FUNC_SAMP_PLAYAUDIOSTR               := 0x62da0
global FUNC_SAMP_STOPAUDIOSTR               := 0x629a0
global DIALOG_STYLE_MSGBOX                  := 0
global DIALOG_STYLE_INPUT                   := 1
global DIALOG_STYLE_LIST                    := 2
global DIALOG_STYLE_PASSWORD                := 3
global DIALOG_STYLE_TABLIST                 := 4
global DIALOG_STYLE_TABLIST_HEADERS         := 5
global SAMP_DIALOG_STRUCT_PTR               := 0x21A0B8
global SAMP_DIALOG_PTR1_OFFSET              := 0x1C
global SAMP_DIALOG_LINES_OFFSET             := 0x44C
global SAMP_DIALOG_INDEX_OFFSET             := 0x443
global SAMP_DIALOG_BUTTON_HOVERING_OFFSET   := 0x465
global SAMP_DIALOG_BUTTON_CLICKED_OFFSET    := 0x466
global SAMP_DIALOG_PTR2_OFFSET              := 0x20
global SAMP_DIALOG_LINECOUNT_OFFSET         := 0x150
global SAMP_DIALOG_OPEN_OFFSET              := 0x28
global SAMP_DIALOG_STYLE_OFFSET             := 0x2C
global SAMP_DIALOG_ID_OFFSET                := 0x30
global SAMP_DIALOG_TEXT_PTR_OFFSET          := 0x34
global SAMP_DIALOG_CAPTION_OFFSET           := 0x40
global FUNC_SAMP_SHOWDIALOG                 := 0x6B9C0
global FUNC_SAMP_CLOSEDIALOG                := 0x6C040
global FUNC_UPDATESCOREBOARD                := 0x8A10
global SAMP_INFO_OFFSET                     := 0x21A0F8
global ADDR_SAMP_CRASHREPORT                := 0x5CF2C
global SAMP_PPOOLS_OFFSET                   := 0x3CD
global SAMP_PPOOL_PLAYER_OFFSET             := 0x18
global SAMP_SLOCALPLAYERID_OFFSET           := 0x4
global SAMP_ISTRLEN_LOCALPLAYERNAME_OFFSET  := 0x1A
global SAMP_SZLOCALPLAYERNAME_OFFSET        := 0xA
global SAMP_PSZLOCALPLAYERNAME_OFFSET       := 0xA
global SAMP_PREMOTEPLAYER_OFFSET            := 0x2E
global SAMP_ISTRLENNAME___OFFSET            := 0x1C
global SAMP_SZPLAYERNAME_OFFSET             := 0xC
global SAMP_PSZPLAYERNAME_OFFSET            := 0xC
global SAMP_ILOCALPLAYERPING_OFFSET         := 0x26
global SAMP_ILOCALPLAYERSCORE_OFFSET        := 0x2A
global SAMP_IPING_OFFSET                    := 0x28
global SAMP_ISCORE_OFFSET                   := 0x24
global SAMP_ISNPC_OFFSET                    := 0x4
global SAMP_PLAYER_MAX                      := 1004
global ADDR_CP_CHECK                        := 0xC7DEEA
global ADDR_REDMARKER                       := [0xC7DEC8, 0xC7DECC, 0xC7DED0]
global SIZE_SAMP_CHATMSG                    := 0xFC
global SAMP_COLOR_OFFSET := 0x216378
global SAMP_MAX_VEHICLES := 2000
global VEHICLE_ISLISTED_OFFSET := 0x3074
global VEHICLE_GTA_PTR := 0x4FB4
global SAMP_PPOOL_VEHICLE_OFFSET := 0x1C
global iRefreshVeh := 0
global oVehiclePoolData := []
global iUpdateTickVeh := 1000
global hGTA                                 := 0x0
global dwGTAPID                             := 0x0
global dwSAMP                               := 0x0
global pMemory                              := 0x0
global pParam1                              := 0x0
global pParam2                              := 0x0
global pParam3                              := 0x0
global pParam4                              := 0x0
global pParam5                              := 0x0
global pInjectFunc                          := 0x0
global nZone                                := 1
global nCity                                := 1
global bInitZaC                             := 0
global iRefreshScoreboard                   := 0
global oScoreboardData                      := ""
global iRefreshHandles                      := 0
global iUpdateTick                          := 2500
API_ERROR_NONE 								:= 0
API_ERROR_SNAPSHOT_FAILED 					:= 1
API_ERROR_SAMP_NOT_FOUND 					:= 2
API_ERROR_REMOTE_MEMORY_ALLOCATION_FAILED 	:= 3
API_ERROR_WRITEPROCESSMEMORY_FAILED 		:= 4
API_ERROR_GETPROCADDRESS_FAILED 			:= 5
API_ERROR_REMOTETHREAD_FAILED 				:= 6
API_ERROR_INVALID_GTA_HANDLE				:= 7
API_ERROR_PIPE_DOESNT_RESPOND 				:= 8
API_ERROR_STRING_TOO_LONG					:= 9
CALLBACK_POSITION							:= 2
PATH_API := RelToAbs(A_ScriptDir, "API.dll")
hModule := DllCall("LoadLibrary", Str, PATH_API)
if(hModule == -1 || hModule == 0)
{
MsgBox, 48, API - Fehler, Die API.dll konnte nicht gefunden werden.`nDer Keybinder wird nun beendet.
ExitApp
}
Init_func 				:= DllCall("GetProcAddress", UInt, hModule, Str, "API_Init")
SetParam_func 			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_SetParam")
RMEM_func		 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ReadMemory")
WMEM_func				:= DllCall("GetProcAddress", UInt, hModule, Str, "API_WriteMemory")
GetBasePointer_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetBasePointer")
GetCommandLine_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCommandLine")
GetLastError_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetLastError")
SetLastError_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_SetLastError")
GetPlayerPosition_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPosition")
TextCreate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextCreate")
TextDestroy_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextDestroy")
TextSetShadow_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetShadow")
TextSetShown_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetShown")
TextSetColor_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetColor")
TextSetPos_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetPos")
TextSetString_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetString")
TextUpdate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextUpdate")
BoxCreate_func 			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxCreate")
BoxDestroy_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxDestroy")
BoxSetShown_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetShown")
BoxSetBorder_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetBorder")
BoxSetBorderColor_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetBorderColor")
BoxSetColor_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetColor")
BoxSetHeight_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetHeight")
BoxSetPos_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetPos")
BoxSetWidth_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetWidth")
LineCreate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineCreate")
LineDestroy_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineDestroy")
LineSetShown_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetShown")
LineSetColor_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetColor")
LineSetWidth_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetWidth")
LineSetPos_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetPos")
ImageCreate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageCreate")
ImageDestroy_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageDestroy")
ImageSetShown_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetShown")
ImageSetAlign_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetAlign")
ImageSetPos_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetPos")
ImageSetRotation_func	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetRotation")
DestroyAllVisual_func	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_DestroyAllVisual")
ShowAllVisual_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowAllVisual")
HideAllVisual_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_HideAllVisual")
SetCallbackPointer_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_SetCallbackPointer")
UnSetCallbackPointer_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_UnSetCallbackPointer")
SetListenCallback_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_SetListenCallback")
UnSetListenCallback_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_UnSetListenCallback")
UnSetListenCallbackAll_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnSetListenCallbackAll")
Init()
{
global Init_func
res := DllCall(Init_func)
return res
}
SetParam(str_Name, str_Value)
{
global SetParam_func
res := DllCall(SetParam_func, Str, str_Name, Str, str_Value)
return res
}
RMEM(addr, size, ByRef data)
{
global RMEM_func
VarSetCapacity(data,size)
res := DllCall(RMEM_func, UInt, addr, UInt, size, StrP, data)
return res
}
WMEM(addr, size, data)
{
global WMEM_func
res := DllCall(WMEM_func, UInt, addr, UInt, size, Str, data)
return res
}
GetBasePointer(dll)
{
global GetBasePointer_func
res :=DllCall(GetBasePointer_func, Str, dll)
return res
}
GetCommandLine(ByRef line)
{
global GetCommandLine_func
VarSetCapacity(line,512,0)
res := DllCall(GetCommandLine_func, StrP, line)
return res
}
GetLastError()
{
global GetLastError_func
res:=DllCall(GetLastError_func)
return res
}
SetLastError(error)
{
global SetLastError_func
res := DllCall(SetLastError_func, Int, error)
return res
}
GetPlayerPosition(ByRef flo_posX, ByRef flo_posY, ByRef flo_posZ, ByRef flo_Rotation)
{
global GetPlayerPosition_func
res := DllCall(GetPlayerPosition_func, FloatP, flo_posX, FloatP, flo_posY, FloatP, flo_posZ,  FloatP, flo_Rotation)
return res
}
TextCreate(Font, fontsize, bold, italic, x, y, color, text, shadow, show)
{
global TextCreate_func
res := DllCall(TextCreate_func,Str,Font,Int,fontsize,UChar,bold,UChar,italic,Int,x,Int,y,UInt,color,Str,text,UChar,shadow,UChar,show)
return res
}
TextDestroy(id)
{
global TextDestroy_func
res := DllCall(TextDestroy_func,Int,id)
return res
}
TextSetShadow(id, shadow)
{
global TextSetShadow_func
res := DllCall(TextSetShadow_func,Int,id,UChar,shadow)
return res
}
TextSetShown(id, show)
{
global TextSetShown_func
res := DllCall(TextSetShown_func,Int,id,UChar,show)
return res
}
TextSetColor(id,color)
{
global TextSetColor_func
res := DllCall(TextSetColor_func,Int,id,UInt,color)
return res
}
TextSetPos(id,x,y)
{
global TextSetPos_func
res := DllCall(TextSetPos_func,Int,id,Int,x,Int,y)
return res
}
TextSetString(id,Text)
{
global TextSetString_func
res := DllCall(TextSetString_func,Int,id,Str,Text)
return res
}
TextUpdate(id,Font,Fontsize,bold,italic)
{
global TextUpdate_func
res := DllCall(TextUpdate_func,Int,id,Str,Font,int,Fontsize,UChar,bold,UChar,italic)
return res
}
BoxCreate(x,y,width,height,Color,show)
{
global BoxCreate_func
res := DllCall(BoxCreate_func,Int,x,Int,y,Int,width,Int,height,UInt,Color,UChar,show)
return res
}
BoxDestroy(id)
{
global BoxDestroy_func
res := DllCall(BoxDestroy_func,Int,id)
return res
}
BoxSetShown(id,Show)
{
global BoxSetShown_func
res := DllCall(BoxSetShown_func,Int,id,UChar,Show)
return res
}
BoxSetBorder(id,height,Show)
{
global BoxSetBorder_func
res := DllCall(BoxSetBorder_func,Int,id,Int,height,Int,Show)
return res
}
BoxSetBorderColor(id,Color)
{
global BoxSetBorderColor_func
res := DllCall(BoxSetBorderColor_func,Int,id,UInt,Color)
return res
}
BoxSetColor(id,Color)
{
global BoxSetColor_func
res := DllCall(BoxSetColor_func,Int,id,UInt,Color)
return res
}
BoxSetHeight(id,height)
{
global BoxSetHeight_func
res := DllCall(BoxSetHeight_func,Int,id,Int,height)
return res
}
BoxSetPos(id,x,y)
{
global BoxSetPos_func
res := DllCall(BoxSetPos_func,Int,id,Int,x,Int,y)
return res
}
BoxSetWidth(id,width)
{
global BoxSetWidth_func
res := DllCall(BoxSetWidth_func,Int,id,Int,width)
return res
}
LineCreate(x1,y1,x2,y2,width,color,show)
{
global LineCreate_func
res := DllCall(LineCreate_func,Int,x1,Int,y1,Int,x2,Int,y2,Int,Width,UInt,color,UChar,show)
return res
}
LineDestroy(id)
{
global LineDestroy_func
res := DllCall(LineDestroy_func,Int,id)
return res
}
LineSetShown(id,show)
{
global LineSetShown_func
res := DllCall(LineSetShown_func,Int,id,UChar,show)
return res
}
LineSetColor(id,color)
{
global LineSetColor_func
res := DllCall(LineSetColor_func,Int,id,UInt,color)
return res
}
LineSetWidth(id, width)
{
global LineSetWidth_func
res := DllCall(LineSetWidth_func,Int,id,Int,width)
return res
}
LineSetPos(id,x1,y1,x2,y2)
{
global LineSetPos_func
res := DllCall(LineSetPos_func,Int,id,Int,x1,Int,y1,Int,x2,Int,y2)
return res
}
ImageCreate(path, x, y, rotation, align, show)
{
global ImageCreate_func
res := DllCall(ImageCreate_func, Str, path, Int, x, Int, y, Int, rotation, Int, align, UChar, show)
return res
}
ImageDestroy(id)
{
global ImageDestroy_func
res := DllCall(ImageDestroy_func,Int,id)
return res
}
ImageSetShown(id,show)
{
global ImageSetShown_func
res := DllCall(ImageSetShown_func,Int,id,UChar,show)
return res
}
ImageSetAlign(id,align)
{
global ImageSetAlign_func
res := DllCall(ImageSetAlign_func,Int,id,Int,align)
return res
}
ImageSetPos(id, x, y)
{
global ImageSetPos_func
res := DllCall(ImageSetPos_func,Int,id,Int,x, Int, y)
return res
}
ImageSetRotation(id, rotation)
{
global ImageSetRotation_func
res := DllCall(ImageSetRotation_func,Int,id,Int, rotation)
return res
}
DestroyAllVisual()
{
global DestroyAllVisual_func
res := DllCall(DestroyAllVisual_func)
return res
}
ShowAllVisual()
{
global ShowAllVisual_func
res := DllCall(ShowAllVisual_func)
return res
}
HideAllVisual()
{
global HideAllVisual_func
res := DllCall(HideAllVisual_func )
return res
}
SetListenCallback(int_Id)
{
global SetListenCallback_func
res := DllCall(SetListenCallback_func, Int, int_Id)
return res
}
UnSetCallbackPointer()
{
global UnSetCallbackPointer_func
res := DllCall(UnSetCallbackPointer_func)
return res
}
SetCallbackPointer(int_Id)
{
global SetCallbackPointer_func
res := DllCall(SetCallbackPointer_func, Int, int_Id)
return res
}
UnSetListenCallback(int_Id)
{
global UnSetListenCallback_func
res := DllCall(UnSetListenCallback_func, Int, int_Id)
return res
}
UnSetListenCallbackAll()
{
global UnSetListenCallbackAll_func
res := DllCall(UnSetListenCallbackAll_func)
return res
}
GetCallbackPositionParams(ptr_PositionStruct, ByRef fOldPosX, ByRef fOldPosY, ByRef fOldPosZ, ByRef fOldPosR, ByRef fNewPosX, ByRef fNewPosY, ByRef fNewPosZ, ByRef fNewPosR)
{
fOldPosX := NumGet(ptr_PositionStruct+0, "float")
fOldPosY := NumGet(ptr_PositionStruct+4, "float")
fOldPosZ := NumGet(ptr_PositionStruct+8, "float")
fOldPosR := NumGet(ptr_PositionStruct+12, "float")
fNewPosX := NumGet(ptr_PositionStruct+16, "float")
fNewPosY := NumGet(ptr_PositionStruct+20, "float")
fNewPosZ := NumGet(ptr_PositionStruct+24, "float")
fNewPosR := NumGet(ptr_PositionStruct+28, "float")
}
DecimalToHex(Var){
SetFormat, IntegerFast, hex
Dec2Hex += Var
Dec2Hex .= ""
SetFormat, IntegerFast, d
StringTrimLeft, Dec2Hex, Dec2Hex, 2
StringUpper, Dec2Hex, Dec2Hex
sDec2Hex .= Dec2Hex
return sDec2Hex
}
RelToAbs(root, dir, s = "\") {
pr := SubStr(root, 1, len := InStr(root, s, "", InStr(root, s . s) + 2) - 1)
, root := SubStr(root, len + 1), sk := 0
If InStr(root, s, "", 0) = StrLen(root)
StringTrimRight, root, root, 1
If InStr(dir, s, "", 0) = StrLen(dir)
StringTrimRight, dir, dir, 1
Loop, Parse, dir, %s%
{
If A_LoopField = ..
StringLeft, root, root, InStr(root, s, "", 0) - 1
Else If A_LoopField =
root =
Else If A_LoopField != .
Continue
StringReplace, dir, dir, %A_LoopField%%s%
}
Return, pr . root . s . dir
}
posfunc(dir = false, x = false, y = false, z = false) {
if (!x && !y && !z)
GetPlayerPosition(x, y, z, r)
if (x >= -145 && x <= 524) && (y >= 1591 && y <= 2213)
mpos := "ehem. Army Base"
else if (x >= 1702 && x <= 1847) && (y >= 2023 && y <= 2183) || (x >= 1700 && x <= 1757) && (y >= 1852 && y <= 2043)
mpos := "ehem. Feuerwehrbase (LV)"
else if (x >= -30.4414 && x <= 76.1322) && (y >= -143.6597 && y <= 49.0152)
mpos := "Nullpunkt"
else if (z >= 850)
mpos := "Interior"
else if (x >= -2767 && x <= -2589) && (y >= 1158 && y <= 2244)
mpos := "Gant Bridge"
else if (x >= 824 && x <= 1199) && (y >= 1101 && y <= 1373)
mpos := "Fahrschule (LV)"
else if (x >= 196 && x <= 872) && (y >= 985 && y <= 1291)
mpos := "Farm (LV)"
else if (x >= 329 && x <= 824) && (y >= 1291 && y <= 1591)
mpos := "Oel-Pumpen bei Tank BIZ"
else if (x >= 250 && x <= 958) && (y >= 632 && y <= 1057) || (x >= 872 && x <= 958) && (y >= 1058 && y <= 1101)
mpos := "Steinbruch"
else if (x >= -476 && x <= 250) && (y >= 725 && y <= 1269)
mpos := "Fort Carson"
else if (x >= -500 && x <= -118) && (y >= 1269 && y <= 1683) || (x >= -500 && x <= -476) && (y >= 1228 && y <= 1269)
mpos := "Terror Base"
else if (x >= -533 && x <= -214) && (y >= 2084 && y <= 2357)
mpos := "altes Dorf (Paintball-Map)"
else if (x >= -891 && x <= -289) && (y >= -722 && y <= -241)
mpos := "ehem. SALA Base"
else if (x >= -891 && x <= -387) && (y >= -848 && y <= -723) || (x >= -892 && x <= -327) && (y >= -1461 && y <= -848) || (x >= -412 && x <= -327) && (y >= -1544 && y <= -1461)
mpos := "Aecker bei ehem. SALA Tanke"
else if (x >= -1673 && x <= -891) && (y >= -1461 && y <= -892)
mpos := "The Farm"
else if (x >= -2073 && x <= -1863) && (y >= 225 && y <= 387)
mpos := "Wang Cars"
else if (x >= -1673 && x <= -412) && (y >= -1952 && y <= -1461)
mpos := "Hanffarm"
else if (x >= -2779 && x <= -2472) && (y >= 434 && y <= 728)
mpos := "Krankenhaus (SF)"
else if (x >= -2701 && x <= -2277) && (y >= 551 && y <= 917)
mpos := "24/7 (SF Stadt)"
else if (x >= -2995 && x <= -2701) && (y >= 551 && y <= 1217)
mpos := "ehem. Admininsel"
else if (x >= -1673 && x <= -1040) && (y >= -2500 && y <= -1952)
mpos := "Sumpf bei Mount Chiliad"
else if (x >= -2565 && x <= -1673) && (y >= -2713 && y <= -2191)
mpos := "Angel Pine"
else if (x >= -2975 && x <= -2565) && (y >= -2913 && y <= -2191) || (x >= -2565 && x <= -1673) && (y >= -2913 && y <= -2713)
mpos := "Strand bei Mount Chiliad"
else if (x >= -1673 && x <= -1040) && (y >= -2979 && y <= -2500)
mpos := "24/7 bei Angel Pine"
else if (x >= -2004 && x <= -1673) && (y >= -1835 && y <= -1385)
mpos := "Schrottplatz Mount Chiliad"
else if (x >= -2975 && x <= -1673) && (y >= -2191 && y <= -892)
mpos := "Mount Chiliad"
else if (x >= -2975 && x <= -2245) && (y >= -892 && y <= -438)
mpos := "Missionary Hill"
else if (x >= -2245 && x <= -1863) && (y >= -892 && y <= -366)
mpos := "Dirtring Arena bei Fahrschule (SF)"
else if (x >= -2975 && x <= -2245) && (y >= -438 && y <= -65)
mpos := "Golfclub (SF)"
else if (x >= -2245 && x <= -1863) && (y >= -366 && y <= -65)
mpos := "Fahrschule (SF)"
else if (x >= -1180 && x <= -891) && (y >= -892 && y <= -519)
mpos := "Raffinerie bei Airport (SF)"
else if (x >= -2992 && x <= -2335) && (y >= 2071 && y <= 2992) || (x >= -2335 && x <= -2087) && (y >= 2071 && y <= 2100)
mpos := "Bayside"
else if (x >= -2335 && x <= -1912) && (y >= 2435 && y <= 2992)
mpos := "Bayside Tunnels"
else if (x >= -2087 && x <= -1911) && (y >= 2071 && y <= 2435)
mpos := "gemappte Villa bei Bayside"
else if (x >= -1911 && x <= -1298) && (y >= 2229 && y <= 2992)
mpos := "El Quebrados"
else if (x >= -1911 && x <= -1231) && (y >= 1602 && y <= 2229) || (x >= -1231 && x <= -1008) && (y >= 1776 && y <= 2229)
mpos := "westlich Sherman Staudamm"
else if (x >= -1298 && x <= -717) && (y >= 2554 && y <= 2992)
mpos := "Bruecke El Quebrados - ehem. Knast"
else if (x >= -1298 && x <= -717) && (y >= 2229 && y <= 2554) || (x >= -1008 && x <= -533) && (y >= 2157 && y <= 2229) || (x >= -717 && x <= -533) && (y >= 2229 && y <= 2357)
mpos := "Stausee"
else if (x >= -717 && x <= -409) && (y >= 2357 && y <= 2992)
mpos := "ehem. Knast"
else if (x >= -409 && x <= -129) && (y >= 2357 && y <= 2992)
mpos := "Dorf beim ehem. Knast"
else if (x >= -2965 && x <= -2825) && (y >= 1217 && y <= 1342) || (x >= -2825 && x <= -2767) && (y >= 1217 && y <= 1531) || (x >= -2589 && x <= -2303) && (y >= 1158 && y <= 1462) || (x >= -2303 && x <= -2222) && (y >= 1327 && y <= 1462)
mpos := "Jizzys Club bei Gant Bridge"
else if (x >= -2589 && x <= -2222) && (y >= 1462 && y <= 1670)
mpos := "Frachtschiff bei Gant Bridge"
else if (x >= -2222 && x <= -1863) && (y >= 1327 && y <= 1602) || (x >= -1863 && x <= -1614) && (y >= 1386 && y <= 1602)
mpos := "SF Docks"
else if (x >= -1614 && x <= -1231) && (y >= 1386 && y <= 1602) || (x >= -1481 && x <= -1231) && (y >= 1228 && y <= 1386)
mpos := "Frachtschiff bei Garver Bridge"
else if (x >= -1008 && x <= -448) && (y >= 1776 && y <= 2157)
mpos := "Sherman Staudamm"
else if (x >= -500 && x <= -448) && (y >= 1683 && y <= 1776) || (x >= -448 && x <= -145) && (y >= 1683 && y <= 2084) || (x >= -214 && x <= -145) && (y >= 2084 && y <= 2357) || (x >= -145 && x <= -129) && (y >= 2213 && y <= 2357)
mpos := "Kristallsole"
else if (x >= -1231 && x <= -500) && (y >= 1228 && y <= 1776)
mpos := "Las Barrancas"
else if (x >= -1005 && x <= -476) && (y >= 725 && y <= 1228)
mpos := "ehem. Hitman Base"
else if (x >= -2996 && x <= -2530) && (y >= -200 && y <= 65)
mpos := "Ocean Flats"
else if (x >= -2996 && x <= -2542) && (y >= 200 && y <= 551)
mpos := "Stadthalle (SF)"
else if (x >= -2541 && x <= -2150) && (y >= 200 && y <= 551)
mpos := "Villa bei Baseballfeld (SF)"
else if (x >= -1863 && x <= -1201) && (y >= 431 && y <= 551) || (x >= -1873 && x <= -1305) && (y >= 241 && y <= 431)
mpos := "Flugzeugtraeger"
else if (x >= -2701 && x <= -2303) && (y >= 917 && y <= 1158)
mpos := "Burger Shot bei Gant Bridge"
else if (x >= -2303 && x <= -1863) && (y >= 917 && y <= 1327)
mpos := "Kirche (SF)"
else if (x >= -1863 && x <= -1481) && (y >= 869 && y <= 1386)
mpos := "Ottos Autos"
else if (x >= -1863 && x <= -1481) && (y >= 551 && y <= 869)
mpos := "SFPD"
else if (x >= -2277 && x <= -1863) && (y >= 551 && y <= 917)
mpos := "Chinatown (SF)"
else if (x >= -1481 && x <= -1005) && (y >= 551 && y <= 1228)
mpos := "Garver Bridge"
else if (x >= 1074 && x <= 1621) && (y >= 2655 && y <= 2992)
mpos := "Golfclub (LV)"
else if (x >= 1074 && x <= 2097) && (y >= 2516 && y <= 2992)
mpos := "Villenviertel (LV)"
else if (x >= 2097 && x <= 2470) && (y >= 2579 && y <= 2992)
mpos := "Schmugglerbase (LV)"
else if (x >= 2470 && x <= 2992) && (y >= 2565 && y <= 2992)
mpos := "Militaerfabrik"
else if (x >= 524 && x <= 1199) && (y >= 1931 && y <= 2516)
mpos := "ehem. SAAP Base (LV)"
else if (x >= 1012 && x <= 1199) && (y >= 1591 && y <= 1724) || (x >= 824 && x <= 1199) && (y >= 1373 && y <= 1591)
mpos := "Dirtring Arena (LV)"
else if (x >= 870 && x <= 1199) && (y >= 1591 && y <= 1931)
mpos := "FBI Base"
else if (x >= 1199 && x <= 1717) && (y >= 2030 && y <= 2516)
mpos := "Stadion (LV)"
else if (x >= 1717 && x <= 2097) && (y >= 2284 && y <= 2516)
mpos := "mittlerer HW bei Stadion (LV)"
else if (x >= 2097 && x <= 2470) && (y >= 2239 && y <= 2579)
mpos := "ehem. LVPD"
else if (x >= 2470 && x <= 2992) && (y >= 2095 && y <= 2565)
mpos := "Rock Hotel"
else if (x >= 742 && x <= 870) && (y >= 1591 && y <= 1931)
mpos := "Schießstand bei FBI Base"
else if (x >= 524 && x <= 742) && (y >= 1591 && y <= 1931)
mpos := "Tank BIZ"
else if (x >= 958 && x <= 1431) && (y >= 813 && y <= 1101)
mpos := "Blackfield Intersection"
else if (x >= 958 && x <= 1735) && (y >= 604 && y <= 960)
mpos := "ehem. Triaden Base (Blackfield Inter.)"
else if (x >= 1557 && x <= 1736) && (y >= 1704 && y <= 1933)
mpos := "Krankenhaus (LV)"
else if (x >= 1199 && x <= 1778) && (y >= 1101 && y <= 2030) || (x >= 1431 && x <= 1778) && (y >= 960 && y <= 1101)
mpos := "Airport (LV)"
else if (x >= 1717 && x <= 2110) && (y >= 2030 && y <= 2284)
mpos := "Lowrider BIZ"
else if (x >= 1778 && x <= 1814) && (y >= 906 && y <= 2030) || (x >= 1735 && x <= 1778) && (y >= 906 && y <= 960)
mpos := "mittlerer HW (LV)"
else if (x >= 1735 && x <= 1862) && (y >= 797 && y <= 906)
mpos := "Kreisel (LV)"
else if (x >= 2203 && x <= 2419) && (y >= 1369 && y <= 1577)
mpos := "Parkhaus (LV)"
else if (x >= 2051 && x <= 2337) && (y >= 1577 && y <= 1784)
mpos := "Casino (LV)"
else if (x >= 1814 && x <= 2061) && (y >= 1458 && y <= 1708)
mpos := "Hovercraft BIZ"
else if (x >= 1814 && x <= 2110) && (y >= 1708 && y <= 2030)
mpos := "Visage Hotel"
else if (x >= 2110 && x <= 2470) && (y >= 1708 && y <= 2239)
mpos := "Rentcar BIZ (LV)"
else if (x >= 2337 && x <= 2470) && (y >= 1577 && y <= 1708) || (x >= 2470 && x <= 2992) && (y >= 1577 && y <= 2095)
mpos := "ehem. Triaden Base (oestl. HW)"
else if (x >= 1814 && x <= 2598) && (y >= 1184 && y <= 1577)
mpos := "Pyramide (LV)"
else if (x >= 2598 && x <= 2992) && (y >= 1103 && y <= 1577)
mpos := "Yakuza Base"
else if (x >= 2598 && x <= 2992) && (y >= 734 && y <= 1103)
mpos := "ehem. Russen Mafia Base"
else if (x >= 1814 && x <= 1862) && (y >= 906 && y <= 1184) || (x >= 1862 && x <= 2287) && (y >= 825 && y <= 1184)
mpos := "Four Dragons Casino"
else if (x >= 2287 && x <= 2598) && (y >= 825 && y <= 1184)
mpos := "Kirche (LV)"
else if (x >= 1735 && x <= 1807) && (y >= 604 && y <= 797) || (x >= 1807 && x <= 2139) && (y >= 572 && y <= 825)
mpos := "ehem. HP Base"
else if (x >= 1845 && x <= 2139) && (y >= 425 && y <= 572) || (x >= 2139 && x <= 2598) && (y >= 425 && y <= 825)
mpos := "Boot BIZ"
else if (x >= 2598 && x <= 2992) && (y >= 233 && y <= 734)
mpos := "Schmugglerschienen"
else if (x >= 295 && x <= 958) && (y >= 262 && y <= 632)
mpos := "WT Bruecke"
else if (x >= 1566 && x <= 1845) && (y >= 238 && y <= 604)
mpos := "Zoll"
else if (x >= 1566 && x <= 1842) && (y >= -681 && y <= -7)
mpos := "LS/LV-HW"
else if (x >= 1842 && x <= 2180) && (y >= -876 && y <= -298) || (x >= 2180 && x <= 2934) && (y >= -822 && y <= -298)
mpos := "North Rock"
else if (x >= 2180 && x <= 2934) && (y >= -1125 && y <= -822)
mpos := "ehem. Ballas Base"
else if (x >= 2180 && x <= 2378) && (y >= -1310 && y <= -1125)
mpos := "Bikeshop"
else if (x >= 2180 && x <= 2966) && (y >= -1490 && y <= -1125)
mpos := "East Los Santos"
else if (x >= 2624 && x <= 2966) && (y >= -2106 && y <= -1490)
mpos := "Dirtring Arena (LS)"
else if (x >= 2209 && x <= 2934) && (y >= -2800 && y <= -2106)
mpos := "Docks (Army & SALA-Base)"
else if (x >= 2180 && x <= 2624) && (y >= -1756 && y <= -1490)
mpos := "Grove Base"
else if (x >= 2409 && x <= 2624) && (y >= -2106 && y <= -1756)
mpos := "Kanal (Grove Street)"
else if (x >= 1969 && x <= 2409) && (y >= -2106 && y <= -1756)
mpos := "Grove PnS"
else if (x >= 1668 && x <= 1969) && (y >= -2176 && y <= -2043)
mpos := "Ballas Base"
else if (x >= 1668 && x <= 1969) && (y >= -2043 && y <= -1756)
mpos := "Noobautohaus"
else if (x >= 1702 && x <= 1842) && (y >= -1600 && y <= -1544) || (x >= 1702 && x <= 2180) && (y >= -1756 && y <= -1544)
mpos := "Alhambra (Knast)"
else if (x >= 1842 && x <= 2180) && (y >= -1600 && y <= -1344)
mpos := "Skater Park"
else if (x >= 1842 && x <= 2180) && (y >= -1344 && y <= -876)
mpos := "Glen Park"
else if (x >= 1454 && x <= 1842) && (y >= -1153 && y <= -681)
mpos := "HW-Auffahrt (LS)"
else if (x >= 1287 && x <= 1842) && (y >= -1544 && y <= -1153)
mpos := "Startower"
else if (x >= 1525 && x <= 1702) && (y >= -1726 && y <= -1581)
mpos := "LSPD"
else if (x >= 1287 && x <= 1702) && (y >= -1726 && y <= -1544)
mpos := "Pershing Square (ehem. NR-Base)"
else if (x >= 1244 && x <= 1523) && (y >= -50 && y <= 150)
mpos := "News Reporter Base"
else if (x >= 1358 && x <= 1702) && (y >= -1848 && y <= -1726)
mpos := "Stadthalle (LS)"
else if (x >= 1200 && x <= 2209) && (y >= -2800 && y <= -2106) || (x >= 999 && x <= 1200) && (y >= -2488 && y <= -2338)
mpos := "Airport (LS)"
else if (x >= 1041 && x <= 1668) && (y >= -2388 && y <= -1848) || (x >= 939 && x <= 1041) && (y >= -2338 && y <= -2145)
mpos := "ehem. Krankenhaus (LS/LCN)"
else if (x >= 1008 && x <= 1454) && (y >= -1153 && y <= -681)
mpos := "BSN"
else if (x >= 731 && x <= 1008) && (y >= -1271 && y <= -789)
mpos := "Friedhof (LS)"
else if (x >= 907 && x <= 1287) && (y >= -1693 && y <= -1153) || (x >= 1041 && x <= 1287) && (y >= -1703 && y <= -1693)
mpos := "Verona Mall (LSKH / Feuerwehr)"
else if (x >= 1041 && x <= 1358) && (y >= -1848 && y <= -1703)
mpos := "Bus Base"
else if (x >= 55 && x <= 1041) && (y >= -2145 && y <= -1693) || (x >= 1 && x <= 55) && (y >= -1952 && y <= -1693)
mpos := "Santa Maria Beach"
else if (x >= 731 && x <= 907) && (y >= -1413 && y <= -1271)
mpos := "Market Station"
else if (x >= 462 && x <= 731) && (y >= -1376 && y <= -1063)
mpos := "Rentcar BIZ (LS)"
else if (x >= 647 && x <= 907) && (y >= -1692 && y <= -1376)
mpos := "BSS (Burger Shot South)"
else if (x >= 65 && x <= 647) && (y >= -1693 && y <= -1185) || (x >= 1 && x <= 65) && (y >= -1693 && y <= -1544)
mpos := "Crashhotel"
else if (x >= 65 && x <= 428) && (y >= -789 && y <= -493) || (x >= 65 && x <= 731) && (y >= -1063 && y <= -789) || (x >= 65 && x <= 462) && (y >= -1185 && y <= -1063)
mpos := "westl. Villenviertel (LS)"
else if (x >= 428 && x <= 1008) && (y >= -789 && y <= -336)
mpos := "WT Dorf"
else if (x >= 547 && x <= 1008) && (y >= -336 && y <= -113) || (x >= 1008 && x <= 1566) && (y >= -681 && y <= -113)
mpos := "Hilltop Farm"
else if (x >= 1845 && x <= 2598) && (y >= -298 && y <= 425) || (x >= 1842 && x <= 1845) && (y >= -298 && y <= 7)
mpos := "Palomino Creek"
else if (x >= 2598 && x <= 2992) && (y >= -298 && y <= 233)
mpos := "Schmuggler-HW"
else if (x >= 1440 && x <= 1845) && (y >= -7 && y <= 238)
mpos := "Raststaette"
else if (x >= 958 && x <= 1566) && (y >= -133 && y <= 604)
mpos := "Montgomery/ehem. WT Dorf"
else if (x >= 547 && x <= 958) && (y >= -113 && y <= 263)
mpos := "Berg bei WT Bruecke"
else if (x >= -891 && x <= -387) && (y >= -241 && y <= 363)
mpos := "Panopticon"
else if (x >= -2530 && x <= -2141) && (y >= -65 && y <= 200)
mpos := "Baseballfeld (SF)"
else if (x >= -2007 && x <= -1863) && (y >= -65 && y <= 225)
mpos := "Bahnhof (SF)"
else if (x >= -2141 && x <= -1863) && (y >= -65 && y <= 551)
mpos := "Baustelle (SF)"
else if (x >= -1863 && x <= -891) && (y >= -892 && y <= 551)
mpos := "Airport (SF)"
else if (x >= -129 && x <= 524) && (y >= 2213 && y <= 2992) || (x >= 524 && x <= 1274) && (y >= 2516 && y <= 2992)
mpos := "verlassener Flughafen"
else if (x >= -118 && x <= 329) && (y >= 1269 && y <= 1591)
mpos := "West Las Venturas (GW Gebiet)"
else if (x >= -1005 && x <= -891) && (y >= 551 && y <= 725) || (x >= -891 && x <= 250) && (y >= 363 && y <= 725) || (x >= 250 && x <= 295) && (y >= 363 && y <= 632)
mpos := "Hitman HW"
else if (x >= -387 && x <= 547) && (y >= -493 && y <= 363)
mpos := "Blueberry (ehem. SAAP Base)"
else if (x >= -369 && x <= 65) && (y >= -848 && y <= -493)
mpos := "See bei ehem. SALA Base"
else if (x >= -327 && x <= 65) && (y >= -1544 && y <= -493)
mpos := "ehem. SALA Tanke"
else if (x >= -412 && x <= 1) && (y >= -1952 && y <= -1544)
mpos := "HW bei ehem. SALA Tanke"
else if (x >= -1040 && x <= 55) && (y >= -2979 && y <= -1952) || (x >= 55 && x <= 133) && (y >= -2907 && y <= -2451)
mpos := "Suedost SF"
else if (x >= -2589 && x <= -1911) && (y >= 1602 && y <= 2071)
mpos := "Ozean bei Bayside"
else
mpos := "Ozean"
if (dir) {
mpos .= " r. "
if (r > 337.5 && r <= 360 || r >= 0 && r < 22.5) {
mpos .= "N"
}
else if (r >= 22.5 && r <= 67.5) {
mpos .= "NO"
}
else if (r > 67.5 && r < 112.5) {
mpos .= "O"
}
else if (r >= 112.5 && r <= 157.5) {
mpos .= "SO"
}
else if (r > 157.5 && r < 202.5) {
mpos .= "S"
}
else if (r >= 202.5 && r <= 247.5) {
mpos .= "SW"
}
else if (r > 247.5 && r < 292.5) {
mpos .= "W"
}
else if (r >= 292.5 && r <= 337.5) {
mpos .= "NW"
}
}
return mpos
}
IsSAMPAvailable() {
if(!checkHandles())
return false
dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
if(dwChatInfo == 0 || dwChatInfo == "ERROR")
{
return false
}
else
{
return true
}
}
IsInChat() {
if(!checkHandles())
return -1
dwPtr := dwSAMP + ADDR_SAMP_INCHAT_PTR
dwAddress := readDWORD(hGTA, dwPtr) + ADDR_SAMP_INCHAT_PTR_OFF
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwInChat := readDWORD(hGTA, dwAddress)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
if(dwInChat > 0) {
return true
} else {
return false
}
}
GetPlayerName() {
if(!checkHandles())
return ""
dwAddress := dwSAMP + ADDR_SAMP_USERNAME
sUsername := readString(hGTA, dwAddress, 25)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
ErrorLevel := ERROR_OK
return sUsername
}
GetPlayerId() {
s := GetPlayerName()
return GetPlayerIdByName(s)
}
SendChat(wText) {
wText := "" wText
if(!checkHandles())
return false
dwFunc:=0
if(SubStr(wText, 1, 1) == "/") {
dwFunc := dwSAMP + FUNC_SAMP_SENDCMD
} else {
dwFunc := dwSAMP + FUNC_SAMP_SENDSAY
}
callWithParams(hGTA, dwFunc, [["s", wText]], false)
ErrorLevel := ERROR_OK
return true
}
AddChatMessage(wText) {
wText := "" wText
if(!checkHandles())
return false
dwFunc := dwSAMP + FUNC_SAMP_ADDTOCHATWND
dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
callWithParams(hGTA, dwFunc, [["p", dwChatInfo], ["s", wText]], true)
ErrorLevel := ERROR_OK
return true
}
ShowGameText(wText, dwTime, dwTextstyle) {
wText := "" wText
dwTime += 0
dwTime := Floor(dwTime)
dwTextstyle += 0
dwTextstyle := Floor(dwTextstyle)
if(!checkHandles())
return false
dwFunc := dwSAMP + FUNC_SAMP_SHOWGAMETEXT
callWithParams(hGTA, dwFunc, [["s", wText], ["i", dwTime], ["i", dwTextstyle]], false)
ErrorLevel := ERROR_OK
return true
}
PlayAudioStream(wUrl) {
wUrl := "" wUrl
if(!checkHandles())
return false
dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR
PatchRadio()
callWithParams(hGTA, dwFunc, [["s", wUrl], ["i", 0], ["i", 0], ["i", 0], ["i", 0], ["i", 0]], false)
UnPatchRadio()
ErrorLevel := ERROR_OK
return true
}
StopAudioStream() {
if(!checkHandles())
return false
dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR
PatchRadio()
callWithParams(hGTA, dwFunc, [["i", 1]], false)
UnPatchRadio()
ErrorLevel := ERROR_OK
return true
}
PatchRadio() {
if(!checkHandles())
return false
VarSetCapacity(nop, 4, 0)
NumPut(0x90909090,nop,0,"UInt")
dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR
writeRaw(hGTA, dwFunc, &nop, 4)
writeRaw(hGTA, dwFunc+4, &nop, 1)
dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR
writeRaw(hGTA, dwFunc, &nop, 4)
writeRaw(hGTA, dwFunc+4, &nop, 1)
return true
}
UnPatchRadio() {
if(!checkHandles())
return false
VarSetCapacity(old, 4, 0)
dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR
NumPut(0x74003980,old,0,"UInt")
writeRaw(hGTA, dwFunc, &old, 4)
NumPut(0x39,old,0,"UChar")
writeRaw(hGTA, dwFunc+4, &old, 1)
dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR
NumPut(0x74003980,old,0,"UInt")
writeRaw(hGTA, dwFunc, &old, 4)
NumPut(0x09,old,0,"UChar")
writeRaw(hGTA, dwFunc+4, &old, 1)
return true
}
BlockChatInput() {
if(!checkHandles())
return false
VarSetCapacity(nop, 2, 0)
dwFunc := dwSAMP + FUNC_SAMP_SENDSAY
NumPut(0x04C2,nop,0,"Short")
writeRaw(hGTA, dwFunc, &nop, 2)
dwFunc := dwSAMP + FUNC_SAMP_SENDCMD
writeRaw(hGTA, dwFunc, &nop, 2)
return true
}
UnBlockChatInput() {
if(!checkHandles())
return false
VarSetCapacity(nop, 2, 0)
dwFunc := dwSAMP + FUNC_SAMP_SENDSAY
NumPut(0xA164,nop,0,"Short")
writeRaw(hGTA, dwFunc, &nop, 2)
dwFunc := dwSAMP + FUNC_SAMP_SENDCMD
writeRaw(hGTA, dwFunc, &nop, 2)
return true
}
GetServerName() {
if(!checkHandles())
return -1
dwAdress := readMem(hGTA, dwSAMP + 0x21A0F8, 4, "int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAdress)
return -1
ServerName := readString(hGTA, dwAdress + 0x121, 200)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return ServerName
}
GetServerIp() {
if(!checkHandles())
return -1
dwAdress := readMem(hGTA, dwSAMP + 0x21A0F8, 4, "int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAdress)
return -1
ServerIP := readString(hGTA, dwAdress + 0x20, 100)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return ServerIP
}
GetServerPort() {
if(!checkHandles())
return -1
dwAdress := readMem(hGTA, dwSAMP + 0x21A0F8, 4, "int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAdress)
return -1
ServerPort := readMem(hGTA, dwAdress + 0x225, 4, "int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return ServerPort
}
GetWeatherId() {
if(!checkHandles())
return -1
dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
WeatherID := readMem(hGTA, dwGTA + 0xC81320, 2, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return WeatherID
}
GetWeatherName() {
if(IsPlayerInAnyVehicle() == 0)
return -1
if(id >= 0 && id < 23)
{
return oweatherNames[id-1]
}
return ""
}
GetPlayerHealth() {
if(!checkHandles())
return -1
dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwAddr := dwCPedPtr + ADDR_CPED_HPOFF
fHealth := readFloat(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return Round(fHealth)
}
GetPlayerArmor() {
if(!checkHandles())
return -1
dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwAddr := dwCPedPtr + ADDR_CPED_ARMOROFF
fHealth := readFloat(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return Round(fHealth)
}
GetPlayerInteriorId() {
if(!checkHandles())
return -1
iid := readMem(hGTA, ADDR_CPED_INTID, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return iid
}
GetPlayerSkinId() {
if(!checkHandles())
return -1
dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwAddr := dwCPedPtr + ADDR_CPED_SKINIDOFF
SkinID := readMem(hGTA, dwAddr, 2, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return SkinID
}
GetPlayerMoney() {
if(!checkHandles())
return ""
money := readMem(hGTA, ADDR_CPED_MONEY, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
ErrorLevel := ERROR_OK
return money
}
GetPlayerWanteds() {
if(!checkHandles())
return -1
dwPtr := 0xB7CD9C
dwPtr := readDWORD(hGTA, dwPtr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
Wanteds := readDWORD(hGTA, dwPtr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return Wanteds
}
GetPlayerWeaponId() {
if(!checkHandles())
return 0
WaffenId := readMem(hGTA, 0xBAA410, 4, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
return WaffenId
}
GetPlayerWeaponName() {
id := GetPlayerWeaponId()
if(id >= 0 && id < 44)
{
return oweaponNames[id+1]
}
return ""
}
GetPlayerState() {
if(!checkHandles())
return -1
dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
State := readDWORD(hGTA, dwCPedPtr + 0x530)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return State
}
IsPlayerInMenu() {
if(!checkHandles())
return -1
IsInMenu := readMem(hGTA, 0xBA67A4, 4, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return IsInMenu
}
GetPlayerMapPosX() {
if(!checkHandles())
return -1
MapPosX := readFloat(hGTA, 0xBA67B8)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return MapPosX
}
GetPlayerMapPosY() {
if(!checkHandles())
return -1
MapPosY := readFloat(hGTA, 0xBA67BC)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return MapPosY
}
GetPlayerMapZoom() {
if(!checkHandles())
return -1
MapZoom := readFloat(hGTA, 0xBA67AC)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return MapZoom
}
IsPlayerFreezed() {
if(!checkHandles())
return -1
dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
IPF := readMem(hGTA, dwGTA + 0x690495, 2, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return IPF
}
IsPlayerInAnyVehicle()
{
if(!checkHandles())
return -1
dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
return (dwVehPtr > 0)
}
IsPlayerDriver() {
if(!checkHandles())
return -1
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAddr)
return -1
dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DRIVER)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal==dwCPedPtr)
}
GetVehicleHealth() {
if(!checkHandles())
return -1
dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
fHealth := readFloat(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return Round(fHealth)
}
GetVehicleType() {
if(!checkHandles())
return 0
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(!dwAddr)
return 0
cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
if(!cVal)
{
mid := GetVehicleModelId()
Loop % oAirplaneModels.MaxIndex()
{
if(oAirplaneModels[A_Index]==mid)
return 5
}
return 1
}
else if(cVal==5)
return 2
else if(cVal==6)
return 3
else if(cVal==9)
{
mid := GetVehicleModelId()
Loop % oBikeModels.MaxIndex()
{
if(oBikeModels[A_Index]==mid)
return 6
}
return 4
}
return 0
}
GetVehicleModelId() {
if(!checkHandles())
return 0
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetVehicleModelName() {
id:=GetVehicleModelId()
if(id > 400 && id < 611)
{
return ovehicleNames[id-399]
}
return ""
}
GetVehicleLightState() {
if(!checkHandles())
return -1
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAddr)
return -1
dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal>0)
}
GetVehicleEngineState() {
if(!checkHandles())
return -1
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAddr)
return -1
cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_ENGINESTATE, 1, "Char")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (cVal==24 || cVal==56 || cVal==88 || cVal==120)
}
GetVehicleLockState() {
if(!checkHandles())
return -1
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
if(!dwAddr)
return -1
dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal==2)
}
GetVehicleColor1() {
if(!checkHandles())
return 0
dwAddr := readDWORD(hGTA, 0xBA18FC)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetVehicleColor2() {
if(!checkHandles())
return 0
dwAddr := readDWORD(hGTA, 0xBA18FC)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetVehicleSpeed() {
if(!checkHandles())
return -1
dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
fVehicleSpeed := (fVehicleSpeed * 100) * 1.43
return fVehicleSpeed
}
GetPlayerRadiostationId() {
if(!checkHandles())
return -1
if(IsPlayerInAnyVehicle() == 0)
return -1
dwGTA := getModuleBaseAddress("gta_sa.exe", hGTA)
RadioStationID := readMem(hGTA, dwGTA + 0x4CB7E1, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
return RadioStationID
}
GetPlayerRadiostationName() {
if(IsPlayerInAnyVehicle() == 0)
return -1
id := GetPlayerRadiostationID()
if(id == 0)
return -1
if(id >= 0 && id < 14)
{
return oradiostationNames[id]
}
return ""
}
GetVehicleNumberPlate() {
if(!checkHandles())
return ""
dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if(ErrorLevel || dwVehPtr==0) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
vehpool := readDWORD(hGTA, dwAddress + 0x1C)
if(ErrorLevel || vehpool==0) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
Loop, 2000
{
i := A_Index-1
listed := readDWORD(hGTA, vehpool + 0x3074 + i*4)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
if(listed==0)
continue
svehptr := readDWORD(hGTA, vehpool + 0x4FB4 + i*4)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
if(svehptr==dwVehPtr) {
sampveh := readDWORD(hGTA, vehpool + 0x1134 + i*4)
if(ErrorLevel || sampveh==0) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
plate := readString(hGTA, sampveh + 0x93, 32)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
ErrorLevel := ERROR_OK
return plate
}
}
ErrorLevel := ERROR_OK
return ""
}
GetTargetPed() {
if(!checkHandles())
return 0
dwAddress := readDWORD(hGTA, 0xB6F3B8)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(!dwAddress)
return 0
dwAddress := readDWORD(hGTA, dwAddress+0x79C)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return dwAddress
}
CalcScreenCoords(fX, fY, fZ) {
if(!checkHandles())
return false
dwM := 0xB6FA2C
m_11 := readFloat(hGTA, dwM + 0*4)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
m_12 := readFloat(hGTA, dwM + 1*4)
m_13 := readFloat(hGTA, dwM + 2*4)
m_21 := readFloat(hGTA, dwM + 4*4)
m_22 := readFloat(hGTA, dwM + 5*4)
m_23 := readFloat(hGTA, dwM + 6*4)
m_31 := readFloat(hGTA, dwM + 8*4)
m_32 := readFloat(hGTA, dwM + 9*4)
m_33 := readFloat(hGTA, dwM + 10*4)
m_41 := readFloat(hGTA, dwM + 12*4)
m_42 := readFloat(hGTA, dwM + 13*4)
m_43 := readFloat(hGTA, dwM + 14*4)
dwLenX := readDWORD(hGTA, 0xC17044)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
dwLenY := readDWORD(hGTA, 0xC17048)
frX := fZ * m_31 + fY * m_21 + fX * m_11 + m_41
frY := fZ * m_32 + fY * m_22 + fX * m_12 + m_42
frZ := fZ * m_33 + fY * m_23 + fX * m_13 + m_43
fRecip := 1.0/frZ
frX *= fRecip * dwLenX
frY *= fRecip * dwLenY
if(frX<=dwLenX && frY<=dwLenY && frZ>1)
return [frX,frY,frZ]
}
GetPedById(dwId) {
dwId += 0
dwId := Floor(dwId)
if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
return 0
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
if(oScoreboardData[dwId])
{
if(oScoreboardData[dwId].HasKey("PED"))
return oScoreboardData[dwId].PED
}
return 0
}
if(!updateOScoreboardData())
return 0
if(oScoreboardData[dwId])
{
if(oScoreboardData[dwId].HasKey("PED"))
return oScoreboardData[dwId].PED
}
return 0
}
GetIdByPed(dwPed) {
dwPed += 0
dwPed := Floor(dwPed)
if(!dwPed)
return -1
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
For i, o in oScoreboardData
{
if(o.HasKey("PED"))
{
if(o.PED==dwPed)
return i
}
}
return -1
}
if(!updateOScoreboardData())
return -1
For i, o in oScoreboardData
{
if(o.HasKey("PED"))
{
if(o.PED==dwPed)
return i
}
}
return -1
}
GetStreamedInPlayersInfo() {
r:=[]
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
For i, o in oScoreboardData
{
if(o.HasKey("PED"))
{
p := GetPedCoordinates(o.PED)
if(p)
{
o.POS := p
r[i] := o
}
}
}
return r
}
if(!updateOScoreboardData())
return ""
For i, o in oScoreboardData
{
if(o.HasKey("PED"))
{
p := GetPedCoordinates(o.PED)
if(p)
{
o.POS := p
r[i] := o
}
}
}
return r
}
CallFuncForAllStreamedInPlayers(cfunc, dist=0x7fffffff) {
cfunc := "" cfunc
dist += 0
if(!IsFunc(cfunc))
return false
p := GetStreamedInPlayersInfo()
if(!p)
return false
if(dist<0x7fffffff)
{
lpos := GetPlayerCoordinates()
if(!lpos)
return false
For i, o in p
{
if(dist>GetDist(lpos,o.POS))
%cfunc%(o)
}
}
else
{
For i, o in p
%cfunc%(o)
}
return true
}
GetDist(pos1, pos2) {
if(!pos1 || !pos2)
return 0
return Sqrt((pos1[1]-pos2[1])*(pos1[1]-pos2[1])+(pos1[2]-pos2[2])*(pos1[2]-pos2[2])+(pos1[3]-pos2[3])*(pos1[3]-pos2[3]))
}
GetClosestPlayerPed() {
dist := 0x7fffffff
p := GetStreamedInPlayersInfo()
if(!p)
return -1
lpos := GetPlayerCoordinates()
if(!lpos)
return -1
id := -1
For i, o in p
{
t:=GetDist(lpos,o.POS)
if(t<dist)
{
dist := t
id := i
}
}
PED := GetPedById(id)
return PED
}
GetClosestPlayerId() {
dist := 0x7fffffff
p := GetStreamedInPlayersInfo()
if(!p)
return -1
lpos := GetPlayerCoordinates()
if(!lpos)
return -1
id := -1
For i, o in p
{
t:=GetDist(lpos,o.POS)
if(t<dist)
{
dist := t
id := i
}
}
return id
}
CountOnlinePlayers() {
if(!checkHandles())
return -1
dwOnline := readDWORD(hGTA, dwSAMP + 0x21A0B4)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwAddr := dwOnline + 0x4
OnlinePlayers := readDWORD(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return OnlinePlayers
}
GetPedCoordinates(dwPED) {
dwPED += 0
dwPED := Floor(dwPED)
if(!dwPED)
return ""
if(!checkHandles())
return ""
dwAddress := readDWORD(hGTA, dwPED + 0x14)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
fX := readFloat(hGTA, dwAddress + 0x30)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
fY := readFloat(hGTA, dwAddress + 0x34)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
fZ := readFloat(hGTA, dwAddress + 0x38)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
ErrorLevel := ERROR_OK
return [fX, fY, fZ]
}
GetTargetPosById(dwId) {
dwId += 0
dwId := Floor(dwId)
if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
return ""
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
if(oScoreboardData[dwId])
{
if(oScoreboardData[dwId].HasKey("PED"))
return GetPedCoordinates(oScoreboardData[dwId].PED)
if(oScoreboardData[dwId].HasKey("MPOS"))
return oScoreboardData[dwId].MPOS
}
return ""
}
if(!updateOScoreboardData())
return ""
if(oScoreboardData[dwId])
{
if(oScoreboardData[dwId].HasKey("PED"))
return GetPedCoordinates(oScoreboardData[dwId].PED)
if(oScoreboardData[dwId].HasKey("MPOS"))
return oScoreboardData[dwId].MPOS
}
return ""
}
GetTargetPlayerSkinIdByPed(dwPED) {
if(!checkHandles())
return -1
dwAddr := dwPED + ADDR_CPED_SKINIDOFF
SkinID := readMem(hGTA, dwAddr, 2, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return SkinID
}
GetTargetPlayerSkinIdById(dwId) {
if(!checkHandles())
return -1
dwPED := GetPedById(dwId)
dwAddr := dwPED + ADDR_CPED_SKINIDOFF
SkinID := readMem(hGTA, dwAddr, 2, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return SkinID
}
GetVehiclePointerByPed(dwPED) {
dwPED += 0
dwPED := Floor(dwPED)
if(!dwPED)
return 0
if(!checkHandles())
return 0
dwAddress := readDWORD(hGTA, dwPED + 0x58C)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return dwAddress
}
GetVehiclePointerById(dwId) {
if(!dwId)
return 0
if(!checkHandles())
return 0
dwPed_By_Id := GetPedById(dwId)
dwAddress := readDWORD(hGTA, dwPed_By_Id + 0x58C)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return dwAddress
}
IsTargetInAnyVehicleByPed(dwPED) {
if(!checkHandles())
return -1
dwVehiclePointer := GetVehiclePointerByPed(dwPedPointer)
if(dwVehiclePointer > 0)
{
return 1
}
else if(dwVehiclePointer <= 0)
{
return 0
}
else
{
return -1
}
}
IsTargetInAnyVehicleById(dwId) {
if(!checkHandles())
return -1
dwPedPointer := GetPedById(dwId)
dwVehiclePointer := GetVehiclePointerByPed(dwPedPointer)
if(dwVehiclePointer > 0)
{
return 1
}
else if(dwVehiclePointer <= 0)
{
return 0
}
else
{
return -1
}
}
GetTargetVehicleHealthByPed(dwPed) {
if(!checkHandles())
return -1
dwVehPtr := GetVehiclePointerByPed(dwPed)
dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
fHealth := readFloat(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return Round(fHealth)
}
GetTargetVehicleHealthById(dwId) {
if(!checkHandles())
return -1
dwVehPtr := GetVehiclePointerById(dwId)
dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
fHealth := readFloat(hGTA, dwAddr)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return Round(fHealth)
}
GetTargetVehicleTypeByPed(dwPED) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerByPed(dwPED)
if(!dwAddr)
return 0
cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
if(!cVal)
{
mid := GetVehicleModelId()
Loop % oAirplaneModels.MaxIndex()
{
if(oAirplaneModels[A_Index]==mid)
return 5
}
return 1
}
else if(cVal==5)
return 2
else if(cVal==6)
return 3
else if(cVal==9)
{
mid := GetVehicleModelId()
Loop % oBikeModels.MaxIndex()
{
if(oBikeModels[A_Index]==mid)
return 6
}
return 4
}
return 0
}
GetTargetVehicleTypeById(dwId) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerById(dwId)
if(!dwAddr)
return 0
cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
if(!cVal)
{
mid := GetVehicleModelId()
Loop % oAirplaneModels.MaxIndex()
{
if(oAirplaneModels[A_Index]==mid)
return 5
}
return 1
}
else if(cVal==5)
return 2
else if(cVal==6)
return 3
else if(cVal==9)
{
mid := GetVehicleModelId()
Loop % oBikeModels.MaxIndex()
{
if(oBikeModels[A_Index]==mid)
return 6
}
return 4
}
return 0
}
GetTargetVehicleModelIdByPed(dwPED) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerByPed(dwPED)
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetTargetVehicleModelIdById(dwId) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerById(dwId)
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetTargetVehicleModelNameByPed(dwPED) {
id := GetTargetVehicleModelIdByPed(dwPED)
if(id > 400 && id < 611)
{
return ovehicleNames[id-399]
}
return ""
}
GetTargetVehicleModelNameById(dwId) {
id := GetTargetVehicleModelIdById(dwId)
if(id > 400 && id < 611)
{
return ovehicleNames[id-399]
}
return ""
}
GetTargetVehicleLightStateByPed(dwPED) {
if(!checkHandles())
return -1
dwAddr := GetVehiclePointerByPed(dwPED)
if(!dwAddr)
return -1
dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal>0)
}
GetTargetVehicleLightStateById(dwId) {
if(!checkHandles())
return -1
dwAddr := GetVehiclePointerById(dwId)
if(!dwAddr)
return -1
dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal>0)
}
GetTargetVehicleLockStateByPed(dwPED) {
if(!checkHandles())
return -1
dwAddr := GetVehiclePointerByPed(dwPED)
if(!dwAddr)
return -1
dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal==2)
}
GetTargetVehicleLockStateById(dwId) {
if(!checkHandles())
return -1
dwAddr := GetVehiclePointerById(dwId)
if(!dwAddr)
return -1
dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return (dwVal==2)
}
GetTargetVehicleColor1ByPed(dwPED) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerByPed(dwPED)
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetTargetVehicleColor1ById(dwId) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerById(dwId)
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetTargetVehicleColor2ByPed(dwPED) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerByPed(dwPED)
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetTargetVehicleColor2ById(dwId) {
if(!checkHandles())
return 0
dwAddr := GetVehiclePointerById(dwId)
if(!dwAddr)
return 0
sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return sVal
}
GetTargetVehicleSpeedByPed(dwPED) {
if(!checkHandles())
return -1
dwAddr := GetVehiclePointerByPed(dwPED)
fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
fVehicleSpeed := (fVehicleSpeed * 100) * 1.43
return fVehicleSpeed
}
GetTargetVehicleSpeedById(dwId) {
if(!checkHandles())
return -1
dwAddr := GetVehiclePointerById(dwId)
fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
fVehicleSpeed := (fVehicleSpeed * 100) * 1.43
return fVehicleSpeed
}
GetChatLine(Line, ByRef Output, timestamp=0, color=0) {
chatindex := 0
FileRead, file, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
loop, Parse, file, `n, `r
{
if(A_LoopField)
chatindex := A_Index
}
loop, Parse, file, `n, `r
{
if(A_Index = chatindex - line){
output := A_LoopField
break
}
}
file := ""
if(!timestamp)
output := RegExReplace(output, "U)^\[\d{2}:\d{2}:\d{2}\]")
if(!color)
output := RegExReplace(output, "Ui)\{[a-f0-9]{6}\}")
return
}
AntiCrash() {
If(!checkHandles())
return false
cReport := ADDR_SAMP_CRASHREPORT
writeMemory(hGTA, dwSAMP + cReport, 0x90909090, 4)
cReport += 0x4
writeMemory(hGTA, dwSAMP + cReport, 0x90, 1)
cReport += 0x9
writeMemory(hGTA, dwSAMP + cReport, 0x90909090, 4)
cReport += 0x4
writeMemory(hGTA, dwSAMP + cReport, 0x90, 1)
}
GetDialogStructPtr() {
if (!checkHandles()) {
ErrorLevel := ERROR_INVALID_HANDLE
return false
}
dwPointer := readDWORD(hGTA, dwSAMP + SAMP_DIALOG_STRUCT_PTR)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
ErrorLevel := ERROR_OK
return dwPointer
}
IsDialogOpen() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return false
dwIsOpen := readMem(hGTA, dwPointer + SAMP_DIALOG_OPEN_OFFSET, 4, "UInt")
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
ErrorLevel := ERROR_OK
return dwIsOpen ? true : false
}
GetDialogStyle() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return -1
style := readMem(hGTA, dwPointer + SAMP_DIALOG_STYLE_OFFSET, 4, "UInt")
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return style
}
GetDialogId() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return -1
id := readMem(hGTA, dwPointer + SAMP_DIALOG_ID_OFFSET, 4, "UInt")
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
ErrorLevel := ERROR_OK
return id
}
SetDialogId(id) {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return false
writeMemory(hGTA, dwPointer + SAMP_DIALOG_ID_OFFSET, id, "UInt", 4)
if (ErrorLevel) {
ErrorLevel := ERROR_WRITE_MEMORY
return false
}
ErrorLevel := ERROR_OK
return true
}
GetDialogIndex() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return 0
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
index := readMem(hGTA, dwPointer + SAMP_DIALOG_INDEX_OFFSET, 1, "Byte")
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return index + 1
}
GetDialogCaption() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return ""
text := readString(hGTA, dwPointer + SAMP_DIALOG_CAPTION_OFFSET, 64)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
ErrorLevel := ERROR_OK
return text
}
GetDialogTextSize(dwAddress) {
i := 0
Loop, 4096 {
i := A_Index - 1
byte := Memory_ReadByte(hGTA, dwAddress + i)
if (!byte)
break
}
return i
}
GetDialogText() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return ""
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_TEXT_PTR_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
text := readString(hGTA, dwPointer, 4096)
if (ErrorLevel) {
text := readString(hGTA, dwPointer, GetDialogTextSize(dwPointer))
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
}
ErrorLevel := ERROR_OK
return text
}
GetDialogLineCount() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return 0
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
count := readMem(hGTA, dwPointer + SAMP_DIALOG_LINECOUNT_OFFSET, 4, "UInt")
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return count
}
GetDialogLine__(index) {
if (GetDialogLineCount > index)
return ""
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return ""
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_LINES_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
dwLineAddress := readDWORD(hGTA, dwPointer + (index - 1) * 0x4)
line := readString(hGTA, dwLineAddress, 128)
ErrorLevel := ERROR_OK
return line
}
GetDialogLine(index) {
lines := GetDialogLines()
if (index > lines.Length())
return ""
if (GetDialogStyle() == DIALOG_STYLE_TABLIST_HEADERS)
index++
return lines[index]
}
GetDialogLines() {
text := GetDialogText()
if (text == "")
return -1
lines := StrSplit(text, "`n")
return lines
}
IsDialogButton1Selected() {
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return false
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
selected := readMem(hGTA, dwPointer + SAMP_DIALOG_BUTTON_HOVERING_OFFSET, 1, "Byte")
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
ErrorLevel := ERROR_OK
return selected
}
GetDialogLines__() {
count := GetDialogLineCount()
dwPointer := GetDialogStructPtr()
if (ErrorLevel || !dwPointer)
return -1
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_LINES_OFFSET)
if (ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
lines := []
Loop %count% {
dwLineAddress := readDWORD(hGTA, dwPointer + (A_Index - 1) * 0x4)
lines[A_Index] := readString(hGTA, dwLineAddress, 128)
}
ErrorLevel := ERROR_OK
return lines
}
ShowDialog(style, caption, text, button1, button2 := "", id := 1) {
style += 0
style := Floor(style)
id += 0
id := Floor(id)
caption := "" caption
text := "" text
button1 := "" button1
button2 := "" button2
if (id < 0 || id > 32767 || style < 0 || style > 5 || StrLen(caption) > 64 || StrLen(text) > 4096 || StrLen(button1) > 10 || StrLen(button2) > 10)
return false
if (!checkHandles())
return false
dwFunc := dwSAMP + FUNC_SAMP_SHOWDIALOG
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_DIALOG_STRUCT_PTR)
if (ErrorLevel || !dwAddress) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
writeString(hGTA, pParam5, caption)
if (ErrorLevel)
return false
writeString(hGTA, pParam1, text)
if (ErrorLevel)
return false
writeString(hGTA, pParam5 + 512, button1)
if (ErrorLevel)
return false
writeString(hGTA, pParam5+StrLen(caption) + 1, button2)
if (ErrorLevel)
return false
dwLen := 5 + 7 * 5 + 5 + 1
VarSetCapacity(injectData, dwLen, 0)
NumPut(0xB9, injectData, 0, "UChar")
NumPut(dwAddress, injectData, 1, "UInt")
NumPut(0x68, injectData, 5, "UChar")
NumPut(1, injectData, 6, "UInt")
NumPut(0x68, injectData, 10, "UChar")
NumPut(pParam5 + StrLen(caption) + 1, injectData, 11, "UInt")
NumPut(0x68, injectData, 15, "UChar")
NumPut(pParam5 + 512, injectData, 16, "UInt")
NumPut(0x68, injectData, 20, "UChar")
NumPut(pParam1, injectData, 21, "UInt")
NumPut(0x68, injectData, 25, "UChar")
NumPut(pParam5, injectData, 26, "UInt")
NumPut(0x68, injectData, 30, "UChar")
NumPut(style, injectData, 31, "UInt")
NumPut(0x68, injectData, 35, "UChar")
NumPut(id, injectData, 36, "UInt")
NumPut(0xE8, injectData, 40, "UChar")
offset := dwFunc - (pInjectFunc + 45)
NumPut(offset, injectData, 41, "Int")
NumPut(0xC3, injectData, 45, "UChar")
writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
if (ErrorLevel)
return false
hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
if (ErrorLevel)
return false
waitForSingleObject(hThread, 0xFFFFFFFF)
closeProcess(hThread)
return true
}
GetPlayerNameById(dwId) {
dwId += 0
dwId := Floor(dwId)
if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
return ""
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
if(oScoreboardData[dwId])
return oScoreboardData[dwId].NAME
return ""
}
if(!updateOScoreboardData())
return ""
if(oScoreboardData[dwId])
return oScoreboardData[dwId].NAME
return ""
}
GetPlayerIdByName(wName) {
wName := "" wName
if(StrLen(wName) < 1 || StrLen(wName) > 24)
return -1
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
For i, o in oScoreboardData
{
if(InStr(o.NAME,wName)==1)
return i
}
return -1
}
if(!updateOScoreboardData())
return -1
For i, o in oScoreboardData
{
if(InStr(o.NAME,wName)==1)
return i
}
return -1
}
GetPlayerScoreById(dwId) {
dwId += 0
dwId := Floor(dwId)
if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
return ""
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
if(oScoreboardData[dwId])
return oScoreboardData[dwId].SCORE
return ""
}
if(!updateOScoreboardData())
return ""
if(oScoreboardData[dwId])
return oScoreboardData[dwId].SCORE
return ""
}
GetPlayerPingById(dwId) {
dwId += 0
dwId := Floor(dwId)
if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
return -1
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
if(oScoreboardData[dwId])
return oScoreboardData[dwId].PING
return -1
}
if(!updateOScoreboardData())
return -1
if(oScoreboardData[dwId])
return oScoreboardData[dwId].PING
return -1
}
IsNPCById(dwId) {
dwId += 0
dwId := Floor(dwId)
if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
return -1
if(iRefreshScoreboard+iUpdateTick > A_TickCount)
{
if(oScoreboardData[dwId])
return oScoreboardData[dwId].ISNPC
return -1
}
if(!updateOScoreboardData())
return -1
if(oScoreboardData[dwId])
return oScoreboardData[dwId].ISNPC
return -1
}
UpdateScoreboardDataEx() {
if(!checkHandles())
return false
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
dwFunc := dwSAMP + FUNC_UPDATESCOREBOARD
VarSetCapacity(injectData, 11, 0)
NumPut(0xB9, injectData, 0, "UChar")
NumPut(dwAddress, injectData, 1, "UInt")
NumPut(0xE8, injectData, 5, "UChar")
offset := dwFunc - (pInjectFunc + 10)
NumPut(offset, injectData, 6, "Int")
NumPut(0xC3, injectData, 10, "UChar")
writeRaw(hGTA, pInjectFunc, &injectData, 11)
if(ErrorLevel)
return false
hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
if(ErrorLevel)
return false
waitForSingleObject(hThread, 0xFFFFFFFF)
closeProcess(hThread)
return true
}
UpdateOScoreboardData() {
if(!checkHandles())
return 0
oScoreboardData := []
if(!UpdateScoreboardDataEx())
return 0
iRefreshScoreboard := A_TickCount
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwPlayers := readDWORD(hGTA, dwAddress + SAMP_PPOOL_PLAYER_OFFSET)
if(ErrorLevel || dwPlayers==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
wID := readMem(hGTA, dwPlayers + SAMP_SLOCALPLAYERID_OFFSET, 2, "Short")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwPing := readMem(hGTA, dwPlayers + SAMP_ILOCALPLAYERPING_OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwScore := readMem(hGTA, dwPlayers + SAMP_ILOCALPLAYERSCORE_OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwTemp := readMem(hGTA, dwPlayers + SAMP_ISTRLEN_LOCALPLAYERNAME_OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
sUsername := ""
if(dwTemp <= 0xf) {
sUsername := readString(hGTA, dwPlayers + SAMP_SZLOCALPLAYERNAME_OFFSET, 16)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
}
else {
dwAddress := readDWORD(hGTA, dwPlayers + SAMP_PSZLOCALPLAYERNAME_OFFSET)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
sUsername := readString(hGTA, dwAddress, 25)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
}
oScoreboardData[wID] := Object("NAME", sUsername, "ID", wID, "PING", dwPing, "SCORE", dwScore, "ISNPC", 0)
Loop, % SAMP_PLAYER_MAX
{
i := A_Index-1
dwRemoteplayer := readDWORD(hGTA, dwPlayers+SAMP_PREMOTEPLAYER_OFFSET+i*4)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(dwRemoteplayer==0)
continue
dwPing := readMem(hGTA, dwRemoteplayer + SAMP_IPING_OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwScore := readMem(hGTA, dwRemoteplayer + SAMP_ISCORE_OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwIsNPC := readMem(hGTA, dwRemoteplayer + SAMP_ISNPC_OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwTemp := readMem(hGTA, dwRemoteplayer + SAMP_ISTRLENNAME___OFFSET, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
sUsername := ""
if(dwTemp <= 0xf)
{
sUsername := readString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET, 16)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
}
else {
dwAddress := readDWORD(hGTA, dwRemoteplayer + SAMP_PSZPLAYERNAME_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
sUsername := readString(hGTA, dwAddress, 25)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
}
o := Object("NAME", sUsername, "ID", i, "PING", dwPing, "SCORE", dwScore, "ISNPC", dwIsNPC)
oScoreboardData[i] := o
dwRemoteplayerData := readDWORD(hGTA, dwRemoteplayer + 0x0)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(dwRemoteplayerData==0)
continue
dwAddress := readDWORD(hGTA, dwRemoteplayerData + 489)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(dwAddress)
{
ix := readMem(hGTA, dwRemoteplayerData + 493, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
iy := readMem(hGTA, dwRemoteplayerData + 497, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
iz := readMem(hGTA, dwRemoteplayerData + 501, 4, "Int")
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
o.MPOS := [ix, iy, iz]
}
dwpSAMP_Actor := readDWORD(hGTA, dwRemoteplayerData + 0x0)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(dwpSAMP_Actor==0)
continue
dwPed := readDWORD(hGTA, dwpSAMP_Actor + 676)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
if(dwPed==0)
continue
o.PED := dwPed
fHP := readFloat(hGTA, dwRemoteplayerData + 444)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
fARMOR := readFloat(hGTA, dwRemoteplayerData + 440)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
o.HP := fHP
o.ARMOR := fARMOR
}
ErrorLevel := ERROR_OK
return 1
}
SetCheckpoint(fX, fY, fZ, fSize) {
if(!checkHandles())
return false
dwFunc := dwSAMP + 0x9D340
dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_INCHAT_PTR)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
VarSetCapacity(buf, 16, 0)
NumPut(fX, buf, 0, "Float")
NumPut(fY, buf, 4, "Float")
NumPut(fZ, buf, 8, "Float")
NumPut(fSize, buf, 12, "Float")
writeRaw(hGTA, pParam1, &buf, 16)
dwLen := 31
VarSetCapacity(injectData, dwLen, 0)
NumPut(0xB9, injectData, 0, "UChar")
NumPut(dwAddress, injectData, 1, "UInt")
NumPut(0x68, injectData, 5, "UChar")
NumPut(pParam1+12, injectData, 6, "UInt")
NumPut(0x68, injectData, 10, "UChar")
NumPut(pParam1, injectData, 11, "UInt")
NumPut(0xE8, injectData, 15, "UChar")
offset := dwFunc - (pInjectFunc + 20)
NumPut(offset, injectData, 16, "Int")
NumPut(0x05C7, injectData, 20, "UShort")
NumPut(dwAddress+0x24, injectData, 22, "UInt")
NumPut(1, injectData, 26, "UInt")
NumPut(0xC3, injectData, 30, "UChar")
writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
if(ErrorLevel)
return false
hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
if(ErrorLevel)
return false
waitForSingleObject(hThread, 0xFFFFFFFF)
closeProcess(hThread)
ErrorLevel := ERROR_OK
return true
}
DisableCheckpoint() {
if(!checkHandles())
return false
dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_INCHAT_PTR)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return false
}
VarSetCapacity(enablecp, 4, 0)
NumPut(0,enablecp,0,"Int")
writeRaw(hGTA, dwAddress+0x24, &enablecp, 4)
ErrorLevel := ERROR_OK
return true
}
IsMarkerCreated() {
If(!checkHandles())
return false
active := readMem(hGTA, ADDR_CP_CHECK, 1, "byte")
If(!active)
return 0
else return 1
}
CoordsFromRedmarker() {
if(!checkhandles())
return false
for i, v in ADDR_REDMARKER
f%i% := readFloat(hGTA, v)
return [f1, f2, f3]
}
GetPlayerCoordinates() {
if(!checkHandles())
return ""
fX := readFloat(hGTA, ADDR_POSITION_X)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
fY := readFloat(hGTA, ADDR_POSITION_Y)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
fZ := readFloat(hGTA, ADDR_POSITION_Z)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return ""
}
ErrorLevel := ERROR_OK
return [fX, fY, fZ]
}
GetPlayerPos(ByRef fX,ByRef fY,ByRef fZ) {
if(!checkHandles())
return 0
fX := readFloat(hGTA, ADDR_POSITION_X)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
fY := readFloat(hGTA, ADDR_POSITION_Y)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
fZ := readFloat(hGTA, ADDR_POSITION_Z)
if(ErrorLevel) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
}
CalculateZone(posX, posY, posZ) {
if ( bInitZaC == 0 )
{
InitZonesAndCities()
bInitZaC := 1
}
Loop % nZone-1
{
if (posX >= zone%A_Index%_x1) && (posY >= zone%A_Index%_y1) && (posZ >= zone%A_Index%_z1) && (posX <= zone%A_Index%_x2) && (posY <= zone%A_Index%_y2) && (posZ <= zone%A_Index%_z2)
{
ErrorLevel := ERROR_OK
return zone%A_Index%_name
}
}
ErrorLevel := ERROR_ZONE_NOT_FOUND
return "Unbekannt"
}
CalculateCity(posX, posY, posZ) {
if ( bInitZaC == 0 )
{
InitZonesAndCities()
bInitZaC := 1
}
smallestCity := "Unbekannt"
currentCitySize := 0
smallestCitySize := 0
Loop % nCity-1
{
if (posX >= city%A_Index%_x1) && (posY >= city%A_Index%_y1) && (posZ >= city%A_Index%_z1) && (posX <= city%A_Index%_x2) && (posY <= city%A_Index%_y2) && (posZ <= city%A_Index%_z2)
{
currentCitySize := ((city%A_Index%_x2 - city%A_Index%_x1) * (city%A_Index%_y2 - city%A_Index%_y1) * (city%A_Index%_z2 - city%A_Index%_z1))
if (smallestCity == "Unbekannt") || (currentCitySize < smallestCitySize)
{
smallestCity := city%A_Index%_name
smallestCitySize := currentCitySize
}
}
}
if(smallestCity == "Unbekannt") {
ErrorLevel := ERROR_CITY_NOT_FOUND
} else {
ErrorLevel := ERROR_OK
}
return smallestCity
}
IsPlayerInRangeOfPoint(_posX, _posY, _posZ, _posRadius) {
GetPlayerPos(posX, posY, posZ)
X := posX -_posX
Y := posY -_posY
Z := posZ -_posZ
if(((X < _posRadius) && (X > -_posRadius)) && ((Y < _posRadius) && (Y > -_posRadius)) && ((Z < _posRadius) && (Z > -_posRadius)))
return TRUE
return FALSE
}
IsPlayerInRangeOfPoint2D(_posX, _posY, _posRadius) {
GetPlayerPos(posX, posY, posZ)
X := posX - _posX
Y := posY - _posY
if(((X < _posRadius) && (X > -_posRadius)) && ((Y < _posRadius) && (Y > -_posRadius)))
return TRUE
return FALSE
}
GetPlayerZone() {
aktPos := GetPlayerCoordinates()
return CalculateZone(aktPos[1], aktPos[2], aktPos[3])
}
GetPlayerCity() {
aktPos := GetPlayerCoordinates()
return CalculateCity(aktPos[1], aktPos[2], aktPos[3])
}
InitZonesAndCities() {
AddCity("Las Venturas", 685.0, 476.093, -500.0, 3000.0, 3000.0, 500.0)
AddCity("San Fierro", -3000.0, -742.306, -500.0, -1270.53, 1530.24, 500.0)
AddCity("San Fierro", -1270.53, -402.481, -500.0, -1038.45, 832.495, 500.0)
AddCity("San Fierro", -1038.45, -145.539, -500.0, -897.546, 376.632, 500.0)
AddCity("Los Santos", 480.0, -3000.0, -500.0, 3000.0, -850.0, 500.0)
AddCity("Los Santos", 80.0, -2101.61, -500.0, 1075.0, -1239.61, 500.0)
AddCity("Tierra Robada", -1213.91, 596.349, -242.99, -480.539, 1659.68, 900.0)
AddCity("Red County", -1213.91, -768.027, -242.99, 2997.06, 596.349, 900.0)
AddCity("Flint County", -1213.91, -2892.97, -242.99, 44.6147, -768.027, 900.0)
AddCity("Whetstone", -2997.47, -2892.97, -242.99, -1213.91, -1115.58, 900.0)
AddZone("Avispa Country Club", -2667.810, -302.135, -28.831, -2646.400, -262.320, 71.169)
AddZone("Easter Bay Airport", -1315.420, -405.388, 15.406, -1264.400, -209.543, 25.406)
AddZone("Avispa Country Club", -2550.040, -355.493, 0.000, -2470.040, -318.493, 39.700)
AddZone("Easter Bay Airport", -1490.330, -209.543, 15.406, -1264.400, -148.388, 25.406)
AddZone("Garcia", -2395.140, -222.589, -5.3, -2354.090, -204.792, 200.000)
AddZone("Shady Cabin", -1632.830, -2263.440, -3.0, -1601.330, -2231.790, 200.000)
AddZone("East Los Santos", 2381.680, -1494.030, -89.084, 2421.030, -1454.350, 110.916)
AddZone("LVA Freight Depot", 1236.630, 1163.410, -89.084, 1277.050, 1203.280, 110.916)
AddZone("Blackfield Intersection", 1277.050, 1044.690, -89.084, 1315.350, 1087.630, 110.916)
AddZone("Avispa Country Club", -2470.040, -355.493, 0.000, -2270.040, -318.493, 46.100)
AddZone("Temple", 1252.330, -926.999, -89.084, 1357.000, -910.170, 110.916)
AddZone("Unity Station", 1692.620, -1971.800, -20.492, 1812.620, -1932.800, 79.508)
AddZone("LVA Freight Depot", 1315.350, 1044.690, -89.084, 1375.600, 1087.630, 110.916)
AddZone("Los Flores", 2581.730, -1454.350, -89.084, 2632.830, -1393.420, 110.916)
AddZone("Starfish Casino", 2437.390, 1858.100, -39.084, 2495.090, 1970.850, 60.916)
AddZone("Easter Bay Chemicals", -1132.820, -787.391, 0.000, -956.476, -768.027, 200.000)
AddZone("Downtown Los Santos", 1370.850, -1170.870, -89.084, 1463.900, -1130.850, 110.916)
AddZone("Esplanade East", -1620.300, 1176.520, -4.5, -1580.010, 1274.260, 200.000)
AddZone("Market Station", 787.461, -1410.930, -34.126, 866.009, -1310.210, 65.874)
AddZone("Linden Station", 2811.250, 1229.590, -39.594, 2861.250, 1407.590, 60.406)
AddZone("Montgomery Intersection", 1582.440, 347.457, 0.000, 1664.620, 401.750, 200.000)
AddZone("Frederick Bridge", 2759.250, 296.501, 0.000, 2774.250, 594.757, 200.000)
AddZone("Yellow Bell Station", 1377.480, 2600.430, -21.926, 1492.450, 2687.360, 78.074)
AddZone("Downtown Los Santos", 1507.510, -1385.210, 110.916, 1582.550, -1325.310, 335.916)
AddZone("Jefferson", 2185.330, -1210.740, -89.084, 2281.450, -1154.590, 110.916)
AddZone("Mulholland", 1318.130, -910.170, -89.084, 1357.000, -768.027, 110.916)
AddZone("Avispa Country Club", -2361.510, -417.199, 0.000, -2270.040, -355.493, 200.000)
AddZone("Jefferson", 1996.910, -1449.670, -89.084, 2056.860, -1350.720, 110.916)
AddZone("Julius Thruway West", 1236.630, 2142.860, -89.084, 1297.470, 2243.230, 110.916)
AddZone("Jefferson", 2124.660, -1494.030, -89.084, 2266.210, -1449.670, 110.916)
AddZone("Julius Thruway North", 1848.400, 2478.490, -89.084, 1938.800, 2553.490, 110.916)
AddZone("Rodeo", 422.680, -1570.200, -89.084, 466.223, -1406.050, 110.916)
AddZone("Cranberry Station", -2007.830, 56.306, 0.000, -1922.000, 224.782, 100.000)
AddZone("Downtown Los Santos", 1391.050, -1026.330, -89.084, 1463.900, -926.999, 110.916)
AddZone("Redsands West", 1704.590, 2243.230, -89.084, 1777.390, 2342.830, 110.916)
AddZone("Little Mexico", 1758.900, -1722.260, -89.084, 1812.620, -1577.590, 110.916)
AddZone("Blackfield Intersection", 1375.600, 823.228, -89.084, 1457.390, 919.447, 110.916)
AddZone("Los Santos International", 1974.630, -2394.330, -39.084, 2089.000, -2256.590, 60.916)
AddZone("Beacon Hill", -399.633, -1075.520, -1.489, -319.033, -977.516, 198.511)
AddZone("Rodeo", 334.503, -1501.950, -89.084, 422.680, -1406.050, 110.916)
AddZone("Richman", 225.165, -1369.620, -89.084, 334.503, -1292.070, 110.916)
AddZone("Downtown Los Santos", 1724.760, -1250.900, -89.084, 1812.620, -1150.870, 110.916)
AddZone("The Strip", 2027.400, 1703.230, -89.084, 2137.400, 1783.230, 110.916)
AddZone("Downtown Los Santos", 1378.330, -1130.850, -89.084, 1463.900, -1026.330, 110.916)
AddZone("Blackfield Intersection", 1197.390, 1044.690, -89.084, 1277.050, 1163.390, 110.916)
AddZone("Conference Center", 1073.220, -1842.270, -89.084, 1323.900, -1804.210, 110.916)
AddZone("Montgomery", 1451.400, 347.457, -6.1, 1582.440, 420.802, 200.000)
AddZone("Foster Valley", -2270.040, -430.276, -1.2, -2178.690, -324.114, 200.000)
AddZone("Blackfield Chapel", 1325.600, 596.349, -89.084, 1375.600, 795.010, 110.916)
AddZone("Los Santos International", 2051.630, -2597.260, -39.084, 2152.450, -2394.330, 60.916)
AddZone("Mulholland", 1096.470, -910.170, -89.084, 1169.130, -768.027, 110.916)
AddZone("Yellow Bell Gol Course", 1457.460, 2723.230, -89.084, 1534.560, 2863.230, 110.916)
AddZone("The Strip", 2027.400, 1783.230, -89.084, 2162.390, 1863.230, 110.916)
AddZone("Jefferson", 2056.860, -1210.740, -89.084, 2185.330, -1126.320, 110.916)
AddZone("Mulholland", 952.604, -937.184, -89.084, 1096.470, -860.619, 110.916)
AddZone("Aldea Malvada", -1372.140, 2498.520, 0.000, -1277.590, 2615.350, 200.000)
AddZone("Las Colinas", 2126.860, -1126.320, -89.084, 2185.330, -934.489, 110.916)
AddZone("Las Colinas", 1994.330, -1100.820, -89.084, 2056.860, -920.815, 110.916)
AddZone("Richman", 647.557, -954.662, -89.084, 768.694, -860.619, 110.916)
AddZone("LVA Freight Depot", 1277.050, 1087.630, -89.084, 1375.600, 1203.280, 110.916)
AddZone("Julius Thruway North", 1377.390, 2433.230, -89.084, 1534.560, 2507.230, 110.916)
AddZone("Willowfield", 2201.820, -2095.000, -89.084, 2324.000, -1989.900, 110.916)
AddZone("Julius Thruway North", 1704.590, 2342.830, -89.084, 1848.400, 2433.230, 110.916)
AddZone("Temple", 1252.330, -1130.850, -89.084, 1378.330, -1026.330, 110.916)
AddZone("Little Mexico", 1701.900, -1842.270, -89.084, 1812.620, -1722.260, 110.916)
AddZone("Queens", -2411.220, 373.539, 0.000, -2253.540, 458.411, 200.000)
AddZone("Las Venturas Airport", 1515.810, 1586.400, -12.500, 1729.950, 1714.560, 87.500)
AddZone("Richman", 225.165, -1292.070, -89.084, 466.223, -1235.070, 110.916)
AddZone("Temple", 1252.330, -1026.330, -89.084, 1391.050, -926.999, 110.916)
AddZone("East Los Santos", 2266.260, -1494.030, -89.084, 2381.680, -1372.040, 110.916)
AddZone("Julius Thruway East", 2623.180, 943.235, -89.084, 2749.900, 1055.960, 110.916)
AddZone("Willowfield", 2541.700, -1941.400, -89.084, 2703.580, -1852.870, 110.916)
AddZone("Las Colinas", 2056.860, -1126.320, -89.084, 2126.860, -920.815, 110.916)
AddZone("Julius Thruway East", 2625.160, 2202.760, -89.084, 2685.160, 2442.550, 110.916)
AddZone("Rodeo", 225.165, -1501.950, -89.084, 334.503, -1369.620, 110.916)
AddZone("Las Brujas", -365.167, 2123.010, -3.0, -208.570, 2217.680, 200.000)
AddZone("Julius Thruway East", 2536.430, 2442.550, -89.084, 2685.160, 2542.550, 110.916)
AddZone("Rodeo", 334.503, -1406.050, -89.084, 466.223, -1292.070, 110.916)
AddZone("Vinewood", 647.557, -1227.280, -89.084, 787.461, -1118.280, 110.916)
AddZone("Rodeo", 422.680, -1684.650, -89.084, 558.099, -1570.200, 110.916)
AddZone("Julius Thruway North", 2498.210, 2542.550, -89.084, 2685.160, 2626.550, 110.916)
AddZone("Downtown Los Santos", 1724.760, -1430.870, -89.084, 1812.620, -1250.900, 110.916)
AddZone("Rodeo", 225.165, -1684.650, -89.084, 312.803, -1501.950, 110.916)
AddZone("Jefferson", 2056.860, -1449.670, -89.084, 2266.210, -1372.040, 110.916)
AddZone("Hampton Barns", 603.035, 264.312, 0.000, 761.994, 366.572, 200.000)
AddZone("Temple", 1096.470, -1130.840, -89.084, 1252.330, -1026.330, 110.916)
AddZone("Kincaid Bridge", -1087.930, 855.370, -89.084, -961.950, 986.281, 110.916)
AddZone("Verona Beach", 1046.150, -1722.260, -89.084, 1161.520, -1577.590, 110.916)
AddZone("Commerce", 1323.900, -1722.260, -89.084, 1440.900, -1577.590, 110.916)
AddZone("Mulholland", 1357.000, -926.999, -89.084, 1463.900, -768.027, 110.916)
AddZone("Rodeo", 466.223, -1570.200, -89.084, 558.099, -1385.070, 110.916)
AddZone("Mulholland", 911.802, -860.619, -89.084, 1096.470, -768.027, 110.916)
AddZone("Mulholland", 768.694, -954.662, -89.084, 952.604, -860.619, 110.916)
AddZone("Julius Thruway South", 2377.390, 788.894, -89.084, 2537.390, 897.901, 110.916)
AddZone("Idlewood", 1812.620, -1852.870, -89.084, 1971.660, -1742.310, 110.916)
AddZone("Ocean Docks", 2089.000, -2394.330, -89.084, 2201.820, -2235.840, 110.916)
AddZone("Commerce", 1370.850, -1577.590, -89.084, 1463.900, -1384.950, 110.916)
AddZone("Julius Thruway North", 2121.400, 2508.230, -89.084, 2237.400, 2663.170, 110.916)
AddZone("Temple", 1096.470, -1026.330, -89.084, 1252.330, -910.170, 110.916)
AddZone("Glen Park", 1812.620, -1449.670, -89.084, 1996.910, -1350.720, 110.916)
AddZone("Easter Bay Airport", -1242.980, -50.096, 0.000, -1213.910, 578.396, 200.000)
AddZone("Martin Bridge", -222.179, 293.324, 0.000, -122.126, 476.465, 200.000)
AddZone("The Strip", 2106.700, 1863.230, -89.084, 2162.390, 2202.760, 110.916)
AddZone("Willowfield", 2541.700, -2059.230, -89.084, 2703.580, -1941.400, 110.916)
AddZone("Marina", 807.922, -1577.590, -89.084, 926.922, -1416.250, 110.916)
AddZone("Las Venturas Airport", 1457.370, 1143.210, -89.084, 1777.400, 1203.280, 110.916)
AddZone("Idlewood", 1812.620, -1742.310, -89.084, 1951.660, -1602.310, 110.916)
AddZone("Esplanade East", -1580.010, 1025.980, -6.1, -1499.890, 1274.260, 200.000)
AddZone("Downtown Los Santos", 1370.850, -1384.950, -89.084, 1463.900, -1170.870, 110.916)
AddZone("The Mako Span", 1664.620, 401.750, 0.000, 1785.140, 567.203, 200.000)
AddZone("Rodeo", 312.803, -1684.650, -89.084, 422.680, -1501.950, 110.916)
AddZone("Pershing Square", 1440.900, -1722.260, -89.084, 1583.500, -1577.590, 110.916)
AddZone("Mulholland", 687.802, -860.619, -89.084, 911.802, -768.027, 110.916)
AddZone("Gant Bridge", -2741.070, 1490.470, -6.1, -2616.400, 1659.680, 200.000)
AddZone("Las Colinas", 2185.330, -1154.590, -89.084, 2281.450, -934.489, 110.916)
AddZone("Mulholland", 1169.130, -910.170, -89.084, 1318.130, -768.027, 110.916)
AddZone("Julius Thruway North", 1938.800, 2508.230, -89.084, 2121.400, 2624.230, 110.916)
AddZone("Commerce", 1667.960, -1577.590, -89.084, 1812.620, -1430.870, 110.916)
AddZone("Rodeo", 72.648, -1544.170, -89.084, 225.165, -1404.970, 110.916)
AddZone("Roca Escalante", 2536.430, 2202.760, -89.084, 2625.160, 2442.550, 110.916)
AddZone("Rodeo", 72.648, -1684.650, -89.084, 225.165, -1544.170, 110.916)
AddZone("Market", 952.663, -1310.210, -89.084, 1072.660, -1130.850, 110.916)
AddZone("Las Colinas", 2632.740, -1135.040, -89.084, 2747.740, -945.035, 110.916)
AddZone("Mulholland", 861.085, -674.885, -89.084, 1156.550, -600.896, 110.916)
AddZone("King's", -2253.540, 373.539, -9.1, -1993.280, 458.411, 200.000)
AddZone("Redsands East", 1848.400, 2342.830, -89.084, 2011.940, 2478.490, 110.916)
AddZone("Downtown", -1580.010, 744.267, -6.1, -1499.890, 1025.980, 200.000)
AddZone("Conference Center", 1046.150, -1804.210, -89.084, 1323.900, -1722.260, 110.916)
AddZone("Richman", 647.557, -1118.280, -89.084, 787.461, -954.662, 110.916)
AddZone("Ocean Flats", -2994.490, 277.411, -9.1, -2867.850, 458.411, 200.000)
AddZone("Greenglass College", 964.391, 930.890, -89.084, 1166.530, 1044.690, 110.916)
AddZone("Glen Park", 1812.620, -1100.820, -89.084, 1994.330, -973.380, 110.916)
AddZone("LVA Freight Depot", 1375.600, 919.447, -89.084, 1457.370, 1203.280, 110.916)
AddZone("Regular Tom", -405.770, 1712.860, -3.0, -276.719, 1892.750, 200.000)
AddZone("Verona Beach", 1161.520, -1722.260, -89.084, 1323.900, -1577.590, 110.916)
AddZone("East Los Santos", 2281.450, -1372.040, -89.084, 2381.680, -1135.040, 110.916)
AddZone("Caligula's Palace", 2137.400, 1703.230, -89.084, 2437.390, 1783.230, 110.916)
AddZone("Idlewood", 1951.660, -1742.310, -89.084, 2124.660, -1602.310, 110.916)
AddZone("Pilgrim", 2624.400, 1383.230, -89.084, 2685.160, 1783.230, 110.916)
AddZone("Idlewood", 2124.660, -1742.310, -89.084, 2222.560, -1494.030, 110.916)
AddZone("Queens", -2533.040, 458.411, 0.000, -2329.310, 578.396, 200.000)
AddZone("Downtown", -1871.720, 1176.420, -4.5, -1620.300, 1274.260, 200.000)
AddZone("Commerce", 1583.500, -1722.260, -89.084, 1758.900, -1577.590, 110.916)
AddZone("East Los Santos", 2381.680, -1454.350, -89.084, 2462.130, -1135.040, 110.916)
AddZone("Marina", 647.712, -1577.590, -89.084, 807.922, -1416.250, 110.916)
AddZone("Richman", 72.648, -1404.970, -89.084, 225.165, -1235.070, 110.916)
AddZone("Vinewood", 647.712, -1416.250, -89.084, 787.461, -1227.280, 110.916)
AddZone("East Los Santos", 2222.560, -1628.530, -89.084, 2421.030, -1494.030, 110.916)
AddZone("Rodeo", 558.099, -1684.650, -89.084, 647.522, -1384.930, 110.916)
AddZone("Easter Tunnel", -1709.710, -833.034, -1.5, -1446.010, -730.118, 200.000)
AddZone("Rodeo", 466.223, -1385.070, -89.084, 647.522, -1235.070, 110.916)
AddZone("Redsands East", 1817.390, 2202.760, -89.084, 2011.940, 2342.830, 110.916)
AddZone("The Clown's Pocket", 2162.390, 1783.230, -89.084, 2437.390, 1883.230, 110.916)
AddZone("Idlewood", 1971.660, -1852.870, -89.084, 2222.560, -1742.310, 110.916)
AddZone("Montgomery Intersection", 1546.650, 208.164, 0.000, 1745.830, 347.457, 200.000)
AddZone("Willowfield", 2089.000, -2235.840, -89.084, 2201.820, -1989.900, 110.916)
AddZone("Temple", 952.663, -1130.840, -89.084, 1096.470, -937.184, 110.916)
AddZone("Prickle Pine", 1848.400, 2553.490, -89.084, 1938.800, 2863.230, 110.916)
AddZone("Los Santos International", 1400.970, -2669.260, -39.084, 2189.820, -2597.260, 60.916)
AddZone("Garver Bridge", -1213.910, 950.022, -89.084, -1087.930, 1178.930, 110.916)
AddZone("Garver Bridge", -1339.890, 828.129, -89.084, -1213.910, 1057.040, 110.916)
AddZone("Kincaid Bridge", -1339.890, 599.218, -89.084, -1213.910, 828.129, 110.916)
AddZone("Kincaid Bridge", -1213.910, 721.111, -89.084, -1087.930, 950.022, 110.916)
AddZone("Verona Beach", 930.221, -2006.780, -89.084, 1073.220, -1804.210, 110.916)
AddZone("Verdant Bluffs", 1073.220, -2006.780, -89.084, 1249.620, -1842.270, 110.916)
AddZone("Vinewood", 787.461, -1130.840, -89.084, 952.604, -954.662, 110.916)
AddZone("Vinewood", 787.461, -1310.210, -89.084, 952.663, -1130.840, 110.916)
AddZone("Commerce", 1463.900, -1577.590, -89.084, 1667.960, -1430.870, 110.916)
AddZone("Market", 787.461, -1416.250, -89.084, 1072.660, -1310.210, 110.916)
AddZone("Rockshore West", 2377.390, 596.349, -89.084, 2537.390, 788.894, 110.916)
AddZone("Julius Thruway North", 2237.400, 2542.550, -89.084, 2498.210, 2663.170, 110.916)
AddZone("East Beach", 2632.830, -1668.130, -89.084, 2747.740, -1393.420, 110.916)
AddZone("Fallow Bridge", 434.341, 366.572, 0.000, 603.035, 555.680, 200.000)
AddZone("Willowfield", 2089.000, -1989.900, -89.084, 2324.000, -1852.870, 110.916)
AddZone("Chinatown", -2274.170, 578.396, -7.6, -2078.670, 744.170, 200.000)
AddZone("El Castillo del Diablo", -208.570, 2337.180, 0.000, 8.430, 2487.180, 200.000)
AddZone("Ocean Docks", 2324.000, -2145.100, -89.084, 2703.580, -2059.230, 110.916)
AddZone("Easter Bay Chemicals", -1132.820, -768.027, 0.000, -956.476, -578.118, 200.000)
AddZone("The Visage", 1817.390, 1703.230, -89.084, 2027.400, 1863.230, 110.916)
AddZone("Ocean Flats", -2994.490, -430.276, -1.2, -2831.890, -222.589, 200.000)
AddZone("Richman", 321.356, -860.619, -89.084, 687.802, -768.027, 110.916)
AddZone("Green Palms", 176.581, 1305.450, -3.0, 338.658, 1520.720, 200.000)
AddZone("Richman", 321.356, -768.027, -89.084, 700.794, -674.885, 110.916)
AddZone("Starfish Casino", 2162.390, 1883.230, -89.084, 2437.390, 2012.180, 110.916)
AddZone("East Beach", 2747.740, -1668.130, -89.084, 2959.350, -1498.620, 110.916)
AddZone("Jefferson", 2056.860, -1372.040, -89.084, 2281.450, -1210.740, 110.916)
AddZone("Downtown Los Santos", 1463.900, -1290.870, -89.084, 1724.760, -1150.870, 110.916)
AddZone("Downtown Los Santos", 1463.900, -1430.870, -89.084, 1724.760, -1290.870, 110.916)
AddZone("Garver Bridge", -1499.890, 696.442, -179.615, -1339.890, 925.353, 20.385)
AddZone("Julius Thruway South", 1457.390, 823.228, -89.084, 2377.390, 863.229, 110.916)
AddZone("East Los Santos", 2421.030, -1628.530, -89.084, 2632.830, -1454.350, 110.916)
AddZone("Greenglass College", 964.391, 1044.690, -89.084, 1197.390, 1203.220, 110.916)
AddZone("Las Colinas", 2747.740, -1120.040, -89.084, 2959.350, -945.035, 110.916)
AddZone("Mulholland", 737.573, -768.027, -89.084, 1142.290, -674.885, 110.916)
AddZone("Ocean Docks", 2201.820, -2730.880, -89.084, 2324.000, -2418.330, 110.916)
AddZone("East Los Santos", 2462.130, -1454.350, -89.084, 2581.730, -1135.040, 110.916)
AddZone("Ganton", 2222.560, -1722.330, -89.084, 2632.830, -1628.530, 110.916)
AddZone("Avispa Country Club", -2831.890, -430.276, -6.1, -2646.400, -222.589, 200.000)
AddZone("Willowfield", 1970.620, -2179.250, -89.084, 2089.000, -1852.870, 110.916)
AddZone("Esplanade North", -1982.320, 1274.260, -4.5, -1524.240, 1358.900, 200.000)
AddZone("The High Roller", 1817.390, 1283.230, -89.084, 2027.390, 1469.230, 110.916)
AddZone("Ocean Docks", 2201.820, -2418.330, -89.084, 2324.000, -2095.000, 110.916)
AddZone("Last Dime Motel", 1823.080, 596.349, -89.084, 1997.220, 823.228, 110.916)
AddZone("Bayside Marina", -2353.170, 2275.790, 0.000, -2153.170, 2475.790, 200.000)
AddZone("King's", -2329.310, 458.411, -7.6, -1993.280, 578.396, 200.000)
AddZone("El Corona", 1692.620, -2179.250, -89.084, 1812.620, -1842.270, 110.916)
AddZone("Blackfield Chapel", 1375.600, 596.349, -89.084, 1558.090, 823.228, 110.916)
AddZone("The Pink Swan", 1817.390, 1083.230, -89.084, 2027.390, 1283.230, 110.916)
AddZone("Julius Thruway West", 1197.390, 1163.390, -89.084, 1236.630, 2243.230, 110.916)
AddZone("Los Flores", 2581.730, -1393.420, -89.084, 2747.740, -1135.040, 110.916)
AddZone("The Visage", 1817.390, 1863.230, -89.084, 2106.700, 2011.830, 110.916)
AddZone("Prickle Pine", 1938.800, 2624.230, -89.084, 2121.400, 2861.550, 110.916)
AddZone("Verona Beach", 851.449, -1804.210, -89.084, 1046.150, -1577.590, 110.916)
AddZone("Robada Intersection", -1119.010, 1178.930, -89.084, -862.025, 1351.450, 110.916)
AddZone("Linden Side", 2749.900, 943.235, -89.084, 2923.390, 1198.990, 110.916)
AddZone("Ocean Docks", 2703.580, -2302.330, -89.084, 2959.350, -2126.900, 110.916)
AddZone("Willowfield", 2324.000, -2059.230, -89.084, 2541.700, -1852.870, 110.916)
AddZone("King's", -2411.220, 265.243, -9.1, -1993.280, 373.539, 200.000)
AddZone("Commerce", 1323.900, -1842.270, -89.084, 1701.900, -1722.260, 110.916)
AddZone("Mulholland", 1269.130, -768.027, -89.084, 1414.070, -452.425, 110.916)
AddZone("Marina", 647.712, -1804.210, -89.084, 851.449, -1577.590, 110.916)
AddZone("Battery Point", -2741.070, 1268.410, -4.5, -2533.040, 1490.470, 200.000)
AddZone("The Four Dragons Casino", 1817.390, 863.232, -89.084, 2027.390, 1083.230, 110.916)
AddZone("Blackfield", 964.391, 1203.220, -89.084, 1197.390, 1403.220, 110.916)
AddZone("Julius Thruway North", 1534.560, 2433.230, -89.084, 1848.400, 2583.230, 110.916)
AddZone("Yellow Bell Gol Course", 1117.400, 2723.230, -89.084, 1457.460, 2863.230, 110.916)
AddZone("Idlewood", 1812.620, -1602.310, -89.084, 2124.660, -1449.670, 110.916)
AddZone("Redsands West", 1297.470, 2142.860, -89.084, 1777.390, 2243.230, 110.916)
AddZone("Doherty", -2270.040, -324.114, -1.2, -1794.920, -222.589, 200.000)
AddZone("Hilltop Farm", 967.383, -450.390, -3.0, 1176.780, -217.900, 200.000)
AddZone("Las Barrancas", -926.130, 1398.730, -3.0, -719.234, 1634.690, 200.000)
AddZone("Pirates in Men's Pants", 1817.390, 1469.230, -89.084, 2027.400, 1703.230, 110.916)
AddZone("City Hall", -2867.850, 277.411, -9.1, -2593.440, 458.411, 200.000)
AddZone("Avispa Country Club", -2646.400, -355.493, 0.000, -2270.040, -222.589, 200.000)
AddZone("The Strip", 2027.400, 863.229, -89.084, 2087.390, 1703.230, 110.916)
AddZone("Hashbury", -2593.440, -222.589, -1.0, -2411.220, 54.722, 200.000)
AddZone("Los Santos International", 1852.000, -2394.330, -89.084, 2089.000, -2179.250, 110.916)
AddZone("Whitewood Estates", 1098.310, 1726.220, -89.084, 1197.390, 2243.230, 110.916)
AddZone("Sherman Reservoir", -789.737, 1659.680, -89.084, -599.505, 1929.410, 110.916)
AddZone("El Corona", 1812.620, -2179.250, -89.084, 1970.620, -1852.870, 110.916)
AddZone("Downtown", -1700.010, 744.267, -6.1, -1580.010, 1176.520, 200.000)
AddZone("Foster Valley", -2178.690, -1250.970, 0.000, -1794.920, -1115.580, 200.000)
AddZone("Las Payasadas", -354.332, 2580.360, 2.0, -133.625, 2816.820, 200.000)
AddZone("Valle Ocultado", -936.668, 2611.440, 2.0, -715.961, 2847.900, 200.000)
AddZone("Blackfield Intersection", 1166.530, 795.010, -89.084, 1375.600, 1044.690, 110.916)
AddZone("Ganton", 2222.560, -1852.870, -89.084, 2632.830, -1722.330, 110.916)
AddZone("Easter Bay Airport", -1213.910, -730.118, 0.000, -1132.820, -50.096, 200.000)
AddZone("Redsands East", 1817.390, 2011.830, -89.084, 2106.700, 2202.760, 110.916)
AddZone("Esplanade East", -1499.890, 578.396, -79.615, -1339.890, 1274.260, 20.385)
AddZone("Caligula's Palace", 2087.390, 1543.230, -89.084, 2437.390, 1703.230, 110.916)
AddZone("Royal Casino", 2087.390, 1383.230, -89.084, 2437.390, 1543.230, 110.916)
AddZone("Richman", 72.648, -1235.070, -89.084, 321.356, -1008.150, 110.916)
AddZone("Starfish Casino", 2437.390, 1783.230, -89.084, 2685.160, 2012.180, 110.916)
AddZone("Mulholland", 1281.130, -452.425, -89.084, 1641.130, -290.913, 110.916)
AddZone("Downtown", -1982.320, 744.170, -6.1, -1871.720, 1274.260, 200.000)
AddZone("Hankypanky Point", 2576.920, 62.158, 0.000, 2759.250, 385.503, 200.000)
AddZone("K.A.C.C. Military Fuels", 2498.210, 2626.550, -89.084, 2749.900, 2861.550, 110.916)
AddZone("Harry Gold Parkway", 1777.390, 863.232, -89.084, 1817.390, 2342.830, 110.916)
AddZone("Bayside Tunnel", -2290.190, 2548.290, -89.084, -1950.190, 2723.290, 110.916)
AddZone("Ocean Docks", 2324.000, -2302.330, -89.084, 2703.580, -2145.100, 110.916)
AddZone("Richman", 321.356, -1044.070, -89.084, 647.557, -860.619, 110.916)
AddZone("Randolph Industrial Estate", 1558.090, 596.349, -89.084, 1823.080, 823.235, 110.916)
AddZone("East Beach", 2632.830, -1852.870, -89.084, 2959.350, -1668.130, 110.916)
AddZone("Flint Water", -314.426, -753.874, -89.084, -106.339, -463.073, 110.916)
AddZone("Blueberry", 19.607, -404.136, 3.8, 349.607, -220.137, 200.000)
AddZone("Linden Station", 2749.900, 1198.990, -89.084, 2923.390, 1548.990, 110.916)
AddZone("Glen Park", 1812.620, -1350.720, -89.084, 2056.860, -1100.820, 110.916)
AddZone("Downtown", -1993.280, 265.243, -9.1, -1794.920, 578.396, 200.000)
AddZone("Redsands West", 1377.390, 2243.230, -89.084, 1704.590, 2433.230, 110.916)
AddZone("Richman", 321.356, -1235.070, -89.084, 647.522, -1044.070, 110.916)
AddZone("Gant Bridge", -2741.450, 1659.680, -6.1, -2616.400, 2175.150, 200.000)
AddZone("Lil' Probe Inn", -90.218, 1286.850, -3.0, 153.859, 1554.120, 200.000)
AddZone("Flint Intersection", -187.700, -1596.760, -89.084, 17.063, -1276.600, 110.916)
AddZone("Las Colinas", 2281.450, -1135.040, -89.084, 2632.740, -945.035, 110.916)
AddZone("Sobell Rail Yards", 2749.900, 1548.990, -89.084, 2923.390, 1937.250, 110.916)
AddZone("The Emerald Isle", 2011.940, 2202.760, -89.084, 2237.400, 2508.230, 110.916)
AddZone("El Castillo del Diablo", -208.570, 2123.010, -7.6, 114.033, 2337.180, 200.000)
AddZone("Santa Flora", -2741.070, 458.411, -7.6, -2533.040, 793.411, 200.000)
AddZone("Playa del Seville", 2703.580, -2126.900, -89.084, 2959.350, -1852.870, 110.916)
AddZone("Market", 926.922, -1577.590, -89.084, 1370.850, -1416.250, 110.916)
AddZone("Queens", -2593.440, 54.722, 0.000, -2411.220, 458.411, 200.000)
AddZone("Pilson Intersection", 1098.390, 2243.230, -89.084, 1377.390, 2507.230, 110.916)
AddZone("Spinybed", 2121.400, 2663.170, -89.084, 2498.210, 2861.550, 110.916)
AddZone("Pilgrim", 2437.390, 1383.230, -89.084, 2624.400, 1783.230, 110.916)
AddZone("Blackfield", 964.391, 1403.220, -89.084, 1197.390, 1726.220, 110.916)
AddZone("'The Big Ear'", -410.020, 1403.340, -3.0, -137.969, 1681.230, 200.000)
AddZone("Dillimore", 580.794, -674.885, -9.5, 861.085, -404.790, 200.000)
AddZone("El Quebrados", -1645.230, 2498.520, 0.000, -1372.140, 2777.850, 200.000)
AddZone("Esplanade North", -2533.040, 1358.900, -4.5, -1996.660, 1501.210, 200.000)
AddZone("Easter Bay Airport", -1499.890, -50.096, -1.0, -1242.980, 249.904, 200.000)
AddZone("Fisher's Lagoon", 1916.990, -233.323, -100.000, 2131.720, 13.800, 200.000)
AddZone("Mulholland", 1414.070, -768.027, -89.084, 1667.610, -452.425, 110.916)
AddZone("East Beach", 2747.740, -1498.620, -89.084, 2959.350, -1120.040, 110.916)
AddZone("San Andreas Sound", 2450.390, 385.503, -100.000, 2759.250, 562.349, 200.000)
AddZone("Shady Creeks", -2030.120, -2174.890, -6.1, -1820.640, -1771.660, 200.000)
AddZone("Market", 1072.660, -1416.250, -89.084, 1370.850, -1130.850, 110.916)
AddZone("Rockshore West", 1997.220, 596.349, -89.084, 2377.390, 823.228, 110.916)
AddZone("Prickle Pine", 1534.560, 2583.230, -89.084, 1848.400, 2863.230, 110.916)
AddZone("Easter Basin", -1794.920, -50.096, -1.04, -1499.890, 249.904, 200.000)
AddZone("Leafy Hollow", -1166.970, -1856.030, 0.000, -815.624, -1602.070, 200.000)
AddZone("LVA Freight Depot", 1457.390, 863.229, -89.084, 1777.400, 1143.210, 110.916)
AddZone("Prickle Pine", 1117.400, 2507.230, -89.084, 1534.560, 2723.230, 110.916)
AddZone("Blueberry", 104.534, -220.137, 2.3, 349.607, 152.236, 200.000)
AddZone("El Castillo del Diablo", -464.515, 2217.680, 0.000, -208.570, 2580.360, 200.000)
AddZone("Downtown", -2078.670, 578.396, -7.6, -1499.890, 744.267, 200.000)
AddZone("Rockshore East", 2537.390, 676.549, -89.084, 2902.350, 943.235, 110.916)
AddZone("San Fierro Bay", -2616.400, 1501.210, -3.0, -1996.660, 1659.680, 200.000)
AddZone("Paradiso", -2741.070, 793.411, -6.1, -2533.040, 1268.410, 200.000)
AddZone("The Camel's Toe", 2087.390, 1203.230, -89.084, 2640.400, 1383.230, 110.916)
AddZone("Old Venturas Strip", 2162.390, 2012.180, -89.084, 2685.160, 2202.760, 110.916)
AddZone("Juniper Hill", -2533.040, 578.396, -7.6, -2274.170, 968.369, 200.000)
AddZone("Juniper Hollow", -2533.040, 968.369, -6.1, -2274.170, 1358.900, 200.000)
AddZone("Roca Escalante", 2237.400, 2202.760, -89.084, 2536.430, 2542.550, 110.916)
AddZone("Julius Thruway East", 2685.160, 1055.960, -89.084, 2749.900, 2626.550, 110.916)
AddZone("Verona Beach", 647.712, -2173.290, -89.084, 930.221, -1804.210, 110.916)
AddZone("Foster Valley", -2178.690, -599.884, -1.2, -1794.920, -324.114, 200.000)
AddZone("Arco del Oeste", -901.129, 2221.860, 0.000, -592.090, 2571.970, 200.000)
AddZone("Fallen Tree", -792.254, -698.555, -5.3, -452.404, -380.043, 200.000)
AddZone("The Farm", -1209.670, -1317.100, 114.981, -908.161, -787.391, 251.981)
AddZone("The Sherman Dam", -968.772, 1929.410, -3.0, -481.126, 2155.260, 200.000)
AddZone("Esplanade North", -1996.660, 1358.900, -4.5, -1524.240, 1592.510, 200.000)
AddZone("Financial", -1871.720, 744.170, -6.1, -1701.300, 1176.420, 300.000)
AddZone("Garcia", -2411.220, -222.589, -1.14, -2173.040, 265.243, 200.000)
AddZone("Montgomery", 1119.510, 119.526, -3.0, 1451.400, 493.323, 200.000)
AddZone("Creek", 2749.900, 1937.250, -89.084, 2921.620, 2669.790, 110.916)
AddZone("Los Santos International", 1249.620, -2394.330, -89.084, 1852.000, -2179.250, 110.916)
AddZone("Santa Maria Beach", 72.648, -2173.290, -89.084, 342.648, -1684.650, 110.916)
AddZone("Mulholland Intersection", 1463.900, -1150.870, -89.084, 1812.620, -768.027, 110.916)
AddZone("Angel Pine", -2324.940, -2584.290, -6.1, -1964.220, -2212.110, 200.000)
AddZone("Verdant Meadows", 37.032, 2337.180, -3.0, 435.988, 2677.900, 200.000)
AddZone("Octane Springs", 338.658, 1228.510, 0.000, 664.308, 1655.050, 200.000)
AddZone("Come-A-Lot", 2087.390, 943.235, -89.084, 2623.180, 1203.230, 110.916)
AddZone("Redsands West", 1236.630, 1883.110, -89.084, 1777.390, 2142.860, 110.916)
AddZone("Santa Maria Beach", 342.648, -2173.290, -89.084, 647.712, -1684.650, 110.916)
AddZone("Verdant Bluffs", 1249.620, -2179.250, -89.084, 1692.620, -1842.270, 110.916)
AddZone("Las Venturas Airport", 1236.630, 1203.280, -89.084, 1457.370, 1883.110, 110.916)
AddZone("Flint Range", -594.191, -1648.550, 0.000, -187.700, -1276.600, 200.000)
AddZone("Verdant Bluffs", 930.221, -2488.420, -89.084, 1249.620, -2006.780, 110.916)
AddZone("Palomino Creek", 2160.220, -149.004, 0.000, 2576.920, 228.322, 200.000)
AddZone("Ocean Docks", 2373.770, -2697.090, -89.084, 2809.220, -2330.460, 110.916)
AddZone("Easter Bay Airport", -1213.910, -50.096, -4.5, -947.980, 578.396, 200.000)
AddZone("Whitewood Estates", 883.308, 1726.220, -89.084, 1098.310, 2507.230, 110.916)
AddZone("Calton Heights", -2274.170, 744.170, -6.1, -1982.320, 1358.900, 200.000)
AddZone("Easter Basin", -1794.920, 249.904, -9.1, -1242.980, 578.396, 200.000)
AddZone("Los Santos Inlet", -321.744, -2224.430, -89.084, 44.615, -1724.430, 110.916)
AddZone("Doherty", -2173.040, -222.589, -1.0, -1794.920, 265.243, 200.000)
AddZone("Mount Chiliad", -2178.690, -2189.910, -47.917, -2030.120, -1771.660, 576.083)
AddZone("Fort Carson", -376.233, 826.326, -3.0, 123.717, 1220.440, 200.000)
AddZone("Foster Valley", -2178.690, -1115.580, 0.000, -1794.920, -599.884, 200.000)
AddZone("Ocean Flats", -2994.490, -222.589, -1.0, -2593.440, 277.411, 200.000)
AddZone("Fern Ridge", 508.189, -139.259, 0.000, 1306.660, 119.526, 200.000)
AddZone("Bayside", -2741.070, 2175.150, 0.000, -2353.170, 2722.790, 200.000)
AddZone("Las Venturas Airport", 1457.370, 1203.280, -89.084, 1777.390, 1883.110, 110.916)
AddZone("Blueberry Acres", -319.676, -220.137, 0.000, 104.534, 293.324, 200.000)
AddZone("Palisades", -2994.490, 458.411, -6.1, -2741.070, 1339.610, 200.000)
AddZone("North Rock", 2285.370, -768.027, 0.000, 2770.590, -269.740, 200.000)
AddZone("Hunter Quarry", 337.244, 710.840, -115.239, 860.554, 1031.710, 203.761)
AddZone("Los Santos International", 1382.730, -2730.880, -89.084, 2201.820, -2394.330, 110.916)
AddZone("Missionary Hill", -2994.490, -811.276, 0.000, -2178.690, -430.276, 200.000)
AddZone("San Fierro Bay", -2616.400, 1659.680, -3.0, -1996.660, 2175.150, 200.000)
AddZone("Restricted Area", -91.586, 1655.050, -50.000, 421.234, 2123.010, 250.000)
AddZone("Mount Chiliad", -2997.470, -1115.580, -47.917, -2178.690, -971.913, 576.083)
AddZone("Mount Chiliad", -2178.690, -1771.660, -47.917, -1936.120, -1250.970, 576.083)
AddZone("Easter Bay Airport", -1794.920, -730.118, -3.0, -1213.910, -50.096, 200.000)
AddZone("The Panopticon", -947.980, -304.320, -1.1, -319.676, 327.071, 200.000)
AddZone("Shady Creeks", -1820.640, -2643.680, -8.0, -1226.780, -1771.660, 200.000)
AddZone("Back o Beyond", -1166.970, -2641.190, 0.000, -321.744, -1856.030, 200.000)
AddZone("Mount Chiliad", -2994.490, -2189.910, -47.917, -2178.690, -1115.580, 576.083)
AddZone("Tierra Robada", -1213.910, 596.349, -242.990, -480.539, 1659.680, 900.000)
AddZone("Flint County", -1213.910, -2892.970, -242.990, 44.615, -768.027, 900.000)
AddZone("Whetstone", -2997.470, -2892.970, -242.990, -1213.910, -1115.580, 900.000)
AddZone("Bone County", -480.539, 596.349, -242.990, 869.461, 2993.870, 900.000)
AddZone("Tierra Robada", -2997.470, 1659.680, -242.990, -480.539, 2993.870, 900.000)
AddZone("San Fierro", -2997.470, -1115.580, -242.990, -1213.910, 1659.680, 900.000)
AddZone("Las Venturas", 869.461, 596.349, -242.990, 2997.060, 2993.870, 900.000)
AddZone("Red County", -1213.910, -768.027, -242.990, 2997.060, 596.349, 900.000)
AddZone("Los Santos", 44.615, -2892.970, -242.990, 2997.060, -768.027, 900.000)
}
AddZone(sName, x1, y1, z1, x2, y2, z2) {
global
zone%nZone%_name := sName
zone%nZone%_x1 := x1
zone%nZone%_y1 := y1
zone%nZone%_z1 := z1
zone%nZone%_x2 := x2
zone%nZone%_y2 := y2
zone%nZone%_z2 := z2
nZone := nZone + 1
}
AddCity(sName, x1, y1, z1, x2, y2, z2) {
global
city%nCity%_name := sName
city%nCity%_x1 := x1
city%nCity%_y1 := y1
city%nCity%_z1 := z1
city%nCity%_x2 := x2
city%nCity%_y2 := y2
city%nCity%_z2 := z2
nCity := nCity + 1
}
writeMemory(hProcess,address,writevalue,length=4, datatype="int") {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return false
}
VarSetCapacity(finalvalue,length, 0)
NumPut(writevalue,finalvalue,0,datatype)
dwRet :=  DllCall(  "WriteProcessMemory"
,"Uint",hProcess
,"Uint",address
,"Uint",&finalvalue
,"Uint",length
,"Uint",0)
if(dwRet == 0) {
ErrorLevel := ERROR_WRITE_MEMORY
return false
}
ErrorLevel := ERROR_OK
return true
}
checkHandles() {
if(iRefreshHandles+500>A_TickCount)
return true
iRefreshHandles:=A_TickCount
if(!refreshGTA() || !refreshSAMP() || !refreshMemory()) {
return false
} else {
return true
}
return true
}
refreshGTA() {
newPID := getPID("GTA:SA:MP")
if(!newPID) {
if(hGTA) {
virtualFreeEx(hGTA, pMemory, 0, 0x8000)
closeProcess(hGTA)
hGTA := 0x0
}
dwGTAPID := 0
hGTA := 0x0
dwSAMP := 0x0
pMemory := 0x0
return false
}
if(!hGTA || (dwGTAPID != newPID)) {
hGTA := openProcess(newPID)
if(ErrorLevel) {
dwGTAPID := 0
hGTA := 0x0
dwSAMP := 0x0
pMemory := 0x0
return false
}
dwGTAPID := newPID
dwSAMP := 0x0
pMemory := 0x0
return true
}
return true
}
refreshSAMP() {
if(dwSAMP)
return true
dwSAMP := getModuleBaseAddress("samp.dll", hGTA)
if(!dwSAMP)
return false
return true
}
refreshMemory() {
if(!pMemory) {
pMemory     := virtualAllocEx(hGTA, 6144, 0x1000 | 0x2000, 0x40)
if(ErrorLevel) {
pMemory := 0x0
return false
}
pParam1     := pMemory
pParam2     := pMemory + 1024
pParam3     := pMemory + 2048
pParam4     := pMemory + 3072
pParam5     := pMemory + 4096
pInjectFunc := pMemory + 5120
}
return true
}
getPID(szWindow) {
local dwPID := 0
WinGet, dwPID, PID, %szWindow%
return dwPID
}
openProcess(dwPID, dwRights = 0x1F0FFF) {
hProcess := DllCall("OpenProcess"
, "UInt", dwRights
, "int",  0
, "UInt", dwPID
, "Uint")
if(hProcess == 0) {
ErrorLevel := ERROR_OPEN_PROCESS
return 0
}
ErrorLevel := ERROR_OK
return hProcess
}
closeProcess(hProcess) {
if(hProcess == 0) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
dwRet := DllCall(    "CloseHandle"
, "Uint", hProcess
, "UInt")
ErrorLevel := ERROR_OK
}
getModuleBaseAddress(sModule, hProcess) {
if(!sModule) {
ErrorLevel := ERROR_MODULE_NOT_FOUND
return 0
}
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
dwSize = 1024*4
VarSetCapacity(hMods, dwSize)
VarSetCapacity(cbNeeded, 4)
dwRet := DllCall(    "Psapi.dll\EnumProcessModules"
, "UInt", hProcess
, "UInt", &hMods
, "UInt", dwSize
, "UInt*", cbNeeded
, "UInt")
if(dwRet == 0) {
ErrorLevel := ERROR_ENUM_PROCESS_MODULES
return 0
}
dwMods := cbNeeded / 4
i := 0
VarSetCapacity(hModule, 4)
VarSetCapacity(sCurModule, 260)
while(i < dwMods) {
hModule := NumGet(hMods, i*4)
DllCall("Psapi.dll\GetModuleFileNameEx"
, "UInt", hProcess
, "UInt", hModule
, "Str", sCurModule
, "UInt", 260)
SplitPath, sCurModule, sFilename
if(sModule == sFilename) {
ErrorLevel := ERROR_OK
return hModule
}
i := i + 1
}
ErrorLevel := ERROR_MODULE_NOT_FOUND
return 0
}
readString(hProcess, dwAddress, dwLen) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
VarSetCapacity(sRead, dwLen)
dwRet := DllCall(    "ReadProcessMemory"
, "UInt", hProcess
, "UInt", dwAddress
, "Str", sRead
, "UInt", dwLen
, "UInt*", 0
, "UInt")
if(dwRet == 0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
if A_IsUnicode
return __ansiToUnicode(sRead)
return sRead
}
readFloat(hProcess, dwAddress) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
VarSetCapacity(dwRead, 4)
dwRet := DllCall(    "ReadProcessMemory"
, "UInt",  hProcess
, "UInt",  dwAddress
, "Str",   dwRead
, "UInt",  4
, "UInt*", 0
, "UInt")
if(dwRet == 0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return NumGet(dwRead, 0, "Float")
}
readDWORD(hProcess, dwAddress) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
VarSetCapacity(dwRead, 4)
dwRet := DllCall(    "ReadProcessMemory"
, "UInt",  hProcess
, "UInt",  dwAddress
, "Str",   dwRead
, "UInt",  4
, "UInt*", 0)
if(dwRet == 0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return NumGet(dwRead, 0, "UInt")
}
readMem(hProcess, dwAddress, dwLen=4, type="UInt") {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
VarSetCapacity(dwRead, dwLen)
dwRet := DllCall(    "ReadProcessMemory"
, "UInt",  hProcess
, "UInt",  dwAddress
, "Str",   dwRead
, "UInt",  dwLen
, "UInt*", 0)
if(dwRet == 0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return NumGet(dwRead, 0, type)
}
writeString(hProcess, dwAddress, wString) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return false
}
sString := wString
if A_IsUnicode
sString := __unicodeToAnsi(wString)
dwRet := DllCall(    "WriteProcessMemory"
, "UInt", hProcess
, "UInt", dwAddress
, "Str", sString
, "UInt", StrLen(wString) + 1
, "UInt", 0
, "UInt")
if(dwRet == 0) {
ErrorLEvel := ERROR_WRITE_MEMORY
return false
}
ErrorLevel := ERROR_OK
return true
}
writeRaw(hProcess, dwAddress, pBuffer, dwLen) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return false
}
dwRet := DllCall(    "WriteProcessMemory"
, "UInt", hProcess
, "UInt", dwAddress
, "UInt", pBuffer
, "UInt", dwLen
, "UInt", 0
, "UInt")
if(dwRet == 0) {
ErrorLEvel := ERROR_WRITE_MEMORY
return false
}
ErrorLevel := ERROR_OK
return true
}
Memory_ReadByte(process_handle, address) {
VarSetCapacity(value, 1, 0)
DllCall("ReadProcessMemory", "UInt", process_handle, "UInt", address, "Str", value, "UInt", 1, "UInt *", 0)
return, NumGet(value, 0, "Byte")
}
callWithParams(hProcess, dwFunc, aParams, bCleanupStack = true) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return false
}
validParams := 0
i := aParams.MaxIndex()
dwLen := i * 5    + 5    + 1
if(bCleanupStack)
dwLen += 3
VarSetCapacity(injectData, i * 5    + 5       + 3       + 1, 0)
i_ := 1
while(i > 0) {
if(aParams[i][1] != "") {
dwMemAddress := 0x0
if(aParams[i][1] == "p") {
dwMemAddress := aParams[i][2]
} else if(aParams[i][1] == "s") {
if(i_>3)
return false
dwMemAddress := pParam%i_%
writeString(hProcess, dwMemAddress, aParams[i][2])
if(ErrorLevel)
return false
i_ += 1
} else if(aParams[i][1] == "i") {
dwMemAddress := aParams[i][2]
} else {
return false
}
NumPut(0x68, injectData, validParams * 5, "UChar")
NumPut(dwMemAddress, injectData, validParams * 5 + 1, "UInt")
validParams += 1
}
i -= 1
}
offset := dwFunc - ( pInjectFunc + validParams * 5 + 5 )
NumPut(0xE8, injectData, validParams * 5, "UChar")
NumPut(offset, injectData, validParams * 5 + 1, "Int")
if(bCleanupStack) {
NumPut(0xC483, injectData, validParams * 5 + 5, "UShort")
NumPut(validParams*4, injectData, validParams * 5 + 7, "UChar")
NumPut(0xC3, injectData, validParams * 5 + 8, "UChar")
} else {
NumPut(0xC3, injectData, validParams * 5 + 5, "UChar")
}
writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
if(ErrorLevel)
return false
hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
if(ErrorLevel)
return false
waitForSingleObject(hThread, 0xFFFFFFFF)
closeProcess(hThread)
return true
}
virtualAllocEx(hProcess, dwSize, flAllocationType, flProtect) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
dwRet := DllCall(    "VirtualAllocEx"
, "UInt", hProcess
, "UInt", 0
, "UInt", dwSize
, "UInt", flAllocationType
, "UInt", flProtect
, "UInt")
if(dwRet == 0) {
ErrorLEvel := ERROR_ALLOC_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return dwRet
}
virtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
dwRet := DllCall(    "VirtualFreeEx"
, "UInt", hProcess
, "UInt", lpAddress
, "UInt", dwSize
, "UInt", dwFreeType
, "UInt")
if(dwRet == 0) {
ErrorLEvel := ERROR_FREE_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return dwRet
}
createRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId) {
if(!hProcess) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
dwRet := DllCall(    "CreateRemoteThread"
, "UInt", hProcess
, "UInt", lpThreadAttributes
, "UInt", dwStackSize
, "UInt", lpStartAddress
, "UInt", lpParameter
, "UInt", dwCreationFlags
, "UInt", lpThreadId
, "UInt")
if(dwRet == 0) {
ErrorLEvel := ERROR_ALLOC_MEMORY
return 0
}
ErrorLevel := ERROR_OK
return dwRet
}
waitForSingleObject(hThread, dwMilliseconds) {
if(!hThread) {
ErrorLevel := ERROR_INVALID_HANDLE
return 0
}
dwRet := DllCall(    "WaitForSingleObject"
, "UInt", hThread
, "UInt", dwMilliseconds
, "UInt")
if(dwRet == 0xFFFFFFFF) {
ErrorLEvel := ERROR_WAIT_FOR_OBJECT
return 0
}
ErrorLevel := ERROR_OK
return dwRet
}
__ansiToUnicode(sString, nLen = 0) {
If !nLen
{
nLen := DllCall("MultiByteToWideChar"
, "Uint", 0
, "Uint", 0
, "Uint", &sString
, "int",  -1
, "Uint", 0
, "int",  0)
}
VarSetCapacity(wString, nLen * 2)
DllCall("MultiByteToWideChar"
, "Uint", 0
, "Uint", 0
, "Uint", &sString
, "int",  -1
, "Uint", &wString
, "int",  nLen)
return wString
}
__unicodeToAnsi(wString, nLen = 0) {
pString := wString + 1 > 65536 ? wString : &wString
If !nLen
{
nLen := DllCall("WideCharToMultiByte"
, "Uint", 0
, "Uint", 0
, "Uint", pString
, "int",  -1
, "Uint", 0
, "int",  0
, "Uint", 0
, "Uint", 0)
}
VarSetCapacity(sString, nLen)
DllCall("WideCharToMultiByte"
, "Uint", 0
, "Uint", 0
, "Uint", pString
, "int",  -1
, "str",  sString
, "int",  nLen
, "Uint", 0
, "Uint", 0)
return sString
}
getServerStatus(INADDR, PORT) {
DllCall("LoadLibrary", "str", "ws2_32", "ptr")
VarSetCapacity(wsadata, 408)
DllCall("ws2_32\WSAStartup", "ushort", 0x0000, "ptr", &wsadata)
DllCall("ws2_32\WSAStartup", "ushort", NumGet(wsadata, 2, "ushort"), "ptr", &wsadata)
remoteHost := DllCall("Ws2_32\gethostbyname", "Str", (A_IsUnicode ? __unicodeToAnsi(INADDR) : INADDR), "ptr")
if(remoteHost)
{
if(NumGet(remoteHost + (A_PtrSize==4 ? 8 : 16), "short")==2)
{
addrl := NumGet(remoteHost + (A_PtrSize==4 ? 12 : 24), "ptr")
ha :=  NumGet(addrl+0, "ptr")
a :=  NumGet(ha+0, "uchar")
loop, 3
a .= "." NumGet(ha+A_index, "uchar")
INADDR := a
}
else
return -1
}
else
return -1
socket := DllCall("ws2_32\socket", "int", 2, "int", 2, "int", 17, "ptr")
if(socket==-1)
{
return -1
}
VarSetCapacity(si, 16, 0)
NumPut(2, si, 0, "Short")
NumPut(DllCall("Ws2_32\htons", "UShort", PORT), si, 2, "UShort")
NumPut(DllCall("Ws2_32\inet_addr", "Str", (A_IsUnicode ? __unicodeToAnsi(INADDR) : INADDR)), si, 4, "ptr")
VarSetCapacity(message,30)
StrPut("SAMP", &message, "cp0")
StrPut("i", &message +10, "cp0")
if(DllCall("ws2_32\sendto", "ptr", socket, "ptr", &message, "int", 11, "int", 0, "ptr", &si, "int", 16, "int")==-1)
{
DllCall("Ws2_32\closesocket", "ptr", socket)
return -1
}
VarSetCapacity(buffer, 2048, 0)
VarSetCapacity(optval, 8, 0)
NumPut(1, optval, 0, "long")
DllCall("ws2_32\setsockopt", "ptr", socket, "int", 0xFFFF, "int", 0x1006, "ptr", &optval, "int", 4)
VarSetCapacity(silen,4)
NumPut(16, silen, 0, "int")
if(DllCall("ws2_32\recvfrom", "ptr", socket, "ptr", &buffer, "int", 2048, "int", 0, "ptr", &si, "ptr", &silen, "int")==-1)
{
DllCall("Ws2_32\closesocket", "ptr", socket)
return -1
}
DllCall("Ws2_32\closesocket", "ptr", socket)
return (NumGet(&buffer + 11, "Uchar") ? 2 : 1)
}
getAttacker(bReset := false) {
if(!checkHandles())
return 0
dwLocalPED := readDWORD(hGTA, ADDR_CPED_PTR)
dwAttacker := readDWORD(hGTA, dwLocalPED + 0x764)
if (!dwAttacker)
return -1
for i, o in oScoreboardData {
if (!o.PED || o.ISNPC || dwAttacker != o.PED)
continue
if (bReset)
writeMemory(hGTA, dwLocalPED + 0x764, 0, 4, "UInt")
return o.ID
}
return -1
}
UnlockFPS(){
if(!checkHandles())
return 0
writeMemory(hGTA, dwSAMP + ADDR_SAMP_FPSUNLOCK, 0x5051FF15, 4, "UChar")
}
FormatNumber(number){
StringReplace, number, number, -
IfEQual ErrorLevel, 0, SetEnv Sign, -
{
Loop Parse, number, .
{
if(A_Index = 1){
len := StrLen(A_LoopField)
Loop Parse, A_LoopField
{
if(Mod(len-A_Index, 3) = 0 and A_Index != len){
x .= A_LoopField "."
}else{
x .= A_LoopField
}
}
}else{
return sign x "." A_LoopField
}
return sign x
}
}
}
PlayerInput(text){
s := A_IsSuspended
Suspend On
KeyWait Enter
BlockChatInput()
SendInput t^a{backspace}%text%
Input, var, v, {enter}
SendInput ^a{backspace 100}{enter}
Sleep, 25
UnBlockChatInput()
if(!s)
Suspend Off
return var
}
DownloadToString(url, encoding = "utf-8")
{
static a := "AutoHotkey/" A_AhkVersion
if (!DllCall("LoadLibrary", "str", "wininet") || !(h := DllCall("wininet\InternetOpen", "str", a, "uint", 1, "ptr", 0, "ptr", 0, "uint", 0, "ptr")))
return 0
c := s := 0, o := ""
if (f := DllCall("wininet\InternetOpenUrl", "ptr", h, "str", url, "ptr", 0, "uint", 0, "uint", 0x80003000, "ptr", 0, "ptr"))
{
while (DllCall("wininet\InternetQueryDataAvailable", "ptr", f, "uint*", s, "uint", 0, "ptr", 0) && s > 0)
{
VarSetCapacity(b, s, 0)
DllCall("wininet\InternetReadFile", "ptr", f, "ptr", &b, "uint", s, "uint*", r)
o .= StrGet(&b, r >> (encoding = "utf-16" || encoding = "cp1200"), encoding)
}
DllCall("wininet\InternetCloseHandle", "ptr", f)
}
DllCall("wininet\InternetCloseHandle", "ptr", h)
return o
}
stringMath(string) {
while(position := RegExMatch(string, "\(([^\(\)]+)\)", regex_)) {
string := RegExReplace(string, "\(([^\(\)]+)\)", stringMath(regex_1), blahblah, 1, position)
}
while(position := RegExMatch(string, "(\+|-)? *((?:\+|-)?\d+)\^((?:\+|-)?\d+)", regex_)) {
string := RegExReplace(string, "(\+|-)? *((?:\+|-)?\d+)\^((?:\+|-)?\d+)", regex_1 . regex_2**regex_3, blahblah, 1, position)
}
while(position := RegExMatch(string, "(\+|-)? *((?:\+|-)?\d+(?:[\.\,]\d+)?) *(\*|/) *((?:\+|-)?\d+(?:[\.\,]\d+)?) *", regex_)) {
if(regex_3 == "*")
string := RegExReplace(string, "(\+|-)? *((?:\+|-)?\d+(?:[\.\,]\d+)?) *\* *((?:\+|-)?\d+(?:[\.\,]\d+)?) *", regex_1 . regex_2*regex_4, blahblah, 1, position)
if(regex_3 == "/")
string := RegExReplace(string, "(\+|-)? *((?:\+|-)?\d+(?:[\.\,]\d+)?) */ *((?:\+||)?\d+(?:[\.\,]\d+)?) *", regex_1 . regex_2/regex_4, blahblah, 1, position)
}
while(position := RegExMatch(string, " *((?:\+|-)?\d+(?:[\.\,]\d+)?) *(\+|-) *((?:\+|-)?\d+(?:[\.\,]\d+)?) *", regex_)) {
if(regex_2 == "+")
string := RegExReplace(string, " *((?:\+|-)?\d+(?:[\.\,]\d+)?) *\+ *((?:\+|-)?\d+(?:[\.\,]\d+)?) *", regex_1+regex_3, blahblah, 1, position)
if(regex_2 == "-")
string := RegExReplace(string, " *((?:\+|-)?\d+(?:[\.\,]\d+)?) *- *((?:\+|-)?\d+(?:[\.\,]\d+)?) *", regex_1-regex_3, blahblah, 1, position)
}
if(RegExMatch(string, "^-?\d+(?:\.\d+)?$"))
return string
return "ERROR"
}
getPageSize() {
dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
if (ErrorLevel || !dwAddress)
return false
pagesize := readMem(hGTA, dwAddress, 1, "Byte")
if (ErrorLevel)
return false
ErrorLevel := ERROR_OK
return pagesize
}
SetPercentageHealthAndArmor(toggle){
If(!checkHandles())
return false
writeMemory(hGTA, 0x589355, toggle, 1, "UChar")
writeMemory(hGTA, 0x589131, toggle, 1, "UChar")
}
SetChatLine(line, string) {
if(!checkHandles())
return false
dwPTR := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
writeString(hGTA, dwPTR + 0x136 + 0xfc*(99-line) + 0x1c, string)
return
}
UrlDownloadToVar(URL, ByRef Result, UserAgent = "", Proxy = "", ProxyBypass = "")
{
hModule := DllCall("LoadLibrary", "Str", "wininet.dll")
AccessType := Proxy != "" ? 3 : 1
io := DllCall("wininet\InternetOpenA"
, "Str", UserAgent
, "UInt", AccessType
, "Str", Proxy
, "Str", ProxyBypass
, "UInt", 0)
iou := DllCall("wininet\InternetOpenUrlA"
, "UInt", io
, "Str", url
, "Str", ""
, "UInt", 0
, "UInt", 0x80000000
, "UInt", 0)
If (ErrorLevel != 0 or iou = 0) {
DllCall("FreeLibrary", "UInt", hModule)
return 0
}
VarSetCapacity(buffer, 10240, 0)
VarSetCapacity(BytesRead, 4, 0)
Loop
{
irf := DllCall("wininet\InternetReadFile", "UInt", iou, "UInt", &buffer, "UInt", 10240, "UInt", &BytesRead)
VarSetCapacity(buffer, -1)
BytesRead_ = 0
Loop, 4
BytesRead_ += *(&BytesRead + A_Index-1) << 8*(A_Index-1)
If (irf = 1 and BytesRead_ = 0)
break
Else
Result .= SubStr(buffer, 1, BytesRead_)
}
DllCall("wininet\InternetCloseHandle", "UInt", iou)
DllCall("wininet\InternetCloseHandle", "UInt", io)
DllCall("FreeLibrary", "UInt", hModule)
}
updateOVehicleData() {
if (!checkHandles())
return false
if (iRefreshVeh + iUpdateTickVeh > A_TickCount)
return true
oVehiclePoolData := []
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET)
stVehiclePool := readDWORD(hGTA, dwAddress + SAMP_PPOOL_VEHICLE_OFFSET)
if (!stVehiclePool)
return false
vehicleCount := readDWORD(hGTA, stVehiclePool + 0x0)
Loop, % SAMP_MAX_VEHICLES {
if (!readDWORD(hGTA, stVehiclePool + VEHICLE_ISLISTED_OFFSET + (A_Index - 1) * 0x4))
continue
vehPtr := readDWORD(hGTA, stVehiclePool + VEHICLE_GTA_PTR + (A_Index - 1) * 0x4)
if (!vehPtr)
continue
modelID := readMem(hGTA, vehPtr + 0x22, 2, "Short")
if (modelID < 400 || modelID > 611)
continue
posPtr := readDWORD(hGTA, vehPtr + 0x14)
xPos := readFloat(hGTA, posPtr + 0x30)
yPos := readFloat(hGTA, posPtr + 0x34)
zPos := readFloat(hGTA, posPtr + 0x38)
oVehiclePoolData.Push(Object("ID", A_Index - 1, "PTR", vehPTR, "MODELID", modelID, "NAME", oVehicleNames[modelID - 399], "XPOS", xPos, "YPOS", yPos, "ZPOS", zPos))
vehicleCount--
if (vehicleCount < 1)
break
}
iRefreshVeh := A_TickCount
return true
}
getVehicleID() {
if (!checkHandles())
return false
dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
if (ErrorLevel || !dwVehPtr)
return false
if (!updateOVehicleData())
return false
for i, o in oVehiclePoolData {
if (o.PTR = dwVehPtr)
return o.ID
}
return false
}
PlayerColor(playerid)
{
if(!checkHandles())
return false
idColor := readDWORD(hGTA, dwSAMP + SAMP_COLOR_OFFSET + 4 * playerid)
HexCode := IntToHex(idColor)
rgbhex := SubStr(IntToHex(idColor), 3, 6)
if(StrLen(HexCode) = 6){
rgbhex:="0000" rgbhex
StringTrimRight, rgbhex, rgbhex, 2
}
else if(StrLen(HexCode) = 8){
rgbhex:="00" rgbhex
StringTrimRight, rgbhex, rgbhex, 2
}
StringUpper, playercolor, rgbhex
return playercolor
}
IntToHex(int)
{
CurrentFormat := A_FormatInteger
SetFormat, integer, hex
int += 0
SetFormat, integer, %CurrentFormat%
return int
}
restartGameEx() {
if(!checkHandles())
return -1
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return -1
}
dwFunc := dwSAMP + 0xA060
VarSetCapacity(injectData, 11, 0)
NumPut(0xB9, injectData, 0, "UChar")
NumPut(dwAddress, injectData, 1, "UInt")
NumPut(0xE8, injectData, 5, "UChar")
offset := dwFunc - (pInjectFunc + 10)
NumPut(offset, injectData, 6, "Int")
NumPut(0xC3, injectData, 10, "UChar")
writeRaw(hGTA, pInjectFunc, &injectData, 11)
if(ErrorLevel)
return false
hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
if(ErrorLevel)
return false
waitForSingleObject(hThread, 0xFFFFFFFF)
return true
}
disconnectEx() {
if(!checkHandles())
return 0
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
dwAddress := readDWORD(hGTA, dwAddress + 0x3c9)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
ecx := dwAddress
dwAddress := readDWORD(hGTA, dwAddress)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
VarSetCapacity(injectData, 24, 0)
NumPut(0xB9, injectData, 0, "UChar")
NumPut(ecx, injectData, 1, "UInt")
NumPut(0xB8, injectData, 5, "UChar")
NumPut(dwAddress, injectData, 6, "UInt")
NumPut(0x68, injectData, 10, "UChar")
NumPut(0, injectData, 11, "UInt")
NumPut(0x68, injectData, 15, "UChar")
NumPut(500, injectData, 16, "UInt")
NumPut(0x50FF, injectData, 20, "UShort")
NumPut(0x08, injectData, 22, "UChar")
NumPut(0xC3, injectData, 23, "UChar")
writeRaw(hGTA, pInjectFunc, &injectData, 24)
if(ErrorLevel)
return false
hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
if(ErrorLevel)
return false
waitForSingleObject(hThread, 0xFFFFFFFF)
return true
}
setrestart()
{
VarSetCapacity(old, 4, 0)
dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
if(ErrorLevel || dwAddress==0) {
ErrorLevel := ERROR_READ_MEMORY
return 0
}
NumPut(9,old,0,"Int")
writeRaw(hGTA, dwAddress + 957, &old, 4)
}
restart()
{
restartGameEx()
disconnectEx()
AddChatMessage("Rejoining..")
Sleep 1000
setrestart()
}
Version = 1.5
IfExist update.bat
FileDelete update.bat
UrlDownloadToFile https://www.dropbox.com/s/k3mz0ryzn8awnxq/version.txt?dl=1, version.txt
FileRead, NewestVersion, version.txt
FileDelete version.txt
if(NewestVersion > Version)
{
TrayTip, Staatsfraktionskeybinder, Update wird heruntergeladen..., 1, 1
UrlDownloadToFile https://www.dropbox.com/s/gctaff5yrzb4cuo/Staatsfraktionskeybinder.exe?dl=1, %A_ScriptName%.new
UpdateBat=
	(
		Ping 127.0.0.1
		Del "%A_ScriptName%"
		Rename "%A_ScriptName%.new" "%A_ScriptName%"
		"%A_ScriptName%"
)
FileAppend, %UpdateBat%, update.bat
Run, update.bat,, hide
ExitApp
}
ini = Settings.ini
IfNotExist, %ini%
{
IniWrite, Keine, %ini%, Einstellungen, Fraktion
IniWrite, 0, %ini%, Checkboxen, Overlay
IniWrite, 1, %ini%, Checkboxen, CheckpointVS
IniWrite, 1, %ini%, Checkboxen, Chatlog_Pfad_1
IniWrite, 0, %ini%, Checkboxen, Chatlog_Pfad_2
IniWrite, 1, %ini%, Checkboxen, AFK_Timer_01
IniWrite, 0, %ini%, Checkboxen, AFK_Timer_02
IniWrite, 29, %ini%, Einstellungen, AFK_01
IniWrite, 30, %ini%, Einstellungen, AFK_02
IniWrite, Keine, %ini%, Einstellungen, FCOOK
IniWrite, Keine, %ini%, Einstellungen, UsID
IniWrite, 1, %ini%, Checkboxen, FMSG
IniWrite, 174, %ini%, Overlay, ov_xpos
IniWrite, 458, %ini%, Overlay, ov_ypos
IniWrite, 5, %ini%, Overlay, ov_size
IniWrite, 0, %ini%, Einstellungen, VKInfo
Loop, 50
{
IniWrite, %A_Space%, %ini%, Eigene Keybinds, Text%A_Index%
}
IniRead, AB, %ini%, Einstellungen, AB
If(AB == "ERROR" || AB == "")
{
IniWrite, 1, %ini%, Einstellungen, AB
}
IniRead, ABT, %ini%, Einstellungen, ABT
If(ABT == "ERROR" || ABT == "")
{
IniWrite, 10, %ini%, Einstellungen, ABT
}
}
IniRead, Fraktion, %ini%, Einstellungen, Fraktion
IniRead, Overlay, %ini%, Checkboxen, Overlay
IniRead, CheckpointVS, %ini%, Checkboxen, CheckpointVS
IniRead, Chatlog_Pfad_1, %ini%, Checkboxen, Chatlog_Pfad_1
IniRead, Chatlog_Pfad_2, %ini%, Checkboxen, Chatlog_Pfad_2
IniRead, AFK_Timer_01, %ini%, Checkboxen, AFK_Timer_01
IniRead, AFK_Timer_02, %ini%, Checkboxen, AFK_Timer_02
IniRead, AFK_01, %ini%, Einstellungen, AFK_01
IniRead, AFK_02, %ini%, Einstellungen, AFK_02
IniRead, AB, %ini%, Einstellungen, AB
IniRead, ABT, %ini%, Einstellungen, ABT
IniRead, FCOOK, %ini%, Einstellungen, FCOOK
IniRead, UsID, %ini%, Einstellungen, UsID
IniRead, FMSG, %ini%, Checkboxen, FMSG
IniRead, ov_xpos, %ini%, Overlay, ov_xpos
IniRead, ov_ypos, %ini%, Overlay, ov_ypos
IniRead, ov_size, %ini%, Overlay, ov_size
IniRead, VKInfo, %ini%, Einstellungen, VKInfo
Loop, 50
{
IniRead, Text%A_Index%, %ini%, Eigene Keybinds, Text%A_Index%
IniRead, E_Hotkey%A_Index%, %ini%, Eigene Keybinds, E_Hotkey%A_Index%
}
Loop, 18
{
IniRead, S_Hotkey%A_Index%, %ini%, SFK_Keybinds, S_Hotkey%A_Index%
}
Loop, 50
{
EHOTK := E_Hotkey%A_Index%
Hotkey, ~%EHOTK%, E_Keybind%A_Index%, UseErrorLevel
}
Loop, 18
{
SHOTK := S_Hotkey%A_Index%
Hotkey, ~%SHOTK%, S_Keybind%A_Index%, UseErrorLevel
}
If(Fraktion == "Keine")
{
MsgBox, 64, Staatsfraktionsauswahl, Im Keybinder wurde noch keine Staatsfraktion (U.S. Army oder LSPD)`, der du möglicherweise angehörst`, hinterlegt.  `n`nWenn du unten auf "OK" klickst wirst du gefragt welcher Staatsfraktion du angehörst. Dies dient dazu um einige Funktionen für die entsprechende Fraktion anzupassen.
IfMsgBox, OK
{
Question:
MsgBox, 36, Staatsfraktionsauswahl - U.S Army, Bist du ein Member der U.S. Army?
IfMsgBox, Yes
{
IniWrite, U.S. Army, %ini%, Einstellungen, Fraktion
MsgBox, 64, Staatsfraktionsauswahl - U.S Army, Die U.S. Army wurde erfolgreich als deine Fraktion im Keybinder hinterlegt. `n`nSollte sich das in Zukunft ändern`, kannst du Ingame mit dem Befehl "/sfreset" die Staatsfraktionsauswahl zurücksetzen und dann die andere wählen.
Reload
}
else IfMsgBox, No
{
MsgBox, 36, Staatsfraktionsauswahl - LSPD, Bist du ein Member vom LSPD?
IfMsgBox, Yes
{
IniWrite, LSPD, %ini%, Einstellungen, Fraktion
MsgBox, 64, Staatsfraktionsauswahl - LSPD, Das LSPD wurde erfolgreich als deine Fraktion im Keybinder hinterlegt. `n`nSollte sich das in Zukunft ändern`, kannst du Ingame mit dem Befehl "/sfreset" die Staatsfraktionsauswahl zurücksetzen und dann die andere wählen.
Reload
}
else IfMsgBox, No
{
GoTo, Question
}
}
}
}
If(VKInfo == 0)
{
MsgBox, 64, Funktion / Keybind: Verkehrskontrolle, Bitte lest euch diese Nachricht aufmerksam durch! `n`n`nDer Keybind "Verkehrskontrolle starten" startet eine fast komplett automatische Verkehrskontrolle. `n`nSolltet ihr eine Verkehrskontrolle erfolgreich durchgeführt haben denkt bitte unbedingt daran die Verkehrskontrolle auch mit dem Keybind "Verkehrskontrolle beenden" zu beenden und falls ihr gestorben seid oder der zu kontrollierende flüchtet die Verkehrskontrolle mit dem Keybind "Verkehrskontrolle abbrechen" abzubrechen, da es sonst zu Problemen führen kann. `n`nDie Verkehrskontrolle geht nur bis zu dem Punkt, wo der User anschließend noch das Inventar zeigen soll, falls ihr noch das Fahrzeug von ihm durchsuchen wollt, müsst ihr dies manuell tun. Könnt dafür ja z.B. die eigenen Keybinds nutzen. Solltet ihr euch dazu entschlossen haben das Fahrzeug auch noch durchsuchen zu wollen nutzt den Keybind "Verkehrskontrolle beenden" erst danach, weil dieser auch im Chat deutlich macht, das die Verkehrskontrolle beendet ist.
IniWrite, 1, %ini%, Einstellungen, VKInfo
}
If(Chatlog_Pfad_1 == 1)
{
IniWrite, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt, %ini%, Einstellungen, Chatlog_Pfad
}
Else If(Chatlog_Pfad_2 == 1)
{
IniWrite, C:\Users\Public\Documents\GTA San Andreas User Files\SAMP\chatlog.txt, %ini%, Einstellungen, Chatlog_Pfad
}
IniRead, Chatlog_Pfad, %ini%, Einstellungen, Chatlog_Pfad
FileDelete, %Chatlog_Pfad%
FileDelete, %A_MyDocuments%\GTA San Andreas User Files\SAMP\gametexts.txt
If(Overlay == 1)
{
SetTimer, Overlay, 1000
SetParam("use_window", "1")
SetParam("window", "GTA:SA:MP")
s_overlay := -1
ov_move := false
}
else
{
SetTimer, Overlay, Off
}
SetTimer, ReadChat, 1000
SetTimer, ReadGameText, 1000
SetTimer, IniDLL, 1000
SetTimer, Dutycheck, 1000
SetTimer, SFK_C, 1000
SetTimer, AFK, 1000
SetTimer, RSS_Feed, 15000
VKK := 0
VTYPE := 0
VKKname := 0
DLLLoad := 1
Duty_Var := 0
afks := 0
afkm := 0
Hauptmenu:
UrlDownloadToFile https://www.dropbox.com/s/spqwdf7om9p4j6i/neuigkeiten.txt?dl=1, neuigkeiten.txt
FileRead, News, neuigkeiten.txt
FileDelete neuigkeiten.txt
Gui, Add, Button, x302 y315 w100 h30 gGuiReload, Reload
Gui, Add, Button, x102 y315 w100 h30 gSFK_Keybinds, Staatsfr. Keybinds
Gui, Add, Button, x202 y315 w100 h30 gEigene_Keybinds, Eigene Keybinds
Gui, Add, Button, x2 y315 w100 h30 gKeybinder_Einstellungen, Einstellungen
Gui, Add, Picture, x0 y310 w405 h2 , %A_Data%\trenn2.png
Gui, Add, Picture, x242 y285 w200 h2 , %A_Data%\trenn2.png
Gui, Add, Picture, x242 y205 w200 h2 , %A_Data%\trenn2.png
Gui, Add, Picture, x242 y155 w200 h2 , %A_Data%\trenn2.png
Gui, Add, Picture, x242 y240 w200 h2 , %A_Data%\trenn2.png
Gui, Add, Text, x40 y10 w200 h20 , Staatsfraktionskeybinder v%Version% (0.3.7)
Gui, Add, Edit, x12 y30 w220 h270 ReadOnly, %News%
Gui, Add, Picture, x242 y0 w2 h310 , %A_Data%\trenn1.png
If(Fraktion = "LSPD")
{
Gui, Add, Picture, x265 y10 w130 h130 , %A_Data%\Police-Officer-icon.png
}
else If(Fraktion = "U.S. Army")
{
Gui, Add, Picture, x265 y10 w130 h130 , %A_Data%\Army-personnel-icon.png
}
Gui, Add, Text, x250 y160 w150 h40 cRed, Ingame könnt ihr mit dem Befehl '/kbefehle' die Keybinderbefehle aufrufen.
Gui, Add, Text, x250 y245 w150 h30 cRed, Mit der i-Taste lässt sich das Ingame-Inventar öffnen
Gui, Add, Button, x244 y288 w160 h20 gAbout, About
Gui, Show, w404 h350, Staatsfraktionskeybinder von Doctor.Who
If(Fraktion = "LSPD")
{
Gui, Font, Bold
Gui, Add, Text, x305 y216 w150 h20 cBlue, LSPD
}
else If(Fraktion = "U.S. Army")
{
Gui, Font, Bold
Gui, Add, Text, x295 y216 w150 h20 cGreen, U.S. Army
}
return
GuiClose:
If(Overlay == 1)
{
DestroyAllVisual()
}
ExitApp
return
GuiReload:
If(Overlay == 1)
{
DestroyAllVisual()
}
Reload
return
About:
MsgBox, 64, Staatsfraktionskeybinder - About, Staatsfraktionskeybinder	von	Doctor.Who`nSAMP-API	                von	Suchty112`nOverlay-API	                von	agrippa1994`nLoG-Standorte	                von	alex97000
return
SFK_Keybinds:
Gui, 2: Add, Hotkey, x2 y10 w60 h20 vS_Hotkey1, %S_Hotkey1%
Gui, 2: Add, Hotkey, x2 y30 w60 h20 vS_Hotkey2, %S_Hotkey2%
Gui, 2: Add, Hotkey, x2 y50 w60 h20 vS_Hotkey3, %S_Hotkey3%
Gui, 2: Add, Hotkey, x2 y70 w60 h20 vS_Hotkey4, %S_Hotkey4%
Gui, 2: Add, Hotkey, x2 y90 w60 h20 vS_Hotkey5, %S_Hotkey5%
Gui, 2: Add, Hotkey, x2 y110 w60 h20 vS_Hotkey6, %S_Hotkey6%
Gui, 2: Add, Hotkey, x2 y130 w60 h20 vS_Hotkey7, %S_Hotkey7%
Gui, 2: Add, Hotkey, x2 y150 w60 h20 vS_Hotkey8, %S_Hotkey8%
Gui, 2: Add, Hotkey, x2 y170 w60 h20 vS_Hotkey9, %S_Hotkey9%
Gui, 2: Add, Hotkey, x352 y10 w60 h20 vS_Hotkey10, %S_Hotkey10%
Gui, 2: Add, Hotkey, x352 y30 w60 h20 vS_Hotkey11, %S_Hotkey11%
Gui, 2: Add, Hotkey, x352 y50 w60 h20 vS_Hotkey12, %S_Hotkey12%
Gui, 2: Add, Hotkey, x352 y70 w60 h20 vS_Hotkey13, %S_Hotkey13%
Gui, 2: Add, Hotkey, x352 y90 w60 h20 vS_Hotkey14, %S_Hotkey14%
Gui, 2: Add, Hotkey, x352 y110 w60 h20 vS_Hotkey15, %S_Hotkey15%
Gui, 2: Add, Hotkey, x352 y130 w60 h20 vS_Hotkey16, %S_Hotkey16%
Gui, 2: Add, Hotkey, x352 y150 w60 h20 vS_Hotkey17, %S_Hotkey17%
Gui, 2: Add, Hotkey, x352 y170 w60 h20 vS_Hotkey18, %S_Hotkey18%
Gui, 2: Add, Edit, x72 y10 w250 h20 ReadOnly, Keybinder aktivieren / deaktivieren.
Gui, 2: Add, Edit, x72 y30 w250 h20 ReadOnly, Verstärkung anfordern / WA Pos.
Gui, 2: Add, Edit, x72 y50 w250 h20 ReadOnly, Auf VS-Ruf antworten.
Gui, 2: Add, Edit, x72 y70 w250 h20 ReadOnly, /HUP Aufforderung + Countdown.
Gui, 2: Add, Edit, x72 y90 w250 h20 ReadOnly, Verkehrskontrolle | Ankündigen. (/m)
Gui, 2: Add, Edit, x72 y110 w250 h20 ReadOnly cRed, Verkehrskontrolle starten.
Gui, 2: Add, Edit, x72 y130 w250 h20 ReadOnly cRed, Verkehrskontrolle beenden.
Gui, 2: Add, Edit, x72 y150 w250 h20 ReadOnly cRed, Verkehrskontrolle abbrechen.
Gui, 2: Add, Edit, x72 y170 w250 h20 ReadOnly, /enter, /waschen, /toilette und /heal.
Gui, 2: Add, Edit, x422 y10 w250 h20 ReadOnly, Tazer in die Hand nehmen.
Gui, 2: Add, Edit, x422 y30 w250 h20 ReadOnly, Deagle in die Hand nehmen.
Gui, 2: Add, Edit, x422 y50 w250 h20 ReadOnly, Blockade 1
Gui, 2: Add, Edit, x422 y70 w250 h20 ReadOnly, Blockade 2
Gui, 2: Add, Edit, x422 y90 w250 h20 ReadOnly, Blockade 3
Gui, 2: Add, Edit, x422 y110 w250 h20 ReadOnly, Spikes
Gui, 2: Add, Edit, x422 y130 w250 h20 ReadOnly, /auf - Tor(e) öffnen.
Gui, 2: Add, Edit, x422 y150 w250 h20 ReadOnly, /duty - In oder aus dem Dienst gehen.
Gui, 2: Add, Edit, x422 y170 w250 h20 ReadOnly, /undercover - Undercover gehen.
Gui, 2: Add, Button, x2 y200 w670 h30 gSFK_Keybinds_Save, Speichern
Gui, 2: Show, w673 h232, Staatsfraktionskeybinder - SFK Keybinds
return
SFK_Keybinds_Save:
Gui, 2: Submit, NoHide
Loop, 18
{
SHOTK := S_Hotkey%A_Index%
IniWrite, %SHOTK%, %ini%, SFK_Keybinds, S_Hotkey%A_Index%
}
MsgBox, 64, SFK Keybinds - Speichern, Deine SFK Keybinds wurden erfolgreich gespeichert!`nDer Keybinder wird neu gestartet..., 1.5
If(Overlay == 1)
{
DestroyAllVisual()
}
Reload
return
Eigene_Keybinds:
Loop, 50
{
IniRead, Text%A_Index%, %ini%, Eigene Keybinds, Text%A_Index%
}
Gui, 3: Add, Hotkey, x2 y10 w60 h20 vE_Hotkey1, %E_Hotkey1%
Gui, 3: Add, Hotkey, x2 y30 w60 h20 vE_Hotkey2, %E_Hotkey2%
Gui, 3: Add, Hotkey, x2 y50 w60 h20 vE_Hotkey3, %E_Hotkey3%
Gui, 3: Add, Hotkey, x2 y70 w60 h20 vE_Hotkey4, %E_Hotkey4%
Gui, 3: Add, Hotkey, x2 y90 w60 h20 vE_Hotkey5, %E_Hotkey5%
Gui, 3: Add, Hotkey, x2 y110 w60 h20 vE_Hotkey6, %E_Hotkey6%
Gui, 3: Add, Hotkey, x2 y130 w60 h20 vE_Hotkey7, %E_Hotkey7%
Gui, 3: Add, Hotkey, x2 y150 w60 h20 vE_Hotkey8, %E_Hotkey8%
Gui, 3: Add, Hotkey, x2 y170 w60 h20 vE_Hotkey9, %E_Hotkey9%
Gui, 3: Add, Hotkey, x2 y190 w60 h20 vE_Hotkey10, %E_Hotkey10%
Gui, 3: Add, Hotkey, x2 y210 w60 h20 vE_Hotkey11, %E_Hotkey11%
Gui, 3: Add, Hotkey, x2 y230 w60 h20 vE_Hotkey12, %E_Hotkey12%
Gui, 3: Add, Hotkey, x2 y250 w60 h20 vE_Hotkey13, %E_Hotkey13%
Gui, 3: Add, Hotkey, x2 y270 w60 h20 vE_Hotkey14, %E_Hotkey14%
Gui, 3: Add, Hotkey, x2 y290 w60 h20 vE_Hotkey15, %E_Hotkey15%
Gui, 3: Add, Hotkey, x2 y310 w60 h20 vE_Hotkey16, %E_Hotkey16%
Gui, 3: Add, Hotkey, x2 y330 w60 h20 vE_Hotkey17, %E_Hotkey17%
Gui, 3: Add, Hotkey, x2 y350 w60 h20 vE_Hotkey18, %E_Hotkey18%
Gui, 3: Add, Hotkey, x2 y370 w60 h20 vE_Hotkey19, %E_Hotkey19%
Gui, 3: Add, Hotkey, x2 y390 w60 h20 vE_Hotkey20, %E_Hotkey20%
Gui, 3: Add, Hotkey, x2 y410 w60 h20 vE_Hotkey21, %E_Hotkey21%
Gui, 3: Add, Hotkey, x2 y430 w60 h20 vE_Hotkey22, %E_Hotkey22%
Gui, 3: Add, Hotkey, x2 y450 w60 h20 vE_Hotkey23, %E_Hotkey23%
Gui, 3: Add, Hotkey, x2 y470 w60 h20 vE_Hotkey24, %E_Hotkey24%
Gui, 3: Add, Hotkey, x2 y490 w60 h20 vE_Hotkey25, %E_Hotkey25%
Gui, 3: Add, Hotkey, x352 y10 w60 h20 vE_Hotkey26, %E_Hotkey26%
Gui, 3: Add, Hotkey, x352 y30 w60 h20 vE_Hotkey27, %E_Hotkey27%
Gui, 3: Add, Hotkey, x352 y50 w60 h20 vE_Hotkey28, %E_Hotkey28%
Gui, 3: Add, Hotkey, x352 y70 w60 h20 vE_Hotkey29, %E_Hotkey29%
Gui, 3: Add, Hotkey, x352 y90 w60 h20 vE_Hotkey30, %E_Hotkey30%
Gui, 3: Add, Hotkey, x352 y110 w60 h20 vE_Hotkey31, %E_Hotkey31%
Gui, 3: Add, Hotkey, x352 y130 w60 h20 vE_Hotkey32, %E_Hotkey32%
Gui, 3: Add, Hotkey, x352 y150 w60 h20 vE_Hotkey33, %E_Hotkey33%
Gui, 3: Add, Hotkey, x352 y170 w60 h20 vE_Hotkey34, %E_Hotkey34%
Gui, 3: Add, Hotkey, x352 y190 w60 h20 vE_Hotkey35, %E_Hotkey35%
Gui, 3: Add, Hotkey, x352 y210 w60 h20 vE_Hotkey36, %E_Hotkey36%
Gui, 3: Add, Hotkey, x352 y230 w60 h20 vE_Hotkey37, %E_Hotkey37%
Gui, 3: Add, Hotkey, x352 y250 w60 h20 vE_Hotkey38, %E_Hotkey38%
Gui, 3: Add, Hotkey, x352 y270 w60 h20 vE_Hotkey39, %E_Hotkey39%
Gui, 3: Add, Hotkey, x352 y290 w60 h20 vE_Hotkey40, %E_Hotkey40%
Gui, 3: Add, Hotkey, x352 y310 w60 h20 vE_Hotkey41, %E_Hotkey41%
Gui, 3: Add, Hotkey, x352 y330 w60 h20 vE_Hotkey42, %E_Hotkey42%
Gui, 3: Add, Hotkey, x352 y350 w60 h20 vE_Hotkey43, %E_Hotkey43%
Gui, 3: Add, Hotkey, x352 y370 w60 h20 vE_Hotkey44, %E_Hotkey44%
Gui, 3: Add, Hotkey, x352 y390 w60 h20 vE_Hotkey45, %E_Hotkey45%
Gui, 3: Add, Hotkey, x352 y410 w60 h20 vE_Hotkey46, %E_Hotkey46%
Gui, 3: Add, Hotkey, x352 y430 w60 h20 vE_Hotkey47, %E_Hotkey47%
Gui, 3: Add, Hotkey, x352 y450 w60 h20 vE_Hotkey48, %E_Hotkey48%
Gui, 3: Add, Hotkey, x352 y470 w60 h20 vE_Hotkey49, %E_Hotkey49%
Gui, 3: Add, Hotkey, x352 y490 w60 h20 vE_Hotkey50, %E_Hotkey50%
Gui, 3: Add, Edit, x72 y10 w250 h20 vText1, %Text1%
Gui, 3: Add, Edit, x72 y30 w250 h20 vText2, %Text2%
Gui, 3: Add, Edit, x72 y50 w250 h20 vText3, %Text3%
Gui, 3: Add, Edit, x72 y70 w250 h20 vText4, %Text4%
Gui, 3: Add, Edit, x72 y90 w250 h20 vText5, %Text5%
Gui, 3: Add, Edit, x72 y110 w250 h20 vText6, %Text6%
Gui, 3: Add, Edit, x72 y130 w250 h20 vText7, %Text7%
Gui, 3: Add, Edit, x72 y150 w250 h20 vText8, %Text8%
Gui, 3: Add, Edit, x72 y170 w250 h20 vText9, %Text9%
Gui, 3: Add, Edit, x72 y190 w250 h20 vText10, %Text10%
Gui, 3: Add, Edit, x72 y210 w250 h20 vText11, %Text11%
Gui, 3: Add, Edit, x72 y230 w250 h20 vText12, %Text12%
Gui, 3: Add, Edit, x72 y250 w250 h20 vText13, %Text13%
Gui, 3: Add, Edit, x72 y270 w250 h20 vText14, %Text14%
Gui, 3: Add, Edit, x72 y290 w250 h20 vText15, %Text15%
Gui, 3: Add, Edit, x72 y310 w250 h20 vText16, %Text16%
Gui, 3: Add, Edit, x72 y330 w250 h20 vText17, %Text17%
Gui, 3: Add, Edit, x72 y350 w250 h20 vText18, %Text18%
Gui, 3: Add, Edit, x72 y370 w250 h20 vText19, %Text19%
Gui, 3: Add, Edit, x72 y390 w250 h20 vText20, %Text20%
Gui, 3: Add, Edit, x72 y410 w250 h20 vText21, %Text21%
Gui, 3: Add, Edit, x72 y430 w250 h20 vText22, %Text22%
Gui, 3: Add, Edit, x72 y450 w250 h20 vText23, %Text23%
Gui, 3: Add, Edit, x72 y470 w250 h20 vText24, %Text24%
Gui, 3: Add, Edit, x72 y490 w250 h20 vText25, %Text25%
Gui, 3: Add, Edit, x422 y10 w250 h20 vText26, %Text26%
Gui, 3: Add, Edit, x422 y30 w250 h20 vText27, %Text27%
Gui, 3: Add, Edit, x422 y50 w250 h20 vText28, %Text28%
Gui, 3: Add, Edit, x422 y70 w250 h20 vText29, %Text29%
Gui, 3: Add, Edit, x422 y90 w250 h20 vText30, %Text30%
Gui, 3: Add, Edit, x422 y110 w250 h20 vText31, %Text31%
Gui, 3: Add, Edit, x422 y130 w250 h20 vText32, %Text32%
Gui, 3: Add, Edit, x422 y150 w250 h20 vText33, %Text33%
Gui, 3: Add, Edit, x422 y170 w250 h20 vText34, %Text34%
Gui, 3: Add, Edit, x422 y190 w250 h20 vText35, %Text35%
Gui, 3: Add, Edit, x422 y210 w250 h20 vText36, %Text36%
Gui, 3: Add, Edit, x422 y230 w250 h20 vText37, %Text37%
Gui, 3: Add, Edit, x422 y250 w250 h20 vText38, %Text38%
Gui, 3: Add, Edit, x422 y270 w250 h20 vText39, %Text39%
Gui, 3: Add, Edit, x422 y290 w250 h20 vText40, %Text40%
Gui, 3: Add, Edit, x422 y310 w250 h20 vText41, %Text41%
Gui, 3: Add, Edit, x422 y330 w250 h20 vText42, %Text42%
Gui, 3: Add, Edit, x422 y350 w250 h20 vText43, %Text43%
Gui, 3: Add, Edit, x422 y370 w250 h20 vText44, %Text44%
Gui, 3: Add, Edit, x422 y390 w250 h20 vText45, %Text45%
Gui, 3: Add, Edit, x422 y410 w250 h20 vText46, %Text46%
Gui, 3: Add, Edit, x422 y430 w250 h20 vText47, %Text47%
Gui, 3: Add, Edit, x422 y450 w250 h20 vText48, %Text48%
Gui, 3: Add, Edit, x422 y470 w250 h20 vText49, %Text49%
Gui, 3: Add, Edit, x422 y490 w250 h20 vText50, %Text50%
Gui, 3: Add, Button, x2 y550 w670 h30 gEigene_Keybinds_Save, Speichern
Gui, 3: Show, w674 h582, Staatsfraktionskeybinder - Eigene Keybinds
return
Eigene_Keybinds_Save:
Gui, 3: Submit, NoHide
Loop, 50
{
EHOTK := E_Hotkey%A_Index%
IniWrite, %EHOTK%, %ini%, Eigene Keybinds, E_Hotkey%A_Index%
TXT := Text%A_Index%
IniWrite, %TXT%, %ini%, Eigene Keybinds, Text%A_Index%
}
MsgBox, 64, Eigene Keybinds - Speichern, Deine Eigenen Keybinds wurden erfolgreich gespeichert!`nDer Keybinder wird neu gestartet..., 1.5
If(Overlay == 1)
{
DestroyAllVisual()
}
Reload
return
Keybinder_Einstellungen:
Gui, 4: Add, GroupBox, x2 y10 w470 h60 cBlack, Pfad zur Chatlog.txt
Gui, 4: Add, Radio, x12 y25 w450 h20 vChatlog_Pfad_1 checked%Chatlog_Pfad_1%, Standardverzeichnis (%A_MyDocuments%\GTA San Andreas User Files\[...])
Gui, 4: Add, Radio, x12 y45 w450 h20 vChatlog_Pfad_2 checked%Chatlog_Pfad_2%, Publicverzeichnis     (C:\Users\Public\Documents\GTA San Andreas User Files\[...])
Gui, 4: Add, GroupBox, x2 y80 w470 h120 cBlack, Forum Benachrichtungen - Einstellungen
Gui, 4: Add, Edit, x94 y100 w80 h20 vUsID, %UsID%
Gui, 4: Add, Text, x12 y102 w80 h20 , Forum - User ID:
Gui, 4: Add, Picture, x10 y160 w450 h2 , %A_Data%\trenn2.png
Gui, 4: Add, CheckBox, x12 y176 w270 h20 vFMSG checked%FMSG%, Forum Benachrichtigungen aktivieren / deaktivieren
Gui, 4: Add, Text, x12 y124 w100 h20 , Forum - Cookies:
Gui, 4: Add, Edit, x94 y122 w280 h20 vFCOOK, %FCOOK%
Gui, 4: Add, GroupBox, x2 y206 w470 h84 cBlack, Keybinder Einstellungen
Gui, 4: Add, CheckBox, x12 y228 w100 h20 vOverlay checked%Overlay%, Overlay.
Gui, 4: Add, CheckBox, x12 y248 w300 h20 vCheckpointVS checked%CheckpointVS%, Checkpoint bei einem VS-Ruf anzeigen lassen.
Gui, 4: Add, GroupBox, x2 y295 w470 h70 cBlack, AFK-Timer Einstellungen
Gui, 4: Add, Radio, x12 y312 w170 h20 vAFK_Timer_01 checked%AFK_Timer_01%, AFK-Timer mit Benachrichtigung
Gui, 4: Add, Radio, x12 y330 w170 h20 vAFK_Timer_02 checked%AFK_Timer_02%, AFK-Timer mit Piepton
Gui, 4: Add, GroupBox, x192 y306 w270 h50 cBlack, Zeit Einstellungen
Gui, 4: Add, Edit, x202 y326 w20 h20 vAFK_01, %AFK_01%
Gui, 4: Add, Text, x224 y330 w60 h20 , Minuten und
Gui, 4: Add, Edit, x285 y326 w20 h20 vAFK_02, %AFK_02%
Gui, 4: Add, Text, x306 y330 w60 h20 , Sekunden
Gui, 4: Add, Button, x2 y368 w470 h30 gKeybinder_Einstellungen_Save, Speichern
Gui, 4: Show, w473 h400, Staatsfraktionskeybinder - Einstellungen
return
Keybinder_Einstellungen_Save:
Gui, 4: Submit, NoHide
IniWrite, %AFK_01%, %ini%, Einstellungen, AFK_01
IniWrite, %AFK_02%, %ini%, Einstellungen, AFK_02
IniWrite, %UsID%, %ini%, Einstellungen, UsID
IniWrite, %FCOOK%, %ini%, Einstellungen, FCOOK
GuiControlGet, Overlay
IniWrite, %Overlay%, %ini%, Checkboxen, Overlay
GuiControlGet, CheckpointVS
IniWrite, %CheckpointVS%, %ini%, Checkboxen, CheckpointVS
GuiControlGet, FMSG
IniWrite, %FMSG%, %ini%, Checkboxen, FMSG
GuiControlGet, AFK_Timer_01
IniWrite, %AFK_Timer_01%, %ini%, Checkboxen, AFK_Timer_01
GuiControlGet, AFK_Timer_02
IniWrite, %AFK_Timer_02%, %ini%, Checkboxen, AFK_Timer_02
GuiControlGet, Chatlog_Pfad_1
IniWrite, %Chatlog_Pfad_1%, %ini%, Checkboxen, Chatlog_Pfad_1
GuiControlGet, Chatlog_Pfad_2
IniWrite, %Chatlog_Pfad_2%, %ini%, Checkboxen, Chatlog_Pfad_2
MsgBox, 64, Einstellungen - Speichern, Deine Einstellungen wurden erfolgreich gespeichert!`nDer Keybinder wird neu gestartet..., 1.5
If(Overlay == 1)
{
DestroyAllVisual()
}
Reload
return
2GuiClose:
3GuiClose:
4GuiClose:
Gui, Destroy
return
ReadChat:
if(WinActive("GTA:SA:MP"))
{
IniRead, Chatlog_Pfad, %ini%, Einstellungen, Chatlog_Pfad
FileGetSize, current_chatlog_size, %Chatlog_Pfad%
if(current_chatlog_size < chatlog_size)
{
chatlog_zeile := 0
}
chatlog_size := current_chatlog_size
IniRead, Chatlog_Pfad, %ini%, Einstellungen, Chatlog_Pfad
Loop, read, %Chatlog_Pfad%
{
If (chatlog_zeile >= A_Index)
{
Continue
}
else
{
chatlog_zeile := A_Index
Chat := A_LoopReadLine
If InStr(Chat, "** Du wirst wiederbelebt, warte")
{
RegExMatch(Chat, "\*\* Du wirst wiederbelebt\, warte (.*) (.*) und (.*) Sekunden\!", KHTime_)
KHEs := KHTime_3
KHEm := KHTime_1
khsec := 0
khmin := 0
SetTimer, Krankenhaus, 1000
}
Else If InStr(Chat, "* Du wurdest von ") && InStr(Chat, " wiederbelebt!")
{
SetTimer, Krankenhaus, Off
khsec := 0
khmin := 0
}
Else If InStr(Chat, "Der Kofferraum des Fahrzeugs ist verschlossen.")
{
If(Kontrolle == 1)
{
GoSub, Vehicle_Inventory_Locked_Control
}
else if(I_System == 1)
{
GoSub, Vehicle_Inventory_Locked
}
}
Else If InStr(Chat, "** ") && InStr(Chat, ": VS @ ") && InStr(Chat, "| P: [") && InStr(Chat, "], over.") && (Duty_Var == 1) && (CheckpointVS == 1)
{
RegExMatch(Chat, "\*\* (.*) (.*)\: VS \@ (.*) \| P\: \[(.*)\, (.*)\, (.*)\]\, over\.", xyz_)
SetCheckpoint(xyz_4, xyz_5, xyz_6, 5)
CPRs := 0
SetTimer, Checkpoint_Reset, 1000
}
Else If InStr(Chat, "Telefonnummer: ") && InStr(Chat, "| Beruf: ") && InStr(Chat, "| Fraktion: ") && InStr(Chat, "| Verheiratet mit: ") && (VKK == 1)
{
RegExMatch(Chat, "Telefonnummer\: (.*) \| Beruf\: (.*) \| Fraktion\: (.*) \| Verheiratet mit\: (.*)", pFrak_)
vkkFraktion := pFrak_3
SendChat("/d VKK @ " posfunc() " | Name: " VKKname " | Fraktion: " vkkFraktion " | Fahrzeug: " vehname)
}
Else If InStr(Chat, "erlaubt es dir in eines seiner Inventare zu sehen (Benutze /accept inventar).") && (VKK == 1)
{
RegExMatch(Chat, "\* (.*) erlaubt es dir in eines seiner Inventare zu sehen \(Benutze \/accept inventar\)\.", InvNC_)
If(InvNC_1 == PersName)
{
Sleep, 1000
SendChat("/accept Inventar")
VKK := 0
VTYPE := 0
VKKname := 0
}
}
Else If InStr(Chat, "* Führerschein: ") && (VKK == 1) && (VTYPE == "PKW") && (VKKname == PersName)
{
RegExMatch(Chat, "\* Führerschein\: (.*)", FS_)
If(FS_1 = "Bestanden.")
{
SendChat("Gut, soweit ist alles in bester Ordnung.")
Sleep, 1000
SendChat("Jetzt zeigen Sie mir bitte noch das Inventar [ /inventar -> Spieler -> ID: " GetPlayerId() " eingeben. ]")
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Sollte sich der User weigern, kannst du ihm 2 Wanteds wegen Befehlsverweigerung geben.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Anschließend wird er ins nächste PD gebracht und dort Kontrolliert.")
}
else If(FS_1 = "Nicht bestanden.")
{
SendChat("Sie besitzen nicht den nötigen Führerschein, weshalb sie jetzt ein Ticket bekommen.")
Sleep, 1000
SendChat("/ticket " PersName " 10000 Fahren ohne Führerschein")
tfof := 1
kfs := 1
}
}
Else If InStr(Chat, "* Führerschein: ") && (VKK == 1) && (VTYPE == "LKW") && (VKKname == PersName)
{
RegExMatch(Chat, "\* Führerschein\: (.*)", FS_)
If(FS_1 = "Bestanden.")
{
Fraktion := PlayerColor(GetPlayerIdByName(PersName))
If(Fraktion != "FFFF00")
{
SendChat("Gut, soweit ist alles in bester Ordnung.")
Sleep, 1000
SendChat("Jetzt zeigen Sie mir bitte noch das Inventar [ /inventar -> Spieler -> ID: " GetPlayerId() " eingeben. ]")
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Sollte sich der User weigern, kannst du ihm 2 Wanteds wegen Befehlsverweigerung geben.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Anschließend wird er ins nächste PD gebracht und dort Kontrolliert.")
}
else If(Fraktion == "FFFF00")
{
isTrucker := 1
SendChat("Dann hätte ich gerne noch Ihre Frachtpapiere gesehen [ /showfracht " GetPlayerId() " ]")
}
}
else If(FS_1 = "Nicht bestanden.")
{
Fraktion := PlayerColor(GetPlayerIdByName(PersName))
If(Fraktion != "FFFF00")
{
SendChat("Sie besitzen nicht den nötigen Führerschein, weshalb sie jetzt ein Ticket bekommen.")
Sleep, 1000
SendChat("/ticket " PersName " 10000 Fahren ohne Führerschein")
tfof := 1
kfs := 1
}
else If(Fraktion == "FFFF00")
{
SendChat("Sie besitzen nicht den nötigen Führerschein, weshalb sie jetzt ein Ticket bekommen.")
Sleep, 1000
SendChat("/ticket " PersName " 10000 Fahren ohne Führerschein")
tfoftrucker := 1
kfs := 1
}
}
}
Else If InStr(Chat, "* Bikescheine: ") && (VKK == 1) && (VTYPE == "Motorrad") && (VKKname == PersName)
{
RegExMatch(Chat, "\* Bikescheine\: (.*)", BS_)
If(BS_1 == "Bestanden.")
{
SendChat("Gut, soweit ist alles in bester Ordnung.")
Sleep, 1000
SendChat("Jetzt zeigen Sie mir bitte noch das Inventar [ /inventar -> Spieler -> ID: " GetPlayerId() " eingeben. ]")
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Sollte sich der User weigern, kannst du ihm 2 Wanteds wegen Befehlsverweigerung geben.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Anschließend wird er ins nächste PD gebracht und dort Kontrolliert.")
}
else If(BS_1 == "Nicht bestanden.")
{
SendChat("Sie besitzen nicht den nötigen Führerschein, weshalb sie jetzt ein Ticket bekommen.")
Sleep, 1000
SendChat("/ticket " PersName " 10000 Fahren ohne Führerschein")
tfof := 1
kfs := 1
}
}
Else If InStr(Chat, "hat dir seinen Personalausweis gezeigt.") && (VKK == 1)
{
RegExMatch(Chat, "\* (.*) hat dir seinen Personalausweis gezeigt\.", Perso_)
If(Perso_1 == VKKname)
{
PersName := Perso_1
SendChat("Gut, nun bitte ihre Lizenzen [ /showlicenses " getPlayerId() " ]")
}
}
Else If InStr(Chat, "Fahrzeit: (") && InStr(Chat, " / ") && InStr(Chat, ")") && (VKK == 1) && (VKKname == PersName) && (isTrucker == 1)
{
RegExMatch(Chat, "Fahrzeit\: \((.*) \/ 900\)", FZ_)
If(FZ_1 < 901)
{
SendChat("Vielen Dank! Mit Ihrer Fracht ist soweit alles in Ordnung.")
Sleep, 1000
SendChat("Jetzt zeigen Sie mir bitte noch das Inventar [ /inventar -> Spieler -> ID: " GetPlayerId() " eingeben. ]")
isTrucker := 0
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Sollte sich der User weigern, kannst du ihm 2 Wanteds wegen Befehlsverweigerung geben.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Anschließend wird er ins nächste PD gebracht und dort kontrolliert.")
}
else If(FZ_1 > 900 && FZ_1 < 1501)
{
SendChat("Sie haben die erlaubte Fahrtzeit ohne Rast überschritten, weshalb Sie jetzt ein Ticket und Registerpunkte bekommen.")
SendChat("/ticket " PersName " 500 Fahrtzeit o.R überschritten (>900)")
SendChat("/givepoints " PersName " 1 Fahrtzeit o.R überschritten (>900)")
trstr := 1
isTrucker := 0
}
else If(FZ_1 > 1500 && FZ_1 < 2001)
{
SendChat("Sie haben die erlaubte Fahrtzeit ohne Rast überschritten, weshalb Sie jetzt ein Ticket und Registerpunkte bekommen.")
SendChat("/ticket " PersName " 1000 Fahrtzeit o.R überschritten (>1500)")
SendChat("/givepoints " PersName " 2 Fahrtzeit o.R überschritten (>1500)")
trstr := 1
isTrucker := 0
}
else If(FZ_1 > 2000 && FZ_1 < 2501)
{
SendChat("Sie haben die erlaubte Fahrtzeit ohne Rast überschritten, weshalb Sie jetzt ein Ticket und Registerpunkte bekommen.")
SendChat("/ticket " PersName " 1500 Fahrtzeit o.R überschritten (>2000)")
SendChat("/givepoints " PersName " 3 Fahrtzeit o.R überschritten (>2000)")
trstr := 1
isTrucker := 0
}
else If(FZ_1 > 2500 && FZ_1 < 2701)
{
SendChat("Sie haben die erlaubte Fahrtzeit ohne Rast überschritten, weshalb Sie jetzt ein Ticket und Registerpunkte bekommen.")
SendChat("/ticket " PersName " 2000 Fahrtzeit o.R überschritten (>2500)")
SendChat("/givepoints " PersName " 4 Fahrtzeit o.R überschritten (>2500)")
trstr := 1
isTrucker := 0
}
else If(FZ_1 > 2700)
{
SendChat("Sie haben die erlaubte Fahrtzeit ohne Rast überschritten, weshalb Sie jetzt ein Ticket und Registerpunkte bekommen.")
SendChat("/ticket " PersName " 2500 Fahrtzeit o.R überschritten (>2700)")
SendChat("/givepoints " PersName " 5 Fahrtzeit o.R überschritten (>2700)")
trstr := 1
isTrucker := 0
}
}
Else If InStr(Chat, "* ") && InStr(Chat, "hat das Ticket in Höhe von ") && InStr(Chat, "bezahlt.") && (VKK == 1) && (VKKname == PersName)
{
RegExMatch(Chat, "\* (.*) hat das Ticket in Höhe von \$(.*) bezahlt\.", TGS_)
If(TGS_1 == PersName && TGS_2 == 10.000)
{
If(tfof == 1)
{
SendChat("Vielen Dank für die Zahlung des Tickets.")
Sleep, 1000
SendChat("Jetzt zeigen Sie mir bitte noch das Inventar [ /inventar -> Spieler -> ID: " GetPlayerId() " eingeben. ]")
tfof := 0
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Sollte sich der User weigern, kannst du ihm 2 Wanteds wegen Befehlsverweigerung geben.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Anschließend wird er ins nächste PD gebracht und dort Kontrolliert.")
}
else If(tfoftrucker == 1)
{
isTrucker := 1
SendChat("Vielen Dank für die Zahlung des Tickets.")
Sleep, 1000
SendChat("Dann hätte ich gerne noch Ihre Frachtpapiere gesehen [ /showfracht " GetPlayerId() " ]")
tfoftrucker := 0
}
}
else If(TGS_1 == PersName && TGS_2 == 500 || TGS_2 == 1.000 || TGS_2 == 1.500 || TGS_2 == 2.000 || TGS_2 == 2.500)
{
If(trstr == 1)
{
SendChat("Vielen Dank für die Zahlung des Tickets.")
Sleep, 1000
SendChat("Jetzt zeigen Sie mir bitte noch das Inventar [ /inventar -> Spieler -> ID: " GetPlayerId() " eingeben. ]")
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Sollte sich der User weigern, kannst du ihm 2 Wanteds wegen Befehlsverweigerung geben.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Anschließend wird er ins PD gebracht und dort Kontrolliert.")
trstr := 0
}
}
}
}
}
}
return
ReadGameText:
if(WinActive("GTA:SA:MP"))
{
IniRead, Chatlog_Pfad, %ini%, Einstellungen, Chatlog_Pfad
FileGetSize, current_chatgtlog_size, %A_MyDocuments%\GTA San Andreas User Files\SAMP\gametexts.txt
if(current_chatgtlog_size < chatgtlog_size)
{
chatgtlog_zeile := 0
}
chatgtlog_size := current_chatgtlog_size
IniRead, Chatlog_Pfad, %ini%, Einstellungen, Chatlog_Pfad
Loop, read, %A_MyDocuments%\GTA San Andreas User Files\SAMP\gametexts.txt
{
If (chatgtlog_zeile >= A_Index)
{
Continue
}
else
{
chatgtlog_zeile := A_Index
Chat := A_LoopReadLine
If InStr(Chat, "~r~Headshot~n~~w~(") && InStr(Chat, " m)") && (Duty_Var == 1)
{
RegExMatch(Chat, "\~r\~Headshot\~n\~\~w\~\((.*)\.(.*) m\)", HS_)
SendChat("/r † Wurde geheadshottet aus einer Distanz von " HS_1 "." HS_2 "m @ " posfunc())
}
Else If InStr(Chat, "~g~Headshot~n~~w~(") && InStr(Chat, " m)") && (Duty_Var == 1)
{
RegExMatch(Chat, "\~g\~Headshot\~n\~\~w\~\((.*)\.(.*) m\)", HS_)
SendChat("/r Ich habe den Gesuchten durch einen Headshot aus einer Distanz von " HS_1 "." HS_2 "m ausgeschaltet!")
}
}
}
}
return
Checkpoint_Reset:
if(WinActive("GTA:SA:MP"))
{
CPRs++
If(CPRs == 10)
{
DisableCheckpoint()
CPRs := 0
SetTimer, Checkpoint_Reset, Off
}
}
return
IniDLL:
if(WinActive("GTA:SA:MP") && DLLLoad == 1)
{
DllCall("Gametext.dll\Load")
DLLLoad := 0
}
If(!WinExist("GTA:SA:MP") && DLLLoad == 0)
{
DLLLoad := 1
}
return
Krankenhaus:
khsec++
If(khsec == 60)
{
khmin++
khsec := 0
}
If(khmin == KHEm && khsec == KHEs) && (!WinActive("GTA:SA:MP"))
{
MsgBox, 64, [INFO] Krankenhaus, Du wurdest aus dem Krankenhaus entlassen.
SetTimer, Krankenhaus, Off
}
return
SFK_C:
IniRead, Fraktion, %ini%, Einstellungen, Fraktion
If(Fraktion = "LSPD")
{
SFK_C := "{6495ED}"
}
else If(Fraktion = "U.S. Army")
{
SFK_C := "{33CC00}"
}
return
Dutycheck:
IniRead, Fraktion, %ini%, Einstellungen, Fraktion
Duty := PlayerColor(GetPlayerId())
If(Duty = "6495ED") || (Duty = "33CC00")
{
Duty_Var := 1
}
else If(Duty = "FFFFFF")
{
Duty_Var := 0
}
If(Duty = "6495ED") && (Fraktion != "LSPD")
{
IniWrite, LSPD, %ini%, Einstellungen, Fraktion
}
else If(Duty == "33CC00") && (Fraktion != "U.S. Army")
{
IniWrite, U.S. Army, %ini%, Einstellungen, Fraktion
}
return
AFK:
If(WinExist("GTA:SA:MP"))
{
If(!WinActive("GTA:SA:MP"))
{
If(AFK_Timer_01 == 1)
{
afks++
if(afks == 60)
{
afkm++
afks := 0
}
if(afkm == AFK_01 && afks == AFK_02)
{
MsgBox, 65, AFK Erinnerung, Du bist schon seit %AFK_01% Minuten und %AFK_02% Sekunden AFK!`nEin Kick steht kurz bevor, durch ein Klick auf (OK) wird das Spiel in den Vordergrund gerufen!
IfMsgBox, OK
{
WinActivate, GTA:SA:MP
}
else
{
afks := 0
afkm := 0
}
}
}
else if(AFK_Timer_02 == 1)
{
afks++
if(afks == 60)
{
afkm++
afks := 0
}
if(afkm == AFK_01 && afks == AFK_02)
{
SoundBeep, 1000, 2000
afks := 0
afkm := 0
}
}
}
else
{
afks := 0
afkm := 0
}
}
return
RSS_Feed:
if(WinActive("GTA:SA:MP"))
{
IniRead, FCOOK, %ini%, Einstellungen, FCOOK
IniRead, UsID, %ini%, Einstellungen, UsID
IniRead, FMSG, %ini%, Checkboxen, FMSG
If(FMSG == 1)
{
Forumlink := DownloadToString("https://life-of-german.org/forum/board-feed/?at=" UsID "-" FCOOK)
count := 0
Loop, parse, Forumlink, `n, `r
{
If (InStr(A_LoopField, "<title><![CDATA[") && !InStr(A_LoopField, "Life of German"))
{
RegExMatch(A_LoopField, "<title><!\[CDATA\[(.*)\]\]></title>", v_title)
}
If (InStr(A_LoopField, "<dc:creator><![CDATA"))
{
RegExMatch(A_LoopField, "<dc:creator><!\[CDATA\[(.*)\]\]></dc:creator>", v_creator)
count++
If (creatorold = v_creator1)
{
If (titleold = v_title1)
{
break
return
}
}
AddChatMessage(SFK_C "[Forum] {FFFFFF}Neuer Beitrag von " SFK_C v_creator1 "{FFFFFF} im Thema " SFK_C v_title1)
Sleep, 500
creatorold = %v_creator1%
titleold = %v_title1%
If (count == 1)
break
}
}
}
}
return
Overlay:
if(Overlay == 1)
{
if(!WinActive("GTA:SA:MP"))
{
if(s_overlay != -1)
{
TextDestroy(s_overlay)
s_overlay := -1
}
return
}
if(s_overlay == -1)
{
IniRead, ov_xpos, %ini%, Overlay, ov_xpos
IniRead, ov_ypos, %ini%, Overlay, ov_ypos
IniRead, ov_size, %ini%, Overlay, ov_size
s_overlay := TextCreate("Arial", ov_size, true, false, ov_xpos, ov_ypos, 0xFFFFFFFF, "", true, true)
}
myname := GetPlayerName()
myid := GetPlayerId()
myping := getPlayerPingById(myid)
myhp := GetPlayerHealth()
myarmor := GetPlayerArmor()
if(myarmor > 0)
{
Armor := "`n| Weste: " myarmor
}
else
{
Armor := ""
}
myzone := GetPlayerZone()
TextSetPos(s_overlay, ov_xpos, ov_ypos)
TextUpdate(s_overlay, "Arial", ov_size, true, false)
if(getVehicleEngineState() == 1)
{
enginestate := "An"
}
else
{
enginestate := "Aus"
}
if(getVehicleLockState() == 1)
{
lockstate := "Abgeschlossen"
}
else
{
lockstate := "Aufgeschlossen"
}
if(getVehicleLightState() == 1)
{
lightstate := "An"
}
else
{
lightstate := "Aus"
}
if(isPlayerDriver() == -1)
{
TextSetString(s_overlay, "| Name: " myname " (" myid ")`n| Ping: " myping "`n| Leben: " myhp " " Armor "`n| Standort: " posfunc())
}
else
{
TextSetString(s_overlay, "| Name: " myname " (" myid ")`n| Ping: " myping "`n| Leben: " myhp " " Armor "`n| Standort: " posfunc() "`n| Fahrzeug: " getVehicleModelName() " (" getVehicleID() ")`n| Motor: " enginestate "`n| Fahrzeugschloss: " lockstate "`n| Licht: " lightstate)
}
}
return
S_Keybind1:
Suspend, Permit
If(!isInChat())
{
suspend
If ( A_IsSuspended )
{
ShowGameText("~w~Keybinder ~r~deaktiviert", 1000, 3)
}
If ( !A_IsSuspended )
{
ShowGameText("~w~Keybinder ~g~aktiviert", 1000, 3)
}
}
return
S_Keybind2:
If(!isInChat())
{
GetPlayerPosition(x, y, z, r)
SendChat("/d VS @ " posfunc(true) " | P: [" Round(x) ", " Round(y) ", " Round(z) "]")
}
return
S_Keybind3:
If(!isInChat())
{
SendChat("/d Bin auf dem Weg zur VS @ " posfunc())
}
return
S_Keybind4:
If(!isInChat())
{
IniRead, Fraktion, %ini%, Einstellungen, Fraktion
SendChat("/s " Fraktion "! - Stellen Sie sich sofort! [ /hup ]")
Sleep, 500
SendChat("/s Sie haben 5 Sekunden Zeit, um sich zu stellen")
Loop, 5
{
SendChat("/s " 5-A_Index+1)
Sleep, 1000
}
SendChat("/s Sie hatten Ihre Chance. Wir werden nun Gewalt anwenden")
}
return
S_Keybind5:
If(!isInChat())
{
SendChat("/m Allgemeine Verkehrskontrolle! - Bitte fahren sie rechts ran!")
}
return
S_Keybind6:
If(!isInChat())
{
kfs := 0
SendChat("Guten Tag, allgemeine Verkehrskontrolle.")
Sleep, 1000
AddChatMessage(SFK_C "[SFK] {FFFFFF}Gib bitte die ID der Person ein, bei der du die Verkehrskontrolle durchführst")
VKKid := PlayerInput("ID: ")
If(VKKid != "" || VKKid != "ERROR")
{
VKKname := GetPlayerNameById(VKKid)
AddChatMessage(SFK_C "[SFK] {FFFFFF}Was für ein Fahrzeugtyp fährt die Person, bei der du eine Verkehrskontrolle durchführst?")
AddChatMessage(SFK_C "[SFK] {FFFFFF}PKW (" SFK_C "1{FFFFFF}) | LKW (" SFK_C "2{FFFFFF}) | Motorrad (" SFK_C "3{FFFFFF})")
VKKvtyp := PlayerInput("Fahrzeugtyp (Zahl): ")
If(VKKvtyp == 1)
{
AddChatMessage(SFK_C "[SFK] {FFFFFF}Mit was für einem Fahrzeug fährt die Person, bei der du eine Verkehrskontrolle durchführst? (Infernus, Sultan, ...)")
vehname := PlayerInput("")
if(vehname != "" || vehname != "ERROR")
vehicle := vehname
VTYPE := "PKW"
VKK := 1
SendChat("Als Erstes hätte ich gern Ihre Personalien. [ /showperso " getPlayerId() " ]")
}
else If(VKKvtyp == 2)
{
AddChatMessage(SFK_C "[SFK] {FFFFFF}Mit was für einem Fahrzeug fährt die Person, bei der du eine Verkehrskontrolle durchführst? (Infernus, Sultan, ...)")
vehname := PlayerInput("")
if(vehname != "" || vehname != "ERROR")
vehicle := vehname
VTYPE := "LKW"
VKK := 1
SendChat("Als Erstes hätte ich gern Ihre Personalien. [ /showperso " getPlayerId() " ]")
}
else If(VKKvtyp == 3)
{
AddChatMessage(SFK_C "[SFK] {FFFFFF}Mit was für einem Fahrzeug fährt die Person, bei der du eine Verkehrskontrolle durchführst? (Infernus, Sultan, ...)")
vehname := PlayerInput("")
if(vehname != "" || vehname != "ERROR")
vehicle := vehname
VTYPE := "Motorrad"
VKK := 1
SendChat("Als Erstes hätte ich gern Ihre Personalien. [ /showperso " getPlayerId() " ]")
}
}
}
return
~1::
if(!isInChat())
{
SendInput, {F12 down}
Sleep, 175
SendInput, {F12 up}
}
return
S_Keybind7:
If(!isInChat())
{
If(kfs == 1)
{
SendChat("Vielen Dank für Ihre Kooperation. Ich wünsche Ihnen noch einen angenehmen Tag.")
SendChat("Ihr Fahrzeug lassen sie bitte stehen.")
VKK := 0
VTYPE := 0
VKKname := 0
kfs := 0
}
else
{
SendChat("Vielen Dank für Ihre Kooperation. Ich wünsche Ihnen noch einen angenehmen Tag.")
VKK := 0
VTYPE := 0
VKKname := 0
}
}
return
S_Keybind8:
If(!isInChat())
{
AddChatMessage(SFK_C "[SFK] {FFFFFF}Verkehrskontrolle abgebrochen.")
VKK := 0
VTYPE := 0
VKKname := 0
}
return
S_Keybind9:
If(!isInChat())
{
SendChat("/enter")
Sleep, 500
SendChat("/waschen")
SendChat("/toilette")
SendChat("/heal")
}
return
S_Keybind10:
If(!isInChat())
{
SendChat("/item 70 10")
}
return
S_Keybind11:
If(!isInChat())
{
SendChat("/item 71 1000")
}
return
S_Keybind12:
if(!isInChat())
{
SendChat("/blockade 1")
}
return
S_Keybind13:
if(!isInChat())
{
SendChat("/blockade 2")
}
return
S_Keybind14:
if(!isInChat())
{
SendChat("/blockade 3")
}
return
S_Keybind15:
if(!isInChat())
{
SendChat("/spikes")
}
return
S_Keybind16:
if(!isInChat())
{
SendChat("/auf")
}
return
S_Keybind17:
if(!isInChat())
{
SendChat("/duty")
}
return
S_Keybind18:
{
SendChat("/undercover")
}
return
E_Keybind1:
If(!isInChat())
SendChat(Text1)
return
E_Keybind2:
If(!isInChat())
SendChat(Text2)
return
E_Keybind3:
If(!isInChat())
SendChat(Text3)
return
E_Keybind4:
If(!isInChat())
SendChat(Text4)
return
E_Keybind5:
If(!isInChat())
SendChat(Text5)
return
E_Keybind6:
If(!isInChat())
SendChat(Text6)
return
E_Keybind7:
If(!isInChat())
SendChat(Text7)
return
E_Keybind8:
If(!isInChat())
SendChat(Text8)
return
E_Keybind9:
If(!isInChat())
SendChat(Text9)
return
E_Keybind10:
If(!isInChat())
SendChat(Text10)
return
E_Keybind11:
If(!isInChat())
SendChat(Text11)
return
E_Keybind12:
If(!isInChat())
SendChat(Text12)
return
E_Keybind13:
If(!isInChat())
SendChat(Text13)
return
E_Keybind14:
If(!isInChat())
SendChat(Text14)
return
E_Keybind15:
If(!isInChat())
SendChat(Text15)
return
E_Keybind16:
If(!isInChat())
SendChat(Text16)
return
E_Keybind17:
If(!isInChat())
SendChat(Text17)
return
E_Keybind18:
If(!isInChat())
SendChat(Text18)
return
E_Keybind19:
If(!isInChat())
SendChat(Text19)
return
E_Keybind20:
If(!isInChat())
SendChat(Text20)
return
E_Keybind21:
If(!isInChat())
SendChat(Text21)
return
E_Keybind22:
If(!isInChat())
SendChat(Text22)
return
E_Keybind23:
If(!isInChat())
SendChat(Text23)
return
E_Keybind24:
If(!isInChat())
SendChat(Text24)
return
E_Keybind25:
If(!isInChat())
SendChat(Text25)
return
E_Keybind26:
If(!isInChat())
SendChat(Text26)
return
E_Keybind27:
If(!isInChat())
SendChat(Text27)
return
E_Keybind28:
If(!isInChat())
SendChat(Text28)
return
E_Keybind29:
If(!isInChat())
SendChat(Text29)
return
E_Keybind30:
If(!isInChat())
SendChat(Text30)
return
E_Keybind31:
If(!isInChat())
SendChat(Text31)
return
E_Keybind32:
If(!isInChat())
SendChat(Text32)
return
E_Keybind33:
If(!isInChat())
SendChat(Text33)
return
E_Keybind34:
If(!isInChat())
SendChat(Text34)
return
E_Keybind35:
If(!isInChat())
SendChat(Text35)
return
E_Keybind36:
If(!isInChat())
SendChat(Text36)
return
E_Keybind37:
If(!isInChat())
SendChat(Text37)
return
E_Keybind38:
If(!isInChat())
SendChat(Text38)
return
E_Keybind39:
If(!isInChat())
SendChat(Text39)
return
E_Keybind40:
If(!isInChat())
SendChat(Text40)
return
E_Keybind41:
If(!isInChat())
SendChat(Text41)
return
E_Keybind42:
If(!isInChat())
SendChat(Text42)
return
E_Keybind43:
If(!isInChat())
SendChat(Text43)
return
E_Keybind44:
If(!isInChat())
SendChat(Text44)
return
E_Keybind45:
If(!isInChat())
SendChat(Text45)
return
E_Keybind46:
If(!isInChat())
SendChat(Text46)
return
E_Keybind47:
If(!isInChat())
SendChat(Text47)
return
E_Keybind48:
If(!isInChat())
SendChat(Text48)
return
E_Keybind49:
If(!isInChat())
SendChat(Text49)
return
E_Keybind50:
If(!isInChat())
SendChat(Text50)
return
:*?:/resms::
Suspend, Permit
re_sms := PlayerInput("RE-SMS an " re_name ": ")
If(re_sms != "")
{
SendChat("/sms " re_telnr " " re_sms)
}
return
:?b0:/ssms::
Suspend, Permit
Input, n_sms, V I M, {enter}
If(n_sms != "")
{
SendChat("/nummer " n_sms)
Sleep, 300
SendInput, t/sms %IG_Nummer%{space}
}
return
:?b0:/call::
Suspend, Permit
Input, n_call, V I M, {enter}
If(n_call != "")
{
SendChat("/nummer " n_call)
Sleep, 300
SendInput, t/anrufen %IG_Nummer%{enter}
}
return
:?:/acall::
Suspend, Permit
SendChat("/annehmen")
If(A_Hour >= 6 && A_Hour < 12)
{
SendChat("Guten Morgen")
SendChat("Sie sprechen mit " GetPlayerName() ". Was kann ich für Sie tun?")
}
else if(A_Hour >= 12 && A_Hour < 17)
{
SendChat("Guten Tag")
SendChat("Sie sprechen mit " GetPlayerName() ". Was kann ich für Sie tun?")
}
else if(A_Hour >= 17 && A_Hour < 24)
{
SendChat("Guten Abend")
SendChat("Sie sprechen mit " GetPlayerName() ". Was kann ich für Sie tun?")
}
else if(A_Hour >= 0 && A_Hour < 6)
{
SendChat("Gute Nacht")
SendChat("Sie sprechen mit " GetPlayerName() ". Was kann ich für Sie tun?")
}
return
:?:/ecall::
Suspend, Permit
If(A_Hour >= 6 && A_Hour < 12)
{
SendChat("Ich wünsche Ihnen noch einen wunderschönen Morgen.")
SendChat("Auf Wiederhören.")
}
else if(A_Hour >= 12 && A_Hour < 17)
{
SendChat("Ich wünsche Ihnen noch einen wunderschönen Tag.")
SendChat("Auf Wiederhören.")
}
else if(A_Hour >= 17 && A_Hour < 24)
{
SendChat("Ich wünsche Ihnen noch einen wunderschönen Abend.")
SendChat("Auf Wiederhören.")
}
else if(A_Hour >= 0 && A_Hour < 6)
{
SendChat("Ich wünsche Ihnen noch eine wunderschöne Nacht.")
SendChat("Auf Wiederhören.")
}
SendChat("/auflegen")
return
:?:/arb::
Suspend, Permit
Sleep, 300
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Willkommen bei den Anrufsbeantworter-Einstellungen. Was möchtest du tun?")
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Anrufbeantworter aktivieren ({1E90FF}1{FFFFFF}) | Anrufbeantworter deaktivieren ({1E90FF}2{FFFFFF})")
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Zeit-Einstellung(en) für den Auto-Anrufbeantworter festlegen ({1E90FF}3{FFFFFF})")
ab := PlayerInput("Option: ")
If(ab == 1)
{
IniWrite, 1, %ini%, Einstellungen, AB
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Anrufbeantworter erfolgreich aktiviert!")
}
else if(ab == 2)
{
IniWrite, 0, %ini%, Einstellungen, AB
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Anrufbeantworter erfolgreich deaktiviert!")
}
else if(ab == 3)
{
Sleep, 175
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Nach wie viel Sekunden soll der Anrufbeantworter anspringen?")
Zeit_AB := PlayerInput("Sekunden: ")
If(Zeit_AB > -1)
{
IniWrite, %Zeit_AB%, %ini%, Einstellungen, ABT
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Anrufbeantworter Zeit erfolgreich auf {1E90FF}" Zeit_AB " {FFFFFF}Sekunden festgelegt.")
Sleep, 1000
AddChatMessage("{1E90FF}[SFK] {FFFFFF}Der Keybinder wird neu gestartet...")
Sleep, 2000
If(Overlay == 1)
{
DestroyAllVisual()
}
Reload
}
}
return
:?b0:/att::
Input, attID, V I M, {enter}
If(attID > -1)
{
SendChat("/wa " attID " 4 Attack")
}
return
:?b0:/mo::
Input, moID, V I M, {enter}
If(attID > -1)
{
SendChat("/wa " moID " 7 Mord")
}
return
:?b0:/fl::
Input, flID, V I M, {enter}
If(flID > -1)
{
SendChat("/wa " flID " 3 Flucht")
}
return
:?b0:/fb::
Input, fbID, V I M, {enter}
If(fbID > -1)
{
SendChat("/wa " fbID " 4 Fluchtbeihilfe")
}
return
:?b0:/einb::
Input, einbID, V I M, {enter}
If(einbID > -1)
{
SendChat("/wa " einbID " 12 (K-B) Einbruch")
}
return
:?b0:/fof::
Input, fofID, V I M, {enter}
If(fofID > -1)
{
SendChat("/wa " fofID " 4 Fahren ohne Führerschein; Flucht")
}
return
:?b0:/ans::
Input, ansID, V I M, {enter}
If(ansID > -1)
{
SendChat("/wa " ansID " 12 Anschlag")
}
return
:?b0:/gf::
Input, gfID, V I M, {enter}
If(gfID > -1)
{
SendChat("/givepoints " gfID " 6 Geisterfahrt")
}
return
:?b0:/t::
Input, tID, V I M, {enter}
If(tID > -1)
{
Sleep, 175
SendInput, t/ticket %tID%%A_Space%
}
return
:?b0:/vm::
Input, vmID, V I M, {enter}
if(vmID > -1)
{
SendChat("/givepoints " vmID " 3 Vorfahrtsmissachtung")
}
return
:?b0:/bv::
Input, bvID, V I M, {enter}
If(bvID > -1)
{
SendChat("/wa " bvID " 2 Befehlsverweigerung")
}
return
:?b0:/wtc::
Input, wtcID, V I M, {enter}
{
SendChat("/clear " wtcID " WT-Sit.")
}
return
:?:/defuse::
SendChat("/entschaerfen")
return
:?:/getw::
IniRead, Fraktion, %ini%, Einstellungen, Fraktion
If(Fraktion = "U.S. Army")
{
SendChat("/item 71 1000")
SendChat("/item 74 1000")
SendChat("/item 76 1000")
SendChat("/item 81 1000")
SendChat("/item 78 1000")
}
else If(Fraktion = "LSPD")
{
SendChat("/item 71 1000")
SendChat("/item 72 1000")
SendChat("/item 76 1000")
SendChat("/item 81 1000")
SendChat("/item 78 1000")
}
return
:?b0:/gsr::
Input, drValue, V I M, {enter}
If(drValue > 0)
{
JdrValue := drValue-1
HM_Rechnung := 3500+drValue*1250
Joint_Rechnung := 3500+JdrValue*750
End_HM := FormatNumber(HM_Rechnung)
End_Joint := FormatNumber(Joint_Rechnung)
AddChatMessage(SFK_C "[SFK] {FFFFFF}** Die Geldstrafen bei einer Personen- oder Verkehrskontrolle dürfen " SFK_C " 20.000$ {FFFFFF}nicht übersteigen.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}** Die Geldstrafen bei einer Hauskontrolle dürfen " SFK_C " 50.000$ {FFFFFF}nicht übersteigen.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Geldstrafe für " SFK_C drValue " {FFFFFF}Heroin / Meth: " SFK_C End_HM "$")
If(Joint_Rechnung <= 3500)
{
return
}
AddChatMessage(SFK_C "[SFK] {FFFFFF}Geldstrafe für " SFK_C drValue-1 " {FFFFFF}Joints: " SFK_C End_Joint "$")
}
return
:?b0:/knd::
Input, WA, V I M, {enter}
If(WA > 0)
{
Hup_Rechnung := WA*1.25
Tot_Rechnung := WA*2.5
End_Hup := Round((Hup_Rechnung), 2)
End_Tot := Round((Tot_Rechnung), 2)
AddChatMessage(SFK_C "[SFK] {FFFFFF}** Beim Stellen des Wanteds wird er bei der {FF9900}Wantedanzahl " WA "{FFFFFF}: " SFK_C End_Hup " min {FFFFFF}in den Knast kommen.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}** Beim Töten des Wanteds wird er bei der {FF9900}Wantedanzahl " WA "{FFFFFF}: " SFK_C End_Tot " min {FFFFFF}in den Knast kommen.")
}
return
:?:/cc::
Loop, 50
{
AddChatMessage("")
}
return
:?:/sfreset::
IniWrite, Keine, %ini%, Einstellungen, Fraktion
AddChatMessage(SFK_C "[SFK] {FFFFFF}Deine Staatsfraktionsauswahl wurde zurückgesetzt. Der Keybinder startet in 5 Sekunden neu!")
Sleep, 5000
WinMinimize, GTA:SA:MP
Sleep, 1000
Reload
return
:?:/bj::
Sleep, 300
SendChat("/anim")
Sleep, 175
SendInput, {Down 1}
Sleep, 100
SendInput, {Enter}
Sleep, 175
SendInput, {Down 6}
Sleep, 100
SendInput, {Enter}
return
:?:/anime::
Sleep, 300
SendChat("/anim")
Sleep, 175
SendInput, {Down 4}
Sleep, 100
SendInput, {Enter}
return
:?:/wd::
Sleep, 300
ShowDialog(0, SFK_C "Regelungen für die Sonderfahrzeuge", "{FFFFFF}§1 Sonderfahrzeuge der Staatsfraktionen dürfen für den Einsatz bei Boden-Verfolgungen nur ab bestimmten Wantedleveln und Zeiten eingesetzt werden:`n`n- Seasparrow: 15 Minuten ab Erhalt des Wantedlevel 10`n- Panzer: 10 Minuten ab Erhalt des Wantedlevel 11`n- Hydra: 25 Minuten ab Erhalt des Wantedlevel 11`n- Hunter: 30 Minuten ab Erhalt des Wantedlevel 12`n- AC-130: 60 Minuten ab Erhalt des Wantedlevel 12`n`n§2 Sollte ein Staatsfraktionsmitglied mit Sonderfahrzeug attackiert werden, so darf das Feuer mit dem Sonderfahrzeug erwidert werden.`nJedoch ist das Verfolgen eines Wanteds mit einem Sonderfahrzeug, das die unter §1 genannten Bedingungen nicht erfüllt, verboten.`n`n§3 Ab einer Versammlung von fünf Wanteds dürfen die Sonderfahrzeuge ohne Berücksichtigung der in unter §1 genannten Wantedgrenzen je Sonderfahrzeug benutzt werden,`nwenn zuvor eine Auflösung der Wanteds mit allen verfügbaren Einheiten gescheitert ist.`n`n§4 Ab einer Versammlung von zehn Wanteds dürfen die Sonderfahrzeuge ohne Berücksichtigung der in unter §1 genannten Wanted- und Zeitgrenzen je Sonderfahrzeug benutzt werden,`nwenn zuvor eine Auflösung der Wanteds mit allen verfügbaren Einheiten gescheitert ist.`n`n§5 Sollten doppelt so viele Wanteds wie Staatsfraktionen online sein, so dürfen die Sonderfahrzeuge ohne Berücksichtigung der in unter §1 genannten Zeitgrenzen je Sonderfahrzeug benutzt werden.`n`n§6 In einer Minimapreichweite dürfen maximal drei Sonderfahrzeuge gleichzeitig eingesetzt werden. Dabei ist die Art der eingesetzten Sonderfahrzeuge irrelevant.`n`n§7 Im Sperrgebiet der U.S. Army (Definition laut Strafkatalog) dürfen Sonderfahrzeuge immer eingesetzt werden.", "Schließen")
return
:?:/kbefehle::
Sleep, 300
ShowDialog(0, SFK_C "Keybinder Befehle", "{FFFFFF} --- Staatsfraktionsbefehle ---`n`n{1E90FF}/att ID {FF0000}= {FFFFFF}Vergibt 4 Wanteds an ID für Attack.`n{1E90FF}/mo ID {FF0000}= {FFFFFF}Vergibt 7 Wanteds an ID für Mord.`n{1E90FF}/fl ID {FF0000}= {FFFFFF}Vergibt 3 Wanteds an ID für Flucht.`n{1E90FF}/fb ID {FF0000}= {FFFFFF}Vergibt 4 Wanteds an ID für Fluchtbeihilfe.`n{1E90FF}/fof ID {FF0000}= {FFFFFF}Vergibt 4 Wanteds an ID für Fahren ohne Führerschein; Flucht.`n{1E90FF}/ans ID {FF0000}= {FFFFFF}Vergibt 12 Wanteds an ID für Anschlag.`n{1E90FF}/einb ID {FF0000}= {FFFFFF}Vergibt 12 Wanteds an ID für (K-B) Einbruch.`n{1E90FF}/bv ID {FF0000}= {FFFFFF}Vergibt 2 Wanteds an ID für Befehlsverweigerung`n{1E90FF}/wtc ID {FF0000}= {FFFFFF}Cleart die Wanteds von ID mit der Begründung: WT-Sit.`n{1E90FF}/t ID {FF0000}= {FFFFFF}Schreibt im Chatfenster '/ticket ID' vor.`n{1E90FF}/gf ID {FF0000}= {FFFFFF}Vergibt 6 Punkte an ID für Geisterfahrt.`n{1E90FF}/vm ID {FF0000}= {FFFFFF}Vergibt 3 Punkte an ID für Vorfahrtsmissachtung.`n`n{1E90FF}/getw {FF0000}= {FFFFFF}Nimmt die Waffen aus dem Inventar. (Fraktionsbezogene)`n{1E90FF}/gsr [Anzahl der Drogen] {FF0000}= {FFFFFF}Rechnet die Geldstrafe für Drogenbesitz aus.`n{1E90FF}/knd [Wantedanzahl] {FF0000}= {FFFFFF}Rechnet die Knastdauer aus.`n{1E90FF}/sfr {FF0000}= {FFFFFF}Öffnet die Sonderfahrzeugregelungen in einem Dialog. (Ingame)`n{1E90FF}/defuse {FF0000}= {FFFFFF}/entschaerfen, nur abgekürzter.`n{1E90FF}/sfreset {FF0000}= {FFFFFF}Setzt die Staatsfraktionsauswahl zurück.`n`n`n --- Sonstige Befehle ---`n`n{1E90FF}/bj {FF0000}= {FFFFFF}Blowjob starten.`n{1E90FF}/anime {FF0000}= {FFFFFF}Animation beenden.`n{1E90FF}/kit {FF0000}= {FFFFFF}Fahrzeug Notfallkit nutzen.`n{1E90FF}/feuer {FF0000}= {FFFFFF}Feuer melden.`n{1E90FF}/csala {FF0000}= {FFFFFF}Falschparker melden oder SALA für Konfiszierung rufen.`.`n{1E90FF}/csani {FF0000}= {FFFFFF}Sanitäter rufen.`n{1E90FF}/esani {FF0000}= {FFFFFF}Sanitäter-Ruf abbrechen.`n{1E90FF}/rlotto {FF0000}= {FFFFFF}Lottoticket mit einer Randomzahl ausfüllen`n{1E90FF}/resms {FF0000}= {FFFFFF}Auf SMS antworten.`n{1E90FF}/ssms <name/id> {FF0000}= {FFFFFF}SMS versenden.`n{1E90FF}/call <name/id> {FF0000}= {FFFFFF}Jemanden anrufen.`n{1E90FF}/acall {FF0000}= {FFFFFF}Anruf annehmen mit tagesabhänginger begrüßung.`n{1E90FF}/ecall {FF0000}= {FFFFFF}Anruf Beenden mit tagesabhängiger verabschiedung.`n{1E90FF}/arb {FF0000}= {FFFFFF}Anrufbeantowrter-Einstellungen vornehmen.`n`n{1E90FF}/ovpos {FF0000}= {FFFFFF}Overlay- Position und Größe verändern`n{1E90FF}/ovsave {FF0000}= {FFFFFF}Overlayveränderungen mittels '/ovpos' speichern. ", "Schließen")
return
:?:/rlotto::
Random, Lottozahl, 1, 80
SendChat("/lotto " Lottozahl)
return
:?:/csani::
Sleep, 300
SendChat("/service")
Sleep, 175
SendInput, {Down 2}
Sleep, 100
SendInput, {Enter}
return
:?:/esani::
Sleep, 300
SendChat("/service")
Sleep, 175
SendInput, {Down 3}
Sleep, 100
SendInput, {Enter}
return
:?:/feuer::
Sleep, 300
SendChat("/service")
Sleep, 175
SendInput, {Down 8}
Sleep, 100
SendInput, {Enter}
return
:?:/csala::
Sleep, 300
AddChatMessage(SFK_C "[SFK] {FFFFFF}• Falschparkendes Fahrzeug melden •")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Auto / Sonstiges Fahrzeug (" SFK_C "1{FFFFFF}) || Motorrad (" SFK_C "2{FFFFFF})")
AddChatMessage(SFK_C "[SFK] {FFFFFF}SALA zur Konfiszierung rufen (" SFK_C "3{FFFFFF})")
call_sala := PlayerInput("Wähle Option: ")
If(call_sala == 1)
{
Sleep, 300
SendChat("/service")
Sleep, 175
SendInput, {Down 5}
Sleep, 100
SendInput, {Enter}
}
else If(call_sala == 2)
{
Sleep, 300
SendChat("/service")
Sleep, 175
SendInput, {Down 6}
Sleep, 100
SendInput, {Enter}
}
else If(call_sala == 3)
{
Sleep, 300
SendChat("/service")
Sleep, 175
SendInput, {Down 7}
Sleep, 100
SendInput, {Enter}
}
return
:?:/kit::
SendChat("/item 128 1")
return
:?:t/ovpos::
if(ov_move == false && Overlay == 1)
{
ov_move := true
IniRead, ov_xpos, %ini%, Overlay, ov_xpos
IniRead, ov_ypos, %ini%, Overlay, ov_ypos
IniRead, ov_size, %ini%, Overlay, ov_size
AddChatMessage(SFK_C "[SFK] {FFFFFF}Das Overlay kann nun mit " SFK_C "STRG + Pfeiltasten {FFFFFF}verschoben werden.")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Die Overlay Größe kann mit " SFK_C "STRG und +/- {FFFFFF}verändert werden. (Nicht im Nummernblock!)")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Das abspeichern anschließend nicht vergessen (" SFK_C "/ovsave{FFFFFF})")
}
return
^Up::
if(ov_move == true && Overlay == 1)
{
ov_ypos--
}
return
^Down::
if(ov_move == true && Overlay == 1)
{
ov_ypos++
}
return
^Left::
if(ov_move == true && Overlay == 1)
{
ov_xpos--
}
return
^Right::
if(ov_move == true && Overlay == 1)
{
ov_xpos++
}
return
^+::
if(ov_move == true && Overlay == 1)
{
ov_size++
}
return
^-::
if(ov_move == true && Overlay == 1)
{
ov_size--
}
return
:?:t/ovsave::
if(ov_move == true && Overlay == 1)
{
IniWrite, %ov_ypos%, %ini%, Overlay, ov_ypos
IniWrite, %ov_xpos%, %ini%, Overlay, ov_xpos
IniWrite, %ov_size%, %ini%, Overlay, ov_size
AddChatMessage(SFK_C "[SFK] {FFFFFF}Die Overlay-Einstellungen wurden " SFK_C "erfolgreich {FFFFFF}gespeichert!")
ov_move := false
}
return
~i::
if(!isInChat())
{
Interiorcheck := getPlayerInteriorId()
if(isPlayerDriver() == -1 || isPlayerDriver() == 0) && (Interiorcheck == 0)
{
SendChat("/inventar")
Sleep, 100
SendInput, {enter}
}
else if(isPlayerDriver() == 1)
{
AddChatMessage(SFK_C "[SFK] {FFFFFF}Du bist in einem Fahrzeug. Möchtest Du stattdessen das Inventar vom Fahrzeug öffnen?")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Drücke ({FF3333}Y{FFFFFF}) oder ({FF3333}O{FFFFFF})")
Input, tmp, L1 V, YO
If(ErrorLevel = "EndKey:Y")
{
Veh_Inv := 1
I_System := 1
SendChat("/inventar Fahrzeug")
Sleep, 200
SendInput, {enter}
Sleep, 500
AddChatMessage(SFK_C "[SFK] {FFFFFF}Drücke ({FF3333}R{FFFFFF}), um das Fahrzeug-Inventar und/ oder den Kofferraum wieder zu schließen.")
}
else if(ErrorLevel = "EndKey:O")
{
SendChat("/inventar")
Sleep, 200
SendInput, {enter}
}
}
else if(Interiorcheck > 0)
{
AddChatMessage(SFK_C "[SFK] {FFFFFF}Du bist in einem Haus / Interior. Möchtest Du stattdessen das Haus-Inventar öffnen?")
AddChatMessage(SFK_C "[SFK] {FFFFFF}Drücke ({FF3333}Y{FFFFFF}) oder ({FF3333}N{FFFFFF})")
Input, tmp, L1 V, YN
If(ErrorLevel = "EndKey:Y")
{
SendChat("/inventar Haus")
Sleep, 200
SendInput, {enter}
}
else if(ErrorLevel = "EndKey:N")
{
SendChat("/inventar")
Sleep, 200
SendInput, {enter}
}
}
}
return
~r::
If(Veh_Inv == 1)
{
SendInput, {esc}
Sleep, 200
SendChat("/veh")
Sleep, 200
SendInput, {enter}
Veh_Inv := 0
Kontrolle := 0
I_System := 0
}
return
Vehicle_Inventory_Locked:
If(WinActive("GTA:SA:MP"))
{
SendChat("/veh")
Sleep, 200
SendInput, {enter}
Sleep, 200
SendChat("/inventar Fahrzeug")
Sleep, 200
SendInput, {enter}
I_System := 0
}
return
Vehicle_Inventory_Locked_Control:
If(WinActive("GTA:SA:MP"))
{
SendChat("/veh")
Sleep, 200
SendInput, {enter}
Sleep, 200
SendChat("/inventar Fahrzeug")
Sleep, 500
SendInput, {esc}
Sleep, 500
SendInput, %sall%{enter}
Kontrolle := 0
}
return