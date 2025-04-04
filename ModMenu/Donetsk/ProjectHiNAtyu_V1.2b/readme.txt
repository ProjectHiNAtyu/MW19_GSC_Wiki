[MW2019 for Donetsk] Project HiNAtyu Version 1.2 forge edition (20240319)

[ `Super important` ]
Lately, Donetsk has been slow to grow, GSC memory hasn't been improved, and no one is willing to share their achievements.
Therefore, this is the last release of Project HiNAtyu in Donetsk.
We will continue to develop Project HiNAtyu, so if you want the full source, please send me a DM.
It has multiple unreleased mods and a GSC with a capacity that cannot work with current Donetsk (200KB over)
For unreleased mods, see #japanese-general pinning for details
Discord ID: hinatapoko

--------------------

[ `at first` ]
Hello everyone who enjoys Donetsk.
I apologize for posting every day.

The upcoming Mod menu is GSC focused on Forge mode.
Added play elements that automatically link and rotate entities obtained in Forge mode.
You can easily create complex rotation processing like Extincts by creating your own.
Once the Donetsk dll is updated and GSC's memory limitations are fixed, you should be able to share more mods.
While waiting for that day, please enjoy slowly in Forge mode!

Please see the details below for more details.

--------------------

[ `important point` ]
To load and run this GSC Mod menu, please prepare in advance by `downloading the latest dll and Donetsk from the Donetsk website`.
The installation steps are written below, and the attached video provides a complete introduction.

--------------------

[ `Installation steps` ]
1 Open the Donetsk folder in your PC

2 Place the latest version of “`discord_game_sdk.dll`” downloaded from the Donetsk website in the root folder

3 Unzip the downloaded GSC Mod menu zip file

4 Place the “`donetsk`” folder inside the unzipped file in your Donetsk root folder
* ex ) `Call of Duty Modern Warfare (2019)\donetsk\scripts\1816.gscbin`

5 Launch “`game_dx12_ship_replay.exe`” and start the game

6 Launch your favorite multiplayer game mode or map

7 Follow the operating instructions and enjoy using the Mod menu

--------------------

[ `Method of operation` ]
* We apologize again, but we are changing the way the Mod menu operates.
* I think this will be the last change.
* I'm sorry, but I hope you can get used to it.

・Menu open: `ADS + Melee`
・Scroll up: `Throw tactical`
・Scroll down: `Use`
・Decision: `ADS + Use`
・Back/Close menu: `ADS + Melee`

--------------------

[ `Built-in functions` ]
 - LanguagesMenu
    - Lang_EN

 - CombatAssistMenu
    - Suicide

 - FunnyMenu
    - SaveLoadLocation

 - PopularMenu
    - InfinityAmmo
    - BindNoclip

 - PoweredMenu
    - Godmode

 - VehiclesMenu
   - SpawnVehicles
      - atv
      - little_bird
      - apc_russian
      - cop_car
      - technical
      - large_transport
      - light_tank
      - cargo_truck
      - hoopty
      - hoopty_truck
      - jeep
      - medium_transport
      - pickup_truck
      - tac_rover
      - van

   
 - SpawnsMenu
   - AdvancedForgeMode
      - AdvancedForgeMode
      - CombineObject
      - SpinChange
      - LinkObject
      - RotateXAxis
      - FiredCreate
      - AutoLinkOnSpawn
      - IgnoreCollision
      - ChangeSpawnedTime
      - TraceLength
      - DeleteLastObject
      - ChangeSpawnedModel
      - PackageModels
      - FlagModels
      - DogTagModels
      - VehiclesModels
      - PropModels
      - MapModels
   - MexicanWave
      - MexicanWave
      - ChangeModel
      - DeleteObject
   - SpinDancer
      - SpinDancer
      - ChangeModel
      - DeleteObject
    
 - GameSettingsMenu
    - ForceRespawnPoint
    - DeleteLastObject

 - PlayersMenu
    - SetUnverified
    - SetCoHost

 - AllPlayersMenu
    - SetUnverified
    - SetCoHost                     
    - TeleportToMe

--------------------

[ `supplement` ]
Some ammunition, vehicles, and models may not function in multiplayer or battle royale modes, respectively.
Due to current Donetsk's poor memory allocation handling, the maximum GSC load size is around 47KB.
It is impossible to include all the systems in my GSC Mod menu, so I have included only the minimum necessary functions.