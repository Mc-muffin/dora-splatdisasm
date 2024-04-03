.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTrackerRunattacksnd
/* 376E4 80046EE4 2801838C */  lw         $v1, 0x128($a0)
/* 376E8 80046EE8 00000000 */  nop
/* 376EC 80046EEC 0C00628C */  lw         $v0, 0xC($v1)
/* 376F0 80046EF0 0800E003 */  jr         $ra
/* 376F4 80046EF4 00000000 */   nop
.size GetTrackerRunattacksnd, . - GetTrackerRunattacksnd
