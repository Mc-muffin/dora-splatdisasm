.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocalCellAttributes
/* 55E8C 8006568C 0880033C */  lui        $v1, %hi(TestWorld)
/* 55E90 80065690 8C65688C */  lw         $t0, %lo(TestWorld)($v1)
/* 55E94 80065694 C3310600 */  sra        $a2, $a2, 7
/* 55E98 80065698 1800C800 */  mult       $a2, $t0
/* 55E9C 8006569C 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 55EA0 800656A0 12300000 */  mflo       $a2
/* 55EA4 800656A4 0400628C */  lw         $v0, 0x4($v1)
/* 55EA8 800656A8 00000000 */  nop
/* 55EAC 800656AC 1800C200 */  mult       $a2, $v0
/* 55EB0 800656B0 12300000 */  mflo       $a2
/* 55EB4 800656B4 C3290500 */  sra        $a1, $a1, 7
/* 55EB8 800656B8 00000000 */  nop
/* 55EBC 800656BC 1800A800 */  mult       $a1, $t0
/* 55EC0 800656C0 C3210400 */  sra        $a0, $a0, 7
/* 55EC4 800656C4 1400678C */  lw         $a3, 0x14($v1)
/* 55EC8 800656C8 12280000 */  mflo       $a1
/* 55ECC 800656CC 2130C500 */  addu       $a2, $a2, $a1
/* 55ED0 800656D0 2130C400 */  addu       $a2, $a2, $a0
/* 55ED4 800656D4 40300600 */  sll        $a2, $a2, 1
/* 55ED8 800656D8 2138E600 */  addu       $a3, $a3, $a2
/* 55EDC 800656DC 0000E294 */  lhu        $v0, 0x0($a3)
/* 55EE0 800656E0 0800E003 */  jr         $ra
/* 55EE4 800656E4 00000000 */   nop
.size GetLocalCellAttributes, . - GetLocalCellAttributes
