using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ACE.Common;
using ACE.DatLoader;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using Org.BouncyCastle.Asn1.X509;

namespace ACE.Server.WorldObjects
{
    partial class WorldObject
    {
        public string TinkeringLotto_Mutate(string salvageType, int salvageWorkmanship)
        {
            var resultMessage = "";

            switch(salvageType)
            {
                case "Steel":
                    resultMessage = TinkeringLotto_PlaySteelLottery(salvageWorkmanship);
                    break;

                case "Iron":
                    resultMessage = TinkeringLotto_PlayIronLottery(salvageWorkmanship);
                    break;

                case "Granite":
                    resultMessage = TinkeringLotto_PlayGraniteLottery(salvageWorkmanship);
                    break;

                case "Green Garnet":
                    resultMessage = TinkeringLotto_PlayGreenGarnetLottery(salvageWorkmanship);
                    break;

                case "Mahogany":
                    resultMessage = TinkeringLotto_PlayMahoganyLottery(salvageWorkmanship);
                    break;
                case "Aquamarine":
                case "Black Garnet":
                case "Emerald":                
                case "Imperial Topaz":
                case "Jet":
                case "Red Garnet":
                case "White Sapphire":
                    resultMessage = TinkeringLotto_PlayRendLottery(salvageWorkmanship);
                    break;
                default:
                    return "";
            }

            return resultMessage;
        }

        private string TinkeringLotto_PlaySteelLottery(int salvageWorkmanship)
        {
            string resultMsg = "";
            
            Random rand = new Random();
            var roll = rand.NextDouble();

            var currentLottoAlBonus = GetCumulativeArmorLevelLottoBonus();

            if (currentLottoAlBonus < 40)
            {
                if (roll < 0.025)
                {
                    //Add 20 AL
                    var alBonus = currentLottoAlBonus <= 20 ? 20 : 40 - currentLottoAlBonus;
                    this.ArmorLevel += alBonus;
                    resultMsg = $"Jackpot! Improved Armor Level by {alBonus}";
                    HandleTinkerLottoLog($"AL+{alBonus}");
                }
                else if (roll < 0.075)
                {
                    //Add between 1 - 5 AL
                    var alBonus = rand.Next(1, 6);
                    this.ArmorLevel += alBonus;
                    resultMsg = $"Improved Armor Level by {alBonus}";
                    HandleTinkerLottoLog($"AL+{alBonus}");
                }
            }

            return resultMsg;
        }

        private string TinkeringLotto_PlayIronLottery(int salvageWorkmanship)
        {
            string resultMsg = "";

            Random rand = new Random();
            var dmgBonusRoll = rand.NextDouble();

            if (dmgBonusRoll < 0.05)
            {
                //Add +1 dmg
                this.Damage += 1;
                resultMsg = "Improved Damage by 1";
                HandleTinkerLottoLog("Dmg1");
            }

            var slayerRoll = rand.NextDouble();
            if (slayerRoll < 0.025)
            {
                if (!this.SlayerCreatureType.HasValue)
                {
                    var slayerResult = TinkeringLotto_ApplySlayerMutation();
                    if (!string.IsNullOrEmpty(slayerResult))
                        resultMsg = string.IsNullOrEmpty(resultMsg) ? slayerResult : $"{resultMsg}\n{slayerResult}";
                }
            }

            var rendRoll = rand.NextDouble();
            if (rendRoll < 0.025)
            {
                var rendResult = TinkeringLotto_ApplyRendMutation();
                if (!string.IsNullOrEmpty(rendResult))
                    resultMsg = string.IsNullOrEmpty(resultMsg) ? rendResult : $"{resultMsg}\n{rendResult}";
            }

            return resultMsg;
        }


