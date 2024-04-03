.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReSaveHSVPalette
/* 4ED14 8005E514 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 4ED18 8005E518 21100000 */  addu       $v0, $zero, $zero
/* 4ED1C 8005E51C 0800E003 */  jr         $ra
/* 4ED20 8005E520 1000BD27 */   addiu     $sp, $sp, 0x10
.size ReSaveHSVPalette, . - ReSaveHSVPalette
