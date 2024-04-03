.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHitCounter
/* 36E34 80046634 2801838C */  lw         $v1, 0x128($a0)
/* 36E38 80046638 00000000 */  nop
/* 36E3C 8004663C 5400628C */  lw         $v0, 0x54($v1)
/* 36E40 80046640 0800E003 */  jr         $ra
/* 36E44 80046644 00000000 */   nop
.size GetHitCounter, . - GetHitCounter
