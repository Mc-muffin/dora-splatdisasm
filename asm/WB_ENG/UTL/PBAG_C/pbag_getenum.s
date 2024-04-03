.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_getenum
/* 412C4 80050AC4 0800E003 */  jr         $ra
/* 412C8 80050AC8 FFFF8230 */   andi      $v0, $a0, 0xFFFF
.size pbag_getenum, . - pbag_getenum
