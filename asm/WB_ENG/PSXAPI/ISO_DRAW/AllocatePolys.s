.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocatePolys
/* 562CC 80065ACC 2150A000 */  addu       $t2, $a1, $zero
/* 562D0 80065AD0 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 562D4 80065AD4 EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 562D8 80065AD8 03008230 */  andi       $v0, $a0, 0x3
/* 562DC 80065ADC 04000324 */  addiu      $v1, $zero, 0x4
/* 562E0 80065AE0 23186200 */  subu       $v1, $v1, $v0
/* 562E4 80065AE4 0400622C */  sltiu      $v0, $v1, 0x4
/* 562E8 80065AE8 0B004010 */  beqz       $v0, .L80065B18
/* 562EC 80065AEC 21486001 */   addu      $t1, $t3, $zero
/* 562F0 80065AF0 09006010 */  beqz       $v1, .L80065B18
/* 562F4 80065AF4 21300000 */   addu      $a2, $zero, $zero
.L80065AF8:
/* 562F8 80065AF8 00008290 */  lbu        $v0, 0x0($a0)
/* 562FC 80065AFC 01008424 */  addiu      $a0, $a0, 0x1
/* 56300 80065B00 FFFF4A25 */  addiu      $t2, $t2, -0x1
/* 56304 80065B04 0100C624 */  addiu      $a2, $a2, 0x1
/* 56308 80065B08 000022A1 */  sb         $v0, 0x0($t1)
/* 5630C 80065B0C 2B10C300 */  sltu       $v0, $a2, $v1
/* 56310 80065B10 F9FF4014 */  bnez       $v0, .L80065AF8
/* 56314 80065B14 01002925 */   addiu     $t1, $t1, 0x1
.L80065B18:
/* 56318 80065B18 82180A00 */  srl        $v1, $t2, 2
/* 5631C 80065B1C 21408000 */  addu       $t0, $a0, $zero
/* 56320 80065B20 21382001 */  addu       $a3, $t1, $zero
/* 56324 80065B24 09006010 */  beqz       $v1, .L80065B4C
/* 56328 80065B28 21300000 */   addu      $a2, $zero, $zero
.L80065B2C:
/* 5632C 80065B2C 0000028D */  lw         $v0, 0x0($t0)
/* 56330 80065B30 04000825 */  addiu      $t0, $t0, 0x4
/* 56334 80065B34 FCFF4A25 */  addiu      $t2, $t2, -0x4
/* 56338 80065B38 0100C624 */  addiu      $a2, $a2, 0x1
/* 5633C 80065B3C 0000E2AC */  sw         $v0, 0x0($a3)
/* 56340 80065B40 2B10C300 */  sltu       $v0, $a2, $v1
/* 56344 80065B44 F9FF4014 */  bnez       $v0, .L80065B2C
/* 56348 80065B48 0400E724 */   addiu     $a3, $a3, 0x4
.L80065B4C:
/* 5634C 80065B4C 0A004011 */  beqz       $t2, .L80065B78
/* 56350 80065B50 21184001 */   addu      $v1, $t2, $zero
/* 56354 80065B54 08004011 */  beqz       $t2, .L80065B78
/* 56358 80065B58 21300000 */   addu      $a2, $zero, $zero
.L80065B5C:
/* 5635C 80065B5C 00008290 */  lbu        $v0, 0x0($a0)
/* 56360 80065B60 01008424 */  addiu      $a0, $a0, 0x1
/* 56364 80065B64 0100C624 */  addiu      $a2, $a2, 0x1
/* 56368 80065B68 000022A1 */  sb         $v0, 0x0($t1)
/* 5636C 80065B6C 2B10C300 */  sltu       $v0, $a2, $v1
/* 56370 80065B70 FAFF4014 */  bnez       $v0, .L80065B5C
/* 56374 80065B74 01002925 */   addiu     $t1, $t1, 0x1
.L80065B78:
/* 56378 80065B78 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 5637C 80065B7C EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 56380 80065B80 00000000 */  nop
/* 56384 80065B84 21104500 */  addu       $v0, $v0, $a1
/* 56388 80065B88 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 5638C 80065B8C EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 56390 80065B90 0800E003 */  jr         $ra
/* 56394 80065B94 21106001 */   addu      $v0, $t3, $zero
.size AllocatePolys, . - AllocatePolys
