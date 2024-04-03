.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Getindex
/* 2EFBC 8003E7BC 0880033C */  lui        $v1, %hi(TestWorld)
/* 2EFC0 8003E7C0 8C65628C */  lw         $v0, %lo(TestWorld)($v1)
/* 2EFC4 8003E7C4 C3310600 */  sra        $a2, $a2, 7
/* 2EFC8 8003E7C8 1800C200 */  mult       $a2, $v0
/* 2EFCC 8003E7CC 12300000 */  mflo       $a2
/* 2EFD0 8003E7D0 C3290500 */  sra        $a1, $a1, 7
/* 2EFD4 8003E7D4 00000000 */  nop
/* 2EFD8 8003E7D8 1800A200 */  mult       $a1, $v0
/* 2EFDC 8003E7DC 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 2EFE0 8003E7E0 12280000 */  mflo       $a1
/* 2EFE4 8003E7E4 0400628C */  lw         $v0, 0x4($v1)
/* 2EFE8 8003E7E8 00000000 */  nop
/* 2EFEC 8003E7EC 1800C200 */  mult       $a2, $v0
/* 2EFF0 8003E7F0 C3210400 */  sra        $a0, $a0, 7
/* 2EFF4 8003E7F4 40200400 */  sll        $a0, $a0, 1
/* 2EFF8 8003E7F8 40280500 */  sll        $a1, $a1, 1
/* 2EFFC 8003E7FC 1400628C */  lw         $v0, 0x14($v1)
/* 2F000 8003E800 12300000 */  mflo       $a2
/* 2F004 8003E804 40300600 */  sll        $a2, $a2, 1
/* 2F008 8003E808 2130C200 */  addu       $a2, $a2, $v0
/* 2F00C 8003E80C 2128A600 */  addu       $a1, $a1, $a2
/* 2F010 8003E810 21208500 */  addu       $a0, $a0, $a1
/* 2F014 8003E814 00008284 */  lh         $v0, 0x0($a0)
/* 2F018 8003E818 0800E003 */  jr         $ra
/* 2F01C 8003E81C 00000000 */   nop
.size Getindex, . - Getindex
