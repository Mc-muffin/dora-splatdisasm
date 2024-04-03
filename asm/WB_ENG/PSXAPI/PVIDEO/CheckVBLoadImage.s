.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckVBLoadImage
/* 4C1E0 8005B9E0 FC10828F */  lw         $v0, %gp_rel(VBLoadImageIndex)($gp)
/* 4C1E4 8005B9E4 0800E003 */  jr         $ra
/* 4C1E8 8005B9E8 00000000 */   nop
.size CheckVBLoadImage, . - CheckVBLoadImage
