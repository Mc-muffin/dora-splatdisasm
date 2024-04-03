.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetShadows
/* 52CF0 800624F0 D41180AF */  sw         $zero, %gp_rel(ShadowOffset)($gp)
/* 52CF4 800624F4 0800E003 */  jr         $ra
/* 52CF8 800624F8 00000000 */   nop
.size ResetShadows, . - ResetShadows
