.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Replace256CLUT
/* 4EA64 8005E264 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EA68 8005E268 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EA6C 8005E26C 2180A000 */  addu       $s0, $a1, $zero
/* 4EA70 8005E270 21300002 */  addu       $a2, $s0, $zero
/* 4EA74 8005E274 0C80033C */  lui        $v1, %hi(gCLUTUseTable)
/* 4EA78 8005E278 1800B2AF */  sw         $s2, 0x18($sp)
/* 4EA7C 8005E27C A8C47224 */  addiu      $s2, $v1, %lo(gCLUTUseTable)
/* 4EA80 8005E280 80111000 */  sll        $v0, $s0, 6
/* 4EA84 8005E284 21105000 */  addu       $v0, $v0, $s0
/* 4EA88 8005E288 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EA8C 8005E28C 40880200 */  sll        $s1, $v0, 1
/* 4EA90 8005E290 21185102 */  addu       $v1, $s2, $s1
/* 4EA94 8005E294 02000224 */  addiu      $v0, $zero, 0x2
/* 4EA98 8005E298 21286000 */  addu       $a1, $v1, $zero
/* 4EA9C 8005E29C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 4EAA0 8005E2A0 220062A4 */  sh         $v0, 0x22($v1)
/* 4EAA4 8005E2A4 C0030226 */  addiu      $v0, $s0, 0x3C0
/* 4EAA8 8005E2A8 02000106 */  bgez       $s0, .L8005E2B4
/* 4EAAC 8005E2AC 2400A2A4 */   sh        $v0, 0x24($a1)
/* 4EAB0 8005E2B0 3F000626 */  addiu      $a2, $s0, 0x3F
.L8005E2B4:
/* 4EAB4 8005E2B4 83310600 */  sra        $a2, $a2, 6
/* 4EAB8 8005E2B8 0200C524 */  addiu      $a1, $a2, 0x2
/* 4EABC 8005E2BC 80310600 */  sll        $a2, $a2, 6
/* 4EAC0 8005E2C0 23300602 */  subu       $a2, $s0, $a2
/* 4EAC4 8005E2C4 002A0500 */  sll        $a1, $a1, 8
/* 4EAC8 8005E2C8 1BE6010C */  jal        LoadClut
/* 4EACC 8005E2CC C003C624 */   addiu     $a2, $a2, 0x3C0
/* 4EAD0 8005E2D0 21185102 */  addu       $v1, $s2, $s1
/* 4EAD4 8005E2D4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4EAD8 8005E2D8 1800B28F */  lw         $s2, 0x18($sp)
/* 4EADC 8005E2DC 1400B18F */  lw         $s1, 0x14($sp)
/* 4EAE0 8005E2E0 21204000 */  addu       $a0, $v0, $zero
/* 4EAE4 8005E2E4 260064A4 */  sh         $a0, 0x26($v1)
/* 4EAE8 8005E2E8 321790A7 */  sh         $s0, %gp_rel(TheClutRow)($gp)
/* 4EAEC 8005E2EC 1000B08F */  lw         $s0, 0x10($sp)
/* 4EAF0 8005E2F0 0800E003 */  jr         $ra
/* 4EAF4 8005E2F4 2000BD27 */   addiu     $sp, $sp, 0x20
.size Replace256CLUT, . - Replace256CLUT
