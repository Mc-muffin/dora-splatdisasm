.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocPickup
/* D360 8001CB60 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* D364 8001CB64 0980023C */  lui        $v0, %hi(PickupPool)
/* D368 8001CB68 505D4824 */  addiu      $t0, $v0, %lo(PickupPool)
/* D36C 8001CB6C 21180000 */  addu       $v1, $zero, $zero
/* D370 8001CB70 21488000 */  addu       $t1, $a0, $zero
/* D374 8001CB74 2150A000 */  addu       $t2, $a1, $zero
/* D378 8001CB78 3413848F */  lw         $a0, %gp_rel(gLevelMaxPool)($gp)
/* D37C 8001CB7C 2158C000 */  addu       $t3, $a2, $zero
/* D380 8001CB80 1C00B1AF */  sw         $s1, 0x1C($sp)
/* D384 8001CB84 2188E000 */  addu       $s1, $a3, $zero
/* D388 8001CB88 2000BFAF */  sw         $ra, 0x20($sp)
/* D38C 8001CB8C 1F008018 */  blez       $a0, .L8001CC0C
/* D390 8001CB90 1800B0AF */   sw        $s0, 0x18($sp)
.L8001CB94:
/* D394 8001CB94 0C00028D */  lw         $v0, 0xC($t0)
/* D398 8001CB98 00000000 */  nop
/* D39C 8001CB9C 18004014 */  bnez       $v0, .L8001CC00
/* D3A0 8001CBA0 01006324 */   addiu     $v1, $v1, 0x1
/* D3A4 8001CBA4 01000224 */  addiu      $v0, $zero, 0x1
/* D3A8 8001CBA8 0A000324 */  addiu      $v1, $zero, 0xA
/* D3AC 8001CBAC 0C0002AD */  sw         $v0, 0xC($t0)
/* D3B0 8001CBB0 32000224 */  addiu      $v0, $zero, 0x32
/* D3B4 8001CBB4 21282001 */  addu       $a1, $t1, $zero
/* D3B8 8001CBB8 21304001 */  addu       $a2, $t2, $zero
/* D3BC 8001CBBC 1000108D */  lw         $s0, 0x10($t0)
/* D3C0 8001CBC0 21386001 */  addu       $a3, $t3, $zero
/* D3C4 8001CBC4 1000A3AF */  sw         $v1, 0x10($sp)
/* D3C8 8001CBC8 1400A2AF */  sw         $v0, 0x14($sp)
/* D3CC 8001CBCC B2F9000C */  jal        InitObjectPhysics
/* D3D0 8001CBD0 6C000426 */   addiu     $a0, $s0, 0x6C
/* D3D4 8001CBD4 1000048E */  lw         $a0, 0x10($s0)
/* D3D8 8001CBD8 96000324 */  addiu      $v1, $zero, 0x96
/* D3DC 8001CBDC 5C0003AE */  sw         $v1, 0x5C($s0)
/* D3E0 8001CBE0 3C02838F */  lw         $v1, %gp_rel(NumActivePickupPool)($gp)
/* D3E4 8001CBE4 640011AE */  sw         $s1, 0x64($s0)
/* D3E8 8001CBE8 00018434 */  ori        $a0, $a0, 0x100
/* D3EC 8001CBEC 01006324 */  addiu      $v1, $v1, 0x1
/* D3F0 8001CBF0 100004AE */  sw         $a0, 0x10($s0)
/* D3F4 8001CBF4 3C0283AF */  sw         $v1, %gp_rel(NumActivePickupPool)($gp)
/* D3F8 8001CBF8 04730008 */  j          .L8001CC10
/* D3FC 8001CBFC 21100002 */   addu      $v0, $s0, $zero
.L8001CC00:
/* D400 8001CC00 2A106400 */  slt        $v0, $v1, $a0
/* D404 8001CC04 E3FF4014 */  bnez       $v0, .L8001CB94
/* D408 8001CC08 14000825 */   addiu     $t0, $t0, 0x14
.L8001CC0C:
/* D40C 8001CC0C 21100000 */  addu       $v0, $zero, $zero
.L8001CC10:
/* D410 8001CC10 2000BF8F */  lw         $ra, 0x20($sp)
/* D414 8001CC14 1C00B18F */  lw         $s1, 0x1C($sp)
/* D418 8001CC18 1800B08F */  lw         $s0, 0x18($sp)
/* D41C 8001CC1C 0800E003 */  jr         $ra
/* D420 8001CC20 2800BD27 */   addiu     $sp, $sp, 0x28
.size AllocPickup, . - AllocPickup
