.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel prepareExit
/* 4014C 8004F94C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40150 8004F950 1000BFAF */  sw         $ra, 0x10($sp)
/* 40154 8004F954 2C7B010C */  jal        PauseXA
/* 40158 8004F958 02000424 */   addiu     $a0, $zero, 0x2
/* 4015C 8004F95C 76FE010C */  jal        DecDCToutCallback
/* 40160 8004F960 21200000 */   addu      $a0, $zero, $zero
/* 40164 8004F964 1BC9010C */  jal        StUnSetRing
/* 40168 8004F968 00000000 */   nop
/* 4016C 8004F96C 09000424 */  addiu      $a0, $zero, 0x9
/* 40170 8004F970 21280000 */  addu       $a1, $zero, $zero
/* 40174 8004F974 5FD3010C */  jal        CdControlB
/* 40178 8004F978 21300000 */   addu      $a2, $zero, $zero
/* 4017C 8004F97C 1000BF8F */  lw         $ra, 0x10($sp)
/* 40180 8004F980 00000000 */  nop
/* 40184 8004F984 0800E003 */  jr         $ra
/* 40188 8004F988 1800BD27 */   addiu     $sp, $sp, 0x18
.size prepareExit, . - prepareExit
