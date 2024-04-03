.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetMapAttributes
/* 55ACC 800652CC 0880033C */  lui        $v1, %hi(TestWorld)
/* 55AD0 800652D0 8C65688C */  lw         $t0, %lo(TestWorld)($v1)
/* 55AD4 800652D4 00000000 */  nop
/* 55AD8 800652D8 1800C800 */  mult       $a2, $t0
/* 55ADC 800652DC 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 55AE0 800652E0 12300000 */  mflo       $a2
/* 55AE4 800652E4 0400628C */  lw         $v0, 0x4($v1)
/* 55AE8 800652E8 00000000 */  nop
/* 55AEC 800652EC 1800C200 */  mult       $a2, $v0
/* 55AF0 800652F0 12300000 */  mflo       $a2
/* 55AF4 800652F4 00000000 */  nop
/* 55AF8 800652F8 00000000 */  nop
/* 55AFC 800652FC 1800A800 */  mult       $a1, $t0
/* 55B00 80065300 003C0700 */  sll        $a3, $a3, 16
/* 55B04 80065304 1400628C */  lw         $v0, 0x14($v1)
/* 55B08 80065308 12280000 */  mflo       $a1
/* 55B0C 8006530C 2130C500 */  addu       $a2, $a2, $a1
/* 55B10 80065310 2130C400 */  addu       $a2, $a2, $a0
/* 55B14 80065314 40300600 */  sll        $a2, $a2, 1
/* 55B18 80065318 21104600 */  addu       $v0, $v0, $a2
/* 55B1C 8006531C 00004394 */  lhu        $v1, 0x0($v0)
/* 55B20 80065320 033C0700 */  sra        $a3, $a3, 16
/* 55B24 80065324 2538E300 */  or         $a3, $a3, $v1
/* 55B28 80065328 0800E003 */  jr         $ra
/* 55B2C 8006532C 000047A4 */   sh        $a3, 0x0($v0)
.size SetMapAttributes, . - SetMapAttributes
