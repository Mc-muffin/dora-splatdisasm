.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_CacheDirectory
/* 46654 80055E54 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 46658 80055E58 01000224 */  addiu      $v0, $zero, 0x1
/* 4665C 80055E5C 5000B0AF */  sw         $s0, 0x50($sp)
/* 46660 80055E60 21808000 */  addu       $s0, $a0, $zero
/* 46664 80055E64 7400BFAF */  sw         $ra, 0x74($sp)
/* 46668 80055E68 7000BEAF */  sw         $fp, 0x70($sp)
/* 4666C 80055E6C 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 46670 80055E70 6800B6AF */  sw         $s6, 0x68($sp)
/* 46674 80055E74 6400B5AF */  sw         $s5, 0x64($sp)
/* 46678 80055E78 6000B4AF */  sw         $s4, 0x60($sp)
/* 4667C 80055E7C 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 46680 80055E80 5800B2AF */  sw         $s2, 0x58($sp)
/* 46684 80055E84 5400B1AF */  sw         $s1, 0x54($sp)
/* 46688 80055E88 7C00A5AF */  sw         $a1, 0x7C($sp)
/* 4668C 80055E8C 0300A104 */  bgez       $a1, .L80055E9C
/* 46690 80055E90 4800A2AF */   sw        $v0, 0x48($sp)
/* 46694 80055E94 6C020324 */  addiu      $v1, $zero, 0x26C
/* 46698 80055E98 7C00A3AF */  sw         $v1, 0x7C($sp)
.L80055E9C:
/* 4669C 80055E9C 21200002 */  addu       $a0, $s0, $zero
/* 466A0 80055EA0 A3C2010C */  jal        strlen
/* 466A4 80055EA4 2800B227 */   addiu     $s2, $sp, 0x28
/* 466A8 80055EA8 21204000 */  addu       $a0, $v0, $zero
/* 466AC 80055EAC 21100402 */  addu       $v0, $s0, $a0
/* 466B0 80055EB0 00004590 */  lbu        $a1, 0x0($v0)
/* 466B4 80055EB4 5C000324 */  addiu      $v1, $zero, 0x5C
/* 466B8 80055EB8 1100A310 */  beq        $a1, $v1, .L80055F00
/* 466BC 80055EBC 2F000224 */   addiu     $v0, $zero, 0x2F
/* 466C0 80055EC0 1600A210 */  beq        $a1, $v0, .L80055F1C
/* 466C4 80055EC4 00000000 */   nop
/* 466C8 80055EC8 0D008018 */  blez       $a0, .L80055F00
/* 466CC 80055ECC 5C000524 */   addiu     $a1, $zero, 0x5C
/* 466D0 80055ED0 2F000324 */  addiu      $v1, $zero, 0x2F
/* 466D4 80055ED4 FFFF8424 */  addiu      $a0, $a0, -0x1
.L80055ED8:
/* 466D8 80055ED8 21100402 */  addu       $v0, $s0, $a0
/* 466DC 80055EDC 00004290 */  lbu        $v0, 0x0($v0)
/* 466E0 80055EE0 00000000 */  nop
/* 466E4 80055EE4 06004510 */  beq        $v0, $a1, .L80055F00
/* 466E8 80055EE8 00000000 */   nop
/* 466EC 80055EEC 0B004310 */  beq        $v0, $v1, .L80055F1C
/* 466F0 80055EF0 00000000 */   nop
/* 466F4 80055EF4 F8FF801C */  bgtz       $a0, .L80055ED8
/* 466F8 80055EF8 FFFF8424 */   addiu     $a0, $a0, -0x1
/* 466FC 80055EFC 01008424 */  addiu      $a0, $a0, 0x1
.L80055F00:
/* 46700 80055F00 21100402 */  addu       $v0, $s0, $a0
/* 46704 80055F04 00004590 */  lbu        $a1, 0x0($v0)
/* 46708 80055F08 2F000324 */  addiu      $v1, $zero, 0x2F
/* 4670C 80055F0C 0300A310 */  beq        $a1, $v1, .L80055F1C
/* 46710 80055F10 5C000224 */   addiu     $v0, $zero, 0x5C
/* 46714 80055F14 0200A214 */  bne        $a1, $v0, .L80055F20
/* 46718 80055F18 00000000 */   nop
.L80055F1C:
/* 4671C 80055F1C 01008424 */  addiu      $a0, $a0, 0x1
.L80055F20:
/* 46720 80055F20 21200402 */  addu       $a0, $s0, $a0
/* 46724 80055F24 00008290 */  lbu        $v0, 0x0($a0)
/* 46728 80055F28 00000000 */  nop
/* 4672C 80055F2C 0A004010 */  beqz       $v0, .L80055F58
/* 46730 80055F30 21880000 */   addu      $s1, $zero, $zero
/* 46734 80055F34 21808000 */  addu       $s0, $a0, $zero
.L80055F38:
/* 46738 80055F38 00000492 */  lbu        $a0, 0x0($s0)
/* 4673C 80055F3C 8FC7010C */  jal        toupper
/* 46740 80055F40 01001026 */   addiu     $s0, $s0, 0x1
/* 46744 80055F44 21185102 */  addu       $v1, $s2, $s1
/* 46748 80055F48 00000492 */  lbu        $a0, 0x0($s0)
/* 4674C 80055F4C 01003126 */  addiu      $s1, $s1, 0x1
/* 46750 80055F50 F9FF8014 */  bnez       $a0, .L80055F38
/* 46754 80055F54 000062A0 */   sb        $v0, 0x0($v1)
.L80055F58:
/* 46758 80055F58 21105102 */  addu       $v0, $s2, $s1
/* 4675C 80055F5C 000040A0 */  sb         $zero, 0x0($v0)
/* 46760 80055F60 2810828F */  lw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 46764 80055F64 10001024 */  addiu      $s0, $zero, 0x10
/* 46768 80055F68 06005014 */  bne        $v0, $s0, .L80055F84
/* 4676C 80055F6C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 46770 80055F70 3010828F */  lw         $v0, %gp_rel(gSearchSize)($gp)
/* 46774 80055F74 00000000 */  nop
/* 46778 80055F78 2300401C */  bgtz       $v0, .L80056008
/* 4677C 80055F7C 01000324 */   addiu     $v1, $zero, 0x1
/* 46780 80055F80 FFFF0224 */  addiu      $v0, $zero, -0x1
.L80055F84:
/* 46784 80055F84 281082AF */  sw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 46788 80055F88 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 4678C 80055F8C 4BD2010C */  jal        CdIntToPos
/* 46790 80055F90 10000424 */   addiu     $a0, $zero, 0x10
/* 46794 80055F94 01000424 */  addiu      $a0, $zero, 0x1
.L80055F98:
/* 46798 80055F98 ABD2010C */  jal        CdReady
/* 4679C 80055F9C 21280000 */   addu      $a1, $zero, $zero
/* 467A0 80055FA0 FDFF4014 */  bnez       $v0, .L80055F98
/* 467A4 80055FA4 01000424 */   addiu     $a0, $zero, 0x1
/* 467A8 80055FA8 15000424 */  addiu      $a0, $zero, 0x15
/* 467AC 80055FAC 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 467B0 80055FB0 801F013C */  lui        $at, (0x1F801800 >> 16)
/* 467B4 80055FB4 001820A0 */  sb         $zero, (0x1F801800 & 0xFFFF)($at)
/* 467B8 80055FB8 801F013C */  lui        $at, (0x1F801803 >> 16)
/* 467BC 80055FBC 031820A0 */  sb         $zero, (0x1F801803 & 0xFFFF)($at)
/* 467C0 80055FC0 C3D2010C */  jal        CdControl
/* 467C4 80055FC4 21300000 */   addu      $a2, $zero, $zero
/* 467C8 80055FC8 07004010 */  beqz       $v0, .L80055FE8
/* 467CC 80055FCC 01000424 */   addiu     $a0, $zero, 0x1
/* 467D0 80055FD0 69168693 */  lbu        $a2, %gp_rel(gCurrentCDSpeed + 0x1)($gp)
/* 467D4 80055FD4 0B80053C */  lui        $a1, %hi(gSectorBuffer)
/* 467D8 80055FD8 CFD5010C */  jal        CdRead
/* 467DC 80055FDC A8AAA524 */   addiu     $a1, $a1, %lo(gSectorBuffer)
/* 467E0 80055FE0 03004014 */  bnez       $v0, .L80055FF0
/* 467E4 80055FE4 21200000 */   addu      $a0, $zero, $zero
.L80055FE8:
/* 467E8 80055FE8 02580108 */  j          .L80056008
/* 467EC 80055FEC FFFF0324 */   addiu     $v1, $zero, -0x1
.L80055FF0:
/* 467F0 80055FF0 36D6010C */  jal        CdReadSync
/* 467F4 80055FF4 21280000 */   addu      $a1, $zero, $zero
/* 467F8 80055FF8 01000324 */  addiu      $v1, $zero, 0x1
/* 467FC 80055FFC 01000224 */  addiu      $v0, $zero, 0x1
/* 46800 80056000 281090AF */  sw         $s0, %gp_rel(gSearchCurrent)($gp)
/* 46804 80056004 301082AF */  sw         $v0, %gp_rel(gSearchSize)($gp)
.L80056008:
/* 46808 80056008 30006018 */  blez       $v1, .L800560CC
/* 4680C 8005600C 0B80023C */   lui       $v0, %hi(gSectorBuffer)
/* 46810 80056010 A8AA4324 */  addiu      $v1, $v0, %lo(gSectorBuffer)
/* 46814 80056014 A1007688 */  lwl        $s6, 0xA1($v1)
/* 46818 80056018 9E007698 */  lwr        $s6, 0x9E($v1)
/* 4681C 8005601C 2810848F */  lw         $a0, %gp_rel(gSearchCurrent)($gp)
/* 46820 80056020 A9007788 */  lwl        $s7, 0xA9($v1)
/* 46824 80056024 A6007798 */  lwr        $s7, 0xA6($v1)
/* 46828 80056028 0500C416 */  bne        $s6, $a0, .L80056040
/* 4682C 8005602C 21F04000 */   addu      $fp, $v0, $zero
/* 46830 80056030 3010828F */  lw         $v0, %gp_rel(gSearchSize)($gp)
/* 46834 80056034 00000000 */  nop
/* 46838 80056038 2200401C */  bgtz       $v0, .L800560C4
/* 4683C 8005603C 01000324 */   addiu     $v1, $zero, 0x1
.L80056040:
/* 46840 80056040 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 46844 80056044 281082AF */  sw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 46848 80056048 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 4684C 8005604C 4BD2010C */  jal        CdIntToPos
/* 46850 80056050 2120C002 */   addu      $a0, $s6, $zero
/* 46854 80056054 01000424 */  addiu      $a0, $zero, 0x1
.L80056058:
/* 46858 80056058 ABD2010C */  jal        CdReady
/* 4685C 8005605C 21280000 */   addu      $a1, $zero, $zero
/* 46860 80056060 FDFF4014 */  bnez       $v0, .L80056058
/* 46864 80056064 01000424 */   addiu     $a0, $zero, 0x1
/* 46868 80056068 15000424 */  addiu      $a0, $zero, 0x15
/* 4686C 8005606C 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 46870 80056070 801F013C */  lui        $at, (0x1F801800 >> 16)
/* 46874 80056074 001820A0 */  sb         $zero, (0x1F801800 & 0xFFFF)($at)
/* 46878 80056078 801F013C */  lui        $at, (0x1F801803 >> 16)
/* 4687C 8005607C 031820A0 */  sb         $zero, (0x1F801803 & 0xFFFF)($at)
/* 46880 80056080 C3D2010C */  jal        CdControl
/* 46884 80056084 21300000 */   addu      $a2, $zero, $zero
/* 46888 80056088 06004010 */  beqz       $v0, .L800560A4
/* 4688C 8005608C 01000424 */   addiu     $a0, $zero, 0x1
/* 46890 80056090 69168693 */  lbu        $a2, %gp_rel(gCurrentCDSpeed + 0x1)($gp)
/* 46894 80056094 CFD5010C */  jal        CdRead
/* 46898 80056098 A8AAC527 */   addiu     $a1, $fp, %lo(gSectorBuffer)
/* 4689C 8005609C 03004014 */  bnez       $v0, .L800560AC
/* 468A0 800560A0 21200000 */   addu      $a0, $zero, $zero
.L800560A4:
/* 468A4 800560A4 31580108 */  j          .L800560C4
/* 468A8 800560A8 FFFF0324 */   addiu     $v1, $zero, -0x1
.L800560AC:
/* 468AC 800560AC 36D6010C */  jal        CdReadSync
/* 468B0 800560B0 21280000 */   addu      $a1, $zero, $zero
/* 468B4 800560B4 01000324 */  addiu      $v1, $zero, 0x1
/* 468B8 800560B8 01000224 */  addiu      $v0, $zero, 0x1
/* 468BC 800560BC 281096AF */  sw         $s6, %gp_rel(gSearchCurrent)($gp)
/* 468C0 800560C0 301082AF */  sw         $v0, %gp_rel(gSearchSize)($gp)
.L800560C4:
/* 468C4 800560C4 0300601C */  bgtz       $v1, .L800560D4
/* 468C8 800560C8 A8AAD427 */   addiu     $s4, $fp, %lo(gSectorBuffer)
.L800560CC:
/* 468CC 800560CC 41590108 */  j          .L80056504
/* 468D0 800560D0 21106000 */   addu      $v0, $v1, $zero
.L800560D4:
/* 468D4 800560D4 A8AAD393 */  lbu        $s3, %lo(gSectorBuffer)($fp)
/* 468D8 800560D8 00000000 */  nop
/* 468DC 800560DC 21A07402 */  addu       $s4, $s3, $s4
/* 468E0 800560E0 00008292 */  lbu        $v0, 0x0($s4)
.L800560E4:
/* 468E4 800560E4 00000000 */  nop
/* 468E8 800560E8 21986202 */  addu       $s3, $s3, $v0
/* 468EC 800560EC A8AAC227 */  addiu      $v0, $fp, %lo(gSectorBuffer)
.L800560F0:
/* 468F0 800560F0 21A06202 */  addu       $s4, $s3, $v0
/* 468F4 800560F4 00008392 */  lbu        $v1, 0x0($s4)
/* 468F8 800560F8 00000000 */  nop
/* 468FC 800560FC C9006010 */  beqz       $v1, .L80056424
/* 46900 80056100 00F80624 */   addiu     $a2, $zero, -0x800
/* 46904 80056104 20009092 */  lbu        $s0, 0x20($s4)
/* 46908 80056108 00000000 */  nop
/* 4690C 8005610C 1400022A */  slti       $v0, $s0, 0x14
/* 46910 80056110 03004014 */  bnez       $v0, .L80056120
/* 46914 80056114 1000B127 */   addiu     $s1, $sp, 0x10
/* 46918 80056118 4F580108 */  j          .L8005613C
/* 4691C 8005611C FFFF0624 */   addiu     $a2, $zero, -0x1
.L80056120:
/* 46920 80056120 21202002 */  addu       $a0, $s1, $zero
/* 46924 80056124 21008526 */  addiu      $a1, $s4, 0x21
/* 46928 80056128 D3C2010C */  jal        strncpy
/* 4692C 8005612C 21300002 */   addu      $a2, $s0, $zero
/* 46930 80056130 21183002 */  addu       $v1, $s1, $s0
/* 46934 80056134 000060A0 */  sb         $zero, 0x0($v1)
/* 46938 80056138 21300002 */  addu       $a2, $s0, $zero
.L8005613C:
/* 4693C 8005613C B900C010 */  beqz       $a2, .L80056424
/* 46940 80056140 00F80624 */   addiu     $a2, $zero, -0x800
/* 46944 80056144 4800A68F */  lw         $a2, 0x48($sp)
/* 46948 80056148 00000000 */  nop
/* 4694C 8005614C 4F00C010 */  beqz       $a2, .L8005628C
/* 46950 80056150 00000000 */   nop
/* 46954 80056154 19008292 */  lbu        $v0, 0x19($s4)
/* 46958 80056158 00000000 */  nop
/* 4695C 8005615C 02004230 */  andi       $v0, $v0, 0x2
/* 46960 80056160 9E004010 */  beqz       $v0, .L800563DC
/* 46964 80056164 21902002 */   addu      $s2, $s1, $zero
/* 46968 80056168 2800B127 */  addiu      $s1, $sp, 0x28
/* 4696C 8005616C 5F580108 */  j          .L8005617C
/* 46970 80056170 01001524 */   addiu     $s5, $zero, 0x1
.L80056174:
/* 46974 80056174 01005226 */  addiu      $s2, $s2, 0x1
/* 46978 80056178 01003126 */  addiu      $s1, $s1, 0x1
.L8005617C:
/* 4697C 8005617C 00004492 */  lbu        $a0, 0x0($s2)
/* 46980 80056180 8FC7010C */  jal        toupper
/* 46984 80056184 00000000 */   nop
/* 46988 80056188 00002492 */  lbu        $a0, 0x0($s1)
/* 4698C 8005618C 8FC7010C */  jal        toupper
/* 46990 80056190 21804000 */   addu      $s0, $v0, $zero
/* 46994 80056194 04000216 */  bne        $s0, $v0, .L800561A8
/* 46998 80056198 00000000 */   nop
/* 4699C 8005619C F5FF0016 */  bnez       $s0, .L80056174
/* 469A0 800561A0 00000000 */   nop
/* 469A4 800561A4 21A80000 */  addu       $s5, $zero, $zero
.L800561A8:
/* 469A8 800561A8 8C00A016 */  bnez       $s5, .L800563DC
/* 469AC 800561AC 00000000 */   nop
/* 469B0 800561B0 0500968A */  lwl        $s6, 0x5($s4)
/* 469B4 800561B4 0200969A */  lwr        $s6, 0x2($s4)
/* 469B8 800561B8 2810828F */  lw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 469BC 800561BC 0D00978A */  lwl        $s7, 0xD($s4)
/* 469C0 800561C0 0A00979A */  lwr        $s7, 0xA($s4)
/* 469C4 800561C4 0500C216 */  bne        $s6, $v0, .L800561DC
/* 469C8 800561C8 01001024 */   addiu     $s0, $zero, 0x1
/* 469CC 800561CC 3010828F */  lw         $v0, %gp_rel(gSearchSize)($gp)
/* 469D0 800561D0 00000000 */  nop
/* 469D4 800561D4 2100401C */  bgtz       $v0, .L8005625C
/* 469D8 800561D8 01000324 */   addiu     $v1, $zero, 0x1
.L800561DC:
/* 469DC 800561DC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 469E0 800561E0 281082AF */  sw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 469E4 800561E4 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 469E8 800561E8 4BD2010C */  jal        CdIntToPos
/* 469EC 800561EC 2120C002 */   addu      $a0, $s6, $zero
/* 469F0 800561F0 01000424 */  addiu      $a0, $zero, 0x1
.L800561F4:
/* 469F4 800561F4 ABD2010C */  jal        CdReady
/* 469F8 800561F8 21280000 */   addu      $a1, $zero, $zero
/* 469FC 800561FC FDFF4014 */  bnez       $v0, .L800561F4
/* 46A00 80056200 01000424 */   addiu     $a0, $zero, 0x1
/* 46A04 80056204 15000424 */  addiu      $a0, $zero, 0x15
/* 46A08 80056208 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 46A0C 8005620C 801F013C */  lui        $at, (0x1F801800 >> 16)
/* 46A10 80056210 001820A0 */  sb         $zero, (0x1F801800 & 0xFFFF)($at)
/* 46A14 80056214 801F013C */  lui        $at, (0x1F801803 >> 16)
/* 46A18 80056218 031820A0 */  sb         $zero, (0x1F801803 & 0xFFFF)($at)
/* 46A1C 8005621C C3D2010C */  jal        CdControl
/* 46A20 80056220 21300000 */   addu      $a2, $zero, $zero
/* 46A24 80056224 06004010 */  beqz       $v0, .L80056240
/* 46A28 80056228 01000424 */   addiu     $a0, $zero, 0x1
/* 46A2C 8005622C 69168693 */  lbu        $a2, %gp_rel(gCurrentCDSpeed + 0x1)($gp)
/* 46A30 80056230 CFD5010C */  jal        CdRead
/* 46A34 80056234 A8AAC527 */   addiu     $a1, $fp, %lo(gSectorBuffer)
/* 46A38 80056238 03004014 */  bnez       $v0, .L80056248
/* 46A3C 8005623C 21200000 */   addu      $a0, $zero, $zero
.L80056240:
/* 46A40 80056240 97580108 */  j          .L8005625C
/* 46A44 80056244 FFFF0324 */   addiu     $v1, $zero, -0x1
.L80056248:
/* 46A48 80056248 36D6010C */  jal        CdReadSync
/* 46A4C 8005624C 21280000 */   addu      $a1, $zero, $zero
/* 46A50 80056250 01000324 */  addiu      $v1, $zero, 0x1
/* 46A54 80056254 281096AF */  sw         $s6, %gp_rel(gSearchCurrent)($gp)
/* 46A58 80056258 301090AF */  sw         $s0, %gp_rel(gSearchSize)($gp)
.L8005625C:
/* 46A5C 8005625C 9BFF6018 */  blez       $v1, .L800560CC
/* 46A60 80056260 0B80043C */   lui       $a0, %hi(gcacheddir)
/* 46A64 80056264 30AA8424 */  addiu      $a0, $a0, %lo(gcacheddir)
/* 46A68 80056268 241080AF */  sw         $zero, %gp_rel(sDirEntries)($gp)
/* 46A6C 8005626C 8FC2010C */  jal        strcpy
/* 46A70 80056270 2800A527 */   addiu     $a1, $sp, 0x28
/* 46A74 80056274 A8AAD393 */  lbu        $s3, %lo(gSectorBuffer)($fp)
/* 46A78 80056278 A8AAD427 */  addiu      $s4, $fp, %lo(gSectorBuffer)
/* 46A7C 8005627C 21A07402 */  addu       $s4, $s3, $s4
/* 46A80 80056280 00008292 */  lbu        $v0, 0x0($s4)
/* 46A84 80056284 39580108 */  j          .L800560E4
/* 46A88 80056288 4800A0AF */   sw        $zero, 0x48($sp)
.L8005628C:
/* 46A8C 8005628C 2410828F */  lw         $v0, %gp_rel(sDirEntries)($gp)
/* 46A90 80056290 7C00A38F */  lw         $v1, 0x7C($sp)
/* 46A94 80056294 00000000 */  nop
/* 46A98 80056298 2A104300 */  slt        $v0, $v0, $v1
/* 46A9C 8005629C 4C004010 */  beqz       $v0, .L800563D0
/* 46AA0 800562A0 00000000 */   nop
/* 46AA4 800562A4 0500848A */  lwl        $a0, 0x5($s4)
/* 46AA8 800562A8 0200849A */  lwr        $a0, 0x2($s4)
/* 46AAC 800562AC 4BD2010C */  jal        CdIntToPos
/* 46AB0 800562B0 4000A527 */   addiu     $a1, $sp, 0x40
/* 46AB4 800562B4 4000A493 */  lbu        $a0, 0x40($sp)
/* 46AB8 800562B8 21382002 */  addu       $a3, $s1, $zero
/* 46ABC 800562BC 02190400 */  srl        $v1, $a0, 4
/* 46AC0 800562C0 80100300 */  sll        $v0, $v1, 2
/* 46AC4 800562C4 21104300 */  addu       $v0, $v0, $v1
/* 46AC8 800562C8 40100200 */  sll        $v0, $v0, 1
/* 46ACC 800562CC 0F008430 */  andi       $a0, $a0, 0xF
/* 46AD0 800562D0 21104400 */  addu       $v0, $v0, $a0
/* 46AD4 800562D4 00290200 */  sll        $a1, $v0, 4
/* 46AD8 800562D8 2328A200 */  subu       $a1, $a1, $v0
/* 46ADC 800562DC 4100A493 */  lbu        $a0, 0x41($sp)
/* 46AE0 800562E0 80280500 */  sll        $a1, $a1, 2
/* 46AE4 800562E4 02190400 */  srl        $v1, $a0, 4
/* 46AE8 800562E8 80100300 */  sll        $v0, $v1, 2
/* 46AEC 800562EC 21104300 */  addu       $v0, $v0, $v1
/* 46AF0 800562F0 40100200 */  sll        $v0, $v0, 1
/* 46AF4 800562F4 0F008430 */  andi       $a0, $a0, 0xF
/* 46AF8 800562F8 21104400 */  addu       $v0, $v0, $a0
/* 46AFC 800562FC 2110A200 */  addu       $v0, $a1, $v0
/* 46B00 80056300 80180200 */  sll        $v1, $v0, 2
/* 46B04 80056304 21186200 */  addu       $v1, $v1, $v0
/* 46B08 80056308 00310300 */  sll        $a2, $v1, 4
/* 46B0C 8005630C 2330C300 */  subu       $a2, $a2, $v1
/* 46B10 80056310 4200A593 */  lbu        $a1, 0x42($sp)
/* 46B14 80056314 2410838F */  lw         $v1, %gp_rel(sDirEntries)($gp)
/* 46B18 80056318 02210500 */  srl        $a0, $a1, 4
/* 46B1C 8005631C 80100400 */  sll        $v0, $a0, 2
/* 46B20 80056320 21104400 */  addu       $v0, $v0, $a0
/* 46B24 80056324 40100200 */  sll        $v0, $v0, 1
/* 46B28 80056328 0F00A530 */  andi       $a1, $a1, 0xF
/* 46B2C 8005632C 21104500 */  addu       $v0, $v0, $a1
/* 46B30 80056330 2110C200 */  addu       $v0, $a2, $v0
/* 46B34 80056334 C02A0200 */  sll        $a1, $v0, 11
/* 46B38 80056338 40100300 */  sll        $v0, $v1, 1
/* 46B3C 8005633C 21104300 */  addu       $v0, $v0, $v1
/* 46B40 80056340 6416848F */  lw         $a0, %gp_rel(sDirCache)($gp)
/* 46B44 80056344 80100200 */  sll        $v0, $v0, 2
/* 46B48 80056348 21104400 */  addu       $v0, $v0, $a0
/* 46B4C 8005634C 000045AC */  sw         $a1, 0x0($v0)
/* 46B50 80056350 0D00838A */  lwl        $v1, 0xD($s4)
/* 46B54 80056354 0A00839A */  lwr        $v1, 0xA($s4)
/* 46B58 80056358 21300000 */  addu       $a2, $zero, $zero
/* 46B5C 8005635C 080043AC */  sw         $v1, 0x8($v0)
/* 46B60 80056360 1000A493 */  lbu        $a0, 0x10($sp)
/* 46B64 80056364 00000000 */  nop
/* 46B68 80056368 0E008010 */  beqz       $a0, .L800563A4
/* 46B6C 8005636C 21280000 */   addu      $a1, $zero, $zero
/* 46B70 80056370 4010848F */  lw         $a0, %gp_rel(egghasheesh)($gp)
/* 46B74 80056374 0000E290 */  lbu        $v0, 0x0($a3)
.L80056378:
/* 46B78 80056378 00000000 */  nop
/* 46B7C 8005637C 21104400 */  addu       $v0, $v0, $a0
/* 46B80 80056380 18004200 */  mult       $v0, $v0
/* 46B84 80056384 0100E724 */  addiu      $a3, $a3, 0x1
/* 46B88 80056388 0410C200 */  sllv       $v0, $v0, $a2
/* 46B8C 8005638C 2628A200 */  xor        $a1, $a1, $v0
/* 46B90 80056390 0200C624 */  addiu      $a2, $a2, 0x2
/* 46B94 80056394 0000E290 */  lbu        $v0, 0x0($a3)
/* 46B98 80056398 12180000 */  mflo       $v1
/* 46B9C 8005639C F6FF4014 */  bnez       $v0, .L80056378
/* 46BA0 800563A0 2128A300 */   addu      $a1, $a1, $v1
.L800563A4:
/* 46BA4 800563A4 2410828F */  lw         $v0, %gp_rel(sDirEntries)($gp)
/* 46BA8 800563A8 6416848F */  lw         $a0, %gp_rel(sDirCache)($gp)
/* 46BAC 800563AC 40180200 */  sll        $v1, $v0, 1
/* 46BB0 800563B0 21186200 */  addu       $v1, $v1, $v0
/* 46BB4 800563B4 80180300 */  sll        $v1, $v1, 2
/* 46BB8 800563B8 21186400 */  addu       $v1, $v1, $a0
/* 46BBC 800563BC 01004224 */  addiu      $v0, $v0, 0x1
/* 46BC0 800563C0 040065AC */  sw         $a1, 0x4($v1)
/* 46BC4 800563C4 241082AF */  sw         $v0, %gp_rel(sDirEntries)($gp)
/* 46BC8 800563C8 F7580108 */  j          .L800563DC
/* 46BCC 800563CC 00000000 */   nop
.L800563D0:
/* 46BD0 800563D0 7C00A28F */  lw         $v0, 0x7C($sp)
/* 46BD4 800563D4 41590108 */  j          .L80056504
/* 46BD8 800563D8 00000000 */   nop
.L800563DC:
/* 46BDC 800563DC 00008592 */  lbu        $a1, 0x0($s4)
/* 46BE0 800563E0 21206002 */  addu       $a0, $s3, $zero
/* 46BE4 800563E4 00F80224 */  addiu      $v0, $zero, -0x800
/* 46BE8 800563E8 24188200 */  and        $v1, $a0, $v0
/* 46BEC 800563EC 21986502 */  addu       $s3, $s3, $a1
/* 46BF0 800563F0 24106202 */  and        $v0, $s3, $v0
/* 46BF4 800563F4 09006214 */  bne        $v1, $v0, .L8005641C
/* 46BF8 800563F8 00F80324 */   addiu     $v1, $zero, -0x800
/* 46BFC 800563FC 19008292 */  lbu        $v0, 0x19($s4)
/* 46C00 80056400 00000000 */  nop
/* 46C04 80056404 80004230 */  andi       $v0, $v0, 0x80
/* 46C08 80056408 04004014 */  bnez       $v0, .L8005641C
/* 46C0C 8005640C 00000000 */   nop
/* 46C10 80056410 0700A014 */  bnez       $a1, .L80056430
/* 46C14 80056414 0008622A */   slti      $v0, $s3, 0x800
/* 46C18 80056418 00F80324 */  addiu      $v1, $zero, -0x800
.L8005641C:
/* 46C1C 8005641C 0A590108 */  j          .L80056428
/* 46C20 80056420 24108300 */   and       $v0, $a0, $v1
.L80056424:
/* 46C24 80056424 24106602 */  and        $v0, $s3, $a2
.L80056428:
/* 46C28 80056428 00085324 */  addiu      $s3, $v0, 0x800
/* 46C2C 8005642C 0008622A */  slti       $v0, $s3, 0x800
.L80056430:
/* 46C30 80056430 03004010 */  beqz       $v0, .L80056440
/* 46C34 80056434 2A107702 */   slt       $v0, $s3, $s7
/* 46C38 80056438 2DFF4014 */  bnez       $v0, .L800560F0
/* 46C3C 8005643C A8AAC227 */   addiu     $v0, $fp, %lo(gSectorBuffer)
.L80056440:
/* 46C40 80056440 00F8F726 */  addiu      $s7, $s7, -0x800
/* 46C44 80056444 2E00E01A */  blez       $s7, .L80056500
/* 46C48 80056448 21980000 */   addu      $s3, $zero, $zero
/* 46C4C 8005644C 0100D626 */  addiu      $s6, $s6, 0x1
/* 46C50 80056450 2810828F */  lw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 46C54 80056454 00000000 */  nop
/* 46C58 80056458 0500C216 */  bne        $s6, $v0, .L80056470
/* 46C5C 8005645C 01001024 */   addiu     $s0, $zero, 0x1
/* 46C60 80056460 3010828F */  lw         $v0, %gp_rel(gSearchSize)($gp)
/* 46C64 80056464 00000000 */  nop
/* 46C68 80056468 2100401C */  bgtz       $v0, .L800564F0
/* 46C6C 8005646C 01000324 */   addiu     $v1, $zero, 0x1
.L80056470:
/* 46C70 80056470 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 46C74 80056474 281082AF */  sw         $v0, %gp_rel(gSearchCurrent)($gp)
/* 46C78 80056478 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 46C7C 8005647C 4BD2010C */  jal        CdIntToPos
/* 46C80 80056480 2120C002 */   addu      $a0, $s6, $zero
/* 46C84 80056484 01000424 */  addiu      $a0, $zero, 0x1
.L80056488:
/* 46C88 80056488 ABD2010C */  jal        CdReady
/* 46C8C 8005648C 21280000 */   addu      $a1, $zero, $zero
/* 46C90 80056490 FDFF4014 */  bnez       $v0, .L80056488
/* 46C94 80056494 01000424 */   addiu     $a0, $zero, 0x1
/* 46C98 80056498 15000424 */  addiu      $a0, $zero, 0x15
/* 46C9C 8005649C 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 46CA0 800564A0 801F013C */  lui        $at, (0x1F801800 >> 16)
/* 46CA4 800564A4 001820A0 */  sb         $zero, (0x1F801800 & 0xFFFF)($at)
/* 46CA8 800564A8 801F013C */  lui        $at, (0x1F801803 >> 16)
/* 46CAC 800564AC 031820A0 */  sb         $zero, (0x1F801803 & 0xFFFF)($at)
/* 46CB0 800564B0 C3D2010C */  jal        CdControl
/* 46CB4 800564B4 21300000 */   addu      $a2, $zero, $zero
/* 46CB8 800564B8 06004010 */  beqz       $v0, .L800564D4
/* 46CBC 800564BC 01000424 */   addiu     $a0, $zero, 0x1
/* 46CC0 800564C0 69168693 */  lbu        $a2, %gp_rel(gCurrentCDSpeed + 0x1)($gp)
/* 46CC4 800564C4 CFD5010C */  jal        CdRead
/* 46CC8 800564C8 A8AAC527 */   addiu     $a1, $fp, %lo(gSectorBuffer)
/* 46CCC 800564CC 03004014 */  bnez       $v0, .L800564DC
/* 46CD0 800564D0 21200000 */   addu      $a0, $zero, $zero
.L800564D4:
/* 46CD4 800564D4 3C590108 */  j          .L800564F0
/* 46CD8 800564D8 FFFF0324 */   addiu     $v1, $zero, -0x1
.L800564DC:
/* 46CDC 800564DC 36D6010C */  jal        CdReadSync
/* 46CE0 800564E0 21280000 */   addu      $a1, $zero, $zero
/* 46CE4 800564E4 01000324 */  addiu      $v1, $zero, 0x1
/* 46CE8 800564E8 281096AF */  sw         $s6, %gp_rel(gSearchCurrent)($gp)
/* 46CEC 800564EC 301090AF */  sw         $s0, %gp_rel(gSearchSize)($gp)
.L800564F0:
/* 46CF0 800564F0 FFFE601C */  bgtz       $v1, .L800560F0
/* 46CF4 800564F4 A8AAC227 */   addiu     $v0, $fp, %lo(gSectorBuffer)
/* 46CF8 800564F8 41590108 */  j          .L80056504
/* 46CFC 800564FC 21106000 */   addu      $v0, $v1, $zero
.L80056500:
/* 46D00 80056500 2410828F */  lw         $v0, %gp_rel(sDirEntries)($gp)
.L80056504:
/* 46D04 80056504 7400BF8F */  lw         $ra, 0x74($sp)
/* 46D08 80056508 7000BE8F */  lw         $fp, 0x70($sp)
/* 46D0C 8005650C 6C00B78F */  lw         $s7, 0x6C($sp)
/* 46D10 80056510 6800B68F */  lw         $s6, 0x68($sp)
/* 46D14 80056514 6400B58F */  lw         $s5, 0x64($sp)
/* 46D18 80056518 6000B48F */  lw         $s4, 0x60($sp)
/* 46D1C 8005651C 5C00B38F */  lw         $s3, 0x5C($sp)
/* 46D20 80056520 5800B28F */  lw         $s2, 0x58($sp)
/* 46D24 80056524 5400B18F */  lw         $s1, 0x54($sp)
/* 46D28 80056528 5000B08F */  lw         $s0, 0x50($sp)
/* 46D2C 8005652C 0800E003 */  jr         $ra
/* 46D30 80056530 7800BD27 */   addiu     $sp, $sp, 0x78
.size CDFile_CacheDirectory, . - CDFile_CacheDirectory
