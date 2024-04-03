.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SubInventoryItem
/* EDD8 8001E5D8 21300000 */  addu       $a2, $zero, $zero
/* EDDC 8001E5DC 6004858F */  lw         $a1, %gp_rel(NumInventoryActors)($gp)
/* EDE0 8001E5E0 0980023C */  lui        $v0, %hi(InventoryActorArray)
/* EDE4 8001E5E4 A0634324 */  addiu      $v1, $v0, %lo(InventoryActorArray)
.L8001E5E8:
/* EDE8 8001E5E8 0000628C */  lw         $v0, 0x0($v1)
/* EDEC 8001E5EC 00000000 */  nop
/* EDF0 8001E5F0 04004414 */  bne        $v0, $a0, .L8001E604
/* EDF4 8001E5F4 0100C624 */   addiu     $a2, $a2, 0x1
/* EDF8 8001E5F8 000060AC */  sw         $zero, 0x0($v1)
/* EDFC 8001E5FC 84790008 */  j          .L8001E610
/* EE00 8001E600 FFFFA524 */   addiu     $a1, $a1, -0x1
.L8001E604:
/* EE04 8001E604 0800C228 */  slti       $v0, $a2, 0x8
/* EE08 8001E608 F7FF4014 */  bnez       $v0, .L8001E5E8
/* EE0C 8001E60C 04006324 */   addiu     $v1, $v1, 0x4
.L8001E610:
/* EE10 8001E610 600485AF */  sw         $a1, %gp_rel(NumInventoryActors)($gp)
/* EE14 8001E614 0800E003 */  jr         $ra
/* EE18 8001E618 00000000 */   nop
.size SubInventoryItem, . - SubInventoryItem