        private string TinkeringLotto_PlayGraniteLottery(int salvageWorkmanship)
        {
            string resultMsg = "";

            Random rand = new Random();
            var varianceBonusroll = rand.NextDouble();

            if (varianceBonusroll < 0.05)
            {
                //Add +1 variance
                this.DamageVariance *= 0.8f;
                resultMsg = "Improved Damage Variance by 20%";
                HandleTinkerLottoLog("DmgVar20%");
            }

            var slayerRoll = rand.NextDouble();
            if (slayerRoll < 0.025)
            {
                if (!this.SlayerCreatureType.HasValue)
                {
                    var slayerResult = TinkeringLotto_ApplySlayerMutation();
                    if (!string.IsNullOrEmpty(slayerResult))
                        resultMsg = string.IsNullOrEmpty(resultMsg) ? slayerResult : $"{resultMsg}\n{slayerResult}";
                }
            }

            var rendRoll = rand.NextDouble();
            if (rendRoll < 0.025)
            {
                var rendResult = TinkeringLotto_ApplyRendMutation();
                if (!string.IsNullOrEmpty(rendResult))
                    resultMsg = string.IsNullOrEmpty(resultMsg) ? rendResult : $"{resultMsg}\n{rendResult}";
            }

            return resultMsg;
        }

        private string TinkeringLotto_PlayGreenGarnetLottery(int salvageWorkmanship)
        {
            string resultMsg = "";

            Random rand = new Random();
            var dmgBonusroll = rand.NextDouble();

            if (dmgBonusroll < 0.05)
            {
                //Add +1% dmg bonus
                this.ElementalDamageMod = (this.ElementalDamageMod ?? 0.0f) + 0.01f;
                resultMsg = "Improved Elemental Damage Bonus by 1% vs Monsters and 0.25% against Players";
                HandleTinkerLottoLog("CasterDmgBonus1%");
            }

            var slayerRoll = rand.NextDouble();
            if (slayerRoll < 0.025)
            {
                if (!this.SlayerCreatureType.HasValue)
                {
                    var slayerResult = TinkeringLotto_ApplySlayerMutation();
                    if (!string.IsNullOrEmpty(slayerResult))
                        resultMsg = string.IsNullOrEmpty(resultMsg) ? slayerResult : $"{resultMsg}\n{slayerResult}";
                }
            }

            var rendRoll = rand.NextDouble();
            if (rendRoll < 0.025)
            {
                var rendResult = TinkeringLotto_ApplyRendMutation();
                if (!string.IsNullOrEmpty(rendResult))
                    resultMsg = string.IsNullOrEmpty(resultMsg) ? rendResult : $"{resultMsg}\n{rendResult}";
            }

            return resultMsg;
        }

        private string TinkeringLotto_PlayMahoganyLottery(int salvageWorkmanship)
        {
            string resultMsg = "";

            Random rand = new Random();
            var dmgBonusroll = rand.NextDouble();

            if (dmgBonusroll < 0.05)
            {
                //Add +4% dmg mod
                this.DamageMod += 0.04f;
                resultMsg = "Improved Missile Damage Mod by 4%";
                HandleTinkerLottoLog("MissileDmgMod4%");
            }

            var slayerRoll = rand.NextDouble();
            if (slayerRoll < 0.025)
            {
                if (!this.SlayerCreatureType.HasValue)
                {
                    var slayerResult = TinkeringLotto_ApplySlayerMutation();
                    if (!string.IsNullOrEmpty(slayerResult))
                        resultMsg = string.IsNullOrEmpty(resultMsg) ? slayerResult : $"{resultMsg}\n{slayerResult}";
                }
            }

            var rendRoll = rand.NextDouble();
            if (rendRoll < 0.025)
            {
                var rendResult = TinkeringLotto_ApplyRendMutation();
                if(!string.IsNullOrEmpty(rendResult))
                    resultMsg = string.IsNullOrEmpty(resultMsg) ? rendResult : $"{resultMsg}\n{rendResult}";
            }

            return resultMsg;
        }

