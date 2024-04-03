.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopGameClock
/* 23CCC 800334CC 7408828F */  lw         $v0, %gp_rel(PauseFlag)($gp)
/* 23CD0 800334D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23CD4 800334D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 23CD8 800334D8 21800000 */  addu       $s0, $zero, $zero
/* 23CDC 800334DC 09004014 */  bnez       $v0, .L80033504
/* 23CE0 800334E0 1400BFAF */   sw        $ra, 0x14($sp)
/* 23CE4 800334E4 8068000C */  jal        CheckETStateFORStopEnemyAI
/* 23CE8 800334E8 00000000 */   nop
/* 23CEC 800334EC 05004014 */  bnez       $v0, .L80033504
/* 23CF0 800334F0 0A000224 */   addiu     $v0, $zero, 0xA
/* 23CF4 800334F4 2014838F */  lw         $v1, %gp_rel(gGameState)($gp)
/* 23CF8 800334F8 00000000 */  nop
/* 23CFC 800334FC 03006214 */  bne        $v1, $v0, .L8003350C
/* 23D00 80033500 21100002 */   addu      $v0, $s0, $zero
.L80033504:
/* 23D04 80033504 01001024 */  addiu      $s0, $zero, 0x1
/* 23D08 80033508 21100002 */  addu       $v0, $s0, $zero
.L8003350C:
/* 23D0C 8003350C 1400BF8F */  lw         $ra, 0x14($sp)
/* 23D10 80033510 1000B08F */  lw         $s0, 0x10($sp)
/* 23D14 80033514 0800E003 */  jr         $ra
/* 23D18 80033518 1800BD27 */   addiu     $sp, $sp, 0x18
.size StopGameClock, . - StopGameClock
