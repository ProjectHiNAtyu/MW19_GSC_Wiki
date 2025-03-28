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
// EN : - ChangeKamikazeBomberModel( notice , random )
// EN : - CreateEntityObject( notice , location , length , script , model , collide , sync , angle , part , hpMin , hpMax , dmgType , dmgFx , brkType , brkFx , dmgSe , brkSe , del , optName )
// EN : - PlayEffectToObject( time , obj , fx , tag , type , loop , base , fix , angle , range , stop )
// EN : - ExecNuclearExplosion( location , owner )
// EN : - DeleteEntity( )

// JA : 注意！！：
// JA : この関数内には、Project HiNAtyu用に作成された汎用関数がいくつか使われています。
// JA : このコードをそのままGSCBINにコンパイルしようとした場合、関数不足によるエラーが発生します。
// JA : 該当の汎用関数は通常関数へ置き換えるか、PHA汎用関数を取得するか、独自の関数へ置き換えてください。
// JA : 対象関数：
// JA : - ChangeKamikazeBomberModel( notice , random )
// JA : - CreateEntityObject( notice , location , length , script , model , collide , sync , angle , part , hpMin , hpMax , dmgType , dmgFx , brkType , brkFx , dmgSe , brkSe , del , optName )
// JA : - PlayEffectToObject( time , obj , fx , tag , type , loop , base , fix , angle , range , stop )
// JA : - ExecNuclearExplosion( location , owner )
// JA : - DeleteEntity( )