        private string TinkeringLotto_PlayRendLottery(int salvageWorkmanship)
        {
            string resultMsg = "";

            Random rand = new Random();
            var roll = rand.NextDouble();

            //Roll for 30% chance to add...
            //+1 dmg to melee weapons
            //+4% mod for missile weapons
            //+5% elemental dmg for casters
            if (roll < 0.3)
            {
                if (this.ItemType == ItemType.MissileWeapon)
                {
                    //Add +4% dmg mod
                    this.DamageMod += 0.04f;
                    resultMsg = "Improved Missile Damage Mod by 4%";
                    HandleTinkerLottoLog("MissileDmgMod4%");
                }
                else if(this.ItemType == ItemType.MeleeWeapon)
                {
                    //Add +1 dmg
                    this.Damage += 1;
                    resultMsg = "Improved Damage by 1";
                    HandleTinkerLottoLog("Dmg1");
                }
                else if(this.ItemType == ItemType.Caster)
                {
                    //Add +5% elemental dmg bonus
                    this.ElementalDamageMod = (this.ElementalDamageMod ?? 0.0f) + 0.05f;
                    resultMsg = "Improved Elemental Damage Bonus by 5% vs Monsters and 1.25% against Players";
                    HandleTinkerLottoLog("CasterDmgBonus5%");
                }
            }

            //If you're using WS 10 salvage and your target item is <= WS 6
            if(salvageWorkmanship == 10 && this.Workmanship <= 6)
            {
                //roll again for a 15% chance to add...
                //+1 cleave target for 2H/HW/LW/FW
                //CS or CB for magic casters
                //Shield hollow for missile weps
                roll = rand.NextDouble();
                if(roll < 0.15)
                {
                    var currRollResultMsg = "";

                    if (this.ItemType == ItemType.MissileWeapon)
                    {
                        //Add 100% ignore shield
                        this.IgnoreShield = 1;
                        currRollResultMsg = "Added Shield Hollow";
                        HandleTinkerLottoLog("ShieldHollow");
                    }
                    else if (this.ItemType == ItemType.MeleeWeapon)
                    {
                        //Add +1 cleave
                        if(!this.GetProperty(PropertyInt.Cleaving).HasValue || this.GetProperty(PropertyInt.Cleaving) < 2)
                        {
                            this.SetProperty(PropertyInt.Cleaving, 2);
                        }
                        else
                        {
                            this.SetProperty(PropertyInt.Cleaving, 3);
                        }
                        
                        currRollResultMsg = "Added +1 Cleaving Target";
                        HandleTinkerLottoLog("Cleave1");
                    }
                    else if (this.ItemType == ItemType.Caster)
                    {
                        //Add CS or CB
                        roll = rand.NextDouble();
                        if(roll < 0.5)
                        {
                            //Add CS
                            this.ImbuedEffect |= ImbuedEffectType.CriticalStrike;
                            currRollResultMsg = "Added Critical Strike";
                            HandleTinkerLottoLog("CS");
                        }
                        else
                        {
                            //Add CB
                            this.ImbuedEffect |= ImbuedEffectType.CripplingBlow;
                            currRollResultMsg = "Added Crippling Blow";
                            HandleTinkerLottoLog("CB");
                        }                                                
                    }

                    resultMsg = string.IsNullOrEmpty(resultMsg) ? currRollResultMsg : $"{resultMsg}\n{currRollResultMsg}";
                }

                //roll again for a 15% chance to add...
                //cast on strike imperil for melee/missile weps
                //cast on strike magic yield for casters
                roll = rand.NextDouble();
                if (roll < 0.15)
                {
                    this.ProcSpellRate = 0.15f;
                    this.ProcSpellSelfTargeted = false;
                    this.ItemSpellcraft = 450;
                    if (this.ItemType == ItemType.Caster)
                    {
                        this.ProcSpell = (uint)SpellId.MagicYieldOther8;
                    }
                    else
                    {
                        this.ProcSpell = (uint)SpellId.ImperilOther8;
                    }
                }
            }            

            return resultMsg;
        }

