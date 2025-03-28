//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Created date  : 2025/01/20
// Latest update : 2025/01/20
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 作成日 : 2025/01/20
// 更新日 : 2025/01/20
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





// EN : Attention!!: 
// EN : This function uses some general-purpose functions created for Project HiNAtyu.
// EN : If you try to compile this code as is into GSCBIN, an error will occur due to a missing function.
// EN : Replace the applicable generic functions with normal functions, obtain PHA generic functions, or replace them with your own functions.
// EN : Target function:
// EN : - GetBulletID( name )
// EN : - CreateEntityObject( notice , location , length , script , model , collide , sync , angle , part , hpMin , hpMax , dmgType , dmgFx , brkType , brkFx , dmgSe , brkSe , del , optName )
// EN : - DeleteAfterTime( time )
// EN : - EmptyFunction( )
// EN : - CreateMagicBullet( owner , weaponID , pStart , pEnd )

// JA : 注意！！：
// JA : この関数内には、Project HiNAtyu用に作成された汎用関数がいくつか使われています。
// JA : このコードをそのままGSCBINにコンパイルしようとした場合、関数不足によるエラーが発生します。
// JA : 該当の汎用関数は通常関数へ置き換えるか、PHA汎用関数を取得するか、独自の関数へ置き換えてください。
// JA : 対象関数：// EN : - GetBulletID( name )
// JA : - CreateEntityObject( notice , location , length , script , model , collide , sync , angle , part , hpMin , hpMax , dmgType , dmgFx , brkType , brkFx , dmgSe , brkSe , del , optName )
// JA : - DeleteAfterTime( time )
// JA : - EmptyFunction( )
// JA : - CreateMagicBullet( owner , weaponID , pStart , pEnd )





