DELETE FROM `weenie` WHERE `class_Id` = 490174;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490174, 'Drudge Maurader Generator', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490174,  81,          2) /* MaxGeneratedObjects */
     , (490174,  82,          2) /* InitGeneratedObjects */
     , (490174,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490174,   1, True ) /* Stuck */
     , (490174,  11, True ) /* IgnoreCollisions */
     , (490174,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490174,  41,      60) /* RegenerationInterval */
     , (490174,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490174,   1, 'Drudge Maurader Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490174,   1, 0x0200026B) /* Setup */
     , (490174,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490174, 1, 490173, 0, 2, 2, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Skeleton (3663) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
