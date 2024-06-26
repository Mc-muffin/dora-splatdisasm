.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcShadowVertices
/* 50758 8005FF58 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 5075C 8005FF5C 2000B2AF */  sw         $s2, 0x20($sp)
/* 50760 8005FF60 0980123C */  lui        $s2, %hi(DistBuf)
/* 50764 8005FF64 9057528E */  lw         $s2, %lo(DistBuf)($s2)
/* 50768 8005FF68 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 5076C 8005FF6C 5400B58F */  lw         $s5, 0x54($sp)
/* 50770 8005FF70 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 50774 8005FF74 5000B18F */  lw         $s1, 0x50($sp)
/* 50778 8005FF78 3800BEAF */  sw         $fp, 0x38($sp)
/* 5077C 8005FF7C 21F0A000 */  addu       $fp, $a1, $zero
/* 50780 8005FF80 1800B0AF */  sw         $s0, 0x18($sp)
/* 50784 8005FF84 2180E000 */  addu       $s0, $a3, $zero
/* 50788 8005FF88 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 5078C 8005FF8C 3400B7AF */  sw         $s7, 0x34($sp)
/* 50790 8005FF90 3000B6AF */  sw         $s6, 0x30($sp)
/* 50794 8005FF94 2800B4AF */  sw         $s4, 0x28($sp)
/* 50798 8005FF98 2400B3AF */  sw         $s3, 0x24($sp)
/* 5079C 8005FF9C 4000A4AF */  sw         $a0, 0x40($sp)
/* 507A0 8005FFA0 4800A6AF */  sw         $a2, 0x48($sp)
/* 507A4 8005FFA4 2120A002 */  addu       $a0, $s5, $zero
/* 507A8 8005FFA8 50003326 */  addiu      $s3, $s1, 0x50
/* 507AC 8005FFAC 58003726 */  addiu      $s7, $s1, 0x58
/* 507B0 8005FFB0 60003626 */  addiu      $s6, $s1, 0x60
/* 507B4 8005FFB4 68002226 */  addiu      $v0, $s1, 0x68
/* 507B8 8005FFB8 7BEB010C */  jal        rcos
/* 507BC 8005FFBC 1000A2AF */   sw        $v0, 0x10($sp)
/* 507C0 8005FFC0 2120A002 */  addu       $a0, $s5, $zero
/* 507C4 8005FFC4 47EB010C */  jal        rsin
/* 507C8 8005FFC8 21A04000 */   addu      $s4, $v0, $zero
/* 507CC 8005FFCC C21F1000 */  srl        $v1, $s0, 31
/* 507D0 8005FFD0 21800302 */  addu       $s0, $s0, $v1
/* 507D4 8005FFD4 43801000 */  sra        $s0, $s0, 1
/* 507D8 8005FFD8 18001402 */  mult       $s0, $s4
/* 507DC 8005FFDC 12380000 */  mflo       $a3
/* 507E0 8005FFE0 23201000 */  negu       $a0, $s0
/* 507E4 8005FFE4 00000000 */  nop
/* 507E8 8005FFE8 18008200 */  mult       $a0, $v0
/* 507EC 8005FFEC 12180000 */  mflo       $v1
/* 507F0 8005FFF0 00000000 */  nop
/* 507F4 8005FFF4 00000000 */  nop
/* 507F8 8005FFF8 18000202 */  mult       $s0, $v0
/* 507FC 8005FFFC 12280000 */  mflo       $a1
/* 50800 80060000 00000000 */  nop
/* 50804 80060004 00000000 */  nop
/* 50808 80060008 18009400 */  mult       $a0, $s4
/* 5080C 8006000C 12200000 */  mflo       $a0
/* 50810 80060010 00000000 */  nop
/* 50814 80060014 00000000 */  nop
/* 50818 80060018 18000202 */  mult       $s0, $v0
/* 5081C 8006001C 12400000 */  mflo       $t0
/* 50820 80060020 00000000 */  nop
/* 50824 80060024 00000000 */  nop
/* 50828 80060028 18001402 */  mult       $s0, $s4
/* 5082C 8006002C 12480000 */  mflo       $t1
/* 50830 80060030 23301000 */  negu       $a2, $s0
/* 50834 80060034 00000000 */  nop
/* 50838 80060038 1800D400 */  mult       $a2, $s4
/* 5083C 8006003C 12500000 */  mflo       $t2
/* 50840 80060040 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50844 80060044 00000000 */  nop
/* 50848 80060048 1800C200 */  mult       $a2, $v0
/* 5084C 8006004C 5C006B35 */  ori        $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50850 80060050 4000AC8F */  lw         $t4, 0x40($sp)
/* 50854 80060054 033B0700 */  sra        $a3, $a3, 12
/* 50858 80060058 031B0300 */  sra        $v1, $v1, 12
/* 5085C 8006005C 2118E300 */  addu       $v1, $a3, $v1
/* 50860 80060060 21186C00 */  addu       $v1, $v1, $t4
/* 50864 80060064 500023A6 */  sh         $v1, 0x50($s1)
/* 50868 80060068 4800A38F */  lw         $v1, 0x48($sp)
/* 5086C 8006006C 032B0500 */  sra        $a1, $a1, 12
/* 50870 80060070 23280500 */  negu       $a1, $a1
/* 50874 80060074 03230400 */  sra        $a0, $a0, 12
/* 50878 80060078 12300000 */  mflo       $a2
/* 5087C 8006007C 2120A400 */  addu       $a0, $a1, $a0
/* 50880 80060080 23801000 */  negu       $s0, $s0
/* 50884 80060084 18000202 */  mult       $s0, $v0
/* 50888 80060088 21208300 */  addu       $a0, $a0, $v1
/* 5088C 8006008C 040064A6 */  sh         $a0, 0x4($s3)
/* 50890 80060090 03430800 */  sra        $t0, $t0, 12
/* 50894 80060094 2138E800 */  addu       $a3, $a3, $t0
/* 50898 80060098 2138EC00 */  addu       $a3, $a3, $t4
/* 5089C 8006009C 580027A6 */  sh         $a3, 0x58($s1)
/* 508A0 800600A0 034B0900 */  sra        $t1, $t1, 12
/* 508A4 800600A4 2128A900 */  addu       $a1, $a1, $t1
/* 508A8 800600A8 2128A300 */  addu       $a1, $a1, $v1
/* 508AC 800600AC 0400E5A6 */  sh         $a1, 0x4($s7)
/* 508B0 800600B0 03530A00 */  sra        $t2, $t2, 12
/* 508B4 800600B4 12100000 */  mflo       $v0
/* 508B8 800600B8 21404801 */  addu       $t0, $t2, $t0
/* 508BC 800600BC 21400C01 */  addu       $t0, $t0, $t4
/* 508C0 800600C0 18001402 */  mult       $s0, $s4
/* 508C4 800600C4 600028A6 */  sh         $t0, 0x60($s1)
/* 508C8 800600C8 03330600 */  sra        $a2, $a2, 12
/* 508CC 800600CC 23300600 */  negu       $a2, $a2
/* 508D0 800600D0 2148C900 */  addu       $t1, $a2, $t1
/* 508D4 800600D4 21482301 */  addu       $t1, $t1, $v1
/* 508D8 800600D8 0400C9A6 */  sh         $t1, 0x4($s6)
/* 508DC 800600DC 03130200 */  sra        $v0, $v0, 12
/* 508E0 800600E0 21504201 */  addu       $t2, $t2, $v0
/* 508E4 800600E4 21504C01 */  addu       $t2, $t2, $t4
/* 508E8 800600E8 68002AA6 */  sh         $t2, 0x68($s1)
/* 508EC 800600EC 1000A28F */  lw         $v0, 0x10($sp)
/* 508F0 800600F0 12800000 */  mflo       $s0
/* 508F4 800600F4 03831000 */  sra        $s0, $s0, 12
/* 508F8 800600F8 2130D000 */  addu       $a2, $a2, $s0
/* 508FC 800600FC 2130C300 */  addu       $a2, $a2, $v1
/* 50900 80060100 040046A4 */  sh         $a2, 0x4($v0)
/* 50904 80060104 02007EA6 */  sh         $fp, 0x2($s3)
/* 50908 80060108 0200FEA6 */  sh         $fp, 0x2($s7)
/* 5090C 8006010C 0200DEA6 */  sh         $fp, 0x2($s6)
/* 50910 80060110 02005EA4 */  sh         $fp, 0x2($v0)
/* 50914 80060114 000060CA */  lwc2       $0, 0x0($s3)
/* 50918 80060118 040061CA */  lwc2       $1, 0x4($s3)
/* 5091C 8006011C 00000000 */  nop
/* 50920 80060120 00000000 */  nop
/* 50924 80060124 0100184A */  RTPS
/* 50928 80060128 00006EE9 */  swc2       $14, 0x0($t3)
/* 5092C 8006012C 04006B25 */  addiu      $t3, $t3, 0x4
/* 50930 80060130 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50934 80060134 00000000 */  nop
/* 50938 80060138 C3600C00 */  sra        $t4, $t4, 3
/* 5093C 8006013C 00004CAE */  sw         $t4, 0x0($s2)
/* 50940 80060140 04005226 */  addiu      $s2, $s2, 0x4
/* 50944 80060144 18006226 */  addiu      $v0, $s3, 0x18
/* 50948 80060148 000040C8 */  lwc2       $0, 0x0($v0)
/* 5094C 8006014C 040041C8 */  lwc2       $1, 0x4($v0)
/* 50950 80060150 00000000 */  nop
/* 50954 80060154 00000000 */  nop
/* 50958 80060158 0100184A */  RTPS
/* 5095C 8006015C 00006EE9 */  swc2       $14, 0x0($t3)
/* 50960 80060160 04006B25 */  addiu      $t3, $t3, 0x4
/* 50964 80060164 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50968 80060168 00000000 */  nop
/* 5096C 8006016C C3600C00 */  sra        $t4, $t4, 3
/* 50970 80060170 00004CAE */  sw         $t4, 0x0($s2)
/* 50974 80060174 04005226 */  addiu      $s2, $s2, 0x4
/* 50978 80060178 08006226 */  addiu      $v0, $s3, 0x8
/* 5097C 8006017C 000040C8 */  lwc2       $0, 0x0($v0)
/* 50980 80060180 040041C8 */  lwc2       $1, 0x4($v0)
/* 50984 80060184 00000000 */  nop
/* 50988 80060188 00000000 */  nop
/* 5098C 8006018C 0100184A */  RTPS
/* 50990 80060190 00006EE9 */  swc2       $14, 0x0($t3)
/* 50994 80060194 04006B25 */  addiu      $t3, $t3, 0x4
/* 50998 80060198 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 5099C 8006019C 00000000 */  nop
/* 509A0 800601A0 C3600C00 */  sra        $t4, $t4, 3
/* 509A4 800601A4 00004CAE */  sw         $t4, 0x0($s2)
/* 509A8 800601A8 04005226 */  addiu      $s2, $s2, 0x4
/* 509AC 800601AC 10007326 */  addiu      $s3, $s3, 0x10
/* 509B0 800601B0 000060CA */  lwc2       $0, 0x0($s3)
/* 509B4 800601B4 040061CA */  lwc2       $1, 0x4($s3)
/* 509B8 800601B8 00000000 */  nop
/* 509BC 800601BC 00000000 */  nop
/* 509C0 800601C0 0100184A */  RTPS
/* 509C4 800601C4 00006EE9 */  swc2       $14, 0x0($t3)
/* 509C8 800601C8 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 509CC 800601CC 00000000 */  nop
/* 509D0 800601D0 C3600C00 */  sra        $t4, $t4, 3
/* 509D4 800601D4 00004CAE */  sw         $t4, 0x0($s2)
/* 509D8 800601D8 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 509DC 800601DC 3800BE8F */  lw         $fp, 0x38($sp)
/* 509E0 800601E0 3400B78F */  lw         $s7, 0x34($sp)
/* 509E4 800601E4 3000B68F */  lw         $s6, 0x30($sp)
/* 509E8 800601E8 2C00B58F */  lw         $s5, 0x2C($sp)
/* 509EC 800601EC 2800B48F */  lw         $s4, 0x28($sp)
/* 509F0 800601F0 2400B38F */  lw         $s3, 0x24($sp)
/* 509F4 800601F4 2000B28F */  lw         $s2, 0x20($sp)
/* 509F8 800601F8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 509FC 800601FC 1800B08F */  lw         $s0, 0x18($sp)
/* 50A00 80060200 01000224 */  addiu      $v0, $zero, 0x1
/* 50A04 80060204 0800E003 */  jr         $ra
/* 50A08 80060208 4000BD27 */   addiu     $sp, $sp, 0x40
.size CalcShadowVertices, . - CalcShadowVertices
