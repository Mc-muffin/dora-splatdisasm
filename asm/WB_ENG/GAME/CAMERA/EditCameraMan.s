.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EditCameraMan
/* 2B450 8003AC50 0800E003 */  jr         $ra
/* 2B454 8003AC54 00000000 */   nop
.size EditCameraMan, . - EditCameraMan
