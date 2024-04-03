.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PolyPoolAddr
/* 3F2C4 8004EAC4 7C15828F */  lw         $v0, %gp_rel(MEM_PolyPool)($gp)
/* 3F2C8 8004EAC8 0800E003 */  jr         $ra
/* 3F2CC 8004EACC 00000000 */   nop
.size PolyPoolAddr, . - PolyPoolAddr
