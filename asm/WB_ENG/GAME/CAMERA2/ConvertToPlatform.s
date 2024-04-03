.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ConvertToPlatform
/* 2B664 8003AE64 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2B668 8003AE68 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2B66C 8003AE6C 2800B6AF */  sw         $s6, 0x28($sp)
/* 2B670 8003AE70 0A80163C */  lui        $s6, %hi(GeomEnv)
/* 2B674 8003AE74 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 2B678 8003AE78 2400B5AF */  sw         $s5, 0x24($sp)
/* 2B67C 8003AE7C 2000B4AF */  sw         $s4, 0x20($sp)
/* 2B680 8003AE80 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2B684 8003AE84 1800B2AF */  sw         $s2, 0x18($sp)
/* 2B688 8003AE88 1400B1AF */  sw         $s1, 0x14($sp)
/* 2B68C 8003AE8C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B690 8003AE90 2C00528C */  lw         $s2, 0x2C($v0)
/* 2B694 8003AE94 40B1D326 */  addiu      $s3, $s6, %lo(GeomEnv)
/* 2B698 8003AE98 080072AE */  sw         $s2, 0x8($s3)
/* 2B69C 8003AE9C 3000548C */  lw         $s4, 0x30($v0)
/* 2B6A0 8003AEA0 00000000 */  nop
/* 2B6A4 8003AEA4 0C0074AE */  sw         $s4, 0xC($s3)
/* 2B6A8 8003AEA8 3400518C */  lw         $s1, 0x34($v0)
/* 2B6AC 8003AEAC 00000000 */  nop
/* 2B6B0 8003AEB0 100071AE */  sw         $s1, 0x10($s3)
/* 2B6B4 8003AEB4 3800438C */  lw         $v1, 0x38($v0)
/* 2B6B8 8003AEB8 00000000 */  nop
/* 2B6BC 8003AEBC 380063AE */  sw         $v1, 0x38($s3)
/* 2B6C0 8003AEC0 3C00558C */  lw         $s5, 0x3C($v0)
/* 2B6C4 8003AEC4 23904302 */  subu       $s2, $s2, $v1
/* 2B6C8 8003AEC8 3C0075AE */  sw         $s5, 0x3C($s3)
/* 2B6CC 8003AECC 4000468C */  lw         $a2, 0x40($v0)
/* 2B6D0 8003AED0 21284002 */  addu       $a1, $s2, $zero
/* 2B6D4 8003AED4 23882602 */  subu       $s1, $s1, $a2
/* 2B6D8 8003AED8 21202002 */  addu       $a0, $s1, $zero
/* 2B6DC 8003AEDC 63EF010C */  jal        ratan2
/* 2B6E0 8003AEE0 400066AE */   sw        $a2, 0x40($s3)
/* 2B6E4 8003AEE4 18005202 */  mult       $s2, $s2
/* 2B6E8 8003AEE8 12900000 */  mflo       $s2
/* 2B6EC 8003AEEC 00000000 */  nop
/* 2B6F0 8003AEF0 00000000 */  nop
/* 2B6F4 8003AEF4 18003102 */  mult       $s1, $s1
/* 2B6F8 8003AEF8 0BB6103C */  lui        $s0, (0xB60B60B7 >> 16)
/* 2B6FC 8003AEFC 9C0B858F */  lw         $a1, %gp_rel(egg_gcamy)($gp)
/* 2B700 8003AF00 12880000 */  mflo       $s1
/* 2B704 8003AF04 B7601036 */  ori        $s0, $s0, (0xB60B60B7 & 0xFFFF)
/* 2B708 8003AF08 002B0500 */  sll        $a1, $a1, 12
/* 2B70C 8003AF0C 1800B000 */  mult       $a1, $s0
/* 2B710 8003AF10 21205102 */  addu       $a0, $s2, $s1
/* 2B714 8003AF14 10180000 */  mfhi       $v1
/* 2B718 8003AF18 21186500 */  addu       $v1, $v1, $a1
/* 2B71C 8003AF1C 031A0300 */  sra        $v1, $v1, 8
/* 2B720 8003AF20 C32F0500 */  sra        $a1, $a1, 31
/* 2B724 8003AF24 23186500 */  subu       $v1, $v1, $a1
/* 2B728 8003AF28 21104300 */  addu       $v0, $v0, $v1
/* 2B72C 8003AF2C C7EB010C */  jal        SquareRoot0
/* 2B730 8003AF30 020062A6 */   sh        $v0, 0x2($s3)
/* 2B734 8003AF34 21204000 */  addu       $a0, $v0, $zero
/* 2B738 8003AF38 23A09502 */  subu       $s4, $s4, $s5
/* 2B73C 8003AF3C 63EF010C */  jal        ratan2
/* 2B740 8003AF40 43281400 */   sra       $a1, $s4, 1
/* 2B744 8003AF44 980B838F */  lw         $v1, %gp_rel(egg_gcamx)($gp)
/* 2B748 8003AF48 00000000 */  nop
/* 2B74C 8003AF4C 001B0300 */  sll        $v1, $v1, 12
/* 2B750 8003AF50 18007000 */  mult       $v1, $s0
/* 2B754 8003AF54 0980043C */  lui        $a0, %hi(ResolutionMode)
/* 2B758 8003AF58 3453848C */  lw         $a0, %lo(ResolutionMode)($a0)
/* 2B75C 8003AF5C 10800000 */  mfhi       $s0
/* 2B760 8003AF60 21800302 */  addu       $s0, $s0, $v1
/* 2B764 8003AF64 03821000 */  sra        $s0, $s0, 8
/* 2B768 8003AF68 C31F0300 */  sra        $v1, $v1, 31
/* 2B76C 8003AF6C 23800302 */  subu       $s0, $s0, $v1
/* 2B770 8003AF70 23105000 */  subu       $v0, $v0, $s0
/* 2B774 8003AF74 04008010 */  beqz       $a0, .L8003AF88
/* 2B778 8003AF78 40B1C2A6 */   sh        $v0, %lo(GeomEnv)($s6)
/* 2B77C 8003AF7C 00140200 */  sll        $v0, $v0, 16
/* 2B780 8003AF80 43140200 */  sra        $v0, $v0, 17
/* 2B784 8003AF84 40B1C2A6 */  sh         $v0, %lo(GeomEnv)($s6)
.L8003AF88:
/* 2B788 8003AF88 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 2B78C 8003AF8C 2800B68F */  lw         $s6, 0x28($sp)
/* 2B790 8003AF90 2400B58F */  lw         $s5, 0x24($sp)
/* 2B794 8003AF94 2000B48F */  lw         $s4, 0x20($sp)
/* 2B798 8003AF98 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2B79C 8003AF9C 1800B28F */  lw         $s2, 0x18($sp)
/* 2B7A0 8003AFA0 1400B18F */  lw         $s1, 0x14($sp)
/* 2B7A4 8003AFA4 1000B08F */  lw         $s0, 0x10($sp)
/* 2B7A8 8003AFA8 0800E003 */  jr         $ra
/* 2B7AC 8003AFAC 3000BD27 */   addiu     $sp, $sp, 0x30
.size ConvertToPlatform, . - ConvertToPlatform
