.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionCel
/* 2EF44 8003E744 0880033C */  lui        $v1, %hi(TestWorld)
/* 2EF48 8003E748 8C65628C */  lw         $v0, %lo(TestWorld)($v1)
/* 2EF4C 8003E74C C3310600 */  sra        $a2, $a2, 7
/* 2EF50 8003E750 1800C200 */  mult       $a2, $v0
/* 2EF54 8003E754 12300000 */  mflo       $a2
/* 2EF58 8003E758 C3290500 */  sra        $a1, $a1, 7
/* 2EF5C 8003E75C 00000000 */  nop
/* 2EF60 8003E760 1800A200 */  mult       $a1, $v0
/* 2EF64 8003E764 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 2EF68 8003E768 12280000 */  mflo       $a1
/* 2EF6C 8003E76C 0400628C */  lw         $v0, 0x4($v1)
/* 2EF70 8003E770 00000000 */  nop
/* 2EF74 8003E774 1800C200 */  mult       $a2, $v0
/* 2EF78 8003E778 C3210400 */  sra        $a0, $a0, 7
/* 2EF7C 8003E77C 40200400 */  sll        $a0, $a0, 1
/* 2EF80 8003E780 40280500 */  sll        $a1, $a1, 1
/* 2EF84 8003E784 1400628C */  lw         $v0, 0x14($v1)
/* 2EF88 8003E788 12300000 */  mflo       $a2
/* 2EF8C 8003E78C 40300600 */  sll        $a2, $a2, 1
/* 2EF90 8003E790 2130C200 */  addu       $a2, $a2, $v0
/* 2EF94 8003E794 2128A600 */  addu       $a1, $a1, $a2
/* 2EF98 8003E798 21208500 */  addu       $a0, $a0, $a1
/* 2EF9C 8003E79C 00008284 */  lh         $v0, 0x0($a0)
/* 2EFA0 8003E7A0 00000000 */  nop
/* 2EFA4 8003E7A4 FF034230 */  andi       $v0, $v0, 0x3FF
/* 2EFA8 8003E7A8 FF034238 */  xori       $v0, $v0, 0x3FF
/* 2EFAC 8003E7AC 0800E003 */  jr         $ra
/* 2EFB0 8003E7B0 2B100200 */   sltu      $v0, $zero, $v0
.size CheckCollisionCel, . - CheckCollisionCel
