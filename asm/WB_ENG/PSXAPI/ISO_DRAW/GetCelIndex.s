.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCelIndex
/* 55858 80065058 0880033C */  lui        $v1, %hi(TestWorld)
/* 5585C 8006505C 8C65688C */  lw         $t0, %lo(TestWorld)($v1)
/* 55860 80065060 00000000 */  nop
/* 55864 80065064 1800C800 */  mult       $a2, $t0
/* 55868 80065068 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 5586C 8006506C 12300000 */  mflo       $a2
/* 55870 80065070 0400628C */  lw         $v0, 0x4($v1)
/* 55874 80065074 00000000 */  nop
/* 55878 80065078 1800C200 */  mult       $a2, $v0
/* 5587C 8006507C 12300000 */  mflo       $a2
/* 55880 80065080 00000000 */  nop
/* 55884 80065084 00000000 */  nop
/* 55888 80065088 1800A800 */  mult       $a1, $t0
/* 5588C 8006508C 1400678C */  lw         $a3, 0x14($v1)
/* 55890 80065090 12280000 */  mflo       $a1
/* 55894 80065094 2130C500 */  addu       $a2, $a2, $a1
/* 55898 80065098 2130C400 */  addu       $a2, $a2, $a0
/* 5589C 8006509C 40300600 */  sll        $a2, $a2, 1
/* 558A0 800650A0 2138E600 */  addu       $a3, $a3, $a2
/* 558A4 800650A4 0000E294 */  lhu        $v0, 0x0($a3)
/* 558A8 800650A8 0800E003 */  jr         $ra
/* 558AC 800650AC 00000000 */   nop
.size GetCelIndex, . - GetCelIndex
