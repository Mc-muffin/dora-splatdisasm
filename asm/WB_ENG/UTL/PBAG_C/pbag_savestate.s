.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_savestate
/* 414A0 80050CA0 CC15828F */  lw         $v0, %gp_rel(pbag_IDX)($gp)
/* 414A4 80050CA4 D015838F */  lw         $v1, %gp_rel(pbag_BASE)($gp)
/* 414A8 80050CA8 C41582AF */  sw         $v0, %gp_rel(SAVE_pbag_IDX)($gp)
/* 414AC 80050CAC C81583AF */  sw         $v1, %gp_rel(SAVE_pbag_BASE)($gp)
/* 414B0 80050CB0 0800E003 */  jr         $ra
/* 414B4 80050CB4 00000000 */   nop
.size pbag_savestate, . - pbag_savestate
