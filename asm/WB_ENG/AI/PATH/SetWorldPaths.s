.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetWorldPaths
/* 35830 80045030 EC1484AF */  sw         $a0, %gp_rel(WorldPaths)($gp)
/* 35834 80045034 0800E003 */  jr         $ra
/* 35838 80045038 00000000 */   nop
.size SetWorldPaths, . - SetWorldPaths
