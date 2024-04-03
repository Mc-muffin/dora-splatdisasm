.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FreePickup
/* D2E0 8001CAE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* D2E4 8001CAE4 1000B0AF */  sw         $s0, 0x10($sp)
/* D2E8 8001CAE8 1400B1AF */  sw         $s1, 0x14($sp)
/* D2EC 8001CAEC 3413918F */  lw         $s1, %gp_rel(gLevelMaxPool)($gp)
/* D2F0 8001CAF0 1800BFAF */  sw         $ra, 0x18($sp)
/* D2F4 8001CAF4 A972000C */  jal        RestartPickup
/* D2F8 8001CAF8 21808000 */   addu      $s0, $a0, $zero
/* D2FC 8001CAFC 1300201A */  blez       $s1, .L8001CB4C
/* D300 8001CB00 0980023C */   lui       $v0, %hi(PickupPool)
/* D304 8001CB04 FFFE0624 */  addiu      $a2, $zero, -0x101
/* D308 8001CB08 3C02858F */  lw         $a1, %gp_rel(NumActivePickupPool)($gp)
/* D30C 8001CB0C 505D4224 */  addiu      $v0, $v0, %lo(PickupPool)
/* D310 8001CB10 0C004424 */  addiu      $a0, $v0, 0xC
/* D314 8001CB14 21182002 */  addu       $v1, $s1, $zero
.L8001CB18:
/* D318 8001CB18 0400828C */  lw         $v0, 0x4($a0)
/* D31C 8001CB1C 00000000 */  nop
/* D320 8001CB20 06005014 */  bne        $v0, $s0, .L8001CB3C
/* D324 8001CB24 00000000 */   nop
/* D328 8001CB28 000080AC */  sw         $zero, 0x0($a0)
/* D32C 8001CB2C 1000028E */  lw         $v0, 0x10($s0)
/* D330 8001CB30 FFFFA524 */  addiu      $a1, $a1, -0x1
/* D334 8001CB34 24104600 */  and        $v0, $v0, $a2
/* D338 8001CB38 100002AE */  sw         $v0, 0x10($s0)
.L8001CB3C:
/* D33C 8001CB3C FFFF6324 */  addiu      $v1, $v1, -0x1
/* D340 8001CB40 F5FF6014 */  bnez       $v1, .L8001CB18
/* D344 8001CB44 14008424 */   addiu     $a0, $a0, 0x14
/* D348 8001CB48 3C0285AF */  sw         $a1, %gp_rel(NumActivePickupPool)($gp)
.L8001CB4C:
/* D34C 8001CB4C 1800BF8F */  lw         $ra, 0x18($sp)
/* D350 8001CB50 1400B18F */  lw         $s1, 0x14($sp)
/* D354 8001CB54 1000B08F */  lw         $s0, 0x10($sp)
/* D358 8001CB58 0800E003 */  jr         $ra
/* D35C 8001CB5C 2000BD27 */   addiu     $sp, $sp, 0x20
.size FreePickup, . - FreePickup
