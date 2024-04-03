.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerBridgePieceXA
/* 30D90 80040590 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 30D94 80040594 0980033C */  lui        $v1, %hi(NumInventoryActors)
/* 30D98 80040598 C446638C */  lw         $v1, %lo(NumInventoryActors)($v1)
/* 30D9C 8004059C 04000224 */  addiu      $v0, $zero, 0x4
/* 30DA0 800405A0 07006214 */  bne        $v1, $v0, .L800405C0
/* 30DA4 800405A4 1000BFAF */   sw        $ra, 0x10($sp)
/* 30DA8 800405A8 2C00858C */  lw         $a1, 0x2C($a0)
/* 30DAC 800405AC 3400868C */  lw         $a2, 0x34($a0)
/* 30DB0 800405B0 6F4A010C */  jal        pxm_sendevent
/* 30DB4 800405B4 2E000424 */   addiu     $a0, $zero, 0x2E
/* 30DB8 800405B8 71010108 */  j          .L800405C4
/* 30DBC 800405BC 00000000 */   nop
.L800405C0:
/* 30DC0 800405C0 0C0080AC */  sw         $zero, 0xC($a0)
.L800405C4:
/* 30DC4 800405C4 1000BF8F */  lw         $ra, 0x10($sp)
/* 30DC8 800405C8 00000000 */  nop
/* 30DCC 800405CC 0800E003 */  jr         $ra
/* 30DD0 800405D0 1800BD27 */   addiu     $sp, $sp, 0x18
.size TriggerBridgePieceXA, . - TriggerBridgePieceXA
