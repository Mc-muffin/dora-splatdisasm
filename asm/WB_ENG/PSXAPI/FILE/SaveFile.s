.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SaveFile
/* 479A0 800571A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 479A4 800571A4 1800B2AF */  sw         $s2, 0x18($sp)
/* 479A8 800571A8 21908000 */  addu       $s2, $a0, $zero
/* 479AC 800571AC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 479B0 800571B0 2198A000 */  addu       $s3, $a1, $zero
/* 479B4 800571B4 2000B4AF */  sw         $s4, 0x20($sp)
/* 479B8 800571B8 21A0C000 */  addu       $s4, $a2, $zero
/* 479BC 800571BC 2400BFAF */  sw         $ra, 0x24($sp)
/* 479C0 800571C0 1400B1AF */  sw         $s1, 0x14($sp)
/* 479C4 800571C4 A3C1010C */  jal        PCinit
/* 479C8 800571C8 1000B0AF */   sw        $s0, 0x10($sp)
/* 479CC 800571CC 21204002 */  addu       $a0, $s2, $zero
/* 479D0 800571D0 01000524 */  addiu      $a1, $zero, 0x1
/* 479D4 800571D4 86C1010C */  jal        PCopen
/* 479D8 800571D8 21300000 */   addu      $a2, $zero, $zero
/* 479DC 800571DC 21804000 */  addu       $s0, $v0, $zero
/* 479E0 800571E0 FFFF1124 */  addiu      $s1, $zero, -0x1
/* 479E4 800571E4 07001116 */  bne        $s0, $s1, .L80057204
/* 479E8 800571E8 21200002 */   addu      $a0, $s0, $zero
/* 479EC 800571EC 21204002 */  addu       $a0, $s2, $zero
/* 479F0 800571F0 9BC1010C */  jal        PCcreat
/* 479F4 800571F4 21280000 */   addu      $a1, $zero, $zero
/* 479F8 800571F8 21804000 */  addu       $s0, $v0, $zero
/* 479FC 800571FC 0A001112 */  beq        $s0, $s1, .L80057228
/* 47A00 80057200 21200002 */   addu      $a0, $s0, $zero
.L80057204:
/* 47A04 80057204 21280000 */  addu       $a1, $zero, $zero
/* 47A08 80057208 92C1010C */  jal        PClseek
/* 47A0C 8005720C 21300000 */   addu      $a2, $zero, $zero
/* 47A10 80057210 21200002 */  addu       $a0, $s0, $zero
/* 47A14 80057214 21286002 */  addu       $a1, $s3, $zero
/* 47A18 80057218 DBC1010C */  jal        PCwrite
/* 47A1C 8005721C 21308002 */   addu      $a2, $s4, $zero
/* 47A20 80057220 8EC1010C */  jal        PCclose
/* 47A24 80057224 21200002 */   addu      $a0, $s0, $zero
.L80057228:
/* 47A28 80057228 A3C1010C */  jal        PCinit
/* 47A2C 8005722C 00000000 */   nop
/* 47A30 80057230 2400BF8F */  lw         $ra, 0x24($sp)
/* 47A34 80057234 2000B48F */  lw         $s4, 0x20($sp)
/* 47A38 80057238 1C00B38F */  lw         $s3, 0x1C($sp)
/* 47A3C 8005723C 1800B28F */  lw         $s2, 0x18($sp)
/* 47A40 80057240 1400B18F */  lw         $s1, 0x14($sp)
/* 47A44 80057244 1000B08F */  lw         $s0, 0x10($sp)
/* 47A48 80057248 0800E003 */  jr         $ra
/* 47A4C 8005724C 2800BD27 */   addiu     $sp, $sp, 0x28
.size SaveFile, . - SaveFile
