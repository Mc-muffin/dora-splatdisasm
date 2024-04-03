.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ToggleCellAnimation
/* 5328C 80062A8C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 53290 80062A90 40100400 */  sll        $v0, $a0, 1
/* 53294 80062A94 21104400 */  addu       $v0, $v0, $a0
/* 53298 80062A98 80100200 */  sll        $v0, $v0, 2
/* 5329C 80062A9C 21104400 */  addu       $v0, $v0, $a0
/* 532A0 80062AA0 C017848F */  lw         $a0, %gp_rel(LocalCellAnims)($gp)
/* 532A4 80062AA4 80100200 */  sll        $v0, $v0, 2
/* 532A8 80062AA8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 532AC 80062AAC 2000BFAF */  sw         $ra, 0x20($sp)
/* 532B0 80062AB0 1800B0AF */  sw         $s0, 0x18($sp)
/* 532B4 80062AB4 21808200 */  addu       $s0, $a0, $v0
/* 532B8 80062AB8 1800038E */  lw         $v1, 0x18($s0)
/* 532BC 80062ABC 05000224 */  addiu      $v0, $zero, 0x5
/* 532C0 80062AC0 15006330 */  andi       $v1, $v1, 0x15
/* 532C4 80062AC4 05006214 */  bne        $v1, $v0, .L80062ADC
/* 532C8 80062AC8 01001124 */   addiu     $s1, $zero, 0x1
/* 532CC 80062ACC 1400028E */  lw         $v0, 0x14($s0)
/* 532D0 80062AD0 00000000 */  nop
/* 532D4 80062AD4 23100200 */  negu       $v0, $v0
/* 532D8 80062AD8 140002AE */  sw         $v0, 0x14($s0)
.L80062ADC:
/* 532DC 80062ADC 22000296 */  lhu        $v0, 0x22($s0)
/* 532E0 80062AE0 00000000 */  nop
/* 532E4 80062AE4 35004010 */  beqz       $v0, .L80062BBC
/* 532E8 80062AE8 FFFF4424 */   addiu     $a0, $v0, -0x1
/* 532EC 80062AEC 0000038E */  lw         $v1, 0x0($s0)
/* 532F0 80062AF0 0800822C */  sltiu      $v0, $a0, 0x8
/* 532F4 80062AF4 0800688C */  lw         $t0, 0x8($v1)
/* 532F8 80062AF8 30004010 */  beqz       $v0, .L80062BBC
/* 532FC 80062AFC 0180023C */   lui       $v0, %hi(jtbl_8001352C)
/* 53300 80062B00 2C354224 */  addiu      $v0, $v0, %lo(jtbl_8001352C)
/* 53304 80062B04 80180400 */  sll        $v1, $a0, 2
/* 53308 80062B08 21186200 */  addu       $v1, $v1, $v0
/* 5330C 80062B0C 0000648C */  lw         $a0, 0x0($v1)
/* 53310 80062B10 00000000 */  nop
/* 53314 80062B14 08008000 */  jr         $a0
/* 53318 80062B18 00000000 */   nop
jlabel .L80062B1C
/* 5331C 80062B1C 21200000 */  addu       $a0, $zero, $zero
/* 53320 80062B20 DB8A0108 */  j          .L80062B6C
/* 53324 80062B24 0F000524 */   addiu     $a1, $zero, 0xF
jlabel .L80062B28
/* 53328 80062B28 21200000 */  addu       $a0, $zero, $zero
/* 5332C 80062B2C DB8A0108 */  j          .L80062B6C
/* 53330 80062B30 10000524 */   addiu     $a1, $zero, 0x10
jlabel .L80062B34
/* 53334 80062B34 21200000 */  addu       $a0, $zero, $zero
/* 53338 80062B38 DB8A0108 */  j          .L80062B6C
/* 5333C 80062B3C 11000524 */   addiu     $a1, $zero, 0x11
jlabel .L80062B40
/* 53340 80062B40 21200000 */  addu       $a0, $zero, $zero
/* 53344 80062B44 DB8A0108 */  j          .L80062B6C
/* 53348 80062B48 12000524 */   addiu     $a1, $zero, 0x12
jlabel .L80062B4C
/* 5334C 80062B4C 21200000 */  addu       $a0, $zero, $zero
/* 53350 80062B50 DB8A0108 */  j          .L80062B6C
/* 53354 80062B54 13000524 */   addiu     $a1, $zero, 0x13
jlabel .L80062B58
/* 53358 80062B58 21200000 */  addu       $a0, $zero, $zero
/* 5335C 80062B5C DB8A0108 */  j          .L80062B6C
/* 53360 80062B60 14000524 */   addiu     $a1, $zero, 0x14
jlabel .L80062B64
/* 53364 80062B64 21200000 */  addu       $a0, $zero, $zero
/* 53368 80062B68 15000524 */  addiu      $a1, $zero, 0x15
.L80062B6C:
/* 5336C 80062B6C 0000068D */  lw         $a2, 0x0($t0)
/* 53370 80062B70 0400078D */  lw         $a3, 0x4($t0)
/* 53374 80062B74 0800028D */  lw         $v0, 0x8($t0)
/* 53378 80062B78 C0310600 */  sll        $a2, $a2, 7
/* 5337C 80062B7C C0390700 */  sll        $a3, $a3, 7
/* 53380 80062B80 C0110200 */  sll        $v0, $v0, 7
/* 53384 80062B84 69BE000C */  jal        RequestParticle
/* 53388 80062B88 1000A2AF */   sw        $v0, 0x10($sp)
/* 5338C 80062B8C EF8A0108 */  j          .L80062BBC
/* 53390 80062B90 00000000 */   nop
jlabel .L80062B94
/* 53394 80062B94 21200000 */  addu       $a0, $zero, $zero
/* 53398 80062B98 16000524 */  addiu      $a1, $zero, 0x16
/* 5339C 80062B9C 0000068D */  lw         $a2, 0x0($t0)
/* 533A0 80062BA0 0400078D */  lw         $a3, 0x4($t0)
/* 533A4 80062BA4 0800028D */  lw         $v0, 0x8($t0)
/* 533A8 80062BA8 C0310600 */  sll        $a2, $a2, 7
/* 533AC 80062BAC C0390700 */  sll        $a3, $a3, 7
/* 533B0 80062BB0 C0110200 */  sll        $v0, $v0, 7
/* 533B4 80062BB4 69BE000C */  jal        RequestParticle
/* 533B8 80062BB8 1000A2AF */   sw        $v0, 0x10($sp)
.L80062BBC:
/* 533BC 80062BBC 1800048E */  lw         $a0, 0x18($s0)
/* 533C0 80062BC0 15000224 */  addiu      $v0, $zero, 0x15
/* 533C4 80062BC4 15008330 */  andi       $v1, $a0, 0x15
/* 533C8 80062BC8 02006214 */  bne        $v1, $v0, .L80062BD4
/* 533CC 80062BCC 01008234 */   ori       $v0, $a0, 0x1
/* 533D0 80062BD0 21880000 */  addu       $s1, $zero, $zero
.L80062BD4:
/* 533D4 80062BD4 180002AE */  sw         $v0, 0x18($s0)
/* 533D8 80062BD8 21102002 */  addu       $v0, $s1, $zero
/* 533DC 80062BDC 2000BF8F */  lw         $ra, 0x20($sp)
/* 533E0 80062BE0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 533E4 80062BE4 1800B08F */  lw         $s0, 0x18($sp)
/* 533E8 80062BE8 0800E003 */  jr         $ra
/* 533EC 80062BEC 2800BD27 */   addiu     $sp, $sp, 0x28
.size ToggleCellAnimation, . - ToggleCellAnimation
