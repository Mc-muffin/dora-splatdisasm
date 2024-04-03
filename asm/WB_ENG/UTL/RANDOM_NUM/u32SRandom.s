.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel u32SRandom
/* 40B90 80050390 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40B94 80050394 1000BFAF */  sw         $ra, 0x10($sp)
/* 40B98 80050398 940F84AF */  sw         $a0, %gp_rel(rfxseed)($gp)
/* 40B9C 8005039C 43C2010C */  jal        srand
/* 40BA0 800503A0 00000000 */   nop
/* 40BA4 800503A4 1000BF8F */  lw         $ra, 0x10($sp)
/* 40BA8 800503A8 00000000 */  nop
/* 40BAC 800503AC 0800E003 */  jr         $ra
/* 40BB0 800503B0 1800BD27 */   addiu     $sp, $sp, 0x18
.size u32SRandom, . - u32SRandom
