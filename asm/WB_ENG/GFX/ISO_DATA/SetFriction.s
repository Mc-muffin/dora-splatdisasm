.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetFriction
/* 3DF8C 8004D78C FF038430 */  andi       $a0, $a0, 0x3FF
/* 3DF90 8004D790 80100400 */  sll        $v0, $a0, 2
/* 3DF94 8004D794 21104400 */  addu       $v0, $v0, $a0
/* 3DF98 8004D798 080E838F */  lw         $v1, %gp_rel(CellAttributesPtr)($gp)
/* 3DF9C 8004D79C C0100200 */  sll        $v0, $v0, 3
/* 3DFA0 8004D7A0 21186200 */  addu       $v1, $v1, $v0
/* 3DFA4 8004D7A4 0800E003 */  jr         $ra
/* 3DFA8 8004D7A8 040065AC */   sw        $a1, 0x4($v1)
.size SetFriction, . - SetFriction
