DELETE FROM `weenie` WHERE `class_Id` = 450489;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (450489, 'ace450489-armoredsclavusmasktailor', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (450489,   1,          4) /* ItemType - Armor */
     , (450489,   3,          4) /* PaletteTemplate - Brown */
     , (450489,   4,      16384) /* ClothingPriority - Head */
     , (450489,   5,        0) /* EncumbranceVal */
     , (450489,   9,          1) /* ValidLocations - HeadWear */
     , (450489,  19,        20) /* Value */
     , (450489,  28,         0) /* ArmorLevel */
     , (450489, 107,          0) /* ItemCurMana */
     , (450489, 108,          0) /* ItemMaxMana */
     , (450489, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (450489,  11, True ) /* IgnoreCollisions */
     , (450489,  13, True ) /* Ethereal */
     , (450489,  14, True ) /* GravityStatus */
     , (450489,  19, True ) /* Attackable */
     , (450489,  22, True ) /* Inscribable */
     , (450489,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (450489,  13,     0.5) /* ArmorModVsSlash */
     , (450489,  14,   0.375) /* ArmorModVsPierce */
     , (450489,  15,    0.25) /* ArmorModVsBludgeon */
     , (450489,  16,     0.5) /* ArmorModVsCold */
     , (450489,  17,   0.375) /* ArmorModVsFire */
     , (450489,  18,   0.125) /* ArmorModVsAcid */
     , (450489,  19,   0.125) /* ArmorModVsElectric */
     , (450489, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (450489,   1, 'Armored Sclavus Mask') /* Name */
     , (450489,  16, 'A mask made from one of the armored Sclavus followers of T''thuun.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (450489,   1, 0x0200186A) /* Setup */
     , (450489,   3, 0x20000014) /* SoundTable */
     , (450489,   6, 0x0400007E) /* PaletteBase */
     , (450489,   7, 0x1000075B) /* ClothingBase */
     , (450489,   8, 0x06006975) /* Icon */
     , (450489,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (450489,   2, 0x501038C4) /* Container */
     , (450489,   3, 0x00000000) /* Wielder */;
