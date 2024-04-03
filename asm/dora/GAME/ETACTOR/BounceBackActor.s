.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BounceBackActor
/* B9C8 8001B1C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B9CC 8001B1CC 1000B0AF */  sw         $s0, 0x10($sp)
/* B9D0 8001B1D0 6C009024 */  addiu      $s0, $a0, 0x6C
/* B9D4 8001B1D4 1400BFAF */  sw         $ra, 0x14($sp)
/* B9D8 8001B1D8 47EB010C */  jal        rsin
/* B9DC 8001B1DC 00080424 */   addiu     $a0, $zero, 0x800
/* B9E0 8001B1E0 7BEB010C */  jal        rcos
/* B9E4 8001B1E4 00080424 */   addiu     $a0, $zero, 0x800
/* B9E8 8001B1E8 3001848F */  lw         $a0, %gp_rel(PatchOldXSpeed)($gp)
/* B9EC 8001B1EC 1400BF8F */  lw         $ra, 0x14($sp)
/* B9F0 8001B1F0 80180400 */  sll        $v1, $a0, 2
/* B9F4 8001B1F4 21186400 */  addu       $v1, $v1, $a0
/* B9F8 8001B1F8 80180300 */  sll        $v1, $v1, 2
/* B9FC 8001B1FC 3401848F */  lw         $a0, %gp_rel(PatchOldZSpeed)($gp)
/* BA00 8001B200 23180300 */  negu       $v1, $v1
/* BA04 8001B204 300003AE */  sw         $v1, 0x30($s0)
/* BA08 8001B208 80100400 */  sll        $v0, $a0, 2
/* BA0C 8001B20C 21104400 */  addu       $v0, $v0, $a0
/* BA10 8001B210 80100200 */  sll        $v0, $v0, 2
/* BA14 8001B214 23100200 */  negu       $v0, $v0
/* BA18 8001B218 380002AE */  sw         $v0, 0x38($s0)
/* BA1C 8001B21C 1000B08F */  lw         $s0, 0x10($sp)
/* BA20 8001B220 0800E003 */  jr         $ra
/* BA24 8001B224 1800BD27 */   addiu     $sp, $sp, 0x18
.size BounceBackActor, . - BounceBackActor
