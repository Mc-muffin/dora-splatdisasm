.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddNTPrim
/* 3B388 8004AB88 0000828C */  lw         $v0, 0x0($a0)
/* 3B38C 8004AB8C 00000000 */  nop
/* 3B390 8004AB90 04004010 */  beqz       $v0, .L8004ABA4
/* 3B394 8004AB94 00120200 */   sll       $v0, $v0, 8
/* 3B398 8004AB98 0200A2A8 */  swl        $v0, 0x2($a1)
/* 3B39C 8004AB9C 0800E003 */  jr         $ra
/* 3B3A0 8004ABA0 000085AC */   sw        $a1, 0x0($a0)
.L8004ABA4:
/* 3B3A4 8004ABA4 040085AC */  sw         $a1, 0x4($a0)
/* 3B3A8 8004ABA8 000085AC */  sw         $a1, 0x0($a0)
/* 3B3AC 8004ABAC 0800E003 */  jr         $ra
/* 3B3B0 8004ABB0 00000000 */   nop
.size AddNTPrim, . - AddNTPrim
