.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddVBLoadImage
/* 4C18C 8005B98C 0B80033C */  lui        $v1, %hi(VBLoadImageRects)
/* 4C190 8005B990 FC10878F */  lw         $a3, %gp_rel(VBLoadImageIndex)($gp)
/* 4C194 8005B994 C8B76324 */  addiu      $v1, $v1, %lo(VBLoadImageRects)
/* 4C198 8005B998 40100700 */  sll        $v0, $a3, 1
/* 4C19C 8005B99C 21104700 */  addu       $v0, $v0, $a3
/* 4C1A0 8005B9A0 80100200 */  sll        $v0, $v0, 2
/* 4C1A4 8005B9A4 21306200 */  addu       $a2, $v1, $v0
/* 4C1A8 8005B9A8 21104300 */  addu       $v0, $v0, $v1
/* 4C1AC 8005B9AC 0100E724 */  addiu      $a3, $a3, 0x1
/* 4C1B0 8005B9B0 0800C5AC */  sw         $a1, 0x8($a2)
/* 4C1B4 8005B9B4 03008388 */  lwl        $v1, 0x3($a0)
/* 4C1B8 8005B9B8 00008398 */  lwr        $v1, 0x0($a0)
/* 4C1BC 8005B9BC 07008588 */  lwl        $a1, 0x7($a0)
/* 4C1C0 8005B9C0 04008598 */  lwr        $a1, 0x4($a0)
/* 4C1C4 8005B9C4 030043A8 */  swl        $v1, 0x3($v0)
/* 4C1C8 8005B9C8 000043B8 */  swr        $v1, 0x0($v0)
/* 4C1CC 8005B9CC 070045A8 */  swl        $a1, 0x7($v0)
/* 4C1D0 8005B9D0 040045B8 */  swr        $a1, 0x4($v0)
/* 4C1D4 8005B9D4 FC1087AF */  sw         $a3, %gp_rel(VBLoadImageIndex)($gp)
/* 4C1D8 8005B9D8 0800E003 */  jr         $ra
/* 4C1DC 8005B9DC 00000000 */   nop
.size AddVBLoadImage, . - AddVBLoadImage
