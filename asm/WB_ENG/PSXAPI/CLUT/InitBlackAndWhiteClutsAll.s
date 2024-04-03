.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitBlackAndWhiteClutsAll
/* 4EC50 8005E450 01000224 */  addiu      $v0, $zero, 0x1
/* 4EC54 8005E454 5C1182AF */  sw         $v0, %gp_rel(BWClut_State)($gp)
/* 4EC58 8005E458 601180AF */  sw         $zero, %gp_rel(BWClut_Index)($gp)
/* 4EC5C 8005E45C 0800E003 */  jr         $ra
/* 4EC60 8005E460 00000000 */   nop
.size InitBlackAndWhiteClutsAll, . - InitBlackAndWhiteClutsAll
