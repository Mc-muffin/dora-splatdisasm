.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckInventoryPickup
/* B774 8001AF74 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B778 8001AF78 1800B0AF */  sw         $s0, 0x18($sp)
/* B77C 8001AF7C 2180A000 */  addu       $s0, $a1, $zero
/* B780 8001AF80 1C00BFAF */  sw         $ra, 0x1C($sp)
/* B784 8001AF84 1000028E */  lw         $v0, 0x10($s0)
/* B788 8001AF88 00000000 */  nop
/* B78C 8001AF8C 00014230 */  andi       $v0, $v0, 0x100
/* B790 8001AF90 17004010 */  beqz       $v0, .L8001AFF0
/* B794 8001AF94 6C000226 */   addiu     $v0, $s0, 0x6C
/* B798 8001AF98 0C00438C */  lw         $v1, 0xC($v0)
/* B79C 8001AF9C 21200002 */  addu       $a0, $s0, $zero
/* B7A0 8001AFA0 1000A3AF */  sw         $v1, 0x10($sp)
/* B7A4 8001AFA4 0400468C */  lw         $a2, 0x4($v0)
/* B7A8 8001AFA8 0800478C */  lw         $a3, 0x8($v0)
/* B7AC 8001AFAC 69BE000C */  jal        RequestParticle
/* B7B0 8001AFB0 0B000524 */   addiu     $a1, $zero, 0xB
/* B7B4 8001AFB4 4B79000C */  jal        AddInventoryItem
/* B7B8 8001AFB8 21200002 */   addu      $a0, $s0, $zero
/* B7BC 8001AFBC 0980023C */  lui        $v0, %hi(ETActor)
/* B7C0 8001AFC0 4400838F */  lw         $v1, %gp_rel(DoraWaitState)($gp)
/* B7C4 8001AFC4 00000000 */  nop
/* B7C8 8001AFC8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* B7CC 8001AFCC 440083AF */  sw         $v1, %gp_rel(DoraWaitState)($gp)
/* B7D0 8001AFD0 0700601C */  bgtz       $v1, .L8001AFF0
/* B7D4 8001AFD4 B05A4224 */   addiu     $v0, $v0, %lo(ETActor)
/* B7D8 8001AFD8 0C00438C */  lw         $v1, 0xC($v0)
/* B7DC 8001AFDC 0B000224 */  addiu      $v0, $zero, 0xB
/* B7E0 8001AFE0 440080AF */  sw         $zero, %gp_rel(DoraWaitState)($gp)
/* B7E4 8001AFE4 02006210 */  beq        $v1, $v0, .L8001AFF0
/* B7E8 8001AFE8 00000000 */   nop
/* B7EC 8001AFEC 480080AF */  sw         $zero, %gp_rel(PLAYER_WAIT_FLAG)($gp)
.L8001AFF0:
/* B7F0 8001AFF0 1C00BF8F */  lw         $ra, 0x1C($sp)
/* B7F4 8001AFF4 1800B08F */  lw         $s0, 0x18($sp)
/* B7F8 8001AFF8 0800E003 */  jr         $ra
/* B7FC 8001AFFC 2000BD27 */   addiu     $sp, $sp, 0x20
.size CheckInventoryPickup, . - CheckInventoryPickup
