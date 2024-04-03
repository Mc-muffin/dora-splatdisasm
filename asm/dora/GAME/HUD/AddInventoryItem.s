.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddInventoryItem
/* ED2C 8001E52C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* ED30 8001E530 1000B0AF */  sw         $s0, 0x10($sp)
/* ED34 8001E534 21808000 */  addu       $s0, $a0, $zero
/* ED38 8001E538 21200000 */  addu       $a0, $zero, $zero
/* ED3C 8001E53C 0980023C */  lui        $v0, %hi(InventoryActorArray)
/* ED40 8001E540 A0634324 */  addiu      $v1, $v0, %lo(InventoryActorArray)
/* ED44 8001E544 1400BFAF */  sw         $ra, 0x14($sp)
.L8001E548:
/* ED48 8001E548 0000628C */  lw         $v0, 0x0($v1)
/* ED4C 8001E54C 00000000 */  nop
/* ED50 8001E550 1A004014 */  bnez       $v0, .L8001E5BC
/* ED54 8001E554 01008424 */   addiu     $a0, $a0, 0x1
/* ED58 8001E558 21200000 */  addu       $a0, $zero, $zero
/* ED5C 8001E55C FA000524 */  addiu      $a1, $zero, 0xFA
/* ED60 8001E560 6004828F */  lw         $v0, %gp_rel(NumInventoryActors)($gp)
/* ED64 8001E564 000070AC */  sw         $s0, 0x0($v1)
/* ED68 8001E568 01004224 */  addiu      $v0, $v0, 0x1
/* ED6C 8001E56C 600482AF */  sw         $v0, %gp_rel(NumInventoryActors)($gp)
/* ED70 8001E570 8666010C */  jal        Sys_VibrationBuzzWork
/* ED74 8001E574 32000624 */   addiu     $a2, $zero, 0x32
/* ED78 8001E578 21200002 */  addu       $a0, $s0, $zero
/* ED7C 8001E57C FFFE0324 */  addiu      $v1, $zero, -0x101
/* ED80 8001E580 1000028E */  lw         $v0, 0x10($s0)
/* ED84 8001E584 4400058E */  lw         $a1, 0x44($s0)
/* ED88 8001E588 24104300 */  and        $v0, $v0, $v1
/* ED8C 8001E58C 100002AE */  sw         $v0, 0x10($s0)
/* ED90 8001E590 1C00A38C */  lw         $v1, 0x1C($a1)
/* ED94 8001E594 FBFF0224 */  addiu      $v0, $zero, -0x5
/* ED98 8001E598 24186200 */  and        $v1, $v1, $v0
/* ED9C 8001E59C EC01010C */  jal        TriggerSoundEvent
/* EDA0 8001E5A0 1C00A3AC */   sw        $v1, 0x1C($a1)
/* EDA4 8001E5A4 09000424 */  addiu      $a0, $zero, 0x9
/* EDA8 8001E5A8 21280000 */  addu       $a1, $zero, $zero
/* EDAC 8001E5AC 6F4A010C */  jal        pxm_sendevent
/* EDB0 8001E5B0 21300000 */   addu      $a2, $zero, $zero
/* EDB4 8001E5B4 72790008 */  j          .L8001E5C8
/* EDB8 8001E5B8 00000000 */   nop
.L8001E5BC:
/* EDBC 8001E5BC 08008228 */  slti       $v0, $a0, 0x8
/* EDC0 8001E5C0 E1FF4014 */  bnez       $v0, .L8001E548
/* EDC4 8001E5C4 04006324 */   addiu     $v1, $v1, 0x4
.L8001E5C8:
/* EDC8 8001E5C8 1400BF8F */  lw         $ra, 0x14($sp)
/* EDCC 8001E5CC 1000B08F */  lw         $s0, 0x10($sp)
/* EDD0 8001E5D0 0800E003 */  jr         $ra
/* EDD4 8001E5D4 1800BD27 */   addiu     $sp, $sp, 0x18
.size AddInventoryItem, . - AddInventoryItem
