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





//++++++++++++++++++++++++++++++
// EN : Build model list
// JA : モデルリストを構築する
//++++++++++++++++++++++++++++++
ModelListConstruction( onlyMap )
{
    if ( !IsDefined( onlyMap ) )
    {
        l_Name                                                  = "ModelListPackages";
        level.lvlStat[l_Name]                                   = [];
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_crate_field_upgrade_01";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_crate_large_stackable_01";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_crate_large_stackable_01_jugg";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_crate_large_stackable_01_dummy";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "com_plasticcase_beige_big_iw6";
        if ( scripts\mp\utility\game::GetGameType( ) != "br" )
        {
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "military_carepackage_01_enemy";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "military_carepackage_01_friendly";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "military_carepackage_01_juggernaut";
        }
        

        l_Name                                                  = "ModelListVehicles";
        level.lvlStat[l_Name]                                   = [];
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_alfa10";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_alfa10_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_mquebec8_small";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_mquebec8_small_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_lbravo";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_lbravo_mp";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_lbravo_east_mp";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_lbravo_personnel_mp_flyable";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_palfa_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_ind_air_bombing_drone";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_mquebec9_small";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_mquebec9_small_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_auniform";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_auniform_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_acharlie130";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_acharlie130_ks";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_acharlie130_ks_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_acharlie130_small";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_lnd_atango_physics_mp";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_lnd_whotel";
        if ( scripts\mp\utility\game::GetGameType( ) != "br" )
        {
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_palfa";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_ahotel64_ks_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_ahotel64_ks_east_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_suniform25";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_suniform25_west";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_halfa_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_halfa_east_mp";
        }
        else
        {
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_stango_static";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_mindia8_plunder_x";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_mkilo23_skud_static2";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_vindia_a1_west_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_vindia_a1_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_mkilo23_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_civ_lnd_skilo_rus_police_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_civ_lnd_zuniform_physics";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_civ_lnd_decho_vm_dirty_blue_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_umike_infil_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_coscar_east";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_coscar_west";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_asierra_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_civ_lnd_techo_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_tromeo_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_civ_lnd_hindia_physics_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "x1_u2_plane";
        }


        l_Name                                                  = "ModelListFlags";
        level.lvlStat[l_Name]                                   = [];
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "prop_flag_neutral";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "ctf_game_flag_east";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dom_flag_neutral";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dom_flag_west";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dom_flag_east";


        l_Name                                                  = "ModelListDogTags";
        level.lvlStat[l_Name]                                   = [];
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dogtags_iw8";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dogtags_iw8_blue";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dogtags_iw8_green";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dogtags_iw8_purple";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dogtags_iw8_orange";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "military_dogtags_iw8_gold";
        

        l_Name                                                  = "ModelListProps";
        level.lvlStat[l_Name]                                   = [];
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "wmd_vm_missile_cruise_warhead";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "misc_wm_ascender";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "offhand_wm_deployable_cover";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "misc_wm_flarestick";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_acharlie130_ks_carrier";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "viewhands_base_iw8";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "offhand_wm_c4";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "offhand_wm_emp";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "veh8_mil_air_malfa_big";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "mw_test_soldier";
        level.lvlStat[l_Name][level.lvlStat[l_Name].size]       = "mw_dist_soldier";
        if ( scripts\mp\utility\game::GetGameType( ) != "br" )
        {
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "offhand_wm_grenade_smoke";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_lnd_carepackage_parachute";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "pilot_viewmodel_arms";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "wmd_vm_missile_cruise";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "ks_ac130_mp";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "cop_marker_scriptable";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "weapon_mg_bravo50_balcony";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "dz_flare_scriptable";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_cuniform";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "veh8_mil_air_cuniform_east";
        }
        else
        {
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "box_wooden_grenade_01";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "lm_domination_point_01";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "military_skyhook_backpack";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "scr_smoke_grenade";
            level.lvlStat[l_Name][level.lvlStat[l_Name].size]   = "military_skyhook_far";
        }

        
        l_Name                                                  = "ModelListAll";
        level.lvlStat[l_Name]                                   = [];
        level.lvlStat[l_Name]                                   = scripts\engine\utility::Array_Combine( level.lvlStat[l_Name] , level.lvlStat["ModelListPackages"] );
        level.lvlStat[l_Name]                                   = scripts\engine\utility::Array_Combine( level.lvlStat[l_Name] , level.lvlStat["ModelListFlags"] );
        level.lvlStat[l_Name]                                   = scripts\engine\utility::Array_Combine( level.lvlStat[l_Name] , level.lvlStat["ModelListDogTags"] );
        level.lvlStat[l_Name]                                   = scripts\engine\utility::Array_Combine( level.lvlStat[l_Name] , level.lvlStat["ModelListProps"] );
        level.lvlStat[l_Name]                                   = scripts\engine\utility::Array_Combine( level.lvlStat[l_Name] , level.lvlStat["ModelListVehicles"] );
        level.lvlStat[l_Name]                                   = scripts\engine\utility::Array_Combine( level.lvlStat[l_Name] , level.lvlStat["ModelListMaps"] );
    }
    else
    {
        l_DefEntities = GetEntArray( "script_model" , "classname" );
        l_BrushEntities = GetEntArray( "script_brushmodel" , "classname" );
        level.lvlStat["ModelListMaps"] = [];

        if ( IsDefined( l_DefEntities ) && ( 0 < l_DefEntities.size ) )
        {
            for ( i = 0; i < l_DefEntities.size; i++ )
            {
                if ( scripts\engine\utility::Array_Contains( level.lvlStat["ModelListMaps"] , l_DefEntities[i].model ) ) { continue; }
                level.lvlStat["ModelListMaps"] = scripts\engine\utility::Array_Add( level.lvlStat["ModelListMaps"] , l_DefEntities[i].model );
            }
        }
        if ( IsDefined( l_BrushEntities ) && ( 0 < l_BrushEntities.size ) )
        {
            for ( i = 0; i < l_BrushEntities.size; i++ )
            {
                if ( scripts\engine\utility::Array_Contains( level.lvlStat["ModelListMaps"] , l_BrushEntities[i].model ) ) { continue; }
                level.lvlStat["ModelListMaps"] = scripts\engine\utility::Array_Add( level.lvlStat["ModelListMaps"] , l_BrushEntities[i].model );
            }
        }
    }



    /*
    "ks_crate_marker_mp"   ,
    "ks_airstrike_target_mp"   ,
    "ks_airstrike_mp"   ,
    "ks_fuelstrike_mp"   ,
    "ks_cruise_predator_mp"   ,
    "ks_ac130_target_mp"   ,
    "ks_radar_drone_escort_mp"   ,
    "ks_radar_drone_recon_mp"   ,
    "ks_toma_strike_mp"   ,
    "ks_toma_strike_marker_mp"   ,
    "ks_toma_strike_missile_mp"   ,
    "ks_toma_strike_cluster_mp"   ,
    "ks_white_phosphorus_mp"   ,
    "mortar_target"   ,
    "equipment_mortar_shell_improvised_01_mp"   ,
    "shardball_wm"   ,
    "military_skyhook_far_mp"   ,
    "equip_snapshot_marker_mp"   ,
    "trophy_system_mp_explode"   ,
    "dom_flag_scriptable"   ,
    "fullbody_usmc_ar"   ,
    "loot_helmet"   ,
    "veh8_civ_lnd_palfa_ambulance_ukraine"   ,
    "medical_defibrillator_wall_01"   ,
    "fullbody_usmc_ar_scriptmover"   ,
    "electrical_elevator_access_keypad_01"   ,
    "prop_suitcase_bomb"   ,
    "mp_parkour_hardpoint_floor_01"   ,
    "lethal_smoke_grenade_wm"   ,
    "grind_flag_scriptable"   ,
    "veh8_mil_lnd_bromeo_allies_mp_to"   ,
    "care_package_iw7_dummy"   ,
    "ks_death_switch_mp"   ,
    "veh8_mil_lnd_whotel_crate"   ,
    "ks_pac_sentry_mp"   ,
    "ks_minefield_mp"   ,
    "weapon_life_pack"   ,
    "mp_fullbody_heavy"   ,
    "mp_body_infected_a"   ,
    "super_trophy_mp"   ,
    "shock_sentry_gun_wm"   ,
    "vehicle_uav_static_mp"   ,
    "prop_ballistic_vest_iw6"   ,
    "vehicle_aas_72x_killstreak"   ,
    "mp_remote_turret"   ,
    "p7_bottle_plastic_16oz_water"   ,
    "cp_disco_folding_chair_lod0"   ,
    "dogtags_iw7_foe"   ,
    "mw_scale_soldier"
    */
}