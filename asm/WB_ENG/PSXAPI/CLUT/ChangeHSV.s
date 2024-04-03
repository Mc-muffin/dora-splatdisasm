.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeHSV
/* 4E690 8005DE90 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 4E694 8005DE94 5400A5AF */  sw         $a1, 0x54($sp)
/* 4E698 8005DE98 0C80053C */  lui        $a1, %hi(SavedPalettes)
/* 4E69C 8005DE9C 4800BEAF */  sw         $fp, 0x48($sp)
/* 4E6A0 8005DEA0 1800BE27 */  addiu      $fp, $sp, 0x18
/* 4E6A4 8005DEA4 4400B7AF */  sw         $s7, 0x44($sp)
/* 4E6A8 8005DEA8 1C00B727 */  addiu      $s7, $sp, 0x1C
/* 4E6AC 8005DEAC 4000B6AF */  sw         $s6, 0x40($sp)
/* 4E6B0 8005DEB0 2000B627 */  addiu      $s6, $sp, 0x20
/* 4E6B4 8005DEB4 40180400 */  sll        $v1, $a0, 1
/* 4E6B8 8005DEB8 21186400 */  addu       $v1, $v1, $a0
/* 4E6BC 8005DEBC 00110300 */  sll        $v0, $v1, 4
/* 4E6C0 8005DEC0 23104300 */  subu       $v0, $v0, $v1
/* 4E6C4 8005DEC4 C0100200 */  sll        $v0, $v0, 3
/* 4E6C8 8005DEC8 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 4E6CC 8005DECC 03AA0200 */  sra        $s5, $v0, 8
/* 4E6D0 8005DED0 3800B4AF */  sw         $s4, 0x38($sp)
/* 4E6D4 8005DED4 21A0E000 */  addu       $s4, $a3, $zero
/* 4E6D8 8005DED8 28E5A524 */  addiu      $a1, $a1, %lo(SavedPalettes)
/* 4E6DC 8005DEDC 40101400 */  sll        $v0, $s4, 1
/* 4E6E0 8005DEE0 21105400 */  addu       $v0, $v0, $s4
/* 4E6E4 8005DEE4 80100200 */  sll        $v0, $v0, 2
/* 4E6E8 8005DEE8 2128A200 */  addu       $a1, $a1, $v0
/* 4E6EC 8005DEEC 3400B3AF */  sw         $s3, 0x34($sp)
/* 4E6F0 8005DEF0 FF001324 */  addiu      $s3, $zero, 0xFF
/* 4E6F4 8005DEF4 40121400 */  sll        $v0, $s4, 9
/* 4E6F8 8005DEF8 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 4E6FC 8005DEFC 3000B2AF */  sw         $s2, 0x30($sp)
/* 4E700 8005DF00 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4E704 8005DF04 2800B0AF */  sw         $s0, 0x28($sp)
/* 4E708 8005DF08 5800A6AF */  sw         $a2, 0x58($sp)
/* 4E70C 8005DF0C 0800A38C */  lw         $v1, 0x8($a1)
/* 4E710 8005DF10 2C17848F */  lw         $a0, %gp_rel(DownloadPalettes)($gp)
/* 4E714 8005DF14 00027024 */  addiu      $s0, $v1, 0x200
/* 4E718 8005DF18 21906000 */  addu       $s2, $v1, $zero
/* 4E71C 8005DF1C 21888200 */  addu       $s1, $a0, $v0
.L8005DF20:
/* 4E720 8005DF20 00000496 */  lhu        $a0, 0x0($s0)
/* 4E724 8005DF24 02001026 */  addiu      $s0, $s0, 0x2
/* 4E728 8005DF28 5400A28F */  lw         $v0, 0x54($sp)
/* 4E72C 8005DF2C 5800A38F */  lw         $v1, 0x58($sp)
/* 4E730 8005DF30 D01284AF */  sw         $a0, %gp_rel(h)($gp)
/* 4E734 8005DF34 00000596 */  lhu        $a1, 0x0($s0)
/* 4E738 8005DF38 02001026 */  addiu      $s0, $s0, 0x2
/* 4E73C 8005DF3C 21209500 */  addu       $a0, $a0, $s5
/* 4E740 8005DF40 D81285AF */  sw         $a1, %gp_rel(s)($gp)
/* 4E744 8005DF44 80FFA524 */  addiu      $a1, $a1, -0x80
/* 4E748 8005DF48 00000696 */  lhu        $a2, 0x0($s0)
/* 4E74C 8005DF4C 2128A200 */  addu       $a1, $a1, $v0
/* 4E750 8005DF50 D01284AF */  sw         $a0, %gp_rel(h)($gp)
/* 4E754 8005DF54 D81285AF */  sw         $a1, %gp_rel(s)($gp)
/* 4E758 8005DF58 1000B7AF */  sw         $s7, 0x10($sp)
/* 4E75C 8005DF5C 1400B6AF */  sw         $s6, 0x14($sp)
/* 4E760 8005DF60 80FFC624 */  addiu      $a2, $a2, -0x80
/* 4E764 8005DF64 2130C300 */  addu       $a2, $a2, $v1
/* 4E768 8005DF68 DC1286AF */  sw         $a2, %gp_rel(v)($gp)
/* 4E76C 8005DF6C D674010C */  jal        HSV2RGB
/* 4E770 8005DF70 2138C003 */   addu      $a3, $fp, $zero
/* 4E774 8005DF74 02001026 */  addiu      $s0, $s0, 0x2
/* 4E778 8005DF78 2000A38F */  lw         $v1, 0x20($sp)
/* 4E77C 8005DF7C 1C00A48F */  lw         $a0, 0x1C($sp)
/* 4E780 8005DF80 1800A58F */  lw         $a1, 0x18($sp)
/* 4E784 8005DF84 40110300 */  sll        $v0, $v1, 5
/* 4E788 8005DF88 23104300 */  subu       $v0, $v0, $v1
/* 4E78C 8005DF8C 03120200 */  sra        $v0, $v0, 8
/* 4E790 8005DF90 40190400 */  sll        $v1, $a0, 5
/* 4E794 8005DF94 23186400 */  subu       $v1, $v1, $a0
/* 4E798 8005DF98 031A0300 */  sra        $v1, $v1, 8
/* 4E79C 8005DF9C 2000A2AF */  sw         $v0, 0x20($sp)
/* 4E7A0 8005DFA0 40110500 */  sll        $v0, $a1, 5
/* 4E7A4 8005DFA4 23104500 */  subu       $v0, $v0, $a1
/* 4E7A8 8005DFA8 03120200 */  sra        $v0, $v0, 8
/* 4E7AC 8005DFAC 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 4E7B0 8005DFB0 1800A2AF */  sw         $v0, 0x18($sp)
/* 4E7B4 8005DFB4 00004496 */  lhu        $a0, 0x0($s2)
/* 4E7B8 8005DFB8 02005226 */  addiu      $s2, $s2, 0x2
/* 4E7BC 8005DFBC 2000A397 */  lhu        $v1, 0x20($sp)
/* 4E7C0 8005DFC0 1C00A297 */  lhu        $v0, 0x1C($sp)
/* 4E7C4 8005DFC4 801A0300 */  sll        $v1, $v1, 10
/* 4E7C8 8005DFC8 FFFF6530 */  andi       $a1, $v1, 0xFFFF
/* 4E7CC 8005DFCC 40110200 */  sll        $v0, $v0, 5
/* 4E7D0 8005DFD0 2510A200 */  or         $v0, $a1, $v0
/* 4E7D4 8005DFD4 FFFF4530 */  andi       $a1, $v0, 0xFFFF
/* 4E7D8 8005DFD8 1800A397 */  lhu        $v1, 0x18($sp)
/* 4E7DC 8005DFDC 00808430 */  andi       $a0, $a0, 0x8000
/* 4E7E0 8005DFE0 02008010 */  beqz       $a0, .L8005DFEC
/* 4E7E4 8005DFE4 25286500 */   or        $a1, $v1, $a1
/* 4E7E8 8005DFE8 0080A534 */  ori        $a1, $a1, 0x8000
.L8005DFEC:
/* 4E7EC 8005DFEC 000025A6 */  sh         $a1, 0x0($s1)
/* 4E7F0 8005DFF0 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 4E7F4 8005DFF4 CAFF6106 */  bgez       $s3, .L8005DF20
/* 4E7F8 8005DFF8 02003126 */   addiu     $s1, $s1, 0x2
/* 4E7FC 8005DFFC 0800801A */  blez       $s4, .L8005E020
/* 4E800 8005E000 0C80033C */   lui       $v1, %hi(SavedPalettes)
/* 4E804 8005E004 28E56224 */  addiu      $v0, $v1, %lo(SavedPalettes)
/* 4E808 8005E008 40181400 */  sll        $v1, $s4, 1
/* 4E80C 8005E00C 21187400 */  addu       $v1, $v1, $s4
/* 4E810 8005E010 80180300 */  sll        $v1, $v1, 2
/* 4E814 8005E014 21186200 */  addu       $v1, $v1, $v0
/* 4E818 8005E018 01000424 */  addiu      $a0, $zero, 0x1
/* 4E81C 8005E01C 000064AC */  sw         $a0, 0x0($v1)
.L8005E020:
/* 4E820 8005E020 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 4E824 8005E024 4800BE8F */  lw         $fp, 0x48($sp)
/* 4E828 8005E028 4400B78F */  lw         $s7, 0x44($sp)
/* 4E82C 8005E02C 4000B68F */  lw         $s6, 0x40($sp)
/* 4E830 8005E030 3C00B58F */  lw         $s5, 0x3C($sp)
/* 4E834 8005E034 3800B48F */  lw         $s4, 0x38($sp)
/* 4E838 8005E038 3400B38F */  lw         $s3, 0x34($sp)
/* 4E83C 8005E03C 3000B28F */  lw         $s2, 0x30($sp)
/* 4E840 8005E040 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4E844 8005E044 2800B08F */  lw         $s0, 0x28($sp)
/* 4E848 8005E048 0800E003 */  jr         $ra
/* 4E84C 8005E04C 5000BD27 */   addiu     $sp, $sp, 0x50
.size ChangeHSV, . - ChangeHSV
