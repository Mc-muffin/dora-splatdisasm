.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FreePickupActor
/* D454 8001CC54 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* D458 8001CC58 1000B0AF */  sw         $s0, 0x10($sp)
/* D45C 8001CC5C 21808000 */  addu       $s0, $a0, $zero
/* D460 8001CC60 1C00BFAF */  sw         $ra, 0x1C($sp)
/* D464 8001CC64 1800B2AF */  sw         $s2, 0x18($sp)
/* D468 8001CC68 1400B1AF */  sw         $s1, 0x14($sp)
/* D46C 8001CC6C 4400028E */  lw         $v0, 0x44($s0)
/* D470 8001CC70 3413918F */  lw         $s1, %gp_rel(gLevelMaxPool)($gp)
/* D474 8001CC74 1400528C */  lw         $s2, 0x14($v0)
/* D478 8001CC78 A972000C */  jal        RestartPickup
/* D47C 8001CC7C 00000000 */   nop
/* D480 8001CC80 1300201A */  blez       $s1, .L8001CCD0
/* D484 8001CC84 0980023C */   lui       $v0, %hi(PickupPool)
/* D488 8001CC88 FFFE0624 */  addiu      $a2, $zero, -0x101
/* D48C 8001CC8C 3C02858F */  lw         $a1, %gp_rel(NumActivePickupPool)($gp)
/* D490 8001CC90 505D4224 */  addiu      $v0, $v0, %lo(PickupPool)
/* D494 8001CC94 0C004424 */  addiu      $a0, $v0, 0xC
/* D498 8001CC98 21182002 */  addu       $v1, $s1, $zero
.L8001CC9C:
/* D49C 8001CC9C 0400828C */  lw         $v0, 0x4($a0)
/* D4A0 8001CCA0 00000000 */  nop
/* D4A4 8001CCA4 06005014 */  bne        $v0, $s0, .L8001CCC0
/* D4A8 8001CCA8 00000000 */   nop
/* D4AC 8001CCAC 000080AC */  sw         $zero, 0x0($a0)
/* D4B0 8001CCB0 1000028E */  lw         $v0, 0x10($s0)
/* D4B4 8001CCB4 FFFFA524 */  addiu      $a1, $a1, -0x1
/* D4B8 8001CCB8 24104600 */  and        $v0, $v0, $a2
/* D4BC 8001CCBC 100002AE */  sw         $v0, 0x10($s0)
.L8001CCC0:
/* D4C0 8001CCC0 FFFF6324 */  addiu      $v1, $v1, -0x1
/* D4C4 8001CCC4 F5FF6014 */  bnez       $v1, .L8001CC9C
/* D4C8 8001CCC8 14008424 */   addiu     $a0, $a0, 0x14
/* D4CC 8001CCCC 3C0285AF */  sw         $a1, %gp_rel(NumActivePickupPool)($gp)
.L8001CCD0:
/* D4D0 8001CCD0 1C00BF8F */  lw         $ra, 0x1C($sp)
/* D4D4 8001CCD4 02000224 */  addiu      $v0, $zero, 0x2
/* D4D8 8001CCD8 0C0042AE */  sw         $v0, 0xC($s2)
/* D4DC 8001CCDC 1800B28F */  lw         $s2, 0x18($sp)
/* D4E0 8001CCE0 1400B18F */  lw         $s1, 0x14($sp)
/* D4E4 8001CCE4 1000B08F */  lw         $s0, 0x10($sp)
/* D4E8 8001CCE8 0800E003 */  jr         $ra
/* D4EC 8001CCEC 2000BD27 */   addiu     $sp, $sp, 0x20
.size FreePickupActor, . - FreePickupActor
