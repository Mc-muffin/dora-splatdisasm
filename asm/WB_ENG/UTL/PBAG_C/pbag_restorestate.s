.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_restorestate
/* 414B8 80050CB8 C415828F */  lw         $v0, %gp_rel(SAVE_pbag_IDX)($gp)
/* 414BC 80050CBC C815838F */  lw         $v1, %gp_rel(SAVE_pbag_BASE)($gp)
/* 414C0 80050CC0 CC1582AF */  sw         $v0, %gp_rel(pbag_IDX)($gp)
/* 414C4 80050CC4 D01583AF */  sw         $v1, %gp_rel(pbag_BASE)($gp)
/* 414C8 80050CC8 0800E003 */  jr         $ra
/* 414CC 80050CCC 00000000 */   nop
.size pbag_restorestate, . - pbag_restorestate
