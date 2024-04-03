.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetPlayerRunSpeed
/* 14BEC 800243EC 0800E003 */  jr         $ra
/* 14BF0 800243F0 001C0224 */   addiu     $v0, $zero, 0x1C00
.size GetPlayerRunSpeed, . - GetPlayerRunSpeed
