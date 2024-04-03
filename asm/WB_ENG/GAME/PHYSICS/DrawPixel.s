.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawPixel
/* 2EFB4 8003E7B4 0800E003 */  jr         $ra
/* 2EFB8 8003E7B8 00000000 */   nop
.size DrawPixel, . - DrawPixel
