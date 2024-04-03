.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckETDeathSeq
/* B5B0 8001ADB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B5B4 8001ADB4 2000B0AF */  sw         $s0, 0x20($sp)
/* B5B8 8001ADB8 21808000 */  addu       $s0, $a0, $zero
/* B5BC 8001ADBC 2400BFAF */  sw         $ra, 0x24($sp)
/* B5C0 8001ADC0 5401028E */  lw         $v0, 0x154($s0)
/* B5C4 8001ADC4 00000000 */  nop
/* B5C8 8001ADC8 37004104 */  bgez       $v0, .L8001AEA8
/* B5CC 8001ADCC 05000224 */   addiu     $v0, $zero, 0x5
/* B5D0 8001ADD0 0C00038E */  lw         $v1, 0xC($s0)
/* B5D4 8001ADD4 00000000 */  nop
/* B5D8 8001ADD8 1B006214 */  bne        $v1, $v0, .L8001AE48
/* B5DC 8001ADDC 06000224 */   addiu     $v0, $zero, 0x6
/* B5E0 8001ADE0 3C01028E */  lw         $v0, 0x13C($s0)
/* B5E4 8001ADE4 00000000 */  nop
/* B5E8 8001ADE8 17004314 */  bne        $v0, $v1, .L8001AE48
/* B5EC 8001ADEC 06000224 */   addiu     $v0, $zero, 0x6
/* B5F0 8001ADF0 2C00838F */  lw         $v1, %gp_rel(Game_Lives)($gp)
/* B5F4 8001ADF4 63000224 */  addiu      $v0, $zero, 0x63
/* B5F8 8001ADF8 280082AF */  sw         $v0, %gp_rel(Game_Health)($gp)
/* B5FC 8001ADFC 02000224 */  addiu      $v0, $zero, 0x2
/* B600 8001AE00 200082AF */  sw         $v0, %gp_rel(UpdateETHSV)($gp)
/* B604 8001AE04 FFFF6324 */  addiu      $v1, $v1, -0x1
/* B608 8001AE08 2C0083AF */  sw         $v1, %gp_rel(Game_Lives)($gp)
/* B60C 8001AE0C 0600601C */  bgtz       $v1, .L8001AE28
/* B610 8001AE10 00000000 */   nop
/* B614 8001AE14 1C95000C */  jal        NewsPaperLevelFail
/* B618 8001AE18 00000000 */   nop
/* B61C 8001AE1C 2C0080AF */  sw         $zero, %gp_rel(Game_Lives)($gp)
/* B620 8001AE20 8D6B0008 */  j          .L8001AE34
/* B624 8001AE24 00000000 */   nop
.L8001AE28:
/* B628 8001AE28 BDCC000C */  jal        SetBeamUPSequence
/* B62C 8001AE2C 00000000 */   nop
/* B630 8001AE30 0C0000AE */  sw         $zero, 0xC($s0)
.L8001AE34:
/* B634 8001AE34 C012828F */  lw         $v0, %gp_rel(SaveCamMode)($gp)
/* B638 8001AE38 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* B63C 8001AE3C B04C22AC */  sw         $v0, %lo(CurrentCameraEnum)($at)
/* B640 8001AE40 0C00038E */  lw         $v1, 0xC($s0)
/* B644 8001AE44 06000224 */  addiu      $v0, $zero, 0x6
.L8001AE48:
/* B648 8001AE48 17006214 */  bne        $v1, $v0, .L8001AEA8
/* B64C 8001AE4C 21200002 */   addu      $a0, $s0, $zero
/* B650 8001AE50 0980023C */  lui        $v0, %hi(CurrentCameraEnum)
/* B654 8001AE54 B04C428C */  lw         $v0, %lo(CurrentCameraEnum)($v0)
/* B658 8001AE58 00000000 */  nop
/* B65C 8001AE5C C01282AF */  sw         $v0, %gp_rel(SaveCamMode)($gp)
/* B660 8001AE60 28E3000C */  jal        GetSeqNumFrames
/* B664 8001AE64 05000524 */   addiu     $a1, $zero, 0x5
/* B668 8001AE68 21200002 */  addu       $a0, $s0, $zero
/* B66C 8001AE6C 05000524 */  addiu      $a1, $zero, 0x5
/* B670 8001AE70 01000324 */  addiu      $v1, $zero, 0x1
/* B674 8001AE74 02000624 */  addiu      $a2, $zero, 0x2
/* B678 8001AE78 1000A3AF */  sw         $v1, 0x10($sp)
/* B67C 8001AE7C 2C010326 */  addiu      $v1, $s0, 0x12C
/* B680 8001AE80 1400A6AF */  sw         $a2, 0x14($sp)
/* B684 8001AE84 21300000 */  addu       $a2, $zero, $zero
/* B688 8001AE88 21384000 */  addu       $a3, $v0, $zero
/* B68C 8001AE8C 72E2000C */  jal        RequestAnim
/* B690 8001AE90 1800A3AF */   sw        $v1, 0x18($sp)
/* B694 8001AE94 1000038E */  lw         $v1, 0x10($s0)
/* B698 8001AE98 05000224 */  addiu      $v0, $zero, 0x5
/* B69C 8001AE9C 0C0002AE */  sw         $v0, 0xC($s0)
/* B6A0 8001AEA0 00026334 */  ori        $v1, $v1, 0x200
/* B6A4 8001AEA4 100003AE */  sw         $v1, 0x10($s0)
.L8001AEA8:
/* B6A8 8001AEA8 2400BF8F */  lw         $ra, 0x24($sp)
/* B6AC 8001AEAC 2000B08F */  lw         $s0, 0x20($sp)
/* B6B0 8001AEB0 0800E003 */  jr         $ra
/* B6B4 8001AEB4 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckETDeathSeq, . - CheckETDeathSeq
