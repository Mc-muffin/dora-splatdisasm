.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ForceScrollPosition
/* B870 8001B070 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B874 8001B074 1800B2AF */  sw         $s2, 0x18($sp)
/* B878 8001B078 0980123C */  lui        $s2, %hi(ETActor)
/* B87C 8001B07C B05A5226 */  addiu      $s2, $s2, %lo(ETActor)
/* B880 8001B080 2000BFAF */  sw         $ra, 0x20($sp)
/* B884 8001B084 1C00B3AF */  sw         $s3, 0x1C($sp)
/* B888 8001B088 1400B1AF */  sw         $s1, 0x14($sp)
/* B88C 8001B08C 1000B0AF */  sw         $s0, 0x10($sp)
/* B890 8001B090 5400508E */  lw         $s0, 0x54($s2)
/* B894 8001B094 6C005226 */  addiu      $s2, $s2, 0x6C
/* B898 8001B098 E000938F */  lw         $s3, %gp_rel(ScrollR)($gp)
/* B89C 8001B09C 00081026 */  addiu      $s0, $s0, 0x800
/* B8A0 8001B0A0 47EB010C */  jal        rsin
/* B8A4 8001B0A4 21200002 */   addu      $a0, $s0, $zero
/* B8A8 8001B0A8 21200002 */  addu       $a0, $s0, $zero
/* B8AC 8001B0AC 7BEB010C */  jal        rcos
/* B8B0 8001B0B0 21884000 */   addu      $s1, $v0, $zero
/* B8B4 8001B0B4 18007102 */  mult       $s3, $s1
/* B8B8 8001B0B8 12880000 */  mflo       $s1
/* B8BC 8001B0BC 00000000 */  nop
/* B8C0 8001B0C0 00000000 */  nop
/* B8C4 8001B0C4 18006202 */  mult       $s3, $v0
/* B8C8 8001B0C8 0800458E */  lw         $a1, 0x8($s2)
/* B8CC 8001B0CC 0C00468E */  lw         $a2, 0xC($s2)
/* B8D0 8001B0D0 E80085AF */  sw         $a1, %gp_rel(ScrollCamYPos)($gp)
/* B8D4 8001B0D4 F40085AF */  sw         $a1, %gp_rel(OldScrollCamYPos)($gp)
/* B8D8 8001B0D8 0400428E */  lw         $v0, 0x4($s2)
/* B8DC 8001B0DC 038B1100 */  sra        $s1, $s1, 12
/* B8E0 8001B0E0 21105100 */  addu       $v0, $v0, $s1
/* B8E4 8001B0E4 E40082AF */  sw         $v0, %gp_rel(ScrollCamXPos)($gp)
/* B8E8 8001B0E8 F00082AF */  sw         $v0, %gp_rel(OldScrollCamXPos)($gp)
/* B8EC 8001B0EC 12980000 */  mflo       $s3
/* B8F0 8001B0F0 039B1300 */  sra        $s3, $s3, 12
/* B8F4 8001B0F4 2130D300 */  addu       $a2, $a2, $s3
/* B8F8 8001B0F8 EC0086AF */  sw         $a2, %gp_rel(ScrollCamZPos)($gp)
/* B8FC 8001B0FC F80086AF */  sw         $a2, %gp_rel(OldScrollCamZPos)($gp)
/* B900 8001B100 6895010C */  jal        SetScroll
/* B904 8001B104 21204000 */   addu      $a0, $v0, $zero
/* B908 8001B108 2000BF8F */  lw         $ra, 0x20($sp)
/* B90C 8001B10C 1C00B38F */  lw         $s3, 0x1C($sp)
/* B910 8001B110 1800B28F */  lw         $s2, 0x18($sp)
/* B914 8001B114 1400B18F */  lw         $s1, 0x14($sp)
/* B918 8001B118 1000B08F */  lw         $s0, 0x10($sp)
/* B91C 8001B11C 0800E003 */  jr         $ra
/* B920 8001B120 2800BD27 */   addiu     $sp, $sp, 0x28
.size ForceScrollPosition, . - ForceScrollPosition
