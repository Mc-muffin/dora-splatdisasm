.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel s16Cos
/* 40AB4 800502B4 00408424 */  addiu      $a0, $a0, 0x4000
/* 40AB8 800502B8 FFFF8630 */  andi       $a2, $a0, 0xFFFF
/* 40ABC 800502BC 00800334 */  ori        $v1, $zero, 0x8000
/* 40AC0 800502C0 2B106600 */  sltu       $v0, $v1, $a2
/* 40AC4 800502C4 04004010 */  beqz       $v0, .L800502D8
/* 40AC8 800502C8 21380000 */   addu      $a3, $zero, $zero
/* 40ACC 800502CC FFFF0724 */  addiu      $a3, $zero, -0x1
/* 40AD0 800502D0 23100600 */  negu       $v0, $a2
/* 40AD4 800502D4 FFFF4630 */  andi       $a2, $v0, 0xFFFF
.L800502D8:
/* 40AD8 800502D8 0140C22C */  sltiu      $v0, $a2, 0x4001
/* 40ADC 800502DC 04004014 */  bnez       $v0, .L800502F0
/* 40AE0 800502E0 82210600 */   srl       $a0, $a2, 6
/* 40AE4 800502E4 23106600 */  subu       $v0, $v1, $a2
/* 40AE8 800502E8 FFFF4630 */  andi       $a2, $v0, 0xFFFF
/* 40AEC 800502EC 82210600 */  srl        $a0, $a2, 6
.L800502F0:
/* 40AF0 800502F0 0980023C */  lui        $v0, %hi(D_80088040)
/* 40AF4 800502F4 40804224 */  addiu      $v0, $v0, %lo(D_80088040)
/* 40AF8 800502F8 01008324 */  addiu      $v1, $a0, 0x1
/* 40AFC 800502FC 40180300 */  sll        $v1, $v1, 1
/* 40B00 80050300 21186200 */  addu       $v1, $v1, $v0
/* 40B04 80050304 40200400 */  sll        $a0, $a0, 1
/* 40B08 80050308 21208200 */  addu       $a0, $a0, $v0
/* 40B0C 8005030C 00006294 */  lhu        $v0, 0x0($v1)
/* 40B10 80050310 00008594 */  lhu        $a1, 0x0($a0)
/* 40B14 80050314 3F00C330 */  andi       $v1, $a2, 0x3F
/* 40B18 80050318 23104500 */  subu       $v0, $v0, $a1
/* 40B1C 8005031C 18004300 */  mult       $v0, $v1
/* 40B20 80050320 12100000 */  mflo       $v0
/* 40B24 80050324 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 40B28 80050328 82110200 */  srl        $v0, $v0, 6
/* 40B2C 8005032C 21104500 */  addu       $v0, $v0, $a1
/* 40B30 80050330 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 40B34 80050334 26104700 */  xor        $v0, $v0, $a3
/* 40B38 80050338 00140200 */  sll        $v0, $v0, 16
/* 40B3C 8005033C 0800E003 */  jr         $ra
/* 40B40 80050340 03140200 */   sra       $v0, $v0, 16
.size s16Cos, . - s16Cos