        private string TinkeringLotto_ApplySlayerMutation()
        {
            var selectSlayerType = ThreadSafeRandom.Next(1, 19);
            this.SlayerDamageBonus = 1.20f;

            switch (selectSlayerType)
            {
                case 1:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Banderling;
                    break;

                case 2:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Drudge;
                    break;

                case 3:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Gromnie;
                    break;

                case 4:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Lugian;
                    break;

                case 5:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Grievver;
                    break;

                case 6:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Mattekar;
                    break;

                case 7:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Mite;
                    break;

                case 8:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Mosswart;
                    break;

                case 9:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Mumiyah;
                    break;

                case 10:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Olthoi;
                    break;

                case 11:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.PhyntosWasp;
                    break;

                case 12:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Shadow;
                    break;

                case 13:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Shreth;
                    break;

                case 14:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Skeleton;
                    break;

                case 15:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Tumerok;
                    break;

                case 16:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Tusker;
                    break;

                case 17:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Virindi;
                    break;

                case 18:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Wisp;
                    break;

                case 19:
                    this.SlayerCreatureType = ACE.Entity.Enum.CreatureType.Zefir;
                    break;

                default:
                    return "";
            }

            HandleTinkerLottoLog($"{this.SlayerCreatureType}Slayer");

            return $"Added {this.SlayerCreatureType} slayer";
        }

        private string TinkeringLotto_ApplyRendMutation()
        {
            string resultMsg = "";

            switch (this.W_DamageType)
            {
                case DamageType.Acid: // acid
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.AcidRending))
                    {
                        this.ImbuedEffect |= ImbuedEffectType.AcidRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x06003355);
                        resultMsg = $"Added Acid Rending";
                        HandleTinkerLottoLog("AcidRend");
                    }
                    break;

                case DamageType.Cold: // Cold
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.ColdRending))
                    {
                        this.ImbuedEffect |= ImbuedEffectType.ColdRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x06003353);
                        resultMsg = $"Added Cold Rending";
                        HandleTinkerLottoLog("ColdRend");
                    }
                    break;

                case DamageType.Electric: // Electric
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.ElectricRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.ElectricRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x06003354);
                        resultMsg = $"Added Lightning Rending";
                        HandleTinkerLottoLog("LitRend");
                    }
                    break;

                case DamageType.Fire: // Fire
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.FireRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.FireRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x06003359);
                        resultMsg = $"Added Fire Rending";
                        HandleTinkerLottoLog("FireRend");
                    }
                    break;

                case DamageType.Pierce: // Pierce
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.PierceRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.PierceRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x0600335b);
                        resultMsg = $"Added Pierce Rending";
                        HandleTinkerLottoLog("PierceRend");
                    }
                    break;

                case DamageType.Slash: // Slash
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.SlashRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.SlashRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x0600335c);
                        resultMsg = $"Added Slash Rending";
                        HandleTinkerLottoLog("SlashRend");
                    }
                    break;

                case DamageType.Bludgeon: // Bludgeon
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.BludgeonRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.BludgeonRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x0600335a);
                        resultMsg = $"Added Bludgeon Rending";
                        HandleTinkerLottoLog("BludgRend");
                    }
                    break;

                case DamageType.Pierce | DamageType.Slash:
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.PierceRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.PierceRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x0600335b);
                        resultMsg = $"Added Pierce and Slash Rending";
                        HandleTinkerLottoLog("PierceSlashRend");
                    }
                    if (!this.ImbuedEffect.HasFlag(ImbuedEffectType.SlashRending))
                    {
                        this.ImbuedEffect = ImbuedEffectType.SlashRending;
                        this.SetProperty(PropertyDataId.IconUnderlay, 0x0600335c);
                        resultMsg = $"Added Pierce and Slash Rending";
                        HandleTinkerLottoLog("PierceSlashRend");
                    }
                    break;
            }

            return resultMsg;
        }

        private void HandleTinkerLottoLog(string lottoResult)
        {
            if (!string.IsNullOrEmpty(this.TinkerLottoLog))
                this.TinkerLottoLog += ",";

            this.TinkerLottoLog += lottoResult;
        }

        private int GetCumulativeArmorLevelLottoBonus()
        {
            if (string.IsNullOrEmpty(this.TinkerLottoLog))
                return 0;

            var alBonus = 0;

            var lottoEvents = this.TinkerLottoLog.Split(',');

            foreach (var lottoEvent in lottoEvents)
            {
                if(lottoEvent.StartsWith("AL+"))
                {
                    var eventAlString = lottoEvent.Substring(3);
                    if(int.TryParse(eventAlString, out int eventAlAmount))
                    {
                        alBonus += eventAlAmount;
                    }
                }
            }

            return alBonus;
        }
    }
}
