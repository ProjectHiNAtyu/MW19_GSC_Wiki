//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Update date   : 2024/03/15
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 更新日 : 2024/03/15
// YouTube : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter : https://twitter.com/H1NAtyu
// Discord : hinatapoko
//=================================================================//

//:::::::::::::::::::::::::::::::::::::::::::::::::://
// [ English ]
//   < CoD GSC (C++) syntax explanation >
//     @ level                    = modifier for the entire room
//     @ level.players[i]         = 1 player participating in the room
//     @ self                     = myself where the function is being executed
//     @ thread                   = Execute the specified function in a subthread
//     @ Endon( "event_name" )    = Terminates function processing when the specified event name is issued.
//     @ WaitTill( "event_name" ) = Waits until the specified event name is issued, and then resumes subsequent processing
//     @ Notify( "event_name" )   = Publish the specified event name
//     @ Destroy( )               = Delete the specified variable and its actual state
//     @ IsDefined( variable )    = Check if the specified variable has been created
//     @ ^0                       = Color code (Black)
//     @ ^1                       = Color code (Red)
//     @ ^2                       = Color code (Green)
//     @ ^3                       = Color code (Yellow)
//     @ ^4                       = Color code (Blue)
//     @ ^5                       = Color code (Cyan)
//     @ ^6                       = Color code (Pink)
//     @ ^7                       = Color code (White)
//     @ wait                     = Wait for the specified time
// ---------------------------------------------
// [ Japanese ]
//   < CoD GSC (C++) 構文解説 >
//     @ level                    = 部屋全体に対する修飾子
//     @ level.players[i]         = 部屋に参加しているプレイヤー1個人
//     @ self                     = 関数が実行されている自分自身
//     @ thread                   = 指定した関数をサブスレッドで実行する
//     @ Endon( "event_name" )    = 指定したイベント名が発行されたら、関数の処理を終了する
//     @ WaitTill( "event_name" ) = 指定したイベント名が発行されるまで待機し、イベントが発行されたら、以降の処理を再開する
//     @ Notify( "event_name" )   = 指定したイベント名を発行する
//     @ Destroy( )               = 指定した変数とその実態を削除する
//     @ IsDefined( variable )    = 指定した変数が作成されているか調べる
//     @ ^0                       = カラーコード (黒)
//     @ ^1                       = カラーコード (赤)
//     @ ^2                       = カラーコード (緑)
//     @ ^3                       = カラーコード (黄色)
//     @ ^4                       = カラーコード (青)
//     @ ^5                       = カラーコード (水色)
//     @ ^6                       = カラーコード (ピンク)
//     @ ^7                       = カラーコード (白)
//     @ wait                     = 指定した時間分待機する
//:::::::::::::::::::::::::::::::::::::::::::::::::://





//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
// EN : Attention!!: 
// EN : The functions below are required when running a custom GSC using the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc".
// EN : If you delete them, it will no longer function and you will get DEV ERROR 1141.
// JA : 注意！！：
// JA : ここから下にある関数は、GSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」でカスタムGSC実行する時に必要な関数です。
// JA : 削除するとDEV ERROR 1141で機能しなくなります。
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://



// don't remove any of these below

firesalediscount( var_0, var_1 )
{
    
}

fix_wall_traversal( var_0, var_1 )
{
    
}

ontimelimit() {
}

_id_1318D( var_0, var_1 )
{

}



//++++++++++++++++++++++++++++++
// EN : Initialization process (loaded during map load after match start)
// EN : * This initialization function is for loading the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc")
// EN : * If you use this GSC with Donetsk 1816.gscbin, you do not need this Init( ) function.
// JA : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
// JA : ※この初期化関数はGSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」が読み込むための関数です）
// JA : ※Donetsk 1816.gscbin でこのGSCを使用する場合、この Init( ) 関数は不要です
//++++++++++++++++++++++++++++++
Init( )
{
    level thread InitProject( );
}



//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
// EN : Attention!!: 
// EN : The functions above are required when running a custom GSC using the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc".
// EN : If you delete them, it will no longer function and you will get DEV ERROR 1141.
// JA : 注意！！：
// JA : ここから上にある関数は、GSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」でカスタムGSC実行する時に必要な関数です。
// JA : 削除するとDEV ERROR 1141で機能しなくなります。
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://





