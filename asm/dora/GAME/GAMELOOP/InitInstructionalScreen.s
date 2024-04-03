.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitInstructionalScreen
/* 23DD8 800335D8 0800E003 */  jr         $ra
/* 23DDC 800335DC 00000000 */   nop
.size InitInstructionalScreen, . - InitInstructionalScreen
