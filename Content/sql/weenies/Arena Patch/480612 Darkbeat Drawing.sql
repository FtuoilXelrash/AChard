DELETE FROM `weenie` WHERE `class_Id` = 480612;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (480612, 'ace480612-drawingcertificate', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (480612,   1,        128) /* ItemType - Misc */
     , (480612,   5,          5) /* EncumbranceVal */
     , (480612,  16,          1) /* ItemUseable - No */
     , (480612,  19,          2) /* Value */
     , (480612,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (480612,  12,          1) /* StackSize */
     , (480612,  13,         75) /* StackUnitEncumbrance */
     , (480612,  14,         75) /* StackUnitMass */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (480612,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (480612,   1, 'Darkbeat''s Drawing') /* Name */
     , (480612,  15, 'A Darkbeat masterpiece! Anti-Parazi was looking for an original. Recieve a box of augmentation gems as a reward. ') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (480612,   1, 0x02001641) /* Setup */
     , (480612,   3, 0x20000014) /* SoundTable */
     , (480612,   8, 0x06006563) /* Icon */
     , (480612,  22, 0x3400002B) /* PhysicsEffectTable */;