//++++++++++++++++++++++++++++++
// EN : Initialization process (loaded during map load after match start.)
// EN : * This initialization function is read by "1816.gscbin" (scripts\mp\art.gsc).
// EN : * If you use a GSC other than "1816.gscbin", this Main( ) function is not necessary.
// JA : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
// JA : ※この初期化関数は 「1816.gscbin」（scripts\mp\art.gsc）が読み込むための関数です）
// JA : ※「1816.gscbin」以外のGSCを使用する場合、この Main( ) 関数は不要です
//++++++++++++++++++++++++++++++
Main( )
{
    level thread InitProject( );
}



//++++++++++++++++++++++++++++++
// EN : System initialization process (measures to prevent custom GSC from being loaded in twenty)
// JA : システム初期化処理（カスタムGSCが二十で読み込まれないようにするための対策）
//++++++++++++++++++++++++++++++
InitProject( )
{
    
    if ( IsDefined( level.initProject ) ) return;
    level.initProject = true;

    // EN : Subthread OnPlayerConnect( ) for the entire room
    // JA : 部屋全体に OnPlayerConnect( ) をサブスレッドで実行する
    level thread OnPlayerConnected( );
}




//++++++++++++++++++++++++++++++
// EN : Processing when a player connects to a room
// JA : プレイヤーが部屋に接続してきた時の処理
//++++++++++++++++++++++++++++++
OnPlayerConnected( )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );


    // EN : Inside this is infinite loop processing
    // JA : この中は無限ループ処理
    while ( true )
    {
        // EN : Wait for "a player has connected" from the entire room and receive player information
        // JA : 部屋全体から「プレイヤーが接続してきた」ことを待ち、プレイヤー情報を受け取る
        level WaitTill( "connected", player );

        // EN : Run OnPlayerSpawned( ) in a subthread for connected players
        // JA : 接続されたプレイヤーに対して OnPlayerSpawned( ) をサブスレッドで実行する
        player thread OnPlayerSpawned( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing that occurs when a player spawns in-game
// JA : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
OnPlayerSpawned( )
{
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    
    // EN : Set to English
    // JA : 英語設定にする
    self.curLang = 0;
    // EN : Set as host
    // JA : ホスト設定にする
    self.verificationStatusIndex = 5;
    
    // EN: Start button monitoring process
    // JA: ボタンモニタリング処理を開始する
    self thread OnButtonMonitoring( );

    // EN : Promotional message in the center of the screen
    // JA : 画面中央に宣伝メッセージ
    self thread ExecPromotionalMessage( );


    while ( true )
    {
        // EN : Wait for yourself to "spawn in-game"
        // JA : 自分が「インゲーム上にスポーンした」ことを待つ
        self WaitTill( "spawned_player" );

        // EN : Display a "Welcome" message every time you spawn
        // JA : スポーン時に毎回「ようこそ」メッセージを表示する
        self ShowWelocomeMessage( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Promotional message in the center of the screen
// JA : 画面中央に宣伝メッセージ
//++++++++++++++++++++++++++++++
ExecPromotionalMessage( )
{
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    // EN : Infinite loop until game exit
    // JA : ゲーム退出まで無限ループ
    while ( true )
    {
        // EN : Get the translation equivalent to the specified text ID in the current language
        // JA : 現在の言語で、指定したテキストIDに相当する翻訳を取得する
        l_textProjectName       = GetMTText( self.curLang , "ProjectName" );
        l_textCreated           = GetMTText( self.curLang , "Created" );
        l_textLearnGSC          = GetMTText( self.curLang , "LearnGSC" );

        // EN : Display a message in the center of the screen
        // JA : 画面中央にメッセージを表示する
        self iPrintlnBold( l_textProjectName + l_textCreated + l_textLearnGSC );

        // EN : Wait until the displayed character disappears, then return to the beginning of the loop and display the character again.
        // JA : 表示された文字が消えるまで待ち、消えたらまたループの先頭に戻って文字を表示する
        wait 4;
    }
}



//++++++++++++++++++++++++++++++
// EN : Button monitoring process
// JA : ボタンモニタリング処理
//++++++++++++++++++++++++++++++
OnButtonMonitoring( )
{
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    
    // EN: If button monitoring processing has already been executed, do not perform subsequent processing.
    // JA: ボタンモニタリング処理が実行済みである場合、以降の処理を行わない
    if ( IsDefined( self.buttonMonitoring ) )
        return;

    // EN: Mark button monitoring processing as executed
    // JA: ボタンモニタリング処理を実行済みとする
    self.buttonMonitoring = true;

    // EN: Infinite loop only while button monitoring processing is running
    // JA: ボタンモニタリング処理を実行中の間だけ無限ループ
    while ( IsDefined( self.buttonMonitoring ) )
    {
        // EN: While the "Use" button is pressed and the "Aim" button is pressed
        // JA: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されている間
        if ( ( self AdsButtonPressed( ) ) && ( self UseButtonPressed( ) ) )
        {
            // EN : Generate a vehicle "light_tank" and change the skin to "west" or "east"
            // JA : 乗り物 "light_tank" を生成し、スキンを "west" か "east" に変更する
            self ExecSpawnLightTankAndChangeModel( );
            // EN: The interval waiting time after creating a light_tank. If you do not enter this, the creation process will be executed more than 100 times if you press the Ads + use button even for a moment.
            // JA: light_tank作成後のインターバル待機時間、これを入れないとAds + useボタンを一瞬でも押したら100回以上大量に作成処理が実行されてしまいます
            wait 0.1;
        }

        // EN: If you do not wait for a few seconds during an infinite loop, processing will slow down in the infinite loop thread.
        // JA: 無限ループ中は必ず数秒でも待機しないと、無限ループスレッド内で処理落ちが発生します
        wait 0.001;
    }
}



//++++++++++++++++++++++++++++++
// EN : Generate a vehicle "light_tank" and change the skin to "west" or "east"
// JA : 乗り物 "light_tank" を生成し、スキンを "west" か "east" に変更する
//++++++++++++++++++++++++++++++
ExecSpawnLightTankAndChangeModel( )
{
    // EN : How far apart vehicles should be spawned
    // JA : 乗り物が生成される距離をどれくらい離すか
    l_Length = 150;
    // EN : How far apart vehicles should be spawned
    // JA : 自分の向いている角度を取得
    l_Angles = self GetPlayerAngles( );
    // EN : Calculate the coordinates where the vehicle will be generated (coordinates a specified distance ahead of your line of sight)
    // JA : 乗り物が生成される座標を算出（自分の目線の前方方向に、指定した距離分離れた座標）
    l_Pos = self GetEye( ) + AnglesToForward( l_Angles ) * l_Length;
    // EN : Define the vehicle ID to generate
    // JA : 生成する乗り物IDを定義
    l_VehName = "light_tank";

    // EN : Define information to create a vehicle
    // JA : 乗り物を作成する情報を定義
    l_SpawnData             = SpawnStruct( );
    l_SpawnData.origin      = l_Pos;
    l_SpawnData.angles      = l_Angles;
    l_SpawnData.owner       = self;
    l_SpawnData.spawntype   = "GAME_MODE";

    // EN : Generates the specified vehicle ID with the specified settings.
    // JA : 指定した乗り物IDを、指定した設定で生成する
    l_SpawnVeh = scripts\cp_mp\vehicles\vehicle_spawn::Vehicle_Spawn_SpawnVehicle( l_VehName , l_SpawnData );

    // EN : If you are unable to create a vehicle
    // JA : 乗り物を作成出来なかった場合
    if ( !IsDefined( l_SpawnVeh ) )
    {
        // EN: Display the specified text in the center of the screen
        // JA: 画面中央に指定の文章を表示する
        self ShowCenterMessage( self.curLang , "Warning" , "CannotUseData" , undefined , l_VehName , undefined );
        return;
    }

    if ( l_VehName == "light_tank" )
    {
        // EN : A simple flag variable to change the tank model
        // JA : 戦車のモデルを変更するための簡易的なフラグ変数
        if ( !IsDefined( self.testtank ) )  self.testtank = true;
        else                                self.testtank = undefined;
        
        // EN : Defines the weapon name for tank turrets
        // JA : 戦車の砲台の武器名を定義
        l_TurretName1 = "tur_bradley_mp";
        l_TurretName2 = "tur_gun_lighttank_mp";
        // EN : Get the weapon route name of the tank turret
        // JA : 戦車の砲台の武器ルート名を取得
        l_DonetskBaseName1 = MakeWeapon( l_TurretName1 ).basename;
        l_DonetskBaseName2 = MakeWeapon( l_TurretName2 ).basename;
        // EN : Change tank body model and turret model depending on whether the self.testtank flag is created
        // JA : self.testtank フラグが作成されているかによって、戦車の本体モデルと砲台モデルを変更する
        l_SpawnVeh                              SetModel( ( IsDefined( self.testtank ) ? "veh8_mil_lnd_coscar_east"              : "veh8_mil_lnd_coscar_west" ) );
        l_SpawnVeh.turrets[l_DonetskBaseName1]  SetModel( ( IsDefined( self.testtank ) ? "veh8_mil_lnd_coscar_east_turret"       : "veh8_mil_lnd_coscar_west_turret" ) );
        l_SpawnVeh.turrets[l_DonetskBaseName2]  SetModel( ( IsDefined( self.testtank ) ? "veh8_mil_lnd_coscar_east_turret_gun"   : "veh8_mil_lnd_coscar_west_turret_gun" ) );

        // EN : MW19 Retail Processing (MakeWeapon() is no longer used in Retail)
        // JA : MW19 Retail向けの処理（Retailでは MakeWeapon( ) が使われなくなったため）
        // l_RetailBaseName1 = GetWeaponBaseName( l_TurretName1 );
        // l_RetailBaseName2 = GetWeaponBaseName( l_TurretName2 );
        // l_SpawnVeh.turrets[l_RetailBaseName1] SetModel( ( IsDefined( self.testtank ) ? "veh8_mil_lnd_coscar_east_turret"       : "veh8_mil_lnd_coscar_west_turret" ) );
        // l_SpawnVeh.turrets[l_RetailBaseName1] SetModel( ( IsDefined( self.testtank ) ? "veh8_mil_lnd_coscar_east_turret_gun"   : "veh8_mil_lnd_coscar_west_turret_gun" ) );
        
        // EN : Set speed and health
        // JA : 速度と体力を設定
        l_SpawnVeh Vehicle_SetSpeed( 100000 , 100000 , 50000 );
        l_SpawnVeh.maxhealth = 100000;
        l_SpawnVeh.health = l_SpawnVeh.maxhealth;
        
        // EN: Display the specified text in the center of the screen
        // JA: 画面中央に指定の文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "CreateObject" , undefined , l_VehName , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Display a "Welcome" message
// JA : 「ようこそ」メッセージを表示する
//++++++++++++++++++++++++++++++
ShowWelocomeMessage( )
{
    // EN : Get the translation equivalent to the specified text ID in the current language
    // JA : 現在の言語で、指定したテキストIDに相当する翻訳を取得する
    l_textWelcome           = GetMTText( self.curLang , "WelcomeTo" );
    l_textProjectName       = GetMTText( self.curLang , "ProjectName" );
    l_textModdedLobby       = GetMTText( self.curLang , "ModdedLobby" );
    
    l_textYourMenuStatus    = GetMTText( self.curLang , "YourMenuStatus" );
    l_textVerifiedLevel     = GetMTText( self.curLang , GetVerifiedText( self.verificationStatusIndex ) );
    l_textMenuDescription   = GetMTText( self.curLang , "ModMenuOpenDescription" );

    // EN : Display a message in the kill log area at the bottom left of your screen(The kill log has 6 lines, so fill in 3 blank lines)
    // JA : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( l_textMenuDescription );
    self iPrintln( l_textYourMenuStatus + l_textVerifiedLevel );
    self iPrintln( l_textWelcome + l_textProjectName + l_textModdedLobby );
}



//++++++++++++++++++++++++++++++
// EN : Returns the text sentence of the corresponding permission status from "Current permission status"
// JA : 「現在の権限状態」から、該当する権限状態のテキスト文章を返す
//++++++++++++++++++++++++++++++
GetVerifiedText( status )
{
    switch ( status )
    {
        case 1:     return "Verified";      // level.MODDEF.LV_VERIFIED
        case 2:     return "VIP";           // level.MODDEF.LV_VIP
        case 3:     return "Admin";         // level.MODDEF.LV_ADMIN
        case 4:     return "Cohost";        // level.MODDEF.LV_COHOST
        case 5:     return "Host";          // level.MODDEF.LV_HOST
        default:    return "Unverified";    // level.MODDEF.LV_UNVERIFIED
    }
}



//++++++++++++++++++++++++++++++
// EN : General-purpose processing to display the fixed phrase "[Category] Sentence 1: Sentence 2"
// JA : "[カテゴリ] 文章1 : 文章2" という定型文を表示するための汎用処理
//++++++++++++++++++++++++++++++
ShowCenterMessage( selfLang , tagName , msg1 , msg2 , content , prefix )
{
    // EN : define empty string
    // JA : 空の文字列を定義
    l_Content = "";
    
    // EN : If sentence 2 is set, get the translation of sentence 2
    // JA : 文章2が設定されている場合は、文章2の翻訳を取得する
    if ( IsDefined( msg2 ) )
        l_Content = " : ^5" + GetMTText( selfLang , msg2 );
    // EN : If a content sentence is set, set the sentence as is.
    // JA : コンテンツ文が設定されている場合は、そのままの文章を設定する
    else if ( IsDefined( content ) )
        l_Content = " : ^5" + content;
    
    // EN : If endings are set, add the ending translation to the end
    // JA : 語尾が設定されている場合は、語尾の翻訳を最後に追加する
    if ( IsDefined( prefix ) )
        l_Content = l_Content + GetMTText( selfLang , prefix );

    // EN : Display fixed phrases in the center of the screen
    // JA : 定型文を画面中央に表示する
    self iPrintlnBold( GetMTText( selfLang , tagName ) + GetMTText( selfLang , msg1 ) + l_Content );
}



//++++++++++++++++++++++++++++++
// EN : Returns the corresponding translation from the current language and specified text ID
// JA : 現在の言語と指定のテキストIDから、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
GetMTText( selfLang , textID , useGamepad )
{
    switch ( textID )
    {
        case "ButtonAction":           return "[{+action}]";
        case "ButtonAction1":          return "[{+actionslot 1}]";
        case "ButtonAction2":          return "[{+actionslot 2}]";
        case "ButtonAction3":          return "[{+actionslot 3}]";
        case "ButtonAction4":          return "[{+actionslot 4}]";
        case "ButtonAds":              return "[{+speed_throw}]";
        case "ButtonAttack":           return "[{+attack}]";
        case "ButtonChangeSeat":       return "[{+switchseat}]";
        case "ButtonLethal":           return "[{+frag}]";
        case "ButtonTactical":         return "[{+smoke}]";
        case "ButtonJump":             return "[{+gostand}]";
        case "ButtonMelee":            return "[{+melee}]";
        case "ButtonOffhandSpecial":   return "[{+offhandspecial}]";
        case "ButtonReload":           return "[{+usereload}]";
        case "ButtonSprint":           return "[{+breath_sprint}]";
        case "ButtonStance":           return "[{+stance}]";
        case "ButtonUse":              return "[{+activate}]";
        case "ButtonVehicleAttack":    return "[{+vehicleattack}]";
        case "ButtonVehicleMoveUp":    return "[{+vehiclemoveup}]";
        case "ButtonWeaponSwitch":     return "[{+weapnext_inventory}]";

        case "ProjectName":
            if (        selfLang == 0 ) return "^7Project ^5H^7iN^1A^7tyu";
            else if (   selfLang == 1 ) return "^7プロジェクト ^5ひ^7な^1ち^7ゅ";
            else if (   selfLang == 2 ) return "^5H^7iN^1A^7tyu ^7計畫";
            else if (   selfLang == 3 ) return "^7проект ^5огонь^1На^7Чуу";
            break;

        case "Created":
            if (        selfLang == 0 ) return " ^3created ";
            else if (   selfLang == 1 ) return " ^3制作の ";
            else if (   selfLang == 2 ) return " ^3创建 ";
            else if (   selfLang == 3 ) return " ^3Созданный ";
            break;

        case "LearnGSC":
            if (        selfLang == 0 ) return "^3GSC ^6for basic learning";
            else if (   selfLang == 1 ) return "^6基礎学習用 ^3GSC";
            else if (   selfLang == 2 ) return "^3GSC ^6基础学习";
            else if (   selfLang == 3 ) return "^3GSC ^6для базового обучения";
            break;

        case "WelcomeTo":
            if (        selfLang == 0 ) return "^3Welcome to ";
            else if (   selfLang == 1 ) return "^3ようこそ、";
            else if (   selfLang == 2 ) return "^3欢迎，";
            else if (   selfLang == 3 ) return "^3добро пожаловать,";
            break;
            
        case "ModdedLobby":
            if (        selfLang == 0 ) return " ^3modded lobby.";
            else if (   selfLang == 1 ) return " ^3の改造部屋へ。";
            else if (   selfLang == 2 ) return " ^3前往改造后的房间。";
            else if (   selfLang == 3 ) return " ^3В отремонтированную комнату.";
            break;
            
        case "YourMenuStatus":
            if (        selfLang == 0 ) return "^3" + self.name + " status : ";
            else if (   selfLang == 1 ) return "^3" + self.name + "の権限階級 : ";
            else if (   selfLang == 2 ) return "^3" + self.name + " 地位 : ";
            else if (   selfLang == 3 ) return "^3" + self.name + " положение дел : ";
            break;
            
        case "ModMenuOpenDescription":
            if (        selfLang == 0 ) return GetMTText( selfLang , "ButtonAds" ) + GetMTText( selfLang , "ButtonUse" ) + " ^3: Create a light_tank";
            else if (   selfLang == 1 ) return GetMTText( selfLang , "ButtonAds" ) + GetMTText( selfLang , "ButtonUse" ) + " ^3: light_tankが生成される";
            else if (   selfLang == 2 ) return GetMTText( selfLang , "ButtonAds" ) + GetMTText( selfLang , "ButtonUse" ) + " ^3: 创建一个 light_tank";
            else if (   selfLang == 3 ) return GetMTText( selfLang , "ButtonAds" ) + GetMTText( selfLang , "ButtonUse" ) + " ^3: Создать легкий_танк";
            break;

        case "Host":
            if (        selfLang == 0 ) return "^7[^5Host^7]";
            else if (   selfLang == 1 ) return "^7[^5ホスト^7]";
            else if (   selfLang == 2 ) return "^7[^5主持人^7]";
            else if (   selfLang == 3 ) return "^7[^5хозяин^7]";
            break;

        case "Cohost":
            if (        selfLang == 0 ) return "^7[^4Co-host^7]";
            else if (   selfLang == 1 ) return "^7[^4副ホスト^7]";
            else if (   selfLang == 2 ) return "^7[^4次要宿主^7]";
            else if (   selfLang == 3 ) return "^7[^4вторичный хост^7]";
            break;

        case "Admin":
            if (        selfLang == 0 ) return "^7[^1Admin^7]";
            else if (   selfLang == 1 ) return "^7[^1管理者^7]";
            else if (   selfLang == 2 ) return "^7[^1行政人员^7]";
            else if (   selfLang == 3 ) return "^7[^1администратор^7]";
            break;

        case "VIP":
            if (        selfLang == 0 ) return "^7[^2VIP^7]";
            else if (   selfLang == 1 ) return "^7[^2要人^7]";
            else if (   selfLang == 2 ) return "^7[^2重要的人^7]";
            else if (   selfLang == 3 ) return "^7[^2важная личность^7]";
            break;

        case "Verified":
            if (        selfLang == 0 ) return "^7[^6Verified^7]";
            else if (   selfLang == 1 ) return "^7[^6承認者^7]";
            else if (   selfLang == 2 ) return "^7[^6授权人^7]";
            else if (   selfLang == 3 ) return "^7[^6Авторизирующий^7]";
            break;

        case "Unverified":
            if (        selfLang == 0 ) return "^7[^3Unverified^7]";
            else if (   selfLang == 1 ) return "^7[^3未承認^7]";
            else if (   selfLang == 2 ) return "^7[^3未批准^7]";
            else if (   selfLang == 3 ) return "^7[^3Не одобрено^7]";
            break;

        case "Notice":
            if (        selfLang == 0 ) return "^7[^3Notice^7] ";
            else if (   selfLang == 1 ) return "^7[^3通知^7] ";
            else if (   selfLang == 2 ) return "^7[^3通知^7] ";
            else if (   selfLang == 3 ) return "^7[^3уведомление^7] ";
            break;

        case "CreateObject":
            if (        selfLang == 0 ) return "Create object";
            else if (   selfLang == 1 ) return "オブジェクト作成";
            else if (   selfLang == 2 ) return "创建对象";
            else if (   selfLang == 3 ) return "Создать объект";
            break;

        case "CannotUseData":
            if (        selfLang == 0 ) return "This data is not available in the current map mode.";
            else if (   selfLang == 1 ) return "現在のマップ・モードではこのデータの使用ができません。";
            else if (   selfLang == 2 ) return "此数据在当前地图模式下不可用。";
            else if (   selfLang == 3 ) return "Эти данные недоступны в текущем режиме карты.";
            break;

        default:
            if ( !IsDefined( textID ) ) textID = "";
            return textID;
    }
    
    if ( !IsDefined( textID ) ) textID = "";
    return textID;
}