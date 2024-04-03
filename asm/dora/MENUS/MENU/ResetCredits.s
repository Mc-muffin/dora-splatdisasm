.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetCredits
/* 18AB0 800282B0 000880AF */  sw         $zero, %gp_rel(CreditsOffset)($gp)
/* 18AB4 800282B4 040880AF */  sw         $zero, %gp_rel(CreditsTimer)($gp)
/* 18AB8 800282B8 0800E003 */  jr         $ra
/* 18ABC 800282BC 00000000 */   nop
.size ResetCredits, . - ResetCredits
