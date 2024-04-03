.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupModelPolys
/* 3B53C 8004AD3C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3B540 8004AD40 2400B3AF */  sw         $s3, 0x24($sp)
/* 3B544 8004AD44 21988000 */  addu       $s3, $a0, $zero
/* 3B548 8004AD48 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 3B54C 8004AD4C 2800B4AF */  sw         $s4, 0x28($sp)
/* 3B550 8004AD50 2000B2AF */  sw         $s2, 0x20($sp)
/* 3B554 8004AD54 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3B558 8004AD58 1800B0AF */  sw         $s0, 0x18($sp)
/* 3B55C 8004AD5C 48006296 */  lhu        $v0, 0x48($s3)
/* 3B560 8004AD60 2800648E */  lw         $a0, 0x28($s3)
/* 3B564 8004AD64 40180200 */  sll        $v1, $v0, 1
/* 3B568 8004AD68 21186200 */  addu       $v1, $v1, $v0
/* 3B56C 8004AD6C 00190300 */  sll        $v1, $v1, 4
/* 3B570 8004AD70 21A08300 */  addu       $s4, $a0, $v1
/* 3B574 8004AD74 2B109400 */  sltu       $v0, $a0, $s4
/* 3B578 8004AD78 0C004010 */  beqz       $v0, .L8004ADAC
/* 3B57C 8004AD7C 30009224 */   addiu     $s2, $a0, 0x30
.L8004AD80:
/* 3B580 8004AD80 21808000 */  addu       $s0, $a0, $zero
/* 3B584 8004AD84 01001124 */  addiu      $s1, $zero, 0x1
.L8004AD88:
/* 3B588 8004AD88 D3E6010C */  jal        SetPolyF3
/* 3B58C 8004AD8C 21200002 */   addu      $a0, $s0, $zero
/* 3B590 8004AD90 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B594 8004AD94 FCFF2106 */  bgez       $s1, .L8004AD88
/* 3B598 8004AD98 14001026 */   addiu     $s0, $s0, 0x14
/* 3B59C 8004AD9C 21204002 */  addu       $a0, $s2, $zero
/* 3B5A0 8004ADA0 2B109400 */  sltu       $v0, $a0, $s4
/* 3B5A4 8004ADA4 F6FF4014 */  bnez       $v0, .L8004AD80
/* 3B5A8 8004ADA8 30009224 */   addiu     $s2, $a0, 0x30
.L8004ADAC:
/* 3B5AC 8004ADAC 4A006296 */  lhu        $v0, 0x4A($s3)
/* 3B5B0 8004ADB0 2C00648E */  lw         $a0, 0x2C($s3)
/* 3B5B4 8004ADB4 C0180200 */  sll        $v1, $v0, 3
/* 3B5B8 8004ADB8 23186200 */  subu       $v1, $v1, $v0
/* 3B5BC 8004ADBC C0180300 */  sll        $v1, $v1, 3
/* 3B5C0 8004ADC0 21A08300 */  addu       $s4, $a0, $v1
/* 3B5C4 8004ADC4 2B109400 */  sltu       $v0, $a0, $s4
/* 3B5C8 8004ADC8 0C004010 */  beqz       $v0, .L8004ADFC
/* 3B5CC 8004ADCC 38009224 */   addiu     $s2, $a0, 0x38
.L8004ADD0:
/* 3B5D0 8004ADD0 21808000 */  addu       $s0, $a0, $zero
/* 3B5D4 8004ADD4 01001124 */  addiu      $s1, $zero, 0x1
.L8004ADD8:
/* 3B5D8 8004ADD8 F3E6010C */  jal        SetPolyF4
/* 3B5DC 8004ADDC 21200002 */   addu      $a0, $s0, $zero
/* 3B5E0 8004ADE0 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B5E4 8004ADE4 FCFF2106 */  bgez       $s1, .L8004ADD8
/* 3B5E8 8004ADE8 18001026 */   addiu     $s0, $s0, 0x18
/* 3B5EC 8004ADEC 21204002 */  addu       $a0, $s2, $zero
/* 3B5F0 8004ADF0 2B109400 */  sltu       $v0, $a0, $s4
/* 3B5F4 8004ADF4 F6FF4014 */  bnez       $v0, .L8004ADD0
/* 3B5F8 8004ADF8 38009224 */   addiu     $s2, $a0, 0x38
.L8004ADFC:
/* 3B5FC 8004ADFC 50006296 */  lhu        $v0, 0x50($s3)
/* 3B600 8004AE00 3800648E */  lw         $a0, 0x38($s3)
/* 3B604 8004AE04 C0180200 */  sll        $v1, $v0, 3
/* 3B608 8004AE08 21186200 */  addu       $v1, $v1, $v0
/* 3B60C 8004AE0C C0180300 */  sll        $v1, $v1, 3
/* 3B610 8004AE10 21A08300 */  addu       $s4, $a0, $v1
/* 3B614 8004AE14 2B109400 */  sltu       $v0, $a0, $s4
/* 3B618 8004AE18 0C004010 */  beqz       $v0, .L8004AE4C
/* 3B61C 8004AE1C 48009224 */   addiu     $s2, $a0, 0x48
.L8004AE20:
/* 3B620 8004AE20 21808000 */  addu       $s0, $a0, $zero
/* 3B624 8004AE24 01001124 */  addiu      $s1, $zero, 0x1
.L8004AE28:
/* 3B628 8004AE28 DBE6010C */  jal        SetPolyFT3
/* 3B62C 8004AE2C 21200002 */   addu      $a0, $s0, $zero
/* 3B630 8004AE30 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B634 8004AE34 FCFF2106 */  bgez       $s1, .L8004AE28
/* 3B638 8004AE38 20001026 */   addiu     $s0, $s0, 0x20
/* 3B63C 8004AE3C 21204002 */  addu       $a0, $s2, $zero
/* 3B640 8004AE40 2B109400 */  sltu       $v0, $a0, $s4
/* 3B644 8004AE44 F6FF4014 */  bnez       $v0, .L8004AE20
/* 3B648 8004AE48 48009224 */   addiu     $s2, $a0, 0x48
.L8004AE4C:
/* 3B64C 8004AE4C 52006296 */  lhu        $v0, 0x52($s3)
/* 3B650 8004AE50 3C00648E */  lw         $a0, 0x3C($s3)
/* 3B654 8004AE54 40180200 */  sll        $v1, $v0, 1
/* 3B658 8004AE58 21186200 */  addu       $v1, $v1, $v0
/* 3B65C 8004AE5C C0180300 */  sll        $v1, $v1, 3
/* 3B660 8004AE60 23186200 */  subu       $v1, $v1, $v0
/* 3B664 8004AE64 80180300 */  sll        $v1, $v1, 2
/* 3B668 8004AE68 21A08300 */  addu       $s4, $a0, $v1
/* 3B66C 8004AE6C 2B109400 */  sltu       $v0, $a0, $s4
/* 3B670 8004AE70 0C004010 */  beqz       $v0, .L8004AEA4
/* 3B674 8004AE74 5C009224 */   addiu     $s2, $a0, 0x5C
.L8004AE78:
/* 3B678 8004AE78 21808000 */  addu       $s0, $a0, $zero
/* 3B67C 8004AE7C 01001124 */  addiu      $s1, $zero, 0x1
.L8004AE80:
/* 3B680 8004AE80 FBE6010C */  jal        SetPolyFT4
/* 3B684 8004AE84 21200002 */   addu      $a0, $s0, $zero
/* 3B688 8004AE88 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B68C 8004AE8C FCFF2106 */  bgez       $s1, .L8004AE80
/* 3B690 8004AE90 28001026 */   addiu     $s0, $s0, 0x28
/* 3B694 8004AE94 21204002 */  addu       $a0, $s2, $zero
/* 3B698 8004AE98 2B109400 */  sltu       $v0, $a0, $s4
/* 3B69C 8004AE9C F6FF4014 */  bnez       $v0, .L8004AE78
/* 3B6A0 8004AEA0 5C009224 */   addiu     $s2, $a0, 0x5C
.L8004AEA4:
/* 3B6A4 8004AEA4 4C006296 */  lhu        $v0, 0x4C($s3)
/* 3B6A8 8004AEA8 3000648E */  lw         $a0, 0x30($s3)
/* 3B6AC 8004AEAC 80110200 */  sll        $v0, $v0, 6
/* 3B6B0 8004AEB0 21A08200 */  addu       $s4, $a0, $v0
/* 3B6B4 8004AEB4 2B189400 */  sltu       $v1, $a0, $s4
/* 3B6B8 8004AEB8 0C006010 */  beqz       $v1, .L8004AEEC
/* 3B6BC 8004AEBC 40009224 */   addiu     $s2, $a0, 0x40
.L8004AEC0:
/* 3B6C0 8004AEC0 21808000 */  addu       $s0, $a0, $zero
/* 3B6C4 8004AEC4 01001124 */  addiu      $s1, $zero, 0x1
.L8004AEC8:
/* 3B6C8 8004AEC8 E3E6010C */  jal        SetPolyG3
/* 3B6CC 8004AECC 21200002 */   addu      $a0, $s0, $zero
/* 3B6D0 8004AED0 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B6D4 8004AED4 FCFF2106 */  bgez       $s1, .L8004AEC8
/* 3B6D8 8004AED8 1C001026 */   addiu     $s0, $s0, 0x1C
/* 3B6DC 8004AEDC 21204002 */  addu       $a0, $s2, $zero
/* 3B6E0 8004AEE0 2B109400 */  sltu       $v0, $a0, $s4
/* 3B6E4 8004AEE4 F6FF4014 */  bnez       $v0, .L8004AEC0
/* 3B6E8 8004AEE8 40009224 */   addiu     $s2, $a0, 0x40
.L8004AEEC:
/* 3B6EC 8004AEEC 4E006296 */  lhu        $v0, 0x4E($s3)
/* 3B6F0 8004AEF0 3400648E */  lw         $a0, 0x34($s3)
/* 3B6F4 8004AEF4 80180200 */  sll        $v1, $v0, 2
/* 3B6F8 8004AEF8 21186200 */  addu       $v1, $v1, $v0
/* 3B6FC 8004AEFC 00190300 */  sll        $v1, $v1, 4
/* 3B700 8004AF00 21A08300 */  addu       $s4, $a0, $v1
/* 3B704 8004AF04 2B109400 */  sltu       $v0, $a0, $s4
/* 3B708 8004AF08 0C004010 */  beqz       $v0, .L8004AF3C
/* 3B70C 8004AF0C 50009224 */   addiu     $s2, $a0, 0x50
.L8004AF10:
/* 3B710 8004AF10 21808000 */  addu       $s0, $a0, $zero
/* 3B714 8004AF14 01001124 */  addiu      $s1, $zero, 0x1
.L8004AF18:
/* 3B718 8004AF18 03E7010C */  jal        SetPolyG4
/* 3B71C 8004AF1C 21200002 */   addu      $a0, $s0, $zero
/* 3B720 8004AF20 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B724 8004AF24 FCFF2106 */  bgez       $s1, .L8004AF18
/* 3B728 8004AF28 24001026 */   addiu     $s0, $s0, 0x24
/* 3B72C 8004AF2C 21204002 */  addu       $a0, $s2, $zero
/* 3B730 8004AF30 2B109400 */  sltu       $v0, $a0, $s4
/* 3B734 8004AF34 F6FF4014 */  bnez       $v0, .L8004AF10
/* 3B738 8004AF38 50009224 */   addiu     $s2, $a0, 0x50
.L8004AF3C:
/* 3B73C 8004AF3C 54006296 */  lhu        $v0, 0x54($s3)
/* 3B740 8004AF40 4000648E */  lw         $a0, 0x40($s3)
/* 3B744 8004AF44 40180200 */  sll        $v1, $v0, 1
/* 3B748 8004AF48 21186200 */  addu       $v1, $v1, $v0
/* 3B74C 8004AF4C 80180300 */  sll        $v1, $v1, 2
/* 3B750 8004AF50 23186200 */  subu       $v1, $v1, $v0
/* 3B754 8004AF54 C0180300 */  sll        $v1, $v1, 3
/* 3B758 8004AF58 21A08300 */  addu       $s4, $a0, $v1
/* 3B75C 8004AF5C 2B109400 */  sltu       $v0, $a0, $s4
/* 3B760 8004AF60 0C004010 */  beqz       $v0, .L8004AF94
/* 3B764 8004AF64 58009224 */   addiu     $s2, $a0, 0x58
.L8004AF68:
/* 3B768 8004AF68 21808000 */  addu       $s0, $a0, $zero
/* 3B76C 8004AF6C 01001124 */  addiu      $s1, $zero, 0x1
.L8004AF70:
/* 3B770 8004AF70 EBE6010C */  jal        SetPolyGT3
/* 3B774 8004AF74 21200002 */   addu      $a0, $s0, $zero
/* 3B778 8004AF78 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B77C 8004AF7C FCFF2106 */  bgez       $s1, .L8004AF70
/* 3B780 8004AF80 28001026 */   addiu     $s0, $s0, 0x28
/* 3B784 8004AF84 21204002 */  addu       $a0, $s2, $zero
/* 3B788 8004AF88 2B109400 */  sltu       $v0, $a0, $s4
/* 3B78C 8004AF8C F6FF4014 */  bnez       $v0, .L8004AF68
/* 3B790 8004AF90 58009224 */   addiu     $s2, $a0, 0x58
.L8004AF94:
/* 3B794 8004AF94 56006296 */  lhu        $v0, 0x56($s3)
/* 3B798 8004AF98 4400648E */  lw         $a0, 0x44($s3)
/* 3B79C 8004AF9C C0180200 */  sll        $v1, $v0, 3
/* 3B7A0 8004AFA0 23186200 */  subu       $v1, $v1, $v0
/* 3B7A4 8004AFA4 80180300 */  sll        $v1, $v1, 2
/* 3B7A8 8004AFA8 21186200 */  addu       $v1, $v1, $v0
/* 3B7AC 8004AFAC 80180300 */  sll        $v1, $v1, 2
/* 3B7B0 8004AFB0 21A08300 */  addu       $s4, $a0, $v1
/* 3B7B4 8004AFB4 2B109400 */  sltu       $v0, $a0, $s4
/* 3B7B8 8004AFB8 0C004010 */  beqz       $v0, .L8004AFEC
/* 3B7BC 8004AFBC 74009224 */   addiu     $s2, $a0, 0x74
.L8004AFC0:
/* 3B7C0 8004AFC0 21808000 */  addu       $s0, $a0, $zero
/* 3B7C4 8004AFC4 01001124 */  addiu      $s1, $zero, 0x1
.L8004AFC8:
/* 3B7C8 8004AFC8 0BE7010C */  jal        SetPolyGT4
/* 3B7CC 8004AFCC 21200002 */   addu      $a0, $s0, $zero
/* 3B7D0 8004AFD0 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 3B7D4 8004AFD4 FCFF2106 */  bgez       $s1, .L8004AFC8
/* 3B7D8 8004AFD8 34001026 */   addiu     $s0, $s0, 0x34
/* 3B7DC 8004AFDC 21204002 */  addu       $a0, $s2, $zero
/* 3B7E0 8004AFE0 2B109400 */  sltu       $v0, $a0, $s4
/* 3B7E4 8004AFE4 F6FF4014 */  bnez       $v0, .L8004AFC0
/* 3B7E8 8004AFE8 74009224 */   addiu     $s2, $a0, 0x74
.L8004AFEC:
/* 3B7EC 8004AFEC 48006296 */  lhu        $v0, 0x48($s3)
/* 3B7F0 8004AFF0 00000000 */  nop
/* 3B7F4 8004AFF4 12004010 */  beqz       $v0, .L8004B040
/* 3B7F8 8004AFF8 00000000 */   nop
/* 3B7FC 8004AFFC 10004010 */  beqz       $v0, .L8004B040
/* 3B800 8004B000 21880000 */   addu      $s1, $zero, $zero
/* 3B804 8004B004 21800000 */  addu       $s0, $zero, $zero
.L8004B008:
/* 3B808 8004B008 21280000 */  addu       $a1, $zero, $zero
/* 3B80C 8004B00C 2800648E */  lw         $a0, 0x28($s3)
/* 3B810 8004B010 01003126 */  addiu      $s1, $s1, 0x1
/* 3B814 8004B014 BBE6010C */  jal        SetSemiTrans
/* 3B818 8004B018 21209000 */   addu      $a0, $a0, $s0
/* 3B81C 8004B01C 2800648E */  lw         $a0, 0x28($s3)
/* 3B820 8004B020 21280000 */  addu       $a1, $zero, $zero
/* 3B824 8004B024 BBE6010C */  jal        SetSemiTrans
/* 3B828 8004B028 21209000 */   addu      $a0, $a0, $s0
/* 3B82C 8004B02C 48006296 */  lhu        $v0, 0x48($s3)
/* 3B830 8004B030 00000000 */  nop
/* 3B834 8004B034 2A102202 */  slt        $v0, $s1, $v0
/* 3B838 8004B038 F3FF4014 */  bnez       $v0, .L8004B008
/* 3B83C 8004B03C 30001026 */   addiu     $s0, $s0, 0x30
.L8004B040:
/* 3B840 8004B040 4A006296 */  lhu        $v0, 0x4A($s3)
/* 3B844 8004B044 00000000 */  nop
/* 3B848 8004B048 12004010 */  beqz       $v0, .L8004B094
/* 3B84C 8004B04C 00000000 */   nop
/* 3B850 8004B050 10004010 */  beqz       $v0, .L8004B094
/* 3B854 8004B054 21880000 */   addu      $s1, $zero, $zero
/* 3B858 8004B058 21800000 */  addu       $s0, $zero, $zero
.L8004B05C:
/* 3B85C 8004B05C 21280000 */  addu       $a1, $zero, $zero
/* 3B860 8004B060 2C00648E */  lw         $a0, 0x2C($s3)
/* 3B864 8004B064 01003126 */  addiu      $s1, $s1, 0x1
/* 3B868 8004B068 BBE6010C */  jal        SetSemiTrans
/* 3B86C 8004B06C 21209000 */   addu      $a0, $a0, $s0
/* 3B870 8004B070 2C00648E */  lw         $a0, 0x2C($s3)
/* 3B874 8004B074 21280000 */  addu       $a1, $zero, $zero
/* 3B878 8004B078 BBE6010C */  jal        SetSemiTrans
/* 3B87C 8004B07C 21209000 */   addu      $a0, $a0, $s0
/* 3B880 8004B080 4A006296 */  lhu        $v0, 0x4A($s3)
/* 3B884 8004B084 00000000 */  nop
/* 3B888 8004B088 2A102202 */  slt        $v0, $s1, $v0
/* 3B88C 8004B08C F3FF4014 */  bnez       $v0, .L8004B05C
/* 3B890 8004B090 38001026 */   addiu     $s0, $s0, 0x38
.L8004B094:
/* 3B894 8004B094 4C006296 */  lhu        $v0, 0x4C($s3)
/* 3B898 8004B098 00000000 */  nop
/* 3B89C 8004B09C 11004010 */  beqz       $v0, .L8004B0E4
/* 3B8A0 8004B0A0 00000000 */   nop
/* 3B8A4 8004B0A4 0F004010 */  beqz       $v0, .L8004B0E4
/* 3B8A8 8004B0A8 21880000 */   addu      $s1, $zero, $zero
.L8004B0AC:
/* 3B8AC 8004B0AC 80811100 */  sll        $s0, $s1, 6
/* 3B8B0 8004B0B0 3000648E */  lw         $a0, 0x30($s3)
/* 3B8B4 8004B0B4 21280000 */  addu       $a1, $zero, $zero
/* 3B8B8 8004B0B8 BBE6010C */  jal        SetSemiTrans
/* 3B8BC 8004B0BC 21209000 */   addu      $a0, $a0, $s0
/* 3B8C0 8004B0C0 3000648E */  lw         $a0, 0x30($s3)
/* 3B8C4 8004B0C4 21280000 */  addu       $a1, $zero, $zero
/* 3B8C8 8004B0C8 BBE6010C */  jal        SetSemiTrans
/* 3B8CC 8004B0CC 21209000 */   addu      $a0, $a0, $s0
/* 3B8D0 8004B0D0 4C006296 */  lhu        $v0, 0x4C($s3)
/* 3B8D4 8004B0D4 01003126 */  addiu      $s1, $s1, 0x1
/* 3B8D8 8004B0D8 2A102202 */  slt        $v0, $s1, $v0
/* 3B8DC 8004B0DC F3FF4014 */  bnez       $v0, .L8004B0AC
/* 3B8E0 8004B0E0 00000000 */   nop
.L8004B0E4:
/* 3B8E4 8004B0E4 4E006296 */  lhu        $v0, 0x4E($s3)
/* 3B8E8 8004B0E8 00000000 */  nop
/* 3B8EC 8004B0EC 12004010 */  beqz       $v0, .L8004B138
/* 3B8F0 8004B0F0 00000000 */   nop
/* 3B8F4 8004B0F4 10004010 */  beqz       $v0, .L8004B138
/* 3B8F8 8004B0F8 21880000 */   addu      $s1, $zero, $zero
/* 3B8FC 8004B0FC 21800000 */  addu       $s0, $zero, $zero
.L8004B100:
/* 3B900 8004B100 21280000 */  addu       $a1, $zero, $zero
/* 3B904 8004B104 3400648E */  lw         $a0, 0x34($s3)
/* 3B908 8004B108 01003126 */  addiu      $s1, $s1, 0x1
/* 3B90C 8004B10C BBE6010C */  jal        SetSemiTrans
/* 3B910 8004B110 21209000 */   addu      $a0, $a0, $s0
/* 3B914 8004B114 3400648E */  lw         $a0, 0x34($s3)
/* 3B918 8004B118 21280000 */  addu       $a1, $zero, $zero
/* 3B91C 8004B11C BBE6010C */  jal        SetSemiTrans
/* 3B920 8004B120 21209000 */   addu      $a0, $a0, $s0
/* 3B924 8004B124 4E006296 */  lhu        $v0, 0x4E($s3)
/* 3B928 8004B128 00000000 */  nop
/* 3B92C 8004B12C 2A102202 */  slt        $v0, $s1, $v0
/* 3B930 8004B130 F3FF4014 */  bnez       $v0, .L8004B100
/* 3B934 8004B134 50001026 */   addiu     $s0, $s0, 0x50
.L8004B138:
/* 3B938 8004B138 50006296 */  lhu        $v0, 0x50($s3)
/* 3B93C 8004B13C 00000000 */  nop
/* 3B940 8004B140 12004010 */  beqz       $v0, .L8004B18C
/* 3B944 8004B144 00000000 */   nop
/* 3B948 8004B148 10004010 */  beqz       $v0, .L8004B18C
/* 3B94C 8004B14C 21880000 */   addu      $s1, $zero, $zero
/* 3B950 8004B150 21800000 */  addu       $s0, $zero, $zero
.L8004B154:
/* 3B954 8004B154 21280000 */  addu       $a1, $zero, $zero
/* 3B958 8004B158 3800648E */  lw         $a0, 0x38($s3)
/* 3B95C 8004B15C 01003126 */  addiu      $s1, $s1, 0x1
/* 3B960 8004B160 BBE6010C */  jal        SetSemiTrans
/* 3B964 8004B164 21209000 */   addu      $a0, $a0, $s0
/* 3B968 8004B168 3800648E */  lw         $a0, 0x38($s3)
/* 3B96C 8004B16C 21280000 */  addu       $a1, $zero, $zero
/* 3B970 8004B170 BBE6010C */  jal        SetSemiTrans
/* 3B974 8004B174 21209000 */   addu      $a0, $a0, $s0
/* 3B978 8004B178 50006296 */  lhu        $v0, 0x50($s3)
/* 3B97C 8004B17C 00000000 */  nop
/* 3B980 8004B180 2A102202 */  slt        $v0, $s1, $v0
/* 3B984 8004B184 F3FF4014 */  bnez       $v0, .L8004B154
/* 3B988 8004B188 48001026 */   addiu     $s0, $s0, 0x48
.L8004B18C:
/* 3B98C 8004B18C 52006296 */  lhu        $v0, 0x52($s3)
/* 3B990 8004B190 00000000 */  nop
/* 3B994 8004B194 12004010 */  beqz       $v0, .L8004B1E0
/* 3B998 8004B198 00000000 */   nop
/* 3B99C 8004B19C 10004010 */  beqz       $v0, .L8004B1E0
/* 3B9A0 8004B1A0 21880000 */   addu      $s1, $zero, $zero
/* 3B9A4 8004B1A4 21800000 */  addu       $s0, $zero, $zero
.L8004B1A8:
/* 3B9A8 8004B1A8 21280000 */  addu       $a1, $zero, $zero
/* 3B9AC 8004B1AC 3C00648E */  lw         $a0, 0x3C($s3)
/* 3B9B0 8004B1B0 01003126 */  addiu      $s1, $s1, 0x1
/* 3B9B4 8004B1B4 BBE6010C */  jal        SetSemiTrans
/* 3B9B8 8004B1B8 21209000 */   addu      $a0, $a0, $s0
/* 3B9BC 8004B1BC 3C00648E */  lw         $a0, 0x3C($s3)
/* 3B9C0 8004B1C0 21280000 */  addu       $a1, $zero, $zero
/* 3B9C4 8004B1C4 BBE6010C */  jal        SetSemiTrans
/* 3B9C8 8004B1C8 21209000 */   addu      $a0, $a0, $s0
/* 3B9CC 8004B1CC 52006296 */  lhu        $v0, 0x52($s3)
/* 3B9D0 8004B1D0 00000000 */  nop
/* 3B9D4 8004B1D4 2A102202 */  slt        $v0, $s1, $v0
/* 3B9D8 8004B1D8 F3FF4014 */  bnez       $v0, .L8004B1A8
/* 3B9DC 8004B1DC 5C001026 */   addiu     $s0, $s0, 0x5C
.L8004B1E0:
/* 3B9E0 8004B1E0 54006296 */  lhu        $v0, 0x54($s3)
/* 3B9E4 8004B1E4 00000000 */  nop
/* 3B9E8 8004B1E8 12004010 */  beqz       $v0, .L8004B234
/* 3B9EC 8004B1EC 00000000 */   nop
/* 3B9F0 8004B1F0 10004010 */  beqz       $v0, .L8004B234
/* 3B9F4 8004B1F4 21880000 */   addu      $s1, $zero, $zero
/* 3B9F8 8004B1F8 21800000 */  addu       $s0, $zero, $zero
.L8004B1FC:
/* 3B9FC 8004B1FC 21280000 */  addu       $a1, $zero, $zero
/* 3BA00 8004B200 4000648E */  lw         $a0, 0x40($s3)
/* 3BA04 8004B204 01003126 */  addiu      $s1, $s1, 0x1
/* 3BA08 8004B208 BBE6010C */  jal        SetSemiTrans
/* 3BA0C 8004B20C 21209000 */   addu      $a0, $a0, $s0
/* 3BA10 8004B210 4000648E */  lw         $a0, 0x40($s3)
/* 3BA14 8004B214 21280000 */  addu       $a1, $zero, $zero
/* 3BA18 8004B218 BBE6010C */  jal        SetSemiTrans
/* 3BA1C 8004B21C 21209000 */   addu      $a0, $a0, $s0
/* 3BA20 8004B220 54006296 */  lhu        $v0, 0x54($s3)
/* 3BA24 8004B224 00000000 */  nop
/* 3BA28 8004B228 2A102202 */  slt        $v0, $s1, $v0
/* 3BA2C 8004B22C F3FF4014 */  bnez       $v0, .L8004B1FC
/* 3BA30 8004B230 58001026 */   addiu     $s0, $s0, 0x58
.L8004B234:
/* 3BA34 8004B234 56006296 */  lhu        $v0, 0x56($s3)
/* 3BA38 8004B238 00000000 */  nop
/* 3BA3C 8004B23C 12004010 */  beqz       $v0, .L8004B288
/* 3BA40 8004B240 00000000 */   nop
/* 3BA44 8004B244 10004010 */  beqz       $v0, .L8004B288
/* 3BA48 8004B248 21880000 */   addu      $s1, $zero, $zero
/* 3BA4C 8004B24C 21800000 */  addu       $s0, $zero, $zero
.L8004B250:
/* 3BA50 8004B250 21280000 */  addu       $a1, $zero, $zero
/* 3BA54 8004B254 4400648E */  lw         $a0, 0x44($s3)
/* 3BA58 8004B258 01003126 */  addiu      $s1, $s1, 0x1
/* 3BA5C 8004B25C BBE6010C */  jal        SetSemiTrans
/* 3BA60 8004B260 21209000 */   addu      $a0, $a0, $s0
/* 3BA64 8004B264 4400648E */  lw         $a0, 0x44($s3)
/* 3BA68 8004B268 21280000 */  addu       $a1, $zero, $zero
/* 3BA6C 8004B26C BBE6010C */  jal        SetSemiTrans
/* 3BA70 8004B270 21209000 */   addu      $a0, $a0, $s0
/* 3BA74 8004B274 56006296 */  lhu        $v0, 0x56($s3)
/* 3BA78 8004B278 00000000 */  nop
/* 3BA7C 8004B27C 2A102202 */  slt        $v0, $s1, $v0
/* 3BA80 8004B280 F3FF4014 */  bnez       $v0, .L8004B250
/* 3BA84 8004B284 74001026 */   addiu     $s0, $s0, 0x74
.L8004B288:
/* 3BA88 8004B288 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 3BA8C 8004B28C 2800B48F */  lw         $s4, 0x28($sp)
/* 3BA90 8004B290 2400B38F */  lw         $s3, 0x24($sp)
/* 3BA94 8004B294 2000B28F */  lw         $s2, 0x20($sp)
/* 3BA98 8004B298 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3BA9C 8004B29C 1800B08F */  lw         $s0, 0x18($sp)
/* 3BAA0 8004B2A0 0800E003 */  jr         $ra
/* 3BAA4 8004B2A4 3000BD27 */   addiu     $sp, $sp, 0x30
.size SetupModelPolys, . - SetupModelPolys
