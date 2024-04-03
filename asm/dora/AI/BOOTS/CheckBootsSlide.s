.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckBootsSlide
/* 262EC 80035AEC EC09828F */  lw         $v0, %gp_rel(BootsSlideFlag)($gp)
/* 262F0 80035AF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 262F4 80035AF4 0E004014 */  bnez       $v0, .L80035B30
/* 262F8 80035AF8 1000BFAF */   sw        $ra, 0x10($sp)
/* 262FC 80035AFC 11000524 */  addiu      $a1, $zero, 0x11
/* 26300 80035B00 02000624 */  addiu      $a2, $zero, 0x2
/* 26304 80035B04 60DE000C */  jal        CheckAnimLoop
/* 26308 80035B08 2C018724 */   addiu     $a3, $a0, 0x12C
/* 2630C 80035B0C 0C004010 */  beqz       $v0, .L80035B40
/* 26310 80035B10 26000424 */   addiu     $a0, $zero, 0x26
/* 26314 80035B14 21280000 */  addu       $a1, $zero, $zero
/* 26318 80035B18 6F4A010C */  jal        pxm_sendevent
/* 2631C 80035B1C 21300000 */   addu      $a2, $zero, $zero
/* 26320 80035B20 01000324 */  addiu      $v1, $zero, 0x1
/* 26324 80035B24 EC0983AF */  sw         $v1, %gp_rel(BootsSlideFlag)($gp)
/* 26328 80035B28 D0D60008 */  j          .L80035B40
/* 2632C 80035B2C 00000000 */   nop
.L80035B30:
/* 26330 80035B30 11000524 */  addiu      $a1, $zero, 0x11
/* 26334 80035B34 02000624 */  addiu      $a2, $zero, 0x2
/* 26338 80035B38 60DE000C */  jal        CheckAnimLoop
/* 2633C 80035B3C 2C018724 */   addiu     $a3, $a0, 0x12C
.L80035B40:
/* 26340 80035B40 1000BF8F */  lw         $ra, 0x10($sp)
/* 26344 80035B44 00000000 */  nop
/* 26348 80035B48 0800E003 */  jr         $ra
/* 2634C 80035B4C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckBootsSlide, . - CheckBootsSlide
