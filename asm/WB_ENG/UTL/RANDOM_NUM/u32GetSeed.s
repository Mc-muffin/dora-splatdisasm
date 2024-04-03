.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel u32GetSeed
/* 40BB4 800503B4 940F828F */  lw         $v0, %gp_rel(rfxseed)($gp)
/* 40BB8 800503B8 0800E003 */  jr         $ra
/* 40BBC 800503BC 00000000 */   nop
.size u32GetSeed, . - u32GetSeed
