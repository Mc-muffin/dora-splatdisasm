.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BackGroundFill
/* C1FC 8001B9FC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C200 8001BA00 2400B3AF */  sw         $s3, 0x24($sp)
/* C204 8001BA04 21988000 */  addu       $s3, $a0, $zero
/* C208 8001BA08 2000B2AF */  sw         $s2, 0x20($sp)
/* C20C 8001BA0C 2190A000 */  addu       $s2, $a1, $zero
/* C210 8001BA10 1C00B1AF */  sw         $s1, 0x1C($sp)
/* C214 8001BA14 2188C000 */  addu       $s1, $a2, $zero
/* C218 8001BA18 1800B0AF */  sw         $s0, 0x18($sp)
/* C21C 8001BA1C 21800000 */  addu       $s0, $zero, $zero
/* C220 8001BA20 40010224 */  addiu      $v0, $zero, 0x140
/* C224 8001BA24 FF010324 */  addiu      $v1, $zero, 0x1FF
/* C228 8001BA28 2800BFAF */  sw         $ra, 0x28($sp)
/* C22C 8001BA2C 1000A0A7 */  sh         $zero, 0x10($sp)
/* C230 8001BA30 1200A0A7 */  sh         $zero, 0x12($sp)
/* C234 8001BA34 1400A2A7 */  sh         $v0, 0x14($sp)
/* C238 8001BA38 1600A3A7 */  sh         $v1, 0x16($sp)
.L8001BA3C:
/* C23C 8001BA3C EBD6010C */  jal        VSync
/* C240 8001BA40 21200000 */   addu      $a0, $zero, $zero
/* C244 8001BA44 1000A427 */  addiu      $a0, $sp, 0x10
/* C248 8001BA48 FF006532 */  andi       $a1, $s3, 0xFF
/* C24C 8001BA4C FF004632 */  andi       $a2, $s2, 0xFF
/* C250 8001BA50 97DB010C */  jal        ClearImage
/* C254 8001BA54 FF002732 */   andi      $a3, $s1, 0xFF
/* C258 8001BA58 01001026 */  addiu      $s0, $s0, 0x1
.L8001BA5C:
/* C25C 8001BA5C 36DB010C */  jal        DrawSync
/* C260 8001BA60 01000424 */   addiu     $a0, $zero, 0x1
/* C264 8001BA64 FDFF4014 */  bnez       $v0, .L8001BA5C
/* C268 8001BA68 2800022A */   slti      $v0, $s0, 0x28
/* C26C 8001BA6C F3FF4014 */  bnez       $v0, .L8001BA3C
/* C270 8001BA70 00000000 */   nop
/* C274 8001BA74 EBD6010C */  jal        VSync
/* C278 8001BA78 21200000 */   addu      $a0, $zero, $zero
/* C27C 8001BA7C 2800BF8F */  lw         $ra, 0x28($sp)
/* C280 8001BA80 2400B38F */  lw         $s3, 0x24($sp)
/* C284 8001BA84 2000B28F */  lw         $s2, 0x20($sp)
/* C288 8001BA88 1C00B18F */  lw         $s1, 0x1C($sp)
/* C28C 8001BA8C 1800B08F */  lw         $s0, 0x18($sp)
/* C290 8001BA90 0800E003 */  jr         $ra
/* C294 8001BA94 3000BD27 */   addiu     $sp, $sp, 0x30
.size BackGroundFill, . - BackGroundFill
