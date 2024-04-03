.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchWorldForHealth
/* 14B1C 8002431C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 14B20 80024320 21280000 */  addu       $a1, $zero, $zero
/* 14B24 80024324 0880023C */  lui        $v0, %hi(TestWorld)
/* 14B28 80024328 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 14B2C 8002432C 1800BFAF */  sw         $ra, 0x18($sp)
/* 14B30 80024330 1400B1AF */  sw         $s1, 0x14($sp)
/* 14B34 80024334 1000B0AF */  sw         $s0, 0x10($sp)
/* 14B38 80024338 1C00448C */  lw         $a0, 0x1C($v0)
/* 14B3C 8002433C 1000428C */  lw         $v0, 0x10($v0)
/* 14B40 80024340 00000000 */  nop
/* 14B44 80024344 0A004018 */  blez       $v0, .L80024370
/* 14B48 80024348 06000624 */   addiu     $a2, $zero, 0x6
/* 14B4C 8002434C 21184000 */  addu       $v1, $v0, $zero
.L80024350:
/* 14B50 80024350 1000828C */  lw         $v0, 0x10($a0)
/* 14B54 80024354 00000000 */  nop
/* 14B58 80024358 02004614 */  bne        $v0, $a2, .L80024364
/* 14B5C 8002435C 00000000 */   nop
/* 14B60 80024360 0100A524 */  addiu      $a1, $a1, 0x1
.L80024364:
/* 14B64 80024364 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 14B68 80024368 F9FF6014 */  bnez       $v1, .L80024350
/* 14B6C 8002436C 24008424 */   addiu     $a0, $a0, 0x24
.L80024370:
/* 14B70 80024370 2188A000 */  addu       $s1, $a1, $zero
/* 14B74 80024374 AD85000C */  jal        SearchForDigActors
/* 14B78 80024378 06000424 */   addiu     $a0, $zero, 0x6
/* 14B7C 8002437C 06000424 */  addiu      $a0, $zero, 0x6
/* 14B80 80024380 8085000C */  jal        SearchForCrateActors
/* 14B84 80024384 21804000 */   addu      $s0, $v0, $zero
/* 14B88 80024388 21800202 */  addu       $s0, $s0, $v0
/* 14B8C 8002438C 21103002 */  addu       $v0, $s1, $s0
/* 14B90 80024390 1800BF8F */  lw         $ra, 0x18($sp)
/* 14B94 80024394 1400B18F */  lw         $s1, 0x14($sp)
/* 14B98 80024398 1000B08F */  lw         $s0, 0x10($sp)
/* 14B9C 8002439C 0800E003 */  jr         $ra
/* 14BA0 800243A0 2000BD27 */   addiu     $sp, $sp, 0x20
.size SearchWorldForHealth, . - SearchWorldForHealth
