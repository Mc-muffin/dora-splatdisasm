.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearNTag
/* 3B368 8004AB68 0500A010 */  beqz       $a1, .L8004AB80
/* 3B36C 8004AB6C 00000000 */   nop
.L8004AB70:
/* 3B370 8004AB70 000080AC */  sw         $zero, 0x0($a0)
/* 3B374 8004AB74 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 3B378 8004AB78 FDFFA014 */  bnez       $a1, .L8004AB70
/* 3B37C 8004AB7C 08008424 */   addiu     $a0, $a0, 0x8
.L8004AB80:
/* 3B380 8004AB80 0800E003 */  jr         $ra
/* 3B384 8004AB84 00000000 */   nop
.size ClearNTag, . - ClearNTag
