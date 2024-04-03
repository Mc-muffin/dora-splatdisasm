.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawLevelBoundary
/* 3EF6C 8004E76C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3EF70 8004E770 FF000424 */  addiu      $a0, $zero, 0xFF
/* 3EF74 8004E774 FF000524 */  addiu      $a1, $zero, 0xFF
/* 3EF78 8004E778 1800BFAF */  sw         $ra, 0x18($sp)
/* 3EF7C 8004E77C C989010C */  jal        SetLineColor
/* 3EF80 8004E780 FF000624 */   addiu     $a2, $zero, 0xFF
/* 3EF84 8004E784 21200000 */  addu       $a0, $zero, $zero
/* 3EF88 8004E788 21280000 */  addu       $a1, $zero, $zero
/* 3EF8C 8004E78C 0880083C */  lui        $t0, %hi(TestWorld)
/* 3EF90 8004E790 8C650725 */  addiu      $a3, $t0, %lo(TestWorld)
/* 3EF94 8004E794 0400E28C */  lw         $v0, 0x4($a3)
/* 3EF98 8004E798 21300000 */  addu       $a2, $zero, $zero
/* 3EF9C 8004E79C C0110200 */  sll        $v0, $v0, 7
/* 3EFA0 8004E7A0 1000A2AF */  sw         $v0, 0x10($sp)
/* 3EFA4 8004E7A4 0800E38C */  lw         $v1, 0x8($a3)
/* 3EFA8 8004E7A8 8C65078D */  lw         $a3, %lo(TestWorld)($t0)
/* 3EFAC 8004E7AC C0190300 */  sll        $v1, $v1, 7
/* 3EFB0 8004E7B0 C0390700 */  sll        $a3, $a3, 7
/* 3EFB4 8004E7B4 CF89010C */  jal        DrawBox
/* 3EFB8 8004E7B8 1400A3AF */   sw        $v1, 0x14($sp)
/* 3EFBC 8004E7BC 1800BF8F */  lw         $ra, 0x18($sp)
/* 3EFC0 8004E7C0 00000000 */  nop
/* 3EFC4 8004E7C4 0800E003 */  jr         $ra
/* 3EFC8 8004E7C8 2000BD27 */   addiu     $sp, $sp, 0x20
.size DrawLevelBoundary, . - DrawLevelBoundary
