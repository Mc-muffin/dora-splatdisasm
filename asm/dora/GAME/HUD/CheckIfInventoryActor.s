.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckIfInventoryActor
/* EE1C 8001E61C 21280000 */  addu       $a1, $zero, $zero
/* EE20 8001E620 0980023C */  lui        $v0, %hi(InventoryActorArray)
/* EE24 8001E624 A0634324 */  addiu      $v1, $v0, %lo(InventoryActorArray)
.L8001E628:
/* EE28 8001E628 0000628C */  lw         $v0, 0x0($v1)
/* EE2C 8001E62C 00000000 */  nop
/* EE30 8001E630 04004414 */  bne        $v0, $a0, .L8001E644
/* EE34 8001E634 0100A524 */   addiu     $a1, $a1, 0x1
/* EE38 8001E638 640484AF */  sw         $a0, %gp_rel(SelectedInventoryActor)($gp)
/* EE3C 8001E63C 0800E003 */  jr         $ra
/* EE40 8001E640 01000224 */   addiu     $v0, $zero, 0x1
.L8001E644:
/* EE44 8001E644 0800A228 */  slti       $v0, $a1, 0x8
/* EE48 8001E648 F7FF4014 */  bnez       $v0, .L8001E628
/* EE4C 8001E64C 04006324 */   addiu     $v1, $v1, 0x4
/* EE50 8001E650 0800E003 */  jr         $ra
/* EE54 8001E654 21100000 */   addu      $v0, $zero, $zero
.size CheckIfInventoryActor, . - CheckIfInventoryActor
