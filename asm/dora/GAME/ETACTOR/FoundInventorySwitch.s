.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FoundInventorySwitch
/* BAC8 8001B2C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BACC 8001B2CC 1000B0AF */  sw         $s0, 0x10($sp)
/* BAD0 8001B2D0 0980103C */  lui        $s0, %hi(SelectedInventoryActor)
/* BAD4 8001B2D4 C846108E */  lw         $s0, %lo(SelectedInventoryActor)($s0)
/* BAD8 8001B2D8 00000000 */  nop
/* BADC 8001B2DC 12000012 */  beqz       $s0, .L8001B328
/* BAE0 8001B2E0 1400BFAF */   sw        $ra, 0x14($sp)
/* BAE4 8001B2E4 0980013C */  lui        $at, %hi(SelectedInventoryActor)
/* BAE8 8001B2E8 C84620AC */  sw         $zero, %lo(SelectedInventoryActor)($at)
/* BAEC 8001B2EC 7679000C */  jal        SubInventoryItem
/* BAF0 8001B2F0 21200002 */   addu      $a0, $s0, $zero
/* BAF4 8001B2F4 08000424 */  addiu      $a0, $zero, 0x8
/* BAF8 8001B2F8 21280000 */  addu       $a1, $zero, $zero
/* BAFC 8001B2FC 6F4A010C */  jal        pxm_sendevent
/* BB00 8001B300 21300000 */   addu      $a2, $zero, $zero
/* BB04 8001B304 FFFE0324 */  addiu      $v1, $zero, -0x101
/* BB08 8001B308 1000028E */  lw         $v0, 0x10($s0)
/* BB0C 8001B30C 4400048E */  lw         $a0, 0x44($s0)
/* BB10 8001B310 24104300 */  and        $v0, $v0, $v1
/* BB14 8001B314 100002AE */  sw         $v0, 0x10($s0)
/* BB18 8001B318 1C00838C */  lw         $v1, 0x1C($a0)
/* BB1C 8001B31C FBFF0224 */  addiu      $v0, $zero, -0x5
/* BB20 8001B320 24186200 */  and        $v1, $v1, $v0
/* BB24 8001B324 1C0083AC */  sw         $v1, 0x1C($a0)
.L8001B328:
/* BB28 8001B328 1400BF8F */  lw         $ra, 0x14($sp)
/* BB2C 8001B32C 1000B08F */  lw         $s0, 0x10($sp)
/* BB30 8001B330 0800E003 */  jr         $ra
/* BB34 8001B334 1800BD27 */   addiu     $sp, $sp, 0x18
.size FoundInventorySwitch, . - FoundInventorySwitch
