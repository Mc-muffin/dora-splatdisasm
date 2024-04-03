.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PatchHitLargeActorRoll
/* BA28 8001B228 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BA2C 8001B22C 2000B0AF */  sw         $s0, 0x20($sp)
/* BA30 8001B230 21808000 */  addu       $s0, $a0, $zero
/* BA34 8001B234 00080424 */  addiu      $a0, $zero, 0x800
/* BA38 8001B238 2400B1AF */  sw         $s1, 0x24($sp)
/* BA3C 8001B23C 2800BFAF */  sw         $ra, 0x28($sp)
/* BA40 8001B240 47EB010C */  jal        rsin
/* BA44 8001B244 6C001126 */   addiu     $s1, $s0, 0x6C
/* BA48 8001B248 7BEB010C */  jal        rcos
/* BA4C 8001B24C 00080424 */   addiu     $a0, $zero, 0x800
/* BA50 8001B250 21200002 */  addu       $a0, $s0, $zero
/* BA54 8001B254 04000524 */  addiu      $a1, $zero, 0x4
/* BA58 8001B258 3001828F */  lw         $v0, %gp_rel(PatchOldXSpeed)($gp)
/* BA5C 8001B25C 3401868F */  lw         $a2, %gp_rel(PatchOldZSpeed)($gp)
/* BA60 8001B260 80180200 */  sll        $v1, $v0, 2
/* BA64 8001B264 21186200 */  addu       $v1, $v1, $v0
/* BA68 8001B268 80180300 */  sll        $v1, $v1, 2
/* BA6C 8001B26C 23180300 */  negu       $v1, $v1
/* BA70 8001B270 80100600 */  sll        $v0, $a2, 2
/* BA74 8001B274 21104600 */  addu       $v0, $v0, $a2
/* BA78 8001B278 80100200 */  sll        $v0, $v0, 2
/* BA7C 8001B27C 23100200 */  negu       $v0, $v0
/* BA80 8001B280 300023AE */  sw         $v1, 0x30($s1)
/* BA84 8001B284 28E3000C */  jal        GetSeqNumFrames
/* BA88 8001B288 380022AE */   sw        $v0, 0x38($s1)
/* BA8C 8001B28C 21200002 */  addu       $a0, $s0, $zero
/* BA90 8001B290 04000524 */  addiu      $a1, $zero, 0x4
/* BA94 8001B294 02000324 */  addiu      $v1, $zero, 0x2
/* BA98 8001B298 2C011026 */  addiu      $s0, $s0, 0x12C
/* BA9C 8001B29C 21300000 */  addu       $a2, $zero, $zero
/* BAA0 8001B2A0 21384000 */  addu       $a3, $v0, $zero
/* BAA4 8001B2A4 1000A3AF */  sw         $v1, 0x10($sp)
/* BAA8 8001B2A8 1400A3AF */  sw         $v1, 0x14($sp)
/* BAAC 8001B2AC 72E2000C */  jal        RequestAnim
/* BAB0 8001B2B0 1800B0AF */   sw        $s0, 0x18($sp)
/* BAB4 8001B2B4 2800BF8F */  lw         $ra, 0x28($sp)
/* BAB8 8001B2B8 2400B18F */  lw         $s1, 0x24($sp)
/* BABC 8001B2BC 2000B08F */  lw         $s0, 0x20($sp)
/* BAC0 8001B2C0 0800E003 */  jr         $ra
/* BAC4 8001B2C4 3000BD27 */   addiu     $sp, $sp, 0x30
.size PatchHitLargeActorRoll, . - PatchHitLargeActorRoll
