.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_common
/* F054 8001E854 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* F058 8001E858 1C00B3AF */  sw         $s3, 0x1C($sp)
/* F05C 8001E85C FFFF1324 */  addiu      $s3, $zero, -0x1
/* F060 8001E860 2000B4AF */  sw         $s4, 0x20($sp)
/* F064 8001E864 FFFF1424 */  addiu      $s4, $zero, -0x1
/* F068 8001E868 2400B5AF */  sw         $s5, 0x24($sp)
/* F06C 8001E86C FFFF1524 */  addiu      $s5, $zero, -0x1
/* F070 8001E870 1400B1AF */  sw         $s1, 0x14($sp)
/* F074 8001E874 2188A000 */  addu       $s1, $a1, $zero
/* F078 8001E878 2800BFAF */  sw         $ra, 0x28($sp)
/* F07C 8001E87C 1800B2AF */  sw         $s2, 0x18($sp)
/* F080 8001E880 BC42010C */  jal        pbag_init
/* F084 8001E884 1000B0AF */   sw        $s0, 0x10($sp)
/* F088 8001E888 1543010C */  jal        pbag_getptr
/* F08C 8001E88C FFFF1234 */   ori       $s2, $zero, 0xFFFF
/* F090 8001E890 21804000 */  addu       $s0, $v0, $zero
/* F094 8001E894 1C0020AE */  sw         $zero, 0x1C($s1)
/* F098 8001E898 0000048E */  lw         $a0, 0x0($s0)
/* F09C 8001E89C 817A0008 */  j          .L8001EA04
/* F0A0 8001E8A0 00000000 */   nop
.L8001E8A4:
/* F0A4 8001E8A4 0E004010 */  beqz       $v0, .L8001E8E0
/* F0A8 8001E8A8 0A00822C */   sltiu     $v0, $a0, 0xA
/* F0AC 8001E8AC 0800028E */  lw         $v0, 0x8($s0)
/* F0B0 8001E8B0 00000000 */  nop
/* F0B4 8001E8B4 0000438C */  lw         $v1, 0x0($v0)
/* F0B8 8001E8B8 00000000 */  nop
/* F0BC 8001E8BC 4D006010 */  beqz       $v1, .L8001E9F4
/* F0C0 8001E8C0 FF008230 */   andi      $v0, $a0, 0xFF
/* F0C4 8001E8C4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* F0C8 8001E8C8 01000324 */  addiu      $v1, $zero, 0x1
/* F0CC 8001E8CC 1C00248E */  lw         $a0, 0x1C($s1)
/* F0D0 8001E8D0 04184300 */  sllv       $v1, $v1, $v0
/* F0D4 8001E8D4 25208300 */  or         $a0, $a0, $v1
/* F0D8 8001E8D8 7D7A0008 */  j          .L8001E9F4
/* F0DC 8001E8DC 1C0024AE */   sw        $a0, 0x1C($s1)
.L8001E8E0:
/* F0E0 8001E8E0 44004010 */  beqz       $v0, .L8001E9F4
/* F0E4 8001E8E4 0180023C */   lui       $v0, %hi(jtbl_800107B0)
/* F0E8 8001E8E8 B0074224 */  addiu      $v0, $v0, %lo(jtbl_800107B0)
/* F0EC 8001E8EC 80180400 */  sll        $v1, $a0, 2
/* F0F0 8001E8F0 21186200 */  addu       $v1, $v1, $v0
/* F0F4 8001E8F4 0000648C */  lw         $a0, 0x0($v1)
/* F0F8 8001E8F8 00000000 */  nop
/* F0FC 8001E8FC 08008000 */  jr         $a0
/* F100 8001E900 00000000 */   nop
jlabel .L8001E904
/* F104 8001E904 0800028E */  lw         $v0, 0x8($s0)
/* F108 8001E908 00000000 */  nop
/* F10C 8001E90C 0000538C */  lw         $s3, 0x0($v0)
/* F110 8001E910 7D7A0008 */  j          .L8001E9F4
/* F114 8001E914 00000000 */   nop
jlabel .L8001E918
/* F118 8001E918 0800038E */  lw         $v1, 0x8($s0)
/* F11C 8001E91C 00000000 */  nop
/* F120 8001E920 0000628C */  lw         $v0, 0x0($v1)
/* F124 8001E924 00000000 */  nop
/* F128 8001E928 C0110200 */  sll        $v0, $v0, 7
/* F12C 8001E92C 40004224 */  addiu      $v0, $v0, 0x40
/* F130 8001E930 000022AE */  sw         $v0, 0x0($s1)
/* F134 8001E934 0800038E */  lw         $v1, 0x8($s0)
/* F138 8001E938 00000000 */  nop
/* F13C 8001E93C 0400628C */  lw         $v0, 0x4($v1)
/* F140 8001E940 00000000 */  nop
/* F144 8001E944 C0110200 */  sll        $v0, $v0, 7
/* F148 8001E948 040022AE */  sw         $v0, 0x4($s1)
/* F14C 8001E94C 0800038E */  lw         $v1, 0x8($s0)
/* F150 8001E950 00000000 */  nop
/* F154 8001E954 0800628C */  lw         $v0, 0x8($v1)
/* F158 8001E958 00000000 */  nop
/* F15C 8001E95C C0110200 */  sll        $v0, $v0, 7
/* F160 8001E960 40004224 */  addiu      $v0, $v0, 0x40
/* F164 8001E964 7D7A0008 */  j          .L8001E9F4
/* F168 8001E968 080022AE */   sw        $v0, 0x8($s1)
jlabel .L8001E96C
/* F16C 8001E96C 0800038E */  lw         $v1, 0x8($s0)
/* F170 8001E970 00000000 */  nop
/* F174 8001E974 0000628C */  lw         $v0, 0x0($v1)
/* F178 8001E978 00000000 */  nop
/* F17C 8001E97C 21184000 */  addu       $v1, $v0, $zero
/* F180 8001E980 0F004228 */  slti       $v0, $v0, 0xF
/* F184 8001E984 02004014 */  bnez       $v0, .L8001E990
/* F188 8001E988 00000000 */   nop
/* F18C 8001E98C 10F06324 */  addiu      $v1, $v1, -0xFF0
.L8001E990:
/* F190 8001E990 7D7A0008 */  j          .L8001E9F4
/* F194 8001E994 100023AE */   sw        $v1, 0x10($s1)
jlabel .L8001E998
/* F198 8001E998 0800048E */  lw         $a0, 0x8($s0)
/* F19C 8001E99C 00000000 */  nop
/* F1A0 8001E9A0 0000838C */  lw         $v1, 0x0($a0)
/* F1A4 8001E9A4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* F1A8 8001E9A8 02006210 */  beq        $v1, $v0, .L8001E9B4
/* F1AC 8001E9AC 00000000 */   nop
/* F1B0 8001E9B0 00009294 */  lhu        $s2, 0x0($a0)
.L8001E9B4:
/* F1B4 8001E9B4 00000000 */  nop
/* F1B8 8001E9B8 0E004012 */  beqz       $s2, .L8001E9F4
/* F1BC 8001E9BC 00000000 */   nop
/* F1C0 8001E9C0 1C00228E */  lw         $v0, 0x1C($s1)
/* F1C4 8001E9C4 00000000 */  nop
/* F1C8 8001E9C8 00404234 */  ori        $v0, $v0, 0x4000
/* F1CC 8001E9CC 7D7A0008 */  j          .L8001E9F4
/* F1D0 8001E9D0 1C0022AE */   sw        $v0, 0x1C($s1)
jlabel .L8001E9D4
/* F1D4 8001E9D4 0800028E */  lw         $v0, 0x8($s0)
/* F1D8 8001E9D8 00000000 */  nop
/* F1DC 8001E9DC 00005480 */  lb         $s4, 0x0($v0)
/* F1E0 8001E9E0 7D7A0008 */  j          .L8001E9F4
/* F1E4 8001E9E4 00000000 */   nop
jlabel .L8001E9E8
/* F1E8 8001E9E8 0800028E */  lw         $v0, 0x8($s0)
/* F1EC 8001E9EC 00000000 */  nop
/* F1F0 8001E9F0 00005580 */  lb         $s5, 0x0($v0)
jlabel .L8001E9F4
/* F1F4 8001E9F4 E742010C */  jal        pbag_advanceONE
/* F1F8 8001E9F8 00000000 */   nop
/* F1FC 8001E9FC 21804000 */  addu       $s0, $v0, $zero
/* F200 8001EA00 0000048E */  lw         $a0, 0x0($s0)
.L8001EA04:
/* F204 8001EA04 B142010C */  jal        pbag_getenum
/* F208 8001EA08 00000000 */   nop
/* F20C 8001EA0C 21204000 */  addu       $a0, $v0, $zero
/* F210 8001EA10 00808230 */  andi       $v0, $a0, 0x8000
/* F214 8001EA14 A3FF4010 */  beqz       $v0, .L8001E8A4
/* F218 8001EA18 00018230 */   andi      $v0, $a0, 0x100
/* F21C 8001EA1C 21106002 */  addu       $v0, $s3, $zero
/* F220 8001EA20 001E1400 */  sll        $v1, $s4, 24
/* F224 8001EA24 00241500 */  sll        $a0, $s5, 16
/* F228 8001EA28 25186400 */  or         $v1, $v1, $a0
/* F22C 8001EA2C 25187200 */  or         $v1, $v1, $s2
/* F230 8001EA30 2800BF8F */  lw         $ra, 0x28($sp)
/* F234 8001EA34 2400B58F */  lw         $s5, 0x24($sp)
/* F238 8001EA38 2000B48F */  lw         $s4, 0x20($sp)
/* F23C 8001EA3C 1C00B38F */  lw         $s3, 0x1C($sp)
/* F240 8001EA40 1800B28F */  lw         $s2, 0x18($sp)
/* F244 8001EA44 140023AE */  sw         $v1, 0x14($s1)
/* F248 8001EA48 180020AE */  sw         $zero, 0x18($s1)
/* F24C 8001EA4C 1400B18F */  lw         $s1, 0x14($sp)
/* F250 8001EA50 1000B08F */  lw         $s0, 0x10($sp)
/* F254 8001EA54 0800E003 */  jr         $ra
/* F258 8001EA58 3000BD27 */   addiu     $sp, $sp, 0x30
.size parse_attrib_common, . - parse_attrib_common
