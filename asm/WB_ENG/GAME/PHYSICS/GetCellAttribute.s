.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCellAttribute
/* 2F538 8003ED38 0880033C */  lui        $v1, %hi(TestWorld)
/* 2F53C 8003ED3C 8C65628C */  lw         $v0, %lo(TestWorld)($v1)
/* 2F540 8003ED40 C3310600 */  sra        $a2, $a2, 7
/* 2F544 8003ED44 1800C200 */  mult       $a2, $v0
/* 2F548 8003ED48 12300000 */  mflo       $a2
/* 2F54C 8003ED4C C3290500 */  sra        $a1, $a1, 7
/* 2F550 8003ED50 00000000 */  nop
/* 2F554 8003ED54 1800A200 */  mult       $a1, $v0
/* 2F558 8003ED58 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 2F55C 8003ED5C 12280000 */  mflo       $a1
/* 2F560 8003ED60 0400628C */  lw         $v0, 0x4($v1)
/* 2F564 8003ED64 00000000 */  nop
/* 2F568 8003ED68 1800C200 */  mult       $a2, $v0
/* 2F56C 8003ED6C C3210400 */  sra        $a0, $a0, 7
/* 2F570 8003ED70 40200400 */  sll        $a0, $a0, 1
/* 2F574 8003ED74 40280500 */  sll        $a1, $a1, 1
/* 2F578 8003ED78 1400628C */  lw         $v0, 0x14($v1)
/* 2F57C 8003ED7C 12300000 */  mflo       $a2
/* 2F580 8003ED80 40300600 */  sll        $a2, $a2, 1
/* 2F584 8003ED84 2130C200 */  addu       $a2, $a2, $v0
/* 2F588 8003ED88 2128A600 */  addu       $a1, $a1, $a2
/* 2F58C 8003ED8C 21208500 */  addu       $a0, $a0, $a1
/* 2F590 8003ED90 00008284 */  lh         $v0, 0x0($a0)
/* 2F594 8003ED94 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2F598 8003ED98 FF034230 */  andi       $v0, $v0, 0x3FF
/* 2F59C 8003ED9C 09004310 */  beq        $v0, $v1, .L8003EDC4
/* 2F5A0 8003EDA0 80180200 */   sll       $v1, $v0, 2
/* 2F5A4 8003EDA4 21186200 */  addu       $v1, $v1, $v0
/* 2F5A8 8003EDA8 0980023C */  lui        $v0, %hi(CellAttributesPtr)
/* 2F5AC 8003EDAC 6C50428C */  lw         $v0, %lo(CellAttributesPtr)($v0)
/* 2F5B0 8003EDB0 C0180300 */  sll        $v1, $v1, 3
/* 2F5B4 8003EDB4 21186200 */  addu       $v1, $v1, $v0
/* 2F5B8 8003EDB8 0800628C */  lw         $v0, 0x8($v1)
/* 2F5BC 8003EDBC 0800E003 */  jr         $ra
/* 2F5C0 8003EDC0 00000000 */   nop
.L8003EDC4:
/* 2F5C4 8003EDC4 0800E003 */  jr         $ra
/* 2F5C8 8003EDC8 21100000 */   addu      $v0, $zero, $zero
.size GetCellAttribute, . - GetCellAttribute
