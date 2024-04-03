.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MainMenu_Exit
/* 19200 80028A00 0800E003 */  jr         $ra
/* 19204 80028A04 00000000 */   nop
.size MainMenu_Exit, . - MainMenu_Exit
