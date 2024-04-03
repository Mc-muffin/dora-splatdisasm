.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawBox
/* 52F3C 8006273C 0800E003 */  jr         $ra
/* 52F40 80062740 00000000 */   nop
.size DrawBox, . - DrawBox