//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "VanguardAirstrike"
// JA : 機能 "VanguardAirstrike" の実行中の処理
//++++++++++++++++++++++++++++++
ExecVanguardAirstrike( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    l_OptName = "VanguardAirstrike";
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_OptName );
    wait 0.001;
    
    // EN : Since this mod uses a large number of entities, multiple activations are difficult, so it will not be possible to reuse it until the end of the production.
    // JA : このModでは大量のエンティティを使う関係で多重起動が難しいため、演出終了まで再使用できないようにする
    level.lvlStat[l_OptName + "Deleting"] = true;

    // EN : Create an array to manage the aircraft
    // JA : 機体を管理する配列を作成
    level.lvlStat[l_OptName + "_Object"] = [];

    // EN : Randomly obtain the starting coordinates where the aircraft is generated and the coordinates of the destination, and calculate the angle of the aircraft.
    // JA : 機体が生成される開始座標、移動先の座標をランダムに取得し、機体の角度を算出する
    l_RandomX = undefined;
    l_RandomY = undefined;
    if ( scripts\engine\utility::Cointoss( ) )  l_RandomX = RandomIntRange( -15000 , -10000 );
    else                                        l_RandomX = RandomIntRange( 10000 , 15000 );
    if ( scripts\engine\utility::Cointoss( ) )  l_RandomY = RandomIntRange( -15000 , -10000 );
    else                                        l_RandomY = RandomIntRange( 10000 , 15000 ); 
    l_RandomZ = RandomIntRange( 1500 , 2000 );
    l_StartLocation = location + ( l_RandomX , l_RandomY , l_RandomZ );
    l_EndLocation = location + ( -( l_RandomX ) , -( l_RandomY ) , l_RandomZ );
    l_AirLocation = ( location[0] , location[1] , l_RandomZ );
    l_Angle = VectorToAngles( l_EndLocation - l_StartLocation );
    l_Time = 0;
    l_Location = l_StartLocation;
    l_WeaponID = "";

    // EN : Define the model of the aircraft to be used
    // JA : 使用する機体のモデルを定義
    l_Array = [];
    l_Array[l_Array.size] = "veh8_mil_air_alfa10";
    l_Array[l_Array.size] = "veh8_mil_air_alfa10_east";

    // EN : Define the missile to use
    // JA : 使用するミサイルを定義
    l_WeaponArray = [];
    l_WeaponArray[l_WeaponArray.size] = GetBulletID( "RPG7" );
    l_WeaponArray[l_WeaponArray.size] = GetBulletID( "NolockMissile2" );
    l_WeaponArray[l_WeaponArray.size] = GetBulletID( "LockonMissile1" );
    l_WeaponArray[l_WeaponArray.size] = GetBulletID( "NolockMissile1" );
    l_WeaponArray[l_WeaponArray.size] = GetBulletID( "GrenadeLauncher" );

    // EN : Set the number of units to be generated (the entity limit is roughly 640, so reduce it a bit to allow some leeway)
    // JA : 生成する機体の個数を設定する（エンティティ個数制限が大よそ640程度なので、少し減らして余裕を持たせる）
    l_PlaneCount = 500;

    // EN : Perform loop processing for the number of aircraft to be generated
    // JA : 生成する機体の個数分ループ処理を行う
    for ( i = 0; i < l_PlaneCount; i++ )
    {
        // EN : Randomly extract the model of the aircraft to be used from the array
        // JA : 使用する機体のモデルをランダムに配列から取り出す
        l_ModelID = scripts\engine\utility::Random( l_Array );

        // EN : Randomly select the aircraft generation coordinates within the range from the starting point
        // JA : 機体の生成座標を開始地点から範囲内にランダムに選定する
        l_Location = l_StartLocation;
        if ( scripts\engine\utility::Cointoss( ) )  l_Location = l_Location + ( AnglesToForward( l_Angle )    * RandomIntRange( 500 , 1500 ) );
        else                                        l_Location = l_Location + ( AnglesToForward( l_Angle )    * RandomIntRange( -500 , -1500 ) );
        if ( scripts\engine\utility::Cointoss( ) )  l_Location = l_Location + ( AnglesToLeft( l_Angle )       * RandomIntRange( 500 , 4000 ) );
        else                                        l_Location = l_Location + ( AnglesToRight( l_Angle )      * RandomIntRange( 500 , 4000 ) );
        if ( scripts\engine\utility::Cointoss( ) )  l_Location = l_Location + ( AnglesToUp( l_Angle )         * RandomIntRange( 500 , 3000 ) );
        else                                        l_Location = l_Location + ( AnglesToUp( l_Angle )         * RandomIntRange( -500 , -3000 ) );

        // EN: Create a plane
        // JA: 機体を作成する
        level.lvlStat[l_OptName + "_Object"][i] = self CreateEntityObject(
            /* notice */ undefined , /* point */ l_Location , /* length */ undefined , /* script */ "script_model" , /* model */ l_ModelID , /* collide */ undefined , /* sync */ undefined , /* angle */ l_Angle , /* part */ true ,
            /* hpMin */ undefined , /* hpMax */ undefined , /* dmgType */ undefined , /* dmgFx */ undefined , /* brkType */ undefined , /* brkFx */ undefined , /* dmgSe */ undefined , /* brkSe */ undefined , /* endDel */ undefined , /* name */ undefined
            );

        // EN: Move the aircraft forward at random times
        // JA: 機体を正面方向にランダムな時間で移動させる
        l_Time = RandomIntRange( 40 , 50 );
        level.lvlStat[l_OptName + "_Object"][i] MoveTo( level.lvlStat[l_OptName + "_Object"][i].origin + ( AnglesToForward( level.lvlStat[l_OptName + "_Object"][i].angles ) * ( 35000 + ( ( l_Time - 40 ) * 1000 ) ) ) , l_Time );
        level.lvlStat[l_OptName + "_Object"][i] thread DeleteAfterTime( l_Time );

        // EN : Make the aircraft play sound effects on a loop
        // JA : 機体がループでサウンドエフェクトを再生させるようにする
        level.lvlStat[l_OptName + "_Object"][i] PlayLoopSound( "weap_mortar_fly_lp" );
        
        // EN : Missile launch processing for each aircraft of the function "VanguardAirstrike"
        // JA : 機能 "VanguardAirstrike" の各機体のミサイル発射処理
        level.lvlStat[l_OptName + "_Object"][i] thread OnProcessVanguardAirstrikePlaneAttack( /* optName */ l_OptName , /* owner */ self , /* location */ l_AirLocation , /* distance */ 7500 , /* weap */ scripts\engine\utility::Random( l_WeaponArray ) );
        
        wait 0.2;
    }

    l_End = false;

    wait l_Time;
    wait 1;
    
    // EN : Make this mod available again
    // JA : このModを再度利用できるようにする
    level.lvlStat[l_OptName + "_Object"] = undefined;
    level.lvlStat[l_OptName + "Deleting"] = undefined;
    self SwitchOnfLevelFunction(
        /* optName */   l_OptName ,
        /* optFunc */   ::EmptyFunction ,
        /* message */   undefined ,
        /* optArg1 */   undefined ,
        /* optArg2 */   undefined ,
        /* optArg3 */   undefined ,
        /* optArg4 */   undefined ,
        /* optArg5 */   undefined ,
        /* optArg6 */   undefined ,
        /* optArg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Missile launch processing for each aircraft of the function "VanguardAirstrike"
// JA : 機能 "VanguardAirstrike" の各機体のミサイル発射処理
//++++++++++++++++++++++++++++++
OnProcessVanguardAirstrikePlaneAttack( optName , owner , location , distance , weap )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : When this function is finished, finish the processing in this function
    // JA : この機能が終了されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );

    while ( IsDefined( self ) )
    {
        // EN: When the aircraft approaches the airstrike location
        // JA: 機体が空爆地点に近づいたら
        if ( Distance( self.origin , location ) < distance )
        {
            // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
            // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
            //CreateMagicBullet( owner , weap , ( self.origin + ( AnglesToUp( self.angles ) * -500 ) ) , ( self.origin + ( AnglesToUp( self.angles ) * -100000 ) ) );
            CreateMagicBullet( owner , weap , ( self.origin + ( 0 , 0 , -150 ) ) , ( self.origin + ( 0 , 0 , -100000 ) ) );
        }
        wait 0.3;
    }
}