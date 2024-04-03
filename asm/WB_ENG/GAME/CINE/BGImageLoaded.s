.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BGImageLoaded
/* 32A0C 8004220C 01000224 */  addiu      $v0, $zero, 0x1
/* 32A10 80042210 700C82AF */  sw         $v0, %gp_rel(BGImageFLagReady)($gp)
/* 32A14 80042214 0800E003 */  jr         $ra
/* 32A18 80042218 00000000 */   nop
.size BGImageLoaded, . - BGImageLoaded
