.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_getrawptr
/* 414D0 80050CD0 CC15828F */  lw         $v0, %gp_rel(pbag_IDX)($gp)
/* 414D4 80050CD4 D015838F */  lw         $v1, %gp_rel(pbag_BASE)($gp)
/* 414D8 80050CD8 80100200 */  sll        $v0, $v0, 2
/* 414DC 80050CDC 0800E003 */  jr         $ra
/* 414E0 80050CE0 21106200 */   addu      $v0, $v1, $v0
.size pbag_getrawptr, . - pbag_getrawptr
