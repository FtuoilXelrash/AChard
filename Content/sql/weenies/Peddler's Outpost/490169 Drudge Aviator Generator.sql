DELETE FROM `weenie` WHERE `class_Id` = 490169;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490169, 'Drudge Aviator Generator', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490169,  81,          6) /* MaxGeneratedObjects */
     , (490169,  82,          6) /* InitGeneratedObjects */
     , (490169,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490169,   1, True ) /* Stuck */
     , (490169,  11, True ) /* IgnoreCollisions */
     , (490169,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490169,  41,      300) /* RegenerationInterval */
     , (490169,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490169,   1, 'Drudge Aviator Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490169,   1, 0x0200026B) /* Setup */
     , (490169,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490169, -1, 490256, 1800, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem (40153) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490169, -1, 490255, 1800, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem (40153) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
