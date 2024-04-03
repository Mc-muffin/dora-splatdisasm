.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SelectTextureFrame
/* AD14 8001A514 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AD18 8001A518 1800BFAF */  sw         $ra, 0x18($sp)
/* AD1C 8001A51C 0400A394 */  lhu        $v1, 0x4($a1)
/* AD20 8001A520 0600A294 */  lhu        $v0, 0x6($a1)
/* AD24 8001A524 07008018 */  blez       $a0, .L8001A544
/* AD28 8001A528 1000A727 */   addiu     $a3, $sp, 0x10
/* AD2C 8001A52C 18006200 */  mult       $v1, $v0
/* AD30 8001A530 12100000 */  mflo       $v0
/* AD34 8001A534 08024224 */  addiu      $v0, $v0, 0x208
.L8001A538:
/* AD38 8001A538 FFFF8424 */  addiu      $a0, $a0, -0x1
/* AD3C 8001A53C FEFF8014 */  bnez       $a0, .L8001A538
/* AD40 8001A540 2128A200 */   addu      $a1, $a1, $v0
.L8001A544:
/* AD44 8001A544 0C80033C */  lui        $v1, %hi(VRAMItems)
/* AD48 8001A548 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* AD4C 8001A54C 80100600 */  sll        $v0, $a2, 2
/* AD50 8001A550 21104600 */  addu       $v0, $v0, $a2
/* AD54 8001A554 80100200 */  sll        $v0, $v0, 2
/* AD58 8001A558 21104300 */  addu       $v0, $v0, $v1
/* AD5C 8001A55C 03004388 */  lwl        $v1, 0x3($v0)
/* AD60 8001A560 00004398 */  lwr        $v1, 0x0($v0)
/* AD64 8001A564 07004488 */  lwl        $a0, 0x7($v0)
/* AD68 8001A568 04004498 */  lwr        $a0, 0x4($v0)
/* AD6C 8001A56C 1300A3AB */  swl        $v1, 0x13($sp)
/* AD70 8001A570 1000A3BB */  swr        $v1, 0x10($sp)
/* AD74 8001A574 1700A4AB */  swl        $a0, 0x17($sp)
/* AD78 8001A578 1400A4BB */  swr        $a0, 0x14($sp)
/* AD7C 8001A57C 2120E000 */  addu       $a0, $a3, $zero
/* AD80 8001A580 636E010C */  jal        AddVBLoadImage
/* AD84 8001A584 0802A524 */   addiu     $a1, $a1, 0x208
/* AD88 8001A588 1800BF8F */  lw         $ra, 0x18($sp)
/* AD8C 8001A58C 00000000 */  nop
/* AD90 8001A590 0800E003 */  jr         $ra
/* AD94 8001A594 2000BD27 */   addiu     $sp, $sp, 0x20
.size SelectTextureFrame, . - SelectTextureFrame