//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」の実行中の処理
//++++++++++++++++++++++++++++++
ExecKamikazeBomber( endLocation )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );

    l_OptName = "KamikazeBomber";
    l_OptName2 = "ChangeKamikazeBomberModel";

    // EN : Define the initial model of the object to be generated
    // JA : 生成するオブジェクトの初期モデルを定義する
    if ( !IsDefined( self.optStat[l_OptName].modData[l_OptName2] ) ) 
        self.optStat[l_OptName].modData[l_OptName2] = "veh8_mil_air_acharlie130";
    l_OptRandom     = self.optStat[l_OptName].modData["ChangeKamikazeBomberRandom"];
    l_OptObjName    = self.optStat[l_OptName].modData[l_OptName2];
    // EN : Define the initial loop sound of the object to be generated
    // JA : 生成するオブジェクトの初期ループサウンドを定義する
    l_OptLoopSound  = "iw8_cruise_missile_plr";
    // EN : Define the initial loop effect (smoke) for the generated object
    // JA : 生成するオブジェクトの初期ループエフェクト（煙）を定義する
    l_OptSmokeFx    = "juggernaut_crate_vfx";
    l_OptExplodeFx  = self.optStat[l_OptName].modData["KamikazeLoopExplodeFX"];
    l_OptSpin       = self.optStat[l_OptName].modData["ChangeKamikazeBomberSpinning"];
    // EN : Define the initial effect (explode 1) for the generated object
    // JA : 生成するオブジェクトの初期エフェクト（爆発 1）を定義する
    l_OptFinExpFx1  = "large_transport_explode";
    // EN : Define the initial effect (explode 2) for the generated object
    // JA : 生成するオブジェクトの初期エフェクト（爆発 2）を定義する
    l_OptFinExpFx2  = "white_phosphorus_inair_explosion";

    // EN : Get Kamikaze bomber generation start position randomly
    // JA : Kamikaze bomberの生成開始位置をランダムで取得する
    l_StartLocation = endLocation + ( RandomIntRange( -30000 , 30000 ) , RandomIntRange( -30000 , 25000 ) , RandomIntRange( 15000 , 30000 ) );
    
    // EN : If Kamikaze bomber random settings are enabled
    // JA : Kamikaze bomberのランダム設定が有効になっている場合
    if ( IsDefined( l_OptRandom ) )
        // EN : Randomize the 3D model of Kamikaze bomber
        // JA : Kamikaze bomberの3Dモデルをランダムに設定する
        self ChangeKamikazeBomberModel( undefined , true );

    // EN : Obtain the angle of the impact coordinate facing the front.
    // JA : 着弾座標を正面に向けたアングルを取得する
    l_Angles = VectorToAngles( endLocation - l_StartLocation );

    // EN : Create an 3D model at the generation start position
    // JA : 生成開始位置に3Dモデルを作成する
    l_Kamikaze = self CreateEntityObject(
        /* notice */    undefined ,
        /* location */  l_StartLocation ,
        /* length */    undefined ,
        /* script */    "script_model" , 
        /* model */     l_OptObjName ,
        /* collide */   true ,
        /* sync */      undefined ,
        /* angle */     l_Angles ,
        /* part */      true ,
        /* hpMin */     undefined ,
        /* hpMax */     undefined ,
        /* dmgType */   undefined ,
        /* dmgFx */     undefined ,
        /* brkType */   undefined ,
        /* brkFx */     undefined ,
        /* dmgSe */     undefined ,
        /* brkSe */     undefined ,
        /* del */       undefined ,
        /* optName */   undefined
        );
    // EN : Generate an object for the kill camera, but do not set model data because you want it to be transparent.
    // JA : キルカメラ用のオブジェクトを生成するが、透明にしたいためモデルデータは設定しない
    l_Killcam = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ l_Kamikaze GetTagOrigin( "tag_origin" ) , /* spawnLength */ undefined , /* script */ "script_model" , /* objectName */ "tag_origin" );
    // EN : Make it follow the specified coordinates of Kamikaze bomber
    // JA : Kamikaze bomberの指定座標に追従するようにする
    l_Killcam LinkTo( l_Kamikaze , "tag_origin" , ( -1500 , 0 , 275 ) , ( 0 , 0 , 0 ) );
    // EN : The kill camera when Kamikaze bomber kills an opponent becomes a kill camera object.
    // JA : Kamikaze bomberが相手を殺した時のキルカメラを、キルカメラ用オブジェクトにする
    l_Kamikaze.killcament = l_Killcam;
    
    // EN : Make Kamikaze bomber play flight sound on loop
    // JA : Kamikaze bomberがループで飛行サウンドを再生するようにする
    l_Kamikaze PlayLoopSound( l_OptLoopSound );
    
    // EN : Kamikaze bomber plays the crash effect in a loop in a subthread.
    // JA : Kamikaze bomberがループで墜落エフェクトを再生する処理を、サブスレッドで実行する
    l_Kamikaze thread PlayEffectToObject( /* time */ 0.01 , /* obj */ l_Kamikaze , /* fx */ l_OptSmokeFx    , /* tag */ "tag_engine_right"  , /* type */ "GetTag" , /* loop */ true , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    l_Kamikaze thread PlayEffectToObject( /* time */ 0.01 , /* obj */ l_Kamikaze , /* fx */ l_OptExplodeFx  , /* tag */ "tag_engine_reft"   , /* type */ "GetTag" , /* loop */ true , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    wait 0.15;

    // EN : Defines the transition time for Kamikaze Bomber before impact
    // JA : Kamikaze Bomberが着弾するまでの遷移時間を定義
    l_WaitTime = 3.5;
    // EN : Defines the angle at which the Kamikaze Bomber rolls
    // JA : Kamikaze Bomberがロール回転する角度を定義
    l_SpinAngle = 0;
    
    // EN : If Kamikaze bomber random settings are enabled
    // JA : Kamikaze bomberのランダム設定が有効になっている場合
    if ( IsDefined( l_OptRandom ) )
    {
        // EN : Randomly decide whether to rotate
        // JA : 回転させるかどうかをランダムに決める
        if ( scripts\engine\utility::Cointoss( ) )
        {
            // EN : To rotate to the left, rotate to an angle of "-360 degrees x 5" in 3.5 seconds.
            // JA : 左回転させる場合、「-360度 x 5」の角度に、3.5秒かけて回転させる
            if ( scripts\engine\utility::Cointoss( ) )  l_SpinAngle = -360;
            // EN : To rotate clockwise, rotate to an angle of 360 degrees x 5 in 3.5 seconds.
            // JA : 右回転させる場合、「360度 x 5」の角度に、3.5秒かけて回転させる
            else                                        l_SpinAngle = 360;
        }
    }
    // EN : If Kamikaze bomber random setting is disabled, If Kamikaze bomber spin setting is enabled
    // JA : Kamikaze bomberのランダム設定が無効の場合、且つKamikaze bomberのスピン設定が有効の場合
    else if ( IsDefined( l_OptSpin ) )
        // EN : Rotate the Kamikaze bomber to an angle of 360 degrees x 5 in 3.5 seconds.
        // JA : Kamikaze bomberを「360度 x 5」の角度に、3.5秒かけて回転させる
        l_SpinAngle = 360;

    // EN : If the roll rotation angle is not 0, rotate the Kamikaze Bomber to the specified angle.
    // JA : ロール回転角度が0ではない場合、Kamikaze Bomberを指定角へ回転させる
    if ( l_SpinAngle != 0 )
        l_Kamikaze RotateRoll( (l_SpinAngle * 5) , l_WaitTime );

    // EN : Move the Kamikaze bomber to the crash destination coordinates in 3.5 seconds
    // JA : Kamikaze bomberを墜落先の座標に3.5秒で移動させる
    l_Kamikaze MoveTo( endLocation , l_WaitTime );
    
    // EN : Wait until just before the bullet hits
    // JA : 着弾直前まで待機する
    wait l_WaitTime - 0.1;

    // EN : Generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
    // JA : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
    self thread ExecNuclearExplosion( endLocation , self );
    wait 0.2;

    // EN : Play the aircraft explosion effect at the specified coordinates.
    // JA : 指定した座標に機体爆発のエフェクトを再生させる
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ "little_bird_explode" , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    wait 0.05;

    // EN : Play the aircraft explosion effect at the specified coordinates.
    // JA : 指定した座標に機体爆発のエフェクトを再生させる
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 400   , 0     , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 400   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 0     , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 400   , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 400   , 400   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 400   , 400   , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;

    // EN : As an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // JA : 指定した座標から半径 50000 の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    l_Kamikaze RadiusDamage( endLocation , 50000 , 50000 , 50000 , self , "MOD_EXPLOSIVE" , GetBulletID( "Nuke" ) );

    // EN : Play the aircraft explosion effect at the specified coordinates.
    // JA : 指定した座標に機体爆発のエフェクトを再生させる
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 200   , 0     , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 200   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 0     , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 200   , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 200   , 200   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 200   , 200   , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;

    // EN : Stop the looping sound that Kamikaze bomber was playing
    // JA : Kamikaze bomberが再生していたループサウンドを停止する
    l_Kamikaze StopLoopSound( l_OptLoopSound );
    
    // EN : Unfollow nuclear object
    // JA : オブジェクトの追従を解除する
    l_Killcam Unlink( );
    
    // EN : Delete the created 3D object
    // JA : 作成した3Dオブジェクトを削除する
    l_Killcam DeleteEntity( );
    l_Kamikaze DeleteEntity( );
}