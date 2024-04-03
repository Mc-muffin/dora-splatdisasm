.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawBBoxData
/* 52F34 80062734 0800E003 */  jr         $ra
/* 52F38 80062738 00000000 */   nop
.size DrawBBoxData, . - DrawBBoxData
