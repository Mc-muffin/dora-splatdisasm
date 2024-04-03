.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitBlackAndWhiteCluts
/* 4EC28 8005E428 03000224 */  addiu      $v0, $zero, 0x3
/* 4EC2C 8005E42C 5C1182AF */  sw         $v0, %gp_rel(BWClut_State)($gp)
/* 4EC30 8005E430 601180AF */  sw         $zero, %gp_rel(BWClut_Index)($gp)
/* 4EC34 8005E434 0800E003 */  jr         $ra
/* 4EC38 8005E438 00000000 */   nop
.size InitBlackAndWhiteCluts, . - InitBlackAndWhiteCluts
