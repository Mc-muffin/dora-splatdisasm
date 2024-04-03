.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCameraMan
/* 2AF60 8003A760 00260400 */  sll        $a0, $a0, 24
/* 2AF64 8003A764 03260400 */  sra        $a0, $a0, 24
/* 2AF68 8003A768 4C0A84AF */  sw         $a0, %gp_rel(CurrentCameraEnum)($gp)
/* 2AF6C 8003A76C 0800E003 */  jr         $ra
/* 2AF70 8003A770 00000000 */   nop
.size SetCameraMan, . - SetCameraMan
