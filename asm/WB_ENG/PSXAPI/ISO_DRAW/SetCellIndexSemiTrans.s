.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCellIndexSemiTrans
/* 55F54 80065754 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 55F58 80065758 0880023C */  lui        $v0, %hi(TestWorld + 0x18)
/* 55F5C 8006575C FF3F8430 */  andi       $a0, $a0, 0x3FFF
/* 55F60 80065760 A465438C */  lw         $v1, %lo(TestWorld + 0x18)($v0)
/* 55F64 80065764 80200400 */  sll        $a0, $a0, 2
/* 55F68 80065768 1000BFAF */  sw         $ra, 0x10($sp)
/* 55F6C 8006576C 21208300 */  addu       $a0, $a0, $v1
/* 55F70 80065770 0000848C */  lw         $a0, 0x0($a0)
/* 55F74 80065774 8883010C */  jal        MakeSemiTransCell
/* 55F78 80065778 01000524 */   addiu     $a1, $zero, 0x1
/* 55F7C 8006577C 1000BF8F */  lw         $ra, 0x10($sp)
/* 55F80 80065780 00000000 */  nop
/* 55F84 80065784 0800E003 */  jr         $ra
/* 55F88 80065788 1800BD27 */   addiu     $sp, $sp, 0x18
.size SetCellIndexSemiTrans, . - SetCellIndexSemiTrans
