.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxmcd_get_cursector
/* 48128 80057928 0B80033C */  lui        $v1, %hi(gCDFileInfo)
/* 4812C 8005792C 78AA6324 */  addiu      $v1, $v1, %lo(gCDFileInfo)
/* 48130 80057930 1000628C */  lw         $v0, 0x10($v1)
/* 48134 80057934 0800E003 */  jr         $ra
/* 48138 80057938 00000000 */   nop
.size pxmcd_get_cursector, . - pxmcd_get_cursector
