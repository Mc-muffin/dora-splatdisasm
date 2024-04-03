.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxmcd_get_startsector
/* 4813C 8005793C 0B80033C */  lui        $v1, %hi(gCDFileInfo + 0x4)
/* 48140 80057940 7CAA628C */  lw         $v0, %lo(gCDFileInfo + 0x4)($v1)
/* 48144 80057944 0800E003 */  jr         $ra
/* 48148 80057948 00000000 */   nop
.size pxmcd_get_startsector, . - pxmcd_get_startsector
