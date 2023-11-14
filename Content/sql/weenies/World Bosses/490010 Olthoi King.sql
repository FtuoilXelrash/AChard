DELETE FROM `weenie` WHERE `class_Id` = 490010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490010, 'worldbossolthoiking', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490010,   1,         16) /* ItemType - Creature */
     , (490010,   2,         1) /* CreatureType - Hopeslayer */
     , (490010,   3,          29) /* PaletteTemplate - Grey */
     , (490010,   6,         -1) /* ItemsCapacity */
     , (490010,   7,         -1) /* ContainersCapacity */
     , (490010,  16,          1) /* ItemUseable - No */
     , (490010,  25,        899) /* Level */
     , (490010,  27,          0) /* ArmorType - None */
	 , (490010, 103,          3) /* GeneratorDestructionType - Destroy */
	 , (490010,  81,          60) /* MaxGeneratedObjects */
     , (490010,  82,          60) /* InitGeneratedObjects */
     , (490010,  40,          1) /* CombatMode - NonCombat */
     , (490010,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (490010,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490010, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (490010, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490010, 146,      400000000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490010,   1, True ) /* Stuck */
     , (490010,   6, False) /* AiUsesMana */
     , (490010,  11, False) /* IgnoreCollisions */
     , (490010,  12, True ) /* ReportCollisions */
     , (490010,  13, False) /* Ethereal */
     , (490010,  52, False) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490010,   1,       5) /* HeartbeatInterval */
     , (490010,   2,       0) /* HeartbeatTimestamp */
     , (490010,   3,     400) /* HealthRate */
     , (490010,   4,       4) /* StaminaRate */
     , (490010,   5,       2) /* ManaRate */
     , (490010,  13,    1.15) /* ArmorModVsSlash */
     , (490010,  14,     1.1) /* ArmorModVsPierce */
     , (490010,  15,     1.1) /* ArmorModVsBludgeon */
     , (490010,  16,    1.25) /* ArmorModVsCold */
     , (490010,  17,    1.25) /* ArmorModVsFire */
     , (490010,  18,    1.25) /* ArmorModVsAcid */
     , (490010,  19,    1.25) /* ArmorModVsElectric */
     , (490010,  31,      24) /* VisualAwarenessRange */
     , (490010,  34,       1) /* PowerupTime */
	 , (490010,  39,       2) /* DefaultScale */
     , (490010,  36,       1) /* ChargeSpeed */
     , (490010,  64,    0.15) /* ResistSlash */
     , (490010,  65,    0.65) /* ResistPierce */
     , (490010,  66,    0.75) /* ResistBludgeon */
     , (490010,  67,     0.1) /* ResistFire */
     , (490010,  68,    0.05) /* ResistCold */
     , (490010,  69,    0.05) /* ResistAcid */
     , (490010,  70,     0.5) /* ResistElectric */
     , (490010,  77,       1) /* PhysicsScriptIntensity */
     , (490010, 104,      10) /* ObviousRadarRange */
     , (490010, 125,       1) /* ResistHealthDrain */
     , (490010, 151,       0.5) /* IgnoreShield */
	 , (490010,  43,      15) /* GeneratorRadius */
	 , (490010,  41,     600) /* RegenerationInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490010,   1, 'Olthoi King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490010,   1, 0x0200170D) /* Setup */
     , (490010,   2, 0x090001D3) /* MotionTable */
     , (490010,   3, 0x2000007D) /* SoundTable */
     , (490010,   4, 0x30000033) /* CombatTable */
     , (490010,   6, 0x04001148) /* PaletteBase */
     , (490010,   7, 0x100006DA) /* ClothingBase */
     , (490010,   8, 0x060010E7) /* Icon */
     , (490010,  22, 0x34000093) /* PhysicsEffectTable */
     , (490010,  30,         86) /* PhysicsScript - BreatheAcid */
     , (490010,  35,         10001) /* DeathTreasureType - Loot Tier: 6 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490010,   1, 800, 0, 0) /* Strength */
     , (490010,   2, 800, 0, 0) /* Endurance */
     , (490010,   3, 800, 0, 0) /* Quickness */
     , (490010,   4, 800, 0, 0) /* Coordination */
     , (490010,   5, 800, 0, 0) /* Focus */
     , (490010,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490010,   1, 199600, 0, 0, 500000) /* MaxHealth */
     , (490010,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (490010,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490010,  6, 0, 2, 0, 260, 0, 0) /* MeleeDefense        Trained */
     , (490010,  7, 0, 2, 0, 520, 0, 0) /* MissileDefense      Trained */
     , (490010, 15, 0, 2, 0, 240, 0, 0) /* MagicDefense        Trained */
     , (490010, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (490010, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (490010, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (490010, 34, 0, 2, 0, 400, 0, 0) /* WarMagic            Trained */
     , (490010, 41, 0, 2, 0, 140, 0, 0) /* TwoHandedCombat     Trained */
     , (490010, 44, 0, 2, 0, 940, 0, 0) /* HeavyWeapons        Trained */
     , (490010, 45, 0, 2, 0, 250, 0, 0) /* LightWeapons        Trained */
     , (490010, 46, 0, 2, 0, 140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490010,  0,  2, 450, 0.75,  700,  805,  770,  770,  875,  875,  875,  875,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (490010, 16,  4,  0,    0,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (490010, 18,  1, 350,  0.5,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (490010, 19,  1,  0,    0,  700,  805,  770,  770,  875,  875,  875,  875,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (490010, 20,  1, 500, 0.75,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (490010, 22, 32, 475,  0.5,  700,  805,  770,  770,  875,  875,  875,  875,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490010,   4496,      2)  /* Regeneration Self VIII */
     , (490010,  4312,   2.04)  /* Incantation of Imperil VIII */
     , (490010,  3877,   2.04)  /* Corrosive Strike */
     , (490010,   279,      2)  /* Magic Resistance Self VI */
     , (490010,  1882,      2)  /* Nullify All Magic Self */
     , (490010,  4643,   2.04)  /* Drain Health Other VIII */
     , (490010,  5443,   2.04)  /* Acid Spit Arc 2 */
     , (490010,  2033,   2.04)  /* Acidic Spray */
     , (490010,  2036,   2.04)  /* Fuming Acid */
	 , (490010,  4481,   2.04)  /* Incantation of Acid Vulnerability Other */;
	  
INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (490010, 414) /* PLAYER_DEATH_EVENT */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, '%s has struck down the Olthoi King! The ground trembles as he falls. The remaining Olthoi retreat back to their tunnels as you hear their screams echo in the distance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 14 /* Taunt */,  0.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   7 /* PhysScript */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 144 /* CampingMastery */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  17 /* LocalBroadcast */, 0, 1, NULL, 'Back up! The Olthoi King is about to spit a large wave of acid! RUN!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,   5 /* Motion */, 2, 1, 0x430000F2 /* AkimboState */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4183 /* Fire Bomb */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 14 /* Taunt */,  0.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   7 /* PhysScript */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 144 /* CampingMastery */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  17 /* LocalBroadcast */, 0, 1, NULL, 'Olthoi King is about to secrete a large ring of acid! WATCH OUT!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,   5 /* Motion */, 2, 1, 0x430000F2 /* AkimboState */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3992 /* Heavy Acid Ring */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	 

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 14 /* Taunt */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4241 /* Olthoi King Magic Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4243 /* Olthoi King Melee Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4244 /* Olthoi King's Missile Shield */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'Olthoi King shifts his protection to shield Missile.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 14 /* Taunt */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4241 /* Olthoi King Magic Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4245 /* Olthoi King Missile Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4242 /* Olthoi King's Melee Shield */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'Olthoi King shifts his protection to shield Melee.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 14 /* Taunt */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4243 /* Olthoi King Melee Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4245 /* Olthoi King Missile Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4240 /* Olthoi King's Magic Shield */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'Olthoi King shifts his protection to shield Magic.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 20 /* ReceiveCritical */,   0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Impressive, but surely you have more to show me. Again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490010, 21 /* ResistSpell */,   0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Do not feel insufficient. Your understanding of the power fields on this planet are superficial at best. We can teach you so much.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     , (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     , (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     ,(490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     , (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     , (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
	 ,(490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     , (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */
     , (490010, 9, 490030,  0, 0, 1, False) /* Create Shard of the Curator of Torment's Mask (52008) for ContainTreasure */;
	 
INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490010, -1, 51376, 1, 4, 4, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Follower of Deewain (43784) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
, (490010, -1, 35877, 1, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Follower of Deewain (43784) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
, (490010, -1, 35151, 1, 8, 8, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Follower of Deewain (43784) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;


/* Lifestoned Changelog:
{
  "Changelog": [
    {
      "created": "2022-01-17T21:54:14.6293546Z",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "IsDone": false
}
*/