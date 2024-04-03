.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_path
/* F5C4 8001EDC4 30FFBD27 */  addiu      $sp, $sp, -0xD0
/* F5C8 8001EDC8 B400B3AF */  sw         $s3, 0xB4($sp)
/* F5CC 8001EDCC 21980000 */  addu       $s3, $zero, $zero
/* F5D0 8001EDD0 C000B6AF */  sw         $s6, 0xC0($sp)
/* F5D4 8001EDD4 21B00000 */  addu       $s6, $zero, $zero
/* F5D8 8001EDD8 CC00BFAF */  sw         $ra, 0xCC($sp)
/* F5DC 8001EDDC C800BEAF */  sw         $fp, 0xC8($sp)
/* F5E0 8001EDE0 C400B7AF */  sw         $s7, 0xC4($sp)
/* F5E4 8001EDE4 BC00B5AF */  sw         $s5, 0xBC($sp)
/* F5E8 8001EDE8 B800B4AF */  sw         $s4, 0xB8($sp)
/* F5EC 8001EDEC B000B2AF */  sw         $s2, 0xB0($sp)
/* F5F0 8001EDF0 AC00B1AF */  sw         $s1, 0xAC($sp)
/* F5F4 8001EDF4 A800B0AF */  sw         $s0, 0xA8($sp)
/* F5F8 8001EDF8 4800A0AF */  sw         $zero, 0x48($sp)
/* F5FC 8001EDFC 5400A0AF */  sw         $zero, 0x54($sp)
/* F600 8001EE00 5800A0AF */  sw         $zero, 0x58($sp)
/* F604 8001EE04 6800A0AF */  sw         $zero, 0x68($sp)
/* F608 8001EE08 6C00A0AF */  sw         $zero, 0x6C($sp)
/* F60C 8001EE0C 7000A0AF */  sw         $zero, 0x70($sp)
/* F610 8001EE10 D000A4AF */  sw         $a0, 0xD0($sp)
/* F614 8001EE14 BC42010C */  jal        pbag_init
/* F618 8001EE18 D400A5AF */   sw        $a1, 0xD4($sp)
/* F61C 8001EE1C 21A80000 */  addu       $s5, $zero, $zero
/* F620 8001EE20 21B80000 */  addu       $s7, $zero, $zero
/* F624 8001EE24 D400A28F */  lw         $v0, 0xD4($sp)
/* F628 8001EE28 5000A0AF */  sw         $zero, 0x50($sp)
/* F62C 8001EE2C 0980013C */  lui        $at, %hi(pxm_numemitters)
/* F630 8001EE30 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* F634 8001EE34 0980013C */  lui        $at, %hi(pxm_emitter_numpoints)
/* F638 8001EE38 805820AC */  sw         $zero, %lo(pxm_emitter_numpoints)($at)
/* F63C 8001EE3C 8E004018 */  blez       $v0, .L8001F078
/* F640 8001EE40 21A00000 */   addu      $s4, $zero, $zero
/* F644 8001EE44 00181E24 */  addiu      $fp, $zero, 0x1800
.L8001EE48:
/* F648 8001EE48 FF42010C */  jal        pbag_getnum
/* F64C 8001EE4C 01009426 */   addiu     $s4, $s4, 0x1
/* F650 8001EE50 1543010C */  jal        pbag_getptr
/* F654 8001EE54 21884000 */   addu      $s1, $v0, $zero
/* F658 8001EE58 21804000 */  addu       $s0, $v0, $zero
/* F65C 8001EE5C 0000048E */  lw         $a0, 0x0($s0)
/* F660 8001EE60 B142010C */  jal        pbag_getenum
/* F664 8001EE64 9C00B4AF */   sw        $s4, 0x9C($sp)
/* F668 8001EE68 4C00201A */  blez       $s1, .L8001EF9C
/* F66C 8001EE6C 21184000 */   addu      $v1, $v0, $zero
/* F670 8001EE70 FFFF1424 */  addiu      $s4, $zero, -0x1
/* F674 8001EE74 21902002 */  addu       $s2, $s1, $zero
.L8001EE78:
/* F678 8001EE78 0A800234 */  ori        $v0, $zero, 0x800A
/* F67C 8001EE7C 2B104300 */  sltu       $v0, $v0, $v1
/* F680 8001EE80 14004014 */  bnez       $v0, .L8001EED4
/* F684 8001EE84 0D800234 */   ori       $v0, $zero, 0x800D
/* F688 8001EE88 08800234 */  ori        $v0, $zero, 0x8008
/* F68C 8001EE8C 2B106200 */  sltu       $v0, $v1, $v0
/* F690 8001EE90 33004010 */  beqz       $v0, .L8001EF60
/* F694 8001EE94 03000224 */   addiu     $v0, $zero, 0x3
/* F698 8001EE98 1B006210 */  beq        $v1, $v0, .L8001EF08
/* F69C 8001EE9C 0400622C */   sltiu     $v0, $v1, 0x4
/* F6A0 8001EEA0 05004010 */  beqz       $v0, .L8001EEB8
/* F6A4 8001EEA4 02000224 */   addiu     $v0, $zero, 0x2
/* F6A8 8001EEA8 12006210 */  beq        $v1, $v0, .L8001EEF4
/* F6AC 8001EEAC 00000000 */   nop
/* F6B0 8001EEB0 DF7B0008 */  j          .L8001EF7C
/* F6B4 8001EEB4 00000000 */   nop
.L8001EEB8:
/* F6B8 8001EEB8 02800234 */  ori        $v0, $zero, 0x8002
/* F6BC 8001EEBC 23006210 */  beq        $v1, $v0, .L8001EF4C
/* F6C0 8001EEC0 04800234 */   ori       $v0, $zero, 0x8004
/* F6C4 8001EEC4 26006210 */  beq        $v1, $v0, .L8001EF60
/* F6C8 8001EEC8 00000000 */   nop
/* F6CC 8001EECC DF7B0008 */  j          .L8001EF7C
/* F6D0 8001EED0 00000000 */   nop
.L8001EED4:
/* F6D4 8001EED4 2B106200 */  sltu       $v0, $v1, $v0
/* F6D8 8001EED8 28004014 */  bnez       $v0, .L8001EF7C
/* F6DC 8001EEDC 12800234 */   ori       $v0, $zero, 0x8012
/* F6E0 8001EEE0 2B104300 */  sltu       $v0, $v0, $v1
/* F6E4 8001EEE4 1E004010 */  beqz       $v0, .L8001EF60
/* F6E8 8001EEE8 00000000 */   nop
/* F6EC 8001EEEC DF7B0008 */  j          .L8001EF7C
/* F6F0 8001EEF0 00000000 */   nop
.L8001EEF4:
/* F6F4 8001EEF4 0800028E */  lw         $v0, 0x8($s0)
/* F6F8 8001EEF8 00000000 */  nop
/* F6FC 8001EEFC 0000538C */  lw         $s3, 0x0($v0)
/* F700 8001EF00 DF7B0008 */  j          .L8001EF7C
/* F704 8001EF04 00000000 */   nop
.L8001EF08:
/* F708 8001EF08 0800028E */  lw         $v0, 0x8($s0)
/* F70C 8001EF0C 00000000 */  nop
/* F710 8001EF10 0000428C */  lw         $v0, 0x0($v0)
/* F714 8001EF14 0A007E16 */  bne        $s3, $fp, .L8001EF40
/* F718 8001EF18 4800A2AF */   sw        $v0, 0x48($sp)
/* F71C 8001EF1C 0980023C */  lui        $v0, %hi(pxm_emitter_numpoints)
/* F720 8001EF20 8058428C */  lw         $v0, %lo(pxm_emitter_numpoints)($v0)
/* F724 8001EF24 4800A38F */  lw         $v1, 0x48($sp)
/* F728 8001EF28 00000000 */  nop
/* F72C 8001EF2C 21104300 */  addu       $v0, $v0, $v1
/* F730 8001EF30 0980013C */  lui        $at, %hi(pxm_emitter_numpoints)
/* F734 8001EF34 805822AC */  sw         $v0, %lo(pxm_emitter_numpoints)($at)
/* F738 8001EF38 DF7B0008 */  j          .L8001EF7C
/* F73C 8001EF3C 00000000 */   nop
.L8001EF40:
/* F740 8001EF40 4800A48F */  lw         $a0, 0x48($sp)
/* F744 8001EF44 DF7B0008 */  j          .L8001EF7C
/* F748 8001EF48 21A8A402 */   addu      $s5, $s5, $a0
.L8001EF4C:
/* F74C 8001EF4C 0800028E */  lw         $v0, 0x8($s0)
/* F750 8001EF50 00000000 */  nop
/* F754 8001EF54 0000438C */  lw         $v1, 0x0($v0)
/* F758 8001EF58 DF7B0008 */  j          .L8001EF7C
/* F75C 8001EF5C 00000000 */   nop
.L8001EF60:
/* F760 8001EF60 0800028E */  lw         $v0, 0x8($s0)
/* F764 8001EF64 00000000 */  nop
/* F768 8001EF68 0000438C */  lw         $v1, 0x0($v0)
/* F76C 8001EF6C 00000000 */  nop
/* F770 8001EF70 02007410 */  beq        $v1, $s4, .L8001EF7C
/* F774 8001EF74 00000000 */   nop
/* F778 8001EF78 0100F726 */  addiu      $s7, $s7, 0x1
.L8001EF7C:
/* F77C 8001EF7C E742010C */  jal        pbag_advanceONE
/* F780 8001EF80 FFFF5226 */   addiu     $s2, $s2, -0x1
/* F784 8001EF84 21804000 */  addu       $s0, $v0, $zero
/* F788 8001EF88 0000048E */  lw         $a0, 0x0($s0)
/* F78C 8001EF8C B142010C */  jal        pbag_getenum
/* F790 8001EF90 00000000 */   nop
/* F794 8001EF94 B8FF4016 */  bnez       $s2, .L8001EE78
/* F798 8001EF98 21184000 */   addu      $v1, $v0, $zero
.L8001EF9C:
/* F79C 8001EF9C 00140224 */  addiu      $v0, $zero, 0x1400
/* F7A0 8001EFA0 06006216 */  bne        $s3, $v0, .L8001EFBC
/* F7A4 8001EFA4 00160224 */   addiu     $v0, $zero, 0x1600
/* F7A8 8001EFA8 5813828F */  lw         $v0, %gp_rel(g_numofcreatedpressureplates)($gp)
/* F7AC 8001EFAC 00000000 */  nop
/* F7B0 8001EFB0 01004224 */  addiu      $v0, $v0, 0x1
/* F7B4 8001EFB4 581382AF */  sw         $v0, %gp_rel(g_numofcreatedpressureplates)($gp)
/* F7B8 8001EFB8 00160224 */  addiu      $v0, $zero, 0x1600
.L8001EFBC:
/* F7BC 8001EFBC 04006216 */  bne        $s3, $v0, .L8001EFD0
/* F7C0 8001EFC0 00130224 */   addiu     $v0, $zero, 0x1300
/* F7C4 8001EFC4 4800A78F */  lw         $a3, 0x48($sp)
/* F7C8 8001EFC8 00000000 */  nop
/* F7CC 8001EFCC 21B0C702 */  addu       $s6, $s6, $a3
.L8001EFD0:
/* F7D0 8001EFD0 06006216 */  bne        $s3, $v0, .L8001EFEC
/* F7D4 8001EFD4 00170224 */   addiu     $v0, $zero, 0x1700
/* F7D8 8001EFD8 5413828F */  lw         $v0, %gp_rel(g_totalnumcellanims)($gp)
/* F7DC 8001EFDC 00000000 */  nop
/* F7E0 8001EFE0 01004224 */  addiu      $v0, $v0, 0x1
/* F7E4 8001EFE4 541382AF */  sw         $v0, %gp_rel(g_totalnumcellanims)($gp)
/* F7E8 8001EFE8 00170224 */  addiu      $v0, $zero, 0x1700
.L8001EFEC:
/* F7EC 8001EFEC 05006216 */  bne        $s3, $v0, .L8001F004
/* F7F0 8001EFF0 00000000 */   nop
/* F7F4 8001EFF4 6C00A28F */  lw         $v0, 0x6C($sp)
/* F7F8 8001EFF8 00000000 */  nop
/* F7FC 8001EFFC 01004224 */  addiu      $v0, $v0, 0x1
/* F800 8001F000 6C00A2AF */  sw         $v0, 0x6C($sp)
.L8001F004:
/* F804 8001F004 08007E16 */  bne        $s3, $fp, .L8001F028
/* F808 8001F008 00190224 */   addiu     $v0, $zero, 0x1900
/* F80C 8001F00C 0980023C */  lui        $v0, %hi(pxm_numemitters)
/* F810 8001F010 6458428C */  lw         $v0, %lo(pxm_numemitters)($v0)
/* F814 8001F014 00000000 */  nop
/* F818 8001F018 01004224 */  addiu      $v0, $v0, 0x1
/* F81C 8001F01C 0980013C */  lui        $at, %hi(pxm_numemitters)
/* F820 8001F020 645822AC */  sw         $v0, %lo(pxm_numemitters)($at)
/* F824 8001F024 00190224 */  addiu      $v0, $zero, 0x1900
.L8001F028:
/* F828 8001F028 05006216 */  bne        $s3, $v0, .L8001F040
/* F82C 8001F02C 00110224 */   addiu     $v0, $zero, 0x1100
/* F830 8001F030 5000A38F */  lw         $v1, 0x50($sp)
/* F834 8001F034 00000000 */  nop
/* F838 8001F038 01006324 */  addiu      $v1, $v1, 0x1
/* F83C 8001F03C 5000A3AF */  sw         $v1, 0x50($sp)
.L8001F040:
/* F840 8001F040 05006216 */  bne        $s3, $v0, .L8001F058
/* F844 8001F044 00000000 */   nop
/* F848 8001F048 7000A48F */  lw         $a0, 0x70($sp)
/* F84C 8001F04C 00000000 */  nop
/* F850 8001F050 01008424 */  addiu      $a0, $a0, 0x1
/* F854 8001F054 7000A4AF */  sw         $a0, 0x70($sp)
.L8001F058:
/* F858 8001F058 C042010C */  jal        pbag_advance
/* F85C 8001F05C 00000000 */   nop
/* F860 8001F060 9C00B48F */  lw         $s4, 0x9C($sp)
/* F864 8001F064 D400A78F */  lw         $a3, 0xD4($sp)
/* F868 8001F068 00000000 */  nop
/* F86C 8001F06C 2A108702 */  slt        $v0, $s4, $a3
/* F870 8001F070 75FF4014 */  bnez       $v0, .L8001EE48
/* F874 8001F074 00000000 */   nop
.L8001F078:
/* F878 8001F078 4602A012 */  beqz       $s5, .L8001F994
/* F87C 8001F07C 21100000 */   addu      $v0, $zero, $zero
/* F880 8001F080 D400A28F */  lw         $v0, 0xD4($sp)
/* F884 8001F084 00211500 */  sll        $a0, $s5, 4
/* F888 8001F088 40800200 */  sll        $s0, $v0, 1
/* F88C 8001F08C 21800202 */  addu       $s0, $s0, $v0
/* F890 8001F090 80801000 */  sll        $s0, $s0, 2
/* F894 8001F094 2B3F010C */  jal        new_malloc
/* F898 8001F098 21200402 */   addu      $a0, $s0, $a0
/* F89C 8001F09C 8800A2AF */  sw         $v0, 0x88($sp)
/* F8A0 8001F0A0 21884000 */  addu       $s1, $v0, $zero
/* F8A4 8001F0A4 5413828F */  lw         $v0, %gp_rel(g_totalnumcellanims)($gp)
/* F8A8 8001F0A8 00000000 */  nop
/* F8AC 8001F0AC 05004014 */  bnez       $v0, .L8001F0C4
/* F8B0 8001F0B0 21A83002 */   addu      $s5, $s1, $s0
/* F8B4 8001F0B4 0980013C */  lui        $at, %hi(LocalCellAnims)
/* F8B8 8001F0B8 245A20AC */  sw         $zero, %lo(LocalCellAnims)($at)
/* F8BC 8001F0BC 397C0008 */  j          .L8001F0E4
/* F8C0 8001F0C0 00000000 */   nop
.L8001F0C4:
/* F8C4 8001F0C4 40200200 */  sll        $a0, $v0, 1
/* F8C8 8001F0C8 21208200 */  addu       $a0, $a0, $v0
/* F8CC 8001F0CC 80200400 */  sll        $a0, $a0, 2
/* F8D0 8001F0D0 21208200 */  addu       $a0, $a0, $v0
/* F8D4 8001F0D4 2B3F010C */  jal        new_malloc
/* F8D8 8001F0D8 80200400 */   sll       $a0, $a0, 2
/* F8DC 8001F0DC 0980013C */  lui        $at, %hi(LocalCellAnims)
/* F8E0 8001F0E0 245A22AC */  sw         $v0, %lo(LocalCellAnims)($at)
.L8001F0E4:
/* F8E4 8001F0E4 0980013C */  lui        $at, %hi(NumLocalCellAnims)
/* F8E8 8001F0E8 EC5920AC */  sw         $zero, %lo(NumLocalCellAnims)($at)
/* F8EC 8001F0EC 7000A48F */  lw         $a0, 0x70($sp)
/* F8F0 8001F0F0 7215010C */  jal        AllocateBounding
/* F8F4 8001F0F4 00000000 */   nop
/* F8F8 8001F0F8 5000A48F */  lw         $a0, 0x50($sp)
/* F8FC 8001F0FC AF1F010C */  jal        AllocateFreeways
/* F900 8001F100 00000000 */   nop
/* F904 8001F104 5813848F */  lw         $a0, %gp_rel(g_numofcreatedpressureplates)($gp)
/* F908 8001F108 E3FD000C */  jal        AllocatePressureTriggers
/* F90C 8001F10C 2128E002 */   addu      $a1, $s7, $zero
/* F910 8001F110 0980013C */  lui        $at, %hi(NumPickupList)
/* F914 8001F114 A05536AC */  sw         $s6, %lo(NumPickupList)($at)
/* F918 8001F118 0600C012 */  beqz       $s6, .L8001F134
/* F91C 8001F11C 80201600 */   sll       $a0, $s6, 2
/* F920 8001F120 21209600 */  addu       $a0, $a0, $s6
/* F924 8001F124 2B3F010C */  jal        new_malloc
/* F928 8001F128 80200400 */   sll       $a0, $a0, 2
/* F92C 8001F12C 0980013C */  lui        $at, %hi(MapPickupList)
/* F930 8001F130 9C5522AC */  sw         $v0, %lo(MapPickupList)($at)
.L8001F134:
/* F934 8001F134 6C00A48F */  lw         $a0, 0x6C($sp)
/* F938 8001F138 0980173C */  lui        $s7, %hi(MapPickupList)
/* F93C 8001F13C 9C55F78E */  lw         $s7, %lo(MapPickupList)($s7)
/* F940 8001F140 BE02010C */  jal        AllocateCameraTriggers
/* F944 8001F144 00000000 */   nop
/* F948 8001F148 0980023C */  lui        $v0, %hi(pxm_numemitters)
/* F94C 8001F14C 6458428C */  lw         $v0, %lo(pxm_numemitters)($v0)
/* F950 8001F150 00000000 */  nop
/* F954 8001F154 08004010 */  beqz       $v0, .L8001F178
/* F958 8001F158 40200200 */   sll       $a0, $v0, 1
/* F95C 8001F15C 21208200 */  addu       $a0, $a0, $v0
/* F960 8001F160 80200400 */  sll        $a0, $a0, 2
/* F964 8001F164 23208200 */  subu       $a0, $a0, $v0
/* F968 8001F168 2B3F010C */  jal        new_malloc
/* F96C 8001F16C 80200400 */   sll       $a0, $a0, 2
/* F970 8001F170 0980013C */  lui        $at, %hi(pxm_emitters)
/* F974 8001F174 845822AC */  sw         $v0, %lo(pxm_emitters)($at)
.L8001F178:
/* F978 8001F178 0980043C */  lui        $a0, %hi(pxm_emitter_numpoints)
/* F97C 8001F17C 8058848C */  lw         $a0, %lo(pxm_emitter_numpoints)($a0)
/* F980 8001F180 00000000 */  nop
/* F984 8001F184 05008010 */  beqz       $a0, .L8001F19C
/* F988 8001F188 00000000 */   nop
/* F98C 8001F18C 2B3F010C */  jal        new_malloc
/* F990 8001F190 C0200400 */   sll       $a0, $a0, 3
/* F994 8001F194 0980013C */  lui        $at, %hi(pxm_emitter_points)
/* F998 8001F198 945822AC */  sw         $v0, %lo(pxm_emitter_points)($at)
.L8001F19C:
/* F99C 8001F19C D000A48F */  lw         $a0, 0xD0($sp)
/* F9A0 8001F1A0 BC42010C */  jal        pbag_init
/* F9A4 8001F1A4 21F00000 */   addu      $fp, $zero, $zero
/* F9A8 8001F1A8 1E000324 */  addiu      $v1, $zero, 0x1E
/* F9AC 8001F1AC D400A48F */  lw         $a0, 0xD4($sp)
/* F9B0 8001F1B0 21A00000 */  addu       $s4, $zero, $zero
/* F9B4 8001F1B4 4C00A0AF */  sw         $zero, 0x4C($sp)
/* F9B8 8001F1B8 8000A0AF */  sw         $zero, 0x80($sp)
/* F9BC 8001F1BC 8400A0AF */  sw         $zero, 0x84($sp)
/* F9C0 8001F1C0 7800A3AF */  sw         $v1, 0x78($sp)
/* F9C4 8001F1C4 EC018018 */  blez       $a0, .L8001F978
/* F9C8 8001F1C8 7C00A3AF */   sw        $v1, 0x7C($sp)
/* F9CC 8001F1CC A400A0AF */  sw         $zero, 0xA4($sp)
.L8001F1D0:
/* F9D0 8001F1D0 FF42010C */  jal        pbag_getnum
/* F9D4 8001F1D4 FFFF1324 */   addiu     $s3, $zero, -0x1
/* F9D8 8001F1D8 FFFF0324 */  addiu      $v1, $zero, -0x1
/* F9DC 8001F1DC 21904000 */  addu       $s2, $v0, $zero
/* F9E0 8001F1E0 8C00A0AF */  sw         $zero, 0x8C($sp)
/* F9E4 8001F1E4 9000A0AF */  sw         $zero, 0x90($sp)
/* F9E8 8001F1E8 1800A3AF */  sw         $v1, 0x18($sp)
/* F9EC 8001F1EC 1C00A3AF */  sw         $v1, 0x1C($sp)
/* F9F0 8001F1F0 2000A3AF */  sw         $v1, 0x20($sp)
/* F9F4 8001F1F4 2400A3AF */  sw         $v1, 0x24($sp)
/* F9F8 8001F1F8 1543010C */  jal        pbag_getptr
/* F9FC 8001F1FC 2800A0AF */   sw        $zero, 0x28($sp)
/* FA00 8001F200 21804000 */  addu       $s0, $v0, $zero
/* FA04 8001F204 FFFF0724 */  addiu      $a3, $zero, -0x1
/* FA08 8001F208 0100023C */  lui        $v0, (0x10000 >> 16)
/* FA0C 8001F20C 21B00000 */  addu       $s6, $zero, $zero
/* FA10 8001F210 4800A7AF */  sw         $a3, 0x48($sp)
/* FA14 8001F214 5C00B3AF */  sw         $s3, 0x5C($sp)
/* FA18 8001F218 6000B3AF */  sw         $s3, 0x60($sp)
/* FA1C 8001F21C 6400B3AF */  sw         $s3, 0x64($sp)
/* FA20 8001F220 7400A2AF */  sw         $v0, 0x74($sp)
/* FA24 8001F224 9400A0AF */  sw         $zero, 0x94($sp)
/* FA28 8001F228 9800A0AF */  sw         $zero, 0x98($sp)
/* FA2C 8001F22C 0000048E */  lw         $a0, 0x0($s0)
/* FA30 8001F230 01008326 */  addiu      $v1, $s4, 0x1
/* FA34 8001F234 B142010C */  jal        pbag_getenum
/* FA38 8001F238 9C00A3AF */   sw        $v1, 0x9C($sp)
/* FA3C 8001F23C 21184000 */  addu       $v1, $v0, $zero
/* FA40 8001F240 080035AE */  sw         $s5, 0x8($s1)
/* FA44 8001F244 040020AE */  sw         $zero, 0x4($s1)
/* FA48 8001F248 4800A48F */  lw         $a0, 0x48($sp)
/* FA4C 8001F24C 0C002726 */  addiu      $a3, $s1, 0xC
/* FA50 8001F250 4000A0AF */  sw         $zero, 0x40($sp)
/* FA54 8001F254 4400A0AF */  sw         $zero, 0x44($sp)
/* FA58 8001F258 3800A0AF */  sw         $zero, 0x38($sp)
/* FA5C 8001F25C A000A7AF */  sw         $a3, 0xA0($sp)
/* FA60 8001F260 3000A4AF */  sw         $a0, 0x30($sp)
/* FA64 8001F264 3C01401A */  blez       $s2, .L8001F758
/* FA68 8001F268 3400A4AF */   sw        $a0, 0x34($sp)
.L8001F26C:
/* FA6C 8001F26C 0C800234 */  ori        $v0, $zero, 0x800C
/* FA70 8001F270 E5006210 */  beq        $v1, $v0, .L8001F608
/* FA74 8001F274 2B104300 */   sltu      $v0, $v0, $v1
/* FA78 8001F278 33004014 */  bnez       $v0, .L8001F348
/* FA7C 8001F27C 17800234 */   ori       $v0, $zero, 0x8017
/* FA80 8001F280 02800234 */  ori        $v0, $zero, 0x8002
/* FA84 8001F284 96006210 */  beq        $v1, $v0, .L8001F4E0
/* FA88 8001F288 2B104300 */   sltu      $v0, $v0, $v1
/* FA8C 8001F28C 1B004014 */  bnez       $v0, .L8001F2FC
/* FA90 8001F290 06800234 */   ori       $v0, $zero, 0x8006
/* FA94 8001F294 03000224 */  addiu      $v0, $zero, 0x3
/* FA98 8001F298 5E006210 */  beq        $v1, $v0, .L8001F414
/* FA9C 8001F29C 0400622C */   sltiu     $v0, $v1, 0x4
/* FAA0 8001F2A0 07004010 */  beqz       $v0, .L8001F2C0
/* FAA4 8001F2A4 01000224 */   addiu     $v0, $zero, 0x1
/* FAA8 8001F2A8 8A006210 */  beq        $v1, $v0, .L8001F4D4
/* FAAC 8001F2AC 0200622C */   sltiu     $v0, $v1, 0x2
/* FAB0 8001F2B0 53004010 */  beqz       $v0, .L8001F400
/* FAB4 8001F2B4 00000000 */   nop
/* FAB8 8001F2B8 CE7D0008 */  j          .L8001F738
/* FABC 8001F2BC 00000000 */   nop
.L8001F2C0:
/* FAC0 8001F2C0 00190224 */  addiu      $v0, $zero, 0x1900
/* FAC4 8001F2C4 1C016210 */  beq        $v1, $v0, .L8001F738
/* FAC8 8001F2C8 0119622C */   sltiu     $v0, $v1, 0x1901
/* FACC 8001F2CC 05004010 */  beqz       $v0, .L8001F2E4
/* FAD0 8001F2D0 04000224 */   addiu     $v0, $zero, 0x4
/* FAD4 8001F2D4 57006210 */  beq        $v1, $v0, .L8001F434
/* FAD8 8001F2D8 00000000 */   nop
/* FADC 8001F2DC CE7D0008 */  j          .L8001F738
/* FAE0 8001F2E0 00000000 */   nop
.L8001F2E4:
/* FAE4 8001F2E4 00800234 */  ori        $v0, $zero, 0x8000
/* FAE8 8001F2E8 2B106200 */  sltu       $v0, $v1, $v0
/* FAEC 8001F2EC 12014014 */  bnez       $v0, .L8001F738
/* FAF0 8001F2F0 FFFF0724 */   addiu     $a3, $zero, -0x1
/* FAF4 8001F2F4 877D0008 */  j          .L8001F61C
/* FAF8 8001F2F8 00000000 */   nop
.L8001F2FC:
/* FAFC 8001F2FC AE006210 */  beq        $v1, $v0, .L8001F5B8
/* FB00 8001F300 2B104300 */   sltu      $v0, $v0, $v1
/* FB04 8001F304 08004014 */  bnez       $v0, .L8001F328
/* FB08 8001F308 0A800234 */   ori       $v0, $zero, 0x800A
/* FB0C 8001F30C 04800234 */  ori        $v0, $zero, 0x8004
/* FB10 8001F310 7B006210 */  beq        $v1, $v0, .L8001F500
/* FB14 8001F314 2B104300 */   sltu      $v0, $v0, $v1
/* FB18 8001F318 9D004014 */  bnez       $v0, .L8001F590
/* FB1C 8001F31C 00000000 */   nop
/* FB20 8001F320 697D0008 */  j          .L8001F5A4
/* FB24 8001F324 00000000 */   nop
.L8001F328:
/* FB28 8001F328 2B104300 */  sltu       $v0, $v0, $v1
/* FB2C 8001F32C B1004014 */  bnez       $v0, .L8001F5F4
/* FB30 8001F330 08800234 */   ori       $v0, $zero, 0x8008
/* FB34 8001F334 2B106200 */  sltu       $v0, $v1, $v0
/* FB38 8001F338 71004010 */  beqz       $v0, .L8001F500
/* FB3C 8001F33C 00000000 */   nop
/* FB40 8001F340 787D0008 */  j          .L8001F5E0
/* FB44 8001F344 00000000 */   nop
.L8001F348:
/* FB48 8001F348 FB006210 */  beq        $v1, $v0, .L8001F738
/* FB4C 8001F34C 2B104300 */   sltu      $v0, $v0, $v1
/* FB50 8001F350 16004014 */  bnez       $v0, .L8001F3AC
/* FB54 8001F354 1B800234 */   ori       $v0, $zero, 0x801B
/* FB58 8001F358 12800234 */  ori        $v0, $zero, 0x8012
/* FB5C 8001F35C 7E006210 */  beq        $v1, $v0, .L8001F558
/* FB60 8001F360 2B104300 */   sltu      $v0, $v0, $v1
/* FB64 8001F364 07004014 */  bnez       $v0, .L8001F384
/* FB68 8001F368 14800234 */   ori       $v0, $zero, 0x8014
/* FB6C 8001F36C 10800234 */  ori        $v0, $zero, 0x8010
/* FB70 8001F370 2B104300 */  sltu       $v0, $v0, $v1
/* FB74 8001F374 62004010 */  beqz       $v0, .L8001F500
/* FB78 8001F378 FFFF0724 */   addiu     $a3, $zero, -0x1
/* FB7C 8001F37C 4B7D0008 */  j          .L8001F52C
/* FB80 8001F380 00000000 */   nop
.L8001F384:
/* FB84 8001F384 B5006210 */  beq        $v1, $v0, .L8001F65C
/* FB88 8001F388 2B106200 */   sltu      $v0, $v1, $v0
/* FB8C 8001F38C C2004014 */  bnez       $v0, .L8001F698
/* FB90 8001F390 15800234 */   ori       $v0, $zero, 0x8015
/* FB94 8001F394 B6006210 */  beq        $v1, $v0, .L8001F670
/* FB98 8001F398 16800234 */   ori       $v0, $zero, 0x8016
/* FB9C 8001F39C 8B006210 */  beq        $v1, $v0, .L8001F5CC
/* FBA0 8001F3A0 00000000 */   nop
/* FBA4 8001F3A4 CE7D0008 */  j          .L8001F738
/* FBA8 8001F3A8 00000000 */   nop
.L8001F3AC:
/* FBAC 8001F3AC D3006210 */  beq        $v1, $v0, .L8001F6FC
/* FBB0 8001F3B0 2B104300 */   sltu      $v0, $v0, $v1
/* FBB4 8001F3B4 08004014 */  bnez       $v0, .L8001F3D8
/* FBB8 8001F3B8 1D800234 */   ori       $v0, $zero, 0x801D
/* FBBC 8001F3BC 19800234 */  ori        $v0, $zero, 0x8019
/* FBC0 8001F3C0 BF006210 */  beq        $v1, $v0, .L8001F6C0
/* FBC4 8001F3C4 2B104300 */   sltu      $v0, $v0, $v1
/* FBC8 8001F3C8 C7004014 */  bnez       $v0, .L8001F6E8
/* FBCC 8001F3CC 00000000 */   nop
/* FBD0 8001F3D0 AB7D0008 */  j          .L8001F6AC
/* FBD4 8001F3D4 00000000 */   nop
.L8001F3D8:
/* FBD8 8001F3D8 BE006210 */  beq        $v1, $v0, .L8001F6D4
/* FBDC 8001F3DC 2B106200 */   sltu      $v0, $v1, $v0
/* FBE0 8001F3E0 CB004014 */  bnez       $v0, .L8001F710
/* FBE4 8001F3E4 1E800234 */   ori       $v0, $zero, 0x801E
/* FBE8 8001F3E8 97006210 */  beq        $v1, $v0, .L8001F648
/* FBEC 8001F3EC 1F800234 */   ori       $v0, $zero, 0x801F
/* FBF0 8001F3F0 CC006210 */  beq        $v1, $v0, .L8001F724
/* FBF4 8001F3F4 00000000 */   nop
/* FBF8 8001F3F8 CE7D0008 */  j          .L8001F738
/* FBFC 8001F3FC 00000000 */   nop
.L8001F400:
/* FC00 8001F400 0800028E */  lw         $v0, 0x8($s0)
/* FC04 8001F404 00000000 */  nop
/* FC08 8001F408 0000538C */  lw         $s3, 0x0($v0)
/* FC0C 8001F40C CE7D0008 */  j          .L8001F738
/* FC10 8001F410 00000000 */   nop
.L8001F414:
/* FC14 8001F414 0800028E */  lw         $v0, 0x8($s0)
/* FC18 8001F418 00000000 */  nop
/* FC1C 8001F41C 0000428C */  lw         $v0, 0x0($v0)
/* FC20 8001F420 00180324 */  addiu      $v1, $zero, 0x1800
/* FC24 8001F424 C4006312 */  beq        $s3, $v1, .L8001F738
/* FC28 8001F428 4800A2AF */   sw        $v0, 0x48($sp)
/* FC2C 8001F42C CE7D0008 */  j          .L8001F738
/* FC30 8001F430 000022AE */   sw        $v0, 0x0($s1)
.L8001F434:
/* FC34 8001F434 0800038E */  lw         $v1, 0x8($s0)
/* FC38 8001F438 00000000 */  nop
/* FC3C 8001F43C 0000628C */  lw         $v0, 0x0($v1)
/* FC40 8001F440 0400648C */  lw         $a0, 0x4($v1)
/* FC44 8001F444 C0110200 */  sll        $v0, $v0, 7
/* FC48 8001F448 40004524 */  addiu      $a1, $v0, 0x40
/* FC4C 8001F44C C0210400 */  sll        $a0, $a0, 7
/* FC50 8001F450 0800628C */  lw         $v0, 0x8($v1)
/* FC54 8001F454 00160324 */  addiu      $v1, $zero, 0x1600
/* FC58 8001F458 C0110200 */  sll        $v0, $v0, 7
/* FC5C 8001F45C 10006312 */  beq        $s3, $v1, .L8001F4A0
/* FC60 8001F460 40004624 */   addiu     $a2, $v0, 0x40
/* FC64 8001F464 00180224 */  addiu      $v0, $zero, 0x1800
/* FC68 8001F468 15006216 */  bne        $s3, $v0, .L8001F4C0
/* FC6C 8001F46C 00000000 */   nop
/* FC70 8001F470 8400A28F */  lw         $v0, 0x84($sp)
/* FC74 8001F474 8400A78F */  lw         $a3, 0x84($sp)
/* FC78 8001F478 C0180200 */  sll        $v1, $v0, 3
/* FC7C 8001F47C 0980023C */  lui        $v0, %hi(pxm_emitter_points)
/* FC80 8001F480 9458428C */  lw         $v0, %lo(pxm_emitter_points)($v0)
/* FC84 8001F484 0100E724 */  addiu      $a3, $a3, 0x1
/* FC88 8001F488 8400A7AF */  sw         $a3, 0x84($sp)
/* FC8C 8001F48C 21104300 */  addu       $v0, $v0, $v1
/* FC90 8001F490 000045A4 */  sh         $a1, 0x0($v0)
/* FC94 8001F494 020044A4 */  sh         $a0, 0x2($v0)
/* FC98 8001F498 CE7D0008 */  j          .L8001F738
/* FC9C 8001F49C 040046A4 */   sh        $a2, 0x4($v0)
.L8001F4A0:
/* FCA0 8001F4A0 0000E5AE */  sw         $a1, 0x0($s7)
/* FCA4 8001F4A4 0400E4AE */  sw         $a0, 0x4($s7)
/* FCA8 8001F4A8 0800E6AE */  sw         $a2, 0x8($s7)
/* FCAC 8001F4AC 0C00E0AE */  sw         $zero, 0xC($s7)
/* FCB0 8001F4B0 1000E0AE */  sw         $zero, 0x10($s7)
/* FCB4 8001F4B4 1400F726 */  addiu      $s7, $s7, 0x14
/* FCB8 8001F4B8 CE7D0008 */  j          .L8001F738
/* FCBC 8001F4BC 1000B526 */   addiu     $s5, $s5, 0x10
.L8001F4C0:
/* FCC0 8001F4C0 0000A5AE */  sw         $a1, 0x0($s5)
/* FCC4 8001F4C4 0400A4AE */  sw         $a0, 0x4($s5)
/* FCC8 8001F4C8 0800A6AE */  sw         $a2, 0x8($s5)
/* FCCC 8001F4CC CE7D0008 */  j          .L8001F738
/* FCD0 8001F4D0 1000B526 */   addiu     $s5, $s5, 0x10
.L8001F4D4:
/* FCD4 8001F4D4 0800108E */  lw         $s0, 0x8($s0)
/* FCD8 8001F4D8 CE7D0008 */  j          .L8001F738
/* FCDC 8001F4DC 9400B0AF */   sw        $s0, 0x94($sp)
.L8001F4E0:
/* FCE0 8001F4E0 0800028E */  lw         $v0, 0x8($s0)
/* FCE4 8001F4E4 00000000 */  nop
/* FCE8 8001F4E8 0000428C */  lw         $v0, 0x0($v0)
/* FCEC 8001F4EC FFFF0324 */  addiu      $v1, $zero, -0x1
/* FCF0 8001F4F0 91004310 */  beq        $v0, $v1, .L8001F738
/* FCF4 8001F4F4 00000000 */   nop
/* FCF8 8001F4F8 CE7D0008 */  j          .L8001F738
/* FCFC 8001F4FC 5C00A2AF */   sw        $v0, 0x5C($sp)
.L8001F500:
/* FD00 8001F500 0800028E */  lw         $v0, 0x8($s0)
/* FD04 8001F504 00000000 */  nop
/* FD08 8001F508 0000428C */  lw         $v0, 0x0($v0)
/* FD0C 8001F50C FFFF0424 */  addiu      $a0, $zero, -0x1
/* FD10 8001F510 89004410 */  beq        $v0, $a0, .L8001F738
/* FD14 8001F514 21204000 */   addu      $a0, $v0, $zero
/* FD18 8001F518 6000A2AF */  sw         $v0, 0x60($sp)
/* FD1C 8001F51C 2128C002 */  addu       $a1, $s6, $zero
/* FD20 8001F520 2130C003 */  addu       $a2, $fp, $zero
/* FD24 8001F524 607D0008 */  j          .L8001F580
/* FD28 8001F528 21380000 */   addu      $a3, $zero, $zero
.L8001F52C:
/* FD2C 8001F52C 0800028E */  lw         $v0, 0x8($s0)
/* FD30 8001F530 00000000 */  nop
/* FD34 8001F534 0000428C */  lw         $v0, 0x0($v0)
/* FD38 8001F538 00000000 */  nop
/* FD3C 8001F53C 7E004710 */  beq        $v0, $a3, .L8001F738
/* FD40 8001F540 21204000 */   addu      $a0, $v0, $zero
/* FD44 8001F544 6000A2AF */  sw         $v0, 0x60($sp)
/* FD48 8001F548 2128C002 */  addu       $a1, $s6, $zero
/* FD4C 8001F54C 2130C003 */  addu       $a2, $fp, $zero
/* FD50 8001F550 607D0008 */  j          .L8001F580
/* FD54 8001F554 01000724 */   addiu     $a3, $zero, 0x1
.L8001F558:
/* FD58 8001F558 0800028E */  lw         $v0, 0x8($s0)
/* FD5C 8001F55C 00000000 */  nop
/* FD60 8001F560 0000428C */  lw         $v0, 0x0($v0)
/* FD64 8001F564 FFFF0324 */  addiu      $v1, $zero, -0x1
/* FD68 8001F568 73004310 */  beq        $v0, $v1, .L8001F738
/* FD6C 8001F56C 21204000 */   addu      $a0, $v0, $zero
/* FD70 8001F570 6000A2AF */  sw         $v0, 0x60($sp)
/* FD74 8001F574 2128C002 */  addu       $a1, $s6, $zero
/* FD78 8001F578 2130C003 */  addu       $a2, $fp, $zero
/* FD7C 8001F57C 02000724 */  addiu      $a3, $zero, 0x2
.L8001F580:
/* FD80 8001F580 0401010C */  jal        FillinCelAnimLink
/* FD84 8001F584 0100D626 */   addiu     $s6, $s6, 0x1
/* FD88 8001F588 CE7D0008 */  j          .L8001F738
/* FD8C 8001F58C 0100DE27 */   addiu     $fp, $fp, 0x1
.L8001F590:
/* FD90 8001F590 0800028E */  lw         $v0, 0x8($s0)
/* FD94 8001F594 00000000 */  nop
/* FD98 8001F598 0000428C */  lw         $v0, 0x0($v0)
/* FD9C 8001F59C CE7D0008 */  j          .L8001F738
/* FDA0 8001F5A0 6400A2AF */   sw        $v0, 0x64($sp)
.L8001F5A4:
/* FDA4 8001F5A4 0800028E */  lw         $v0, 0x8($s0)
/* FDA8 8001F5A8 00000000 */  nop
/* FDAC 8001F5AC 0000428C */  lw         $v0, 0x0($v0)
/* FDB0 8001F5B0 CE7D0008 */  j          .L8001F738
/* FDB4 8001F5B4 8C00A2AF */   sw        $v0, 0x8C($sp)
.L8001F5B8:
/* FDB8 8001F5B8 0800028E */  lw         $v0, 0x8($s0)
/* FDBC 8001F5BC 00000000 */  nop
/* FDC0 8001F5C0 0000438C */  lw         $v1, 0x0($v0)
/* FDC4 8001F5C4 CE7D0008 */  j          .L8001F738
/* FDC8 8001F5C8 4000A3AF */   sw        $v1, 0x40($sp)
.L8001F5CC:
/* FDCC 8001F5CC 0800028E */  lw         $v0, 0x8($s0)
/* FDD0 8001F5D0 00000000 */  nop
/* FDD4 8001F5D4 0000438C */  lw         $v1, 0x0($v0)
/* FDD8 8001F5D8 CE7D0008 */  j          .L8001F738
/* FDDC 8001F5DC 4400A3AF */   sw        $v1, 0x44($sp)
.L8001F5E0:
/* FDE0 8001F5E0 0800028E */  lw         $v0, 0x8($s0)
/* FDE4 8001F5E4 00000000 */  nop
/* FDE8 8001F5E8 0000438C */  lw         $v1, 0x0($v0)
/* FDEC 8001F5EC CE7D0008 */  j          .L8001F738
/* FDF0 8001F5F0 3800A3AF */   sw        $v1, 0x38($sp)
.L8001F5F4:
/* FDF4 8001F5F4 0800028E */  lw         $v0, 0x8($s0)
/* FDF8 8001F5F8 00000000 */  nop
/* FDFC 8001F5FC 0000438C */  lw         $v1, 0x0($v0)
/* FE00 8001F600 CE7D0008 */  j          .L8001F738
/* FE04 8001F604 3000A3AF */   sw        $v1, 0x30($sp)
.L8001F608:
/* FE08 8001F608 0800028E */  lw         $v0, 0x8($s0)
/* FE0C 8001F60C 00000000 */  nop
/* FE10 8001F610 0000438C */  lw         $v1, 0x0($v0)
/* FE14 8001F614 CE7D0008 */  j          .L8001F738
/* FE18 8001F618 3400A3AF */   sw        $v1, 0x34($sp)
.L8001F61C:
/* FE1C 8001F61C 0800028E */  lw         $v0, 0x8($s0)
/* FE20 8001F620 00000000 */  nop
/* FE24 8001F624 0000448C */  lw         $a0, 0x0($v0)
/* FE28 8001F628 00000000 */  nop
/* FE2C 8001F62C 42008710 */  beq        $a0, $a3, .L8001F738
/* FE30 8001F630 00000000 */   nop
/* FE34 8001F634 0400228E */  lw         $v0, 0x4($s1)
/* FE38 8001F638 00000000 */  nop
/* FE3C 8001F63C 25104400 */  or         $v0, $v0, $a0
/* FE40 8001F640 CE7D0008 */  j          .L8001F738
/* FE44 8001F644 040022AE */   sw        $v0, 0x4($s1)
.L8001F648:
/* FE48 8001F648 0800028E */  lw         $v0, 0x8($s0)
/* FE4C 8001F64C 00000000 */  nop
/* FE50 8001F650 0000428C */  lw         $v0, 0x0($v0)
/* FE54 8001F654 CE7D0008 */  j          .L8001F738
/* FE58 8001F658 7400A2AF */   sw        $v0, 0x74($sp)
.L8001F65C:
/* FE5C 8001F65C 0800028E */  lw         $v0, 0x8($s0)
/* FE60 8001F660 00000000 */  nop
/* FE64 8001F664 0000428C */  lw         $v0, 0x0($v0)
/* FE68 8001F668 CE7D0008 */  j          .L8001F738
/* FE6C 8001F66C 6800A2AF */   sw        $v0, 0x68($sp)
.L8001F670:
/* FE70 8001F670 0800028E */  lw         $v0, 0x8($s0)
/* FE74 8001F674 00000000 */  nop
/* FE78 8001F678 0000428C */  lw         $v0, 0x0($v0)
/* FE7C 8001F67C 00000000 */  nop
/* FE80 8001F680 64004328 */  slti       $v1, $v0, 0x64
/* FE84 8001F684 2C006014 */  bnez       $v1, .L8001F738
/* FE88 8001F688 9000A2AF */   sw        $v0, 0x90($sp)
/* FE8C 8001F68C C3FF4224 */  addiu      $v0, $v0, -0x3D
/* FE90 8001F690 CE7D0008 */  j          .L8001F738
/* FE94 8001F694 9000A2AF */   sw        $v0, 0x90($sp)
.L8001F698:
/* FE98 8001F698 0800028E */  lw         $v0, 0x8($s0)
/* FE9C 8001F69C 00000000 */  nop
/* FEA0 8001F6A0 0000428C */  lw         $v0, 0x0($v0)
/* FEA4 8001F6A4 CE7D0008 */  j          .L8001F738
/* FEA8 8001F6A8 9800A2AF */   sw        $v0, 0x98($sp)
.L8001F6AC:
/* FEAC 8001F6AC 0800028E */  lw         $v0, 0x8($s0)
/* FEB0 8001F6B0 00000000 */  nop
/* FEB4 8001F6B4 0000428C */  lw         $v0, 0x0($v0)
/* FEB8 8001F6B8 CE7D0008 */  j          .L8001F738
/* FEBC 8001F6BC 7800A2AF */   sw        $v0, 0x78($sp)
.L8001F6C0:
/* FEC0 8001F6C0 0800028E */  lw         $v0, 0x8($s0)
/* FEC4 8001F6C4 00000000 */  nop
/* FEC8 8001F6C8 0000428C */  lw         $v0, 0x0($v0)
/* FECC 8001F6CC CE7D0008 */  j          .L8001F738
/* FED0 8001F6D0 7C00A2AF */   sw        $v0, 0x7C($sp)
.L8001F6D4:
/* FED4 8001F6D4 0800028E */  lw         $v0, 0x8($s0)
/* FED8 8001F6D8 00000000 */  nop
/* FEDC 8001F6DC 0000438C */  lw         $v1, 0x0($v0)
/* FEE0 8001F6E0 CE7D0008 */  j          .L8001F738
/* FEE4 8001F6E4 1800A3AF */   sw        $v1, 0x18($sp)
.L8001F6E8:
/* FEE8 8001F6E8 0800028E */  lw         $v0, 0x8($s0)
/* FEEC 8001F6EC 00000000 */  nop
/* FEF0 8001F6F0 0000438C */  lw         $v1, 0x0($v0)
/* FEF4 8001F6F4 CE7D0008 */  j          .L8001F738
/* FEF8 8001F6F8 1C00A3AF */   sw        $v1, 0x1C($sp)
.L8001F6FC:
/* FEFC 8001F6FC 0800028E */  lw         $v0, 0x8($s0)
/* FF00 8001F700 00000000 */  nop
/* FF04 8001F704 0000438C */  lw         $v1, 0x0($v0)
/* FF08 8001F708 CE7D0008 */  j          .L8001F738
/* FF0C 8001F70C 2000A3AF */   sw        $v1, 0x20($sp)
.L8001F710:
/* FF10 8001F710 0800028E */  lw         $v0, 0x8($s0)
/* FF14 8001F714 00000000 */  nop
/* FF18 8001F718 0000438C */  lw         $v1, 0x0($v0)
/* FF1C 8001F71C CE7D0008 */  j          .L8001F738
/* FF20 8001F720 2400A3AF */   sw        $v1, 0x24($sp)
.L8001F724:
/* FF24 8001F724 0800028E */  lw         $v0, 0x8($s0)
/* FF28 8001F728 00000000 */  nop
/* FF2C 8001F72C 0000438C */  lw         $v1, 0x0($v0)
/* FF30 8001F730 00000000 */  nop
/* FF34 8001F734 2800A3AF */  sw         $v1, 0x28($sp)
.L8001F738:
/* FF38 8001F738 E742010C */  jal        pbag_advanceONE
/* FF3C 8001F73C FFFF5226 */   addiu     $s2, $s2, -0x1
/* FF40 8001F740 21804000 */  addu       $s0, $v0, $zero
/* FF44 8001F744 0000048E */  lw         $a0, 0x0($s0)
/* FF48 8001F748 B142010C */  jal        pbag_getenum
/* FF4C 8001F74C 00000000 */   nop
/* FF50 8001F750 C6FE4016 */  bnez       $s2, .L8001F26C
/* FF54 8001F754 21184000 */   addu      $v1, $v0, $zero
.L8001F758:
/* FF58 8001F758 00110224 */  addiu      $v0, $zero, 0x1100
/* FF5C 8001F75C 10006216 */  bne        $s3, $v0, .L8001F7A0
/* FF60 8001F760 00130224 */   addiu     $v0, $zero, 0x1300
/* FF64 8001F764 21202002 */  addu       $a0, $s1, $zero
/* FF68 8001F768 5800A68F */  lw         $a2, 0x58($sp)
/* FF6C 8001F76C 0080033C */  lui        $v1, (0x80000000 >> 16)
/* FF70 8001F770 2110C000 */  addu       $v0, $a2, $zero
/* FF74 8001F774 01004224 */  addiu      $v0, $v0, 0x1
/* FF78 8001F778 5800A2AF */  sw         $v0, 0x58($sp)
/* FF7C 8001F77C 0400228E */  lw         $v0, 0x4($s1)
/* FF80 8001F780 7800A78F */  lw         $a3, 0x78($sp)
/* FF84 8001F784 25104300 */  or         $v0, $v0, $v1
/* FF88 8001F788 040022AE */  sw         $v0, 0x4($s1)
/* FF8C 8001F78C 7C00A38F */  lw         $v1, 0x7C($sp)
/* FF90 8001F790 21288002 */  addu       $a1, $s4, $zero
/* FF94 8001F794 5615010C */  jal        SetBoundingBox
/* FF98 8001F798 1000A3AF */   sw        $v1, 0x10($sp)
/* FF9C 8001F79C 00130224 */  addiu      $v0, $zero, 0x1300
.L8001F7A0:
/* FFA0 8001F7A0 08006216 */  bne        $s3, $v0, .L8001F7C4
/* FFA4 8001F7A4 00190224 */   addiu     $v0, $zero, 0x1900
/* FFA8 8001F7A8 21202002 */  addu       $a0, $s1, $zero
/* FFAC 8001F7AC 21300000 */  addu       $a2, $zero, $zero
/* FFB0 8001F7B0 6400A58F */  lw         $a1, 0x64($sp)
/* FFB4 8001F7B4 21388002 */  addu       $a3, $s4, $zero
/* FFB8 8001F7B8 E594010C */  jal        SetCelAnimLocation
/* FFBC 8001F7BC 1000A0AF */   sw        $zero, 0x10($sp)
/* FFC0 8001F7C0 00190224 */  addiu      $v0, $zero, 0x1900
.L8001F7C4:
/* FFC4 8001F7C4 0A006216 */  bne        $s3, $v0, .L8001F7F0
/* FFC8 8001F7C8 00140224 */   addiu     $v0, $zero, 0x1400
/* FFCC 8001F7CC 21202002 */  addu       $a0, $s1, $zero
/* FFD0 8001F7D0 5400A68F */  lw         $a2, 0x54($sp)
/* FFD4 8001F7D4 C01F010C */  jal        SetFreeway
/* FFD8 8001F7D8 21288002 */   addu      $a1, $s4, $zero
/* FFDC 8001F7DC 5400A48F */  lw         $a0, 0x54($sp)
/* FFE0 8001F7E0 00000000 */  nop
/* FFE4 8001F7E4 01008424 */  addiu      $a0, $a0, 0x1
/* FFE8 8001F7E8 5400A4AF */  sw         $a0, 0x54($sp)
/* FFEC 8001F7EC 00140224 */  addiu      $v0, $zero, 0x1400
.L8001F7F0:
/* FFF0 8001F7F0 21006216 */  bne        $s3, $v0, .L8001F878
/* FFF4 8001F7F4 00120224 */   addiu     $v0, $zero, 0x1200
/* FFF8 8001F7F8 6000A78F */  lw         $a3, 0x60($sp)
/* FFFC 8001F7FC 00000000 */  nop
/* 10000 8001F800 0F00E004 */  bltz       $a3, .L8001F840
/* 10004 8001F804 3000A227 */   addiu     $v0, $sp, 0x30
/* 10008 8001F808 21202002 */  addu       $a0, $s1, $zero
/* 1000C 8001F80C 4C00A68F */  lw         $a2, 0x4C($sp)
/* 10010 8001F810 5C00A78F */  lw         $a3, 0x5C($sp)
/* 10014 8001F814 FFFFC527 */  addiu      $a1, $fp, -0x1
/* 10018 8001F818 54FD000C */  jal        CreateCelAnimPressureTrigger
/* 1001C 8001F81C 1000A2AF */   sw        $v0, 0x10($sp)
/* 10020 8001F820 4C00A58F */  lw         $a1, 0x4C($sp)
/* 10024 8001F824 8F01010C */  jal        SetPressureCreatedTriggerVO
/* 10028 8001F828 1800A427 */   addiu     $a0, $sp, 0x18
/* 1002C 8001F82C 4C00A28F */  lw         $v0, 0x4C($sp)
/* 10030 8001F830 00000000 */  nop
/* 10034 8001F834 01004224 */  addiu      $v0, $v0, 0x1
/* 10038 8001F838 1D7E0008 */  j          .L8001F874
/* 1003C 8001F83C 4C00A2AF */   sw        $v0, 0x4C($sp)
.L8001F840:
/* 10040 8001F840 21202002 */  addu       $a0, $s1, $zero
/* 10044 8001F844 4C00A68F */  lw         $a2, 0x4C($sp)
/* 10048 8001F848 5C00A78F */  lw         $a3, 0x5C($sp)
/* 1004C 8001F84C FFFF0524 */  addiu      $a1, $zero, -0x1
/* 10050 8001F850 54FD000C */  jal        CreateCelAnimPressureTrigger
/* 10054 8001F854 1000A2AF */   sw        $v0, 0x10($sp)
/* 10058 8001F858 4C00A58F */  lw         $a1, 0x4C($sp)
/* 1005C 8001F85C 8F01010C */  jal        SetPressureCreatedTriggerVO
/* 10060 8001F860 1800A427 */   addiu     $a0, $sp, 0x18
/* 10064 8001F864 4C00A38F */  lw         $v1, 0x4C($sp)
/* 10068 8001F868 00000000 */  nop
/* 1006C 8001F86C 01006324 */  addiu      $v1, $v1, 0x1
/* 10070 8001F870 4C00A3AF */  sw         $v1, 0x4C($sp)
.L8001F874:
/* 10074 8001F874 00120224 */  addiu      $v0, $zero, 0x1200
.L8001F878:
/* 10078 8001F878 0C006216 */  bne        $s3, $v0, .L8001F8AC
/* 1007C 8001F87C 00170224 */   addiu     $v0, $zero, 0x1700
/* 10080 8001F880 0400228E */  lw         $v0, 0x4($s1)
/* 10084 8001F884 00000000 */  nop
/* 10088 8001F888 08004014 */  bnez       $v0, .L8001F8AC
/* 1008C 8001F88C 00170224 */   addiu     $v0, $zero, 0x1700
/* 10090 8001F890 0800248E */  lw         $a0, 0x8($s1)
/* 10094 8001F894 8C00A58F */  lw         $a1, 0x8C($sp)
/* 10098 8001F898 9400A68F */  lw         $a2, 0x94($sp)
/* 1009C 8001F89C 6800A78F */  lw         $a3, 0x68($sp)
/* 100A0 8001F8A0 4768000C */  jal        FillInETStartPoint
/* 100A4 8001F8A4 00000000 */   nop
/* 100A8 8001F8A8 00170224 */  addiu      $v0, $zero, 0x1700
.L8001F8AC:
/* 100AC 8001F8AC 08006216 */  bne        $s3, $v0, .L8001F8D0
/* 100B0 8001F8B0 00180224 */   addiu     $v0, $zero, 0x1800
/* 100B4 8001F8B4 9000A58F */  lw         $a1, 0x90($sp)
/* 100B8 8001F8B8 7900010C */  jal        FillInCameraTrigger
/* 100BC 8001F8BC 21202002 */   addu      $a0, $s1, $zero
/* 100C0 8001F8C0 9000A48F */  lw         $a0, 0x90($sp)
/* 100C4 8001F8C4 9DEA000C */  jal        SetSCG_CameraInLevel
/* 100C8 8001F8C8 00000000 */   nop
/* 100CC 8001F8CC 00180224 */  addiu      $v0, $zero, 0x1800
.L8001F8D0:
/* 100D0 8001F8D0 19006216 */  bne        $s3, $v0, .L8001F938
/* 100D4 8001F8D4 00000000 */   nop
/* 100D8 8001F8D8 8000A48F */  lw         $a0, 0x80($sp)
/* 100DC 8001F8DC 0980033C */  lui        $v1, %hi(pxm_emitters)
/* 100E0 8001F8E0 8458638C */  lw         $v1, %lo(pxm_emitters)($v1)
/* 100E4 8001F8E4 4800A78F */  lw         $a3, 0x48($sp)
/* 100E8 8001F8E8 A400A28F */  lw         $v0, 0xA4($sp)
/* 100EC 8001F8EC C0280400 */  sll        $a1, $a0, 3
/* 100F0 8001F8F0 21208700 */  addu       $a0, $a0, $a3
/* 100F4 8001F8F4 21186200 */  addu       $v1, $v1, $v0
/* 100F8 8001F8F8 8000A4AF */  sw         $a0, 0x80($sp)
/* 100FC 8001F8FC 9800A48F */  lw         $a0, 0x98($sp)
/* 10100 8001F900 2C004224 */  addiu      $v0, $v0, 0x2C
/* 10104 8001F904 A400A2AF */  sw         $v0, 0xA4($sp)
/* 10108 8001F908 080064AC */  sw         $a0, 0x8($v1)
/* 1010C 8001F90C 0980043C */  lui        $a0, %hi(pxm_emitter_points)
/* 10110 8001F910 9458848C */  lw         $a0, %lo(pxm_emitter_points)($a0)
/* 10114 8001F914 01000224 */  addiu      $v0, $zero, 0x1
/* 10118 8001F918 0C0060AC */  sw         $zero, 0xC($v1)
/* 1011C 8001F91C 100062AC */  sw         $v0, 0x10($v1)
/* 10120 8001F920 040067AC */  sw         $a3, 0x4($v1)
/* 10124 8001F924 21208500 */  addu       $a0, $a0, $a1
/* 10128 8001F928 000064AC */  sw         $a0, 0x0($v1)
/* 1012C 8001F92C 7400A78F */  lw         $a3, 0x74($sp)
/* 10130 8001F930 00000000 */  nop
/* 10134 8001F934 180067AC */  sw         $a3, 0x18($v1)
.L8001F938:
/* 10138 8001F938 0400228E */  lw         $v0, 0x4($s1)
/* 1013C 8001F93C 00000000 */  nop
/* 10140 8001F940 10004230 */  andi       $v0, $v0, 0x10
/* 10144 8001F944 03004010 */  beqz       $v0, .L8001F954
/* 10148 8001F948 00000000 */   nop
/* 1014C 8001F94C 6568000C */  jal        InitETEndLevelPath
/* 10150 8001F950 21202002 */   addu      $a0, $s1, $zero
.L8001F954:
/* 10154 8001F954 A000B18F */  lw         $s1, 0xA0($sp)
/* 10158 8001F958 C042010C */  jal        pbag_advance
/* 1015C 8001F95C 00000000 */   nop
/* 10160 8001F960 9C00B48F */  lw         $s4, 0x9C($sp)
/* 10164 8001F964 D400A38F */  lw         $v1, 0xD4($sp)
/* 10168 8001F968 00000000 */  nop
/* 1016C 8001F96C 2A108302 */  slt        $v0, $s4, $v1
/* 10170 8001F970 17FE4014 */  bnez       $v0, .L8001F1D0
/* 10174 8001F974 00000000 */   nop
.L8001F978:
/* 10178 8001F978 F9FC000C */  jal        FillinCellAnimIndex
/* 1017C 8001F97C 00000000 */   nop
/* 10180 8001F980 F802010C */  jal        SanityCheckCheckpoints
/* 10184 8001F984 00000000 */   nop
/* 10188 8001F988 644D010C */  jal        pxm_emitter_fixup
/* 1018C 8001F98C 00000000 */   nop
/* 10190 8001F990 8800A28F */  lw         $v0, 0x88($sp)
.L8001F994:
/* 10194 8001F994 CC00BF8F */  lw         $ra, 0xCC($sp)
/* 10198 8001F998 C800BE8F */  lw         $fp, 0xC8($sp)
/* 1019C 8001F99C C400B78F */  lw         $s7, 0xC4($sp)
/* 101A0 8001F9A0 C000B68F */  lw         $s6, 0xC0($sp)
/* 101A4 8001F9A4 BC00B58F */  lw         $s5, 0xBC($sp)
/* 101A8 8001F9A8 B800B48F */  lw         $s4, 0xB8($sp)
/* 101AC 8001F9AC B400B38F */  lw         $s3, 0xB4($sp)
/* 101B0 8001F9B0 B000B28F */  lw         $s2, 0xB0($sp)
/* 101B4 8001F9B4 AC00B18F */  lw         $s1, 0xAC($sp)
/* 101B8 8001F9B8 A800B08F */  lw         $s0, 0xA8($sp)
/* 101BC 8001F9BC 0800E003 */  jr         $ra
/* 101C0 8001F9C0 D000BD27 */   addiu     $sp, $sp, 0xD0
.size parse_attrib_path, . - parse_attrib_path
