.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitHSV
/* 4E850 8005E050 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 4E854 8005E054 4800BEAF */  sw         $fp, 0x48($sp)
/* 4E858 8005E058 D8129E27 */  addiu      $fp, $gp, %gp_rel(s)
/* 4E85C 8005E05C 4400B7AF */  sw         $s7, 0x44($sp)
/* 4E860 8005E060 DC129727 */  addiu      $s7, $gp, %gp_rel(v)
/* 4E864 8005E064 4000B6AF */  sw         $s6, 0x40($sp)
/* 4E868 8005E068 1800B627 */  addiu      $s6, $sp, 0x18
/* 4E86C 8005E06C 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 4E870 8005E070 1C00B527 */  addiu      $s5, $sp, 0x1C
/* 4E874 8005E074 3800B4AF */  sw         $s4, 0x38($sp)
/* 4E878 8005E078 2000B427 */  addiu      $s4, $sp, 0x20
/* 4E87C 8005E07C 2800B0AF */  sw         $s0, 0x28($sp)
/* 4E880 8005E080 2184103C */  lui        $s0, (0x84210843 >> 16)
/* 4E884 8005E084 43081036 */  ori        $s0, $s0, (0x84210843 & 0xFFFF)
/* 4E888 8005E088 0C80033C */  lui        $v1, %hi(SavedPalettes)
/* 4E88C 8005E08C 28E56324 */  addiu      $v1, $v1, %lo(SavedPalettes)
/* 4E890 8005E090 40100400 */  sll        $v0, $a0, 1
/* 4E894 8005E094 21104400 */  addu       $v0, $v0, $a0
/* 4E898 8005E098 80100200 */  sll        $v0, $v0, 2
/* 4E89C 8005E09C 21186200 */  addu       $v1, $v1, $v0
/* 4E8A0 8005E0A0 3400B3AF */  sw         $s3, 0x34($sp)
/* 4E8A4 8005E0A4 FF001324 */  addiu      $s3, $zero, 0xFF
/* 4E8A8 8005E0A8 40220400 */  sll        $a0, $a0, 9
/* 4E8AC 8005E0AC 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 4E8B0 8005E0B0 3000B2AF */  sw         $s2, 0x30($sp)
/* 4E8B4 8005E0B4 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4E8B8 8005E0B8 0800658C */  lw         $a1, 0x8($v1)
/* 4E8BC 8005E0BC 2C17828F */  lw         $v0, %gp_rel(DownloadPalettes)($gp)
/* 4E8C0 8005E0C0 0002B224 */  addiu      $s2, $a1, 0x200
/* 4E8C4 8005E0C4 21884400 */  addu       $s1, $v0, $a0
.L8005E0C8:
/* 4E8C8 8005E0C8 00004696 */  lhu        $a2, 0x0($s2)
/* 4E8CC 8005E0CC 00000000 */  nop
/* 4E8D0 8005E0D0 C0280600 */  sll        $a1, $a2, 3
/* 4E8D4 8005E0D4 001FA530 */  andi       $a1, $a1, 0x1F00
/* 4E8D8 8005E0D8 1800B000 */  mult       $a1, $s0
/* 4E8DC 8005E0DC 10400000 */  mfhi       $t0
/* 4E8E0 8005E0E0 1F00C430 */  andi       $a0, $a2, 0x1F
/* 4E8E4 8005E0E4 00220400 */  sll        $a0, $a0, 8
/* 4E8E8 8005E0E8 18009000 */  mult       $a0, $s0
/* 4E8EC 8005E0EC 10100000 */  mfhi       $v0
/* 4E8F0 8005E0F0 82300600 */  srl        $a2, $a2, 2
/* 4E8F4 8005E0F4 001FC630 */  andi       $a2, $a2, 0x1F00
/* 4E8F8 8005E0F8 1800D000 */  mult       $a2, $s0
/* 4E8FC 8005E0FC D0128727 */  addiu      $a3, $gp, %gp_rel(h)
/* 4E900 8005E100 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E904 8005E104 1400B7AF */  sw         $s7, 0x14($sp)
/* 4E908 8005E108 21400501 */  addu       $t0, $t0, $a1
/* 4E90C 8005E10C 03410800 */  sra        $t0, $t0, 4
/* 4E910 8005E110 C32F0500 */  sra        $a1, $a1, 31
/* 4E914 8005E114 23280501 */  subu       $a1, $t0, $a1
/* 4E918 8005E118 21104400 */  addu       $v0, $v0, $a0
/* 4E91C 8005E11C 03110200 */  sra        $v0, $v0, 4
/* 4E920 8005E120 C3270400 */  sra        $a0, $a0, 31
/* 4E924 8005E124 23204400 */  subu       $a0, $v0, $a0
/* 4E928 8005E128 10180000 */  mfhi       $v1
/* 4E92C 8005E12C 21186600 */  addu       $v1, $v1, $a2
/* 4E930 8005E130 03190300 */  sra        $v1, $v1, 4
/* 4E934 8005E134 C3370600 */  sra        $a2, $a2, 31
/* 4E938 8005E138 6275010C */  jal        RGB2HSV
/* 4E93C 8005E13C 23306600 */   subu      $a2, $v1, $a2
/* 4E940 8005E140 D012848F */  lw         $a0, %gp_rel(h)($gp)
/* 4E944 8005E144 D812858F */  lw         $a1, %gp_rel(s)($gp)
/* 4E948 8005E148 DC12868F */  lw         $a2, %gp_rel(v)($gp)
/* 4E94C 8005E14C 2138C002 */  addu       $a3, $s6, $zero
/* 4E950 8005E150 1000B5AF */  sw         $s5, 0x10($sp)
/* 4E954 8005E154 D674010C */  jal        HSV2RGB
/* 4E958 8005E158 1400B4AF */   sw        $s4, 0x14($sp)
/* 4E95C 8005E15C 02005226 */  addiu      $s2, $s2, 0x2
/* 4E960 8005E160 2000A38F */  lw         $v1, 0x20($sp)
/* 4E964 8005E164 1C00A48F */  lw         $a0, 0x1C($sp)
/* 4E968 8005E168 40110300 */  sll        $v0, $v1, 5
/* 4E96C 8005E16C 23104300 */  subu       $v0, $v0, $v1
/* 4E970 8005E170 032A0200 */  sra        $a1, $v0, 8
/* 4E974 8005E174 40110400 */  sll        $v0, $a0, 5
/* 4E978 8005E178 23104400 */  subu       $v0, $v0, $a0
/* 4E97C 8005E17C 1800A38F */  lw         $v1, 0x18($sp)
/* 4E980 8005E180 03220200 */  sra        $a0, $v0, 8
/* 4E984 8005E184 2000A5AF */  sw         $a1, 0x20($sp)
/* 4E988 8005E188 1C00A4AF */  sw         $a0, 0x1C($sp)
/* 4E98C 8005E18C 40110300 */  sll        $v0, $v1, 5
/* 4E990 8005E190 23104300 */  subu       $v0, $v0, $v1
/* 4E994 8005E194 03120200 */  sra        $v0, $v0, 8
/* 4E998 8005E198 06004014 */  bnez       $v0, .L8005E1B4
/* 4E99C 8005E19C 1800A2AF */   sw        $v0, 0x18($sp)
/* 4E9A0 8005E1A0 04008014 */  bnez       $a0, .L8005E1B4
/* 4E9A4 8005E1A4 00000000 */   nop
/* 4E9A8 8005E1A8 0200A014 */  bnez       $a1, .L8005E1B4
/* 4E9AC 8005E1AC 01000224 */   addiu     $v0, $zero, 0x1
/* 4E9B0 8005E1B0 2000A2AF */  sw         $v0, 0x20($sp)
.L8005E1B4:
/* 4E9B4 8005E1B4 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 4E9B8 8005E1B8 2000A297 */  lhu        $v0, 0x20($sp)
/* 4E9BC 8005E1BC 1C00A397 */  lhu        $v1, 0x1C($sp)
/* 4E9C0 8005E1C0 80120200 */  sll        $v0, $v0, 10
/* 4E9C4 8005E1C4 FFFF4630 */  andi       $a2, $v0, 0xFFFF
/* 4E9C8 8005E1C8 40190300 */  sll        $v1, $v1, 5
/* 4E9CC 8005E1CC 1800A297 */  lhu        $v0, 0x18($sp)
/* 4E9D0 8005E1D0 2518C300 */  or         $v1, $a2, $v1
/* 4E9D4 8005E1D4 25304300 */  or         $a2, $v0, $v1
/* 4E9D8 8005E1D8 000026A6 */  sh         $a2, 0x0($s1)
/* 4E9DC 8005E1DC BAFF6106 */  bgez       $s3, .L8005E0C8
/* 4E9E0 8005E1E0 02003126 */   addiu     $s1, $s1, 0x2
/* 4E9E4 8005E1E4 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 4E9E8 8005E1E8 4800BE8F */  lw         $fp, 0x48($sp)
/* 4E9EC 8005E1EC 4400B78F */  lw         $s7, 0x44($sp)
/* 4E9F0 8005E1F0 4000B68F */  lw         $s6, 0x40($sp)
/* 4E9F4 8005E1F4 3C00B58F */  lw         $s5, 0x3C($sp)
/* 4E9F8 8005E1F8 3800B48F */  lw         $s4, 0x38($sp)
/* 4E9FC 8005E1FC 3400B38F */  lw         $s3, 0x34($sp)
/* 4EA00 8005E200 3000B28F */  lw         $s2, 0x30($sp)
/* 4EA04 8005E204 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4EA08 8005E208 2800B08F */  lw         $s0, 0x28($sp)
/* 4EA0C 8005E20C 0800E003 */  jr         $ra
/* 4EA10 8005E210 5000BD27 */   addiu     $sp, $sp, 0x50
.size InitHSV, . - InitHSV
