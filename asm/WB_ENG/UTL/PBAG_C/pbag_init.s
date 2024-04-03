.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_init
/* 412F0 80050AF0 D01584AF */  sw         $a0, %gp_rel(pbag_BASE)($gp)
/* 412F4 80050AF4 CC1580AF */  sw         $zero, %gp_rel(pbag_IDX)($gp)
/* 412F8 80050AF8 0800E003 */  jr         $ra
/* 412FC 80050AFC 00000000 */   nop
.size pbag_init, . - pbag_init
