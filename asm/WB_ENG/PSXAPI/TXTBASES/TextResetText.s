.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextResetText
/* 49804 80059004 741080AF */  sw         $zero, %gp_rel(gTextCurrentLetter)($gp)
/* 49808 80059008 6C1080AF */  sw         $zero, %gp_rel(gTextNumStrings)($gp)
/* 4980C 8005900C 0800E003 */  jr         $ra
/* 49810 80059010 00000000 */   nop
.size TextResetText, . - TextResetText
