.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SwiperBrains
/* 2661C 80035E1C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 26620 80035E20 6800B2AF */  sw         $s2, 0x68($sp)
/* 26624 80035E24 21908000 */  addu       $s2, $a0, $zero
/* 26628 80035E28 0100043C */  lui        $a0, (0x10000 >> 16)
/* 2662C 80035E2C 0980023C */  lui        $v0, %hi(ETActor)
/* 26630 80035E30 6000B0AF */  sw         $s0, 0x60($sp)
/* 26634 80035E34 7400BFAF */  sw         $ra, 0x74($sp)
/* 26638 80035E38 7000B4AF */  sw         $s4, 0x70($sp)
/* 2663C 80035E3C 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 26640 80035E40 6400B1AF */  sw         $s1, 0x64($sp)
/* 26644 80035E44 2801518E */  lw         $s1, 0x128($s2)
/* 26648 80035E48 2401548E */  lw         $s4, 0x124($s2)
/* 2664C 80035E4C D140010C */  jal        u32Random
/* 26650 80035E50 B05A5024 */   addiu     $s0, $v0, %lo(ETActor)
/* 26654 80035E54 21980000 */  addu       $s3, $zero, $zero
/* 26658 80035E58 9228010C */  jal        CommonActorPreBrains
/* 2665C 80035E5C 21204002 */   addu      $a0, $s2, $zero
/* 26660 80035E60 FE014010 */  beqz       $v0, .L8003665C
/* 26664 80035E64 00000000 */   nop
/* 26668 80035E68 0A000224 */  addiu      $v0, $zero, 0xA
/* 2666C 80035E6C 5C0042AE */  sw         $v0, 0x5C($s2)
/* 26670 80035E70 0000238E */  lw         $v1, 0x0($s1)
/* 26674 80035E74 00000000 */  nop
/* 26678 80035E78 15006014 */  bnez       $v1, .L80035ED0
/* 2667C 80035E7C 02000224 */   addiu     $v0, $zero, 0x2
/* 26680 80035E80 1000428E */  lw         $v0, 0x10($s2)
/* 26684 80035E84 FFFB0324 */  addiu      $v1, $zero, -0x401
/* 26688 80035E88 24104300 */  and        $v0, $v0, $v1
/* 2668C 80035E8C 100042AE */  sw         $v0, 0x10($s2)
/* 26690 80035E90 3C00238E */  lw         $v1, 0x3C($s1)
/* 26694 80035E94 00000000 */  nop
/* 26698 80035E98 0B006010 */  beqz       $v1, .L80035EC8
/* 2669C 80035E9C 21204002 */   addu      $a0, $s2, $zero
/* 266A0 80035EA0 01000524 */  addiu      $a1, $zero, 0x1
/* 266A4 80035EA4 01000624 */  addiu      $a2, $zero, 0x1
/* 266A8 80035EA8 2C014726 */  addiu      $a3, $s2, 0x12C
/* 266AC 80035EAC 02000224 */  addiu      $v0, $zero, 0x2
/* 266B0 80035EB0 8FE2000C */  jal        SetAnimWithInterp
/* 266B4 80035EB4 000022AE */   sw        $v0, 0x0($s1)
/* 266B8 80035EB8 1000428E */  lw         $v0, 0x10($s2)
/* 266BC 80035EBC 00000000 */  nop
/* 266C0 80035EC0 00044234 */  ori        $v0, $v0, 0x400
/* 266C4 80035EC4 100042AE */  sw         $v0, 0x10($s2)
.L80035EC8:
/* 266C8 80035EC8 0000238E */  lw         $v1, 0x0($s1)
/* 266CC 80035ECC 02000224 */  addiu      $v0, $zero, 0x2
.L80035ED0:
/* 266D0 80035ED0 7C016214 */  bne        $v1, $v0, .L800364C4
/* 266D4 80035ED4 00000000 */   nop
/* 266D8 80035ED8 0000068E */  lw         $a2, 0x0($s0)
/* 266DC 80035EDC 0000428E */  lw         $v0, 0x0($s2)
/* 266E0 80035EE0 0800038E */  lw         $v1, 0x8($s0)
/* 266E4 80035EE4 2330C200 */  subu       $a2, $a2, $v0
/* 266E8 80035EE8 0800428E */  lw         $v0, 0x8($s2)
/* 266EC 80035EEC 2120C000 */  addu       $a0, $a2, $zero
/* 266F0 80035EF0 5000A6AF */  sw         $a2, 0x50($sp)
/* 266F4 80035EF4 23186200 */  subu       $v1, $v1, $v0
/* 266F8 80035EF8 21286000 */  addu       $a1, $v1, $zero
/* 266FC 80035EFC FEE9000C */  jal        DistApprox_2d
/* 26700 80035F00 5800A3AF */   sw        $v1, 0x58($sp)
/* 26704 80035F04 F809838F */  lw         $v1, %gp_rel(SwiperTraining)($gp)
/* 26708 80035F08 00000000 */  nop
/* 2670C 80035F0C C0006010 */  beqz       $v1, .L80036210
/* 26710 80035F10 21284000 */   addu      $a1, $v0, $zero
/* 26714 80035F14 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 26718 80035F18 00000000 */  nop
/* 2671C 80035F1C 02004014 */  bnez       $v0, .L80035F28
/* 26720 80035F20 01000224 */   addiu     $v0, $zero, 0x1
/* 26724 80035F24 F40982AF */  sw         $v0, %gp_rel(SwiperWaitState)($gp)
.L80035F28:
/* 26728 80035F28 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 2672C 80035F2C 00000000 */  nop
/* 26730 80035F30 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 26734 80035F34 0500622C */  sltiu      $v0, $v1, 0x5
/* 26738 80035F38 A7004010 */  beqz       $v0, .L800361D8
/* 2673C 80035F3C 580000AE */   sw        $zero, 0x58($s0)
/* 26740 80035F40 0180023C */  lui        $v0, %hi(jtbl_800127BC)
/* 26744 80035F44 BC274224 */  addiu      $v0, $v0, %lo(jtbl_800127BC)
/* 26748 80035F48 80180300 */  sll        $v1, $v1, 2
/* 2674C 80035F4C 21186200 */  addu       $v1, $v1, $v0
/* 26750 80035F50 0000648C */  lw         $a0, 0x0($v1)
/* 26754 80035F54 00000000 */  nop
/* 26758 80035F58 08008000 */  jr         $a0
/* 2675C 80035F5C 00000000 */   nop
jlabel .L80035F60
/* 26760 80035F60 0040103C */  lui        $s0, (0x40000002 >> 16)
/* 26764 80035F64 02001036 */  ori        $s0, $s0, (0x40000002 & 0xFFFF)
/* 26768 80035F68 02000424 */  addiu      $a0, $zero, 0x2
/* 2676C 80035F6C 45000524 */  addiu      $a1, $zero, 0x45
/* 26770 80035F70 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26774 80035F74 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26778 80035F78 000A80AF */  sw         $zero, %gp_rel(eggtimer)($gp)
/* 2677C 80035F7C 4A53010C */  jal        pxm_que_noteon_layered
/* 26780 80035F80 1000B0AF */   sw        $s0, 0x10($sp)
/* 26784 80035F84 02000424 */  addiu      $a0, $zero, 0x2
/* 26788 80035F88 46000524 */  addiu      $a1, $zero, 0x46
/* 2678C 80035F8C 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26790 80035F90 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26794 80035F94 64000224 */  addiu      $v0, $zero, 0x64
/* 26798 80035F98 1000B0AF */  sw         $s0, 0x10($sp)
/* 2679C 80035F9C 1B54010C */  jal        pxm_que_del_noteon_layered
/* 267A0 80035FA0 1400A2AF */   sw        $v0, 0x14($sp)
/* 267A4 80035FA4 02000424 */  addiu      $a0, $zero, 0x2
/* 267A8 80035FA8 48000524 */  addiu      $a1, $zero, 0x48
/* 267AC 80035FAC 3C000624 */  addiu      $a2, $zero, 0x3C
/* 267B0 80035FB0 7F000724 */  addiu      $a3, $zero, 0x7F
/* 267B4 80035FB4 C8000224 */  addiu      $v0, $zero, 0xC8
/* 267B8 80035FB8 1000B0AF */  sw         $s0, 0x10($sp)
/* 267BC 80035FBC 1B54010C */  jal        pxm_que_del_noteon_layered
/* 267C0 80035FC0 1400A2AF */   sw        $v0, 0x14($sp)
/* 267C4 80035FC4 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 267C8 80035FC8 63D80008 */  j          .L8003618C
/* 267CC 80035FCC F0000224 */   addiu     $v0, $zero, 0xF0
jlabel .L80035FD0
/* 267D0 80035FD0 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 267D4 80035FD4 00000000 */  nop
/* 267D8 80035FD8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 267DC 80035FDC FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 267E0 80035FE0 7D00401C */  bgtz       $v0, .L800361D8
/* 267E4 80035FE4 46000324 */   addiu     $v1, $zero, 0x46
/* 267E8 80035FE8 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 267EC 80035FEC FC0983AF */  sw         $v1, %gp_rel(SwiperTimer)($gp)
/* 267F0 80035FF0 01004224 */  addiu      $v0, $v0, 0x1
/* 267F4 80035FF4 F40982AF */  sw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 267F8 80035FF8 76D80008 */  j          .L800361D8
/* 267FC 80035FFC 00000000 */   nop
jlabel .L80036000
/* 26800 80036000 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26804 80036004 00000000 */  nop
/* 26808 80036008 FFFF4324 */  addiu      $v1, $v0, -0x1
/* 2680C 8003600C FC0983AF */  sw         $v1, %gp_rel(SwiperTimer)($gp)
/* 26810 80036010 7100601C */  bgtz       $v1, .L800361D8
/* 26814 80036014 FF006230 */   andi      $v0, $v1, 0xFF
/* 26818 80036018 0A004014 */  bnez       $v0, .L80036044
/* 2681C 8003601C FFFF6228 */   slti      $v0, $v1, -0x1
/* 26820 80036020 08004010 */  beqz       $v0, .L80036044
/* 26824 80036024 0040023C */   lui       $v0, (0x40000002 >> 16)
/* 26828 80036028 02004234 */  ori        $v0, $v0, (0x40000002 & 0xFFFF)
/* 2682C 8003602C 1000A2AF */  sw         $v0, 0x10($sp)
/* 26830 80036030 02000424 */  addiu      $a0, $zero, 0x2
/* 26834 80036034 4A000524 */  addiu      $a1, $zero, 0x4A
/* 26838 80036038 3C000624 */  addiu      $a2, $zero, 0x3C
/* 2683C 8003603C 4A53010C */  jal        pxm_que_noteon_layered
/* 26840 80036040 7F000724 */   addiu     $a3, $zero, 0x7F
.L80036044:
/* 26844 80036044 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26848 80036048 00000000 */  nop
/* 2684C 8003604C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 26850 80036050 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26854 80036054 6000401C */  bgtz       $v0, .L800361D8
/* 26858 80036058 00000000 */   nop
/* 2685C 8003605C 0980023C */  lui        $v0, %hi(Trg0)
/* 26860 80036060 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 26864 80036064 00000000 */  nop
/* 26868 80036068 00F04230 */  andi       $v0, $v0, 0xF000
/* 2686C 8003606C 5A004010 */  beqz       $v0, .L800361D8
/* 26870 80036070 01000224 */   addiu     $v0, $zero, 0x1
/* 26874 80036074 5000238E */  lw         $v1, 0x50($s1)
/* 26878 80036078 00000000 */  nop
/* 2687C 8003607C 0F006214 */  bne        $v1, $v0, .L800360BC
/* 26880 80036080 21200002 */   addu      $a0, $s0, $zero
/* 26884 80036084 28E3000C */  jal        GetSeqNumFrames
/* 26888 80036088 1F000524 */   addiu     $a1, $zero, 0x1F
/* 2688C 8003608C 21200002 */  addu       $a0, $s0, $zero
/* 26890 80036090 1F000524 */  addiu      $a1, $zero, 0x1F
/* 26894 80036094 21300000 */  addu       $a2, $zero, $zero
/* 26898 80036098 21384000 */  addu       $a3, $v0, $zero
/* 2689C 8003609C 02000324 */  addiu      $v1, $zero, 0x2
/* 268A0 800360A0 2C010226 */  addiu      $v0, $s0, 0x12C
/* 268A4 800360A4 1000A3AF */  sw         $v1, 0x10($sp)
/* 268A8 800360A8 1400A3AF */  sw         $v1, 0x14($sp)
/* 268AC 800360AC 72E2000C */  jal        RequestAnim
/* 268B0 800360B0 1800A2AF */   sw        $v0, 0x18($sp)
/* 268B4 800360B4 3CD80008 */  j          .L800360F0
/* 268B8 800360B8 0040023C */   lui       $v0, (0x40000002 >> 16)
.L800360BC:
/* 268BC 800360BC 28E3000C */  jal        GetSeqNumFrames
/* 268C0 800360C0 10000524 */   addiu     $a1, $zero, 0x10
/* 268C4 800360C4 21200002 */  addu       $a0, $s0, $zero
/* 268C8 800360C8 10000524 */  addiu      $a1, $zero, 0x10
/* 268CC 800360CC 21300000 */  addu       $a2, $zero, $zero
/* 268D0 800360D0 21384000 */  addu       $a3, $v0, $zero
/* 268D4 800360D4 02000324 */  addiu      $v1, $zero, 0x2
/* 268D8 800360D8 2C010226 */  addiu      $v0, $s0, 0x12C
/* 268DC 800360DC 1000A3AF */  sw         $v1, 0x10($sp)
/* 268E0 800360E0 1400A3AF */  sw         $v1, 0x14($sp)
/* 268E4 800360E4 72E2000C */  jal        RequestAnim
/* 268E8 800360E8 1800A2AF */   sw        $v0, 0x18($sp)
/* 268EC 800360EC 0040023C */  lui        $v0, (0x40000002 >> 16)
.L800360F0:
/* 268F0 800360F0 02004234 */  ori        $v0, $v0, (0x40000002 & 0xFFFF)
/* 268F4 800360F4 02000424 */  addiu      $a0, $zero, 0x2
/* 268F8 800360F8 4C000524 */  addiu      $a1, $zero, 0x4C
/* 268FC 800360FC 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26900 80036100 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26904 80036104 4A53010C */  jal        pxm_que_noteon_layered
/* 26908 80036108 1000A2AF */   sw        $v0, 0x10($sp)
/* 2690C 8003610C F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26910 80036110 63D80008 */  j          .L8003618C
/* 26914 80036114 32000224 */   addiu     $v0, $zero, 0x32
jlabel .L80036118
/* 26918 80036118 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 2691C 8003611C 00000000 */  nop
/* 26920 80036120 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 26924 80036124 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26928 80036128 2B00401C */  bgtz       $v0, .L800361D8
/* 2692C 8003612C 21204002 */   addu      $a0, $s2, $zero
/* 26930 80036130 28E3000C */  jal        GetSeqNumFrames
/* 26934 80036134 0D000524 */   addiu     $a1, $zero, 0xD
/* 26938 80036138 21204002 */  addu       $a0, $s2, $zero
/* 2693C 8003613C 0D000524 */  addiu      $a1, $zero, 0xD
/* 26940 80036140 21300000 */  addu       $a2, $zero, $zero
/* 26944 80036144 21384000 */  addu       $a3, $v0, $zero
/* 26948 80036148 01000224 */  addiu      $v0, $zero, 0x1
/* 2694C 8003614C 02000324 */  addiu      $v1, $zero, 0x2
/* 26950 80036150 1000A2AF */  sw         $v0, 0x10($sp)
/* 26954 80036154 2C014226 */  addiu      $v0, $s2, 0x12C
/* 26958 80036158 1400A3AF */  sw         $v1, 0x14($sp)
/* 2695C 8003615C 72E2000C */  jal        RequestAnim
/* 26960 80036160 1800A2AF */   sw        $v0, 0x18($sp)
/* 26964 80036164 0040033C */  lui        $v1, (0x40000002 >> 16)
/* 26968 80036168 02006334 */  ori        $v1, $v1, (0x40000002 & 0xFFFF)
/* 2696C 8003616C 02000424 */  addiu      $a0, $zero, 0x2
/* 26970 80036170 52000524 */  addiu      $a1, $zero, 0x52
/* 26974 80036174 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26978 80036178 7F000724 */  addiu      $a3, $zero, 0x7F
/* 2697C 8003617C 4A53010C */  jal        pxm_que_noteon_layered
/* 26980 80036180 1000A3AF */   sw        $v1, 0x10($sp)
/* 26984 80036184 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26988 80036188 28000224 */  addiu      $v0, $zero, 0x28
.L8003618C:
/* 2698C 8003618C FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26990 80036190 01006324 */  addiu      $v1, $v1, 0x1
/* 26994 80036194 F40983AF */  sw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26998 80036198 76D80008 */  j          .L800361D8
/* 2699C 8003619C 00000000 */   nop
jlabel .L800361A0
/* 269A0 800361A0 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 269A4 800361A4 00000000 */  nop
/* 269A8 800361A8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 269AC 800361AC FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 269B0 800361B0 0900401C */  bgtz       $v0, .L800361D8
/* 269B4 800361B4 00000000 */   nop
/* 269B8 800361B8 F80980AF */  sw         $zero, %gp_rel(SwiperTraining)($gp)
/* 269BC 800361BC C168000C */  jal        ClearPlayerWait
/* 269C0 800361C0 00000000 */   nop
/* 269C4 800361C4 01000324 */  addiu      $v1, $zero, 0x1
/* 269C8 800361C8 64000224 */  addiu      $v0, $zero, 0x64
/* 269CC 800361CC F40983AF */  sw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 269D0 800361D0 000023AE */  sw         $v1, 0x0($s1)
/* 269D4 800361D4 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
.L800361D8:
/* 269D8 800361D8 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 269DC 800361DC 00000000 */  nop
/* 269E0 800361E0 03004228 */  slti       $v0, $v0, 0x3
/* 269E4 800361E4 05004014 */  bnez       $v0, .L800361FC
/* 269E8 800361E8 03131300 */   sra       $v0, $s3, 12
/* 269EC 800361EC 7C24010C */  jal        GenericAIMove
/* 269F0 800361F0 21204002 */   addu      $a0, $s2, $zero
/* 269F4 800361F4 21984000 */  addu       $s3, $v0, $zero
/* 269F8 800361F8 03131300 */  sra        $v0, $s3, 12
.L800361FC:
/* 269FC 800361FC 17014010 */  beqz       $v0, .L8003665C
/* 26A00 80036200 00000000 */   nop
/* 26A04 80036204 0A80023C */  lui        $v0, %hi(SwiperTrackPathData + 0x4)
/* 26A08 80036208 97D90008 */  j          .L8003665C
/* 26A0C 8003620C 7C9040AC */   sw        $zero, %lo(SwiperTrackPathData + 0x4)($v0)
.L80036210:
/* 26A10 80036210 000A828F */  lw         $v0, %gp_rel(eggtimer)($gp)
/* 26A14 80036214 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26A18 80036218 01004224 */  addiu      $v0, $v0, 0x1
/* 26A1C 8003621C 000A82AF */  sw         $v0, %gp_rel(eggtimer)($gp)
/* 26A20 80036220 A1006010 */  beqz       $v1, .L800364A8
/* 26A24 80036224 FFFF6324 */   addiu     $v1, $v1, -0x1
/* 26A28 80036228 0600622C */  sltiu      $v0, $v1, 0x6
/* 26A2C 8003622C 9E004010 */  beqz       $v0, .L800364A8
/* 26A30 80036230 0180023C */   lui       $v0, %hi(jtbl_800127D4)
/* 26A34 80036234 D4274224 */  addiu      $v0, $v0, %lo(jtbl_800127D4)
/* 26A38 80036238 80180300 */  sll        $v1, $v1, 2
/* 26A3C 8003623C 21186200 */  addu       $v1, $v1, $v0
/* 26A40 80036240 0000648C */  lw         $a0, 0x0($v1)
/* 26A44 80036244 00000000 */  nop
/* 26A48 80036248 08008000 */  jr         $a0
/* 26A4C 8003624C 00000000 */   nop
jlabel .L80036250
/* 26A50 80036250 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26A54 80036254 00000000 */  nop
/* 26A58 80036258 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 26A5C 8003625C FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26A60 80036260 9100401C */  bgtz       $v0, .L800364A8
/* 26A64 80036264 0040023C */   lui       $v0, (0x40000002 >> 16)
/* 26A68 80036268 02004234 */  ori        $v0, $v0, (0x40000002 & 0xFFFF)
/* 26A6C 8003626C 01000424 */  addiu      $a0, $zero, 0x1
/* 26A70 80036270 45000524 */  addiu      $a1, $zero, 0x45
/* 26A74 80036274 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26A78 80036278 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26A7C 8003627C 4A53010C */  jal        pxm_que_noteon_layered
/* 26A80 80036280 1000A2AF */   sw        $v0, 0x10($sp)
/* 26A84 80036284 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26A88 80036288 50000224 */  addiu      $v0, $zero, 0x50
/* 26A8C 8003628C FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26A90 80036290 29D90008 */  j          .L800364A4
/* 26A94 80036294 01006324 */   addiu     $v1, $v1, 0x1
jlabel .L80036298
/* 26A98 80036298 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26A9C 8003629C 00000000 */  nop
/* 26AA0 800362A0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 26AA4 800362A4 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26AA8 800362A8 7F00401C */  bgtz       $v0, .L800364A8
/* 26AAC 800362AC 23000324 */   addiu     $v1, $zero, 0x23
/* 26AB0 800362B0 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 26AB4 800362B4 FC0983AF */  sw         $v1, %gp_rel(SwiperTimer)($gp)
/* 26AB8 800362B8 01004224 */  addiu      $v0, $v0, 0x1
/* 26ABC 800362BC F40982AF */  sw         $v0, %gp_rel(SwiperWaitState)($gp)
jlabel .L800362C0
/* 26AC0 800362C0 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26AC4 800362C4 00000000 */  nop
/* 26AC8 800362C8 69004018 */  blez       $v0, .L80036470
/* 26ACC 800362CC FFFF4224 */   addiu     $v0, $v0, -0x1
/* 26AD0 800362D0 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26AD4 800362D4 2AD90008 */  j          .L800364A8
/* 26AD8 800362D8 00000000 */   nop
jlabel .L800362DC
/* 26ADC 800362DC 9601A228 */  slti       $v0, $a1, 0x196
/* 26AE0 800362E0 71004010 */  beqz       $v0, .L800364A8
/* 26AE4 800362E4 8700A228 */   slti      $v0, $a1, 0x87
/* 26AE8 800362E8 05004014 */  bnez       $v0, .L80036300
/* 26AEC 800362EC 0A80043C */   lui       $a0, %hi(SwiperTrackPath)
/* 26AF0 800362F0 D913010C */  jal        IsPathDone
/* 26AF4 800362F4 30908424 */   addiu     $a0, $a0, %lo(SwiperTrackPath)
/* 26AF8 800362F8 13004010 */  beqz       $v0, .L80036348
/* 26AFC 800362FC 00000000 */   nop
.L80036300:
/* 26B00 80036300 21200000 */  addu       $a0, $zero, $zero
/* 26B04 80036304 FA000524 */  addiu      $a1, $zero, 0xFA
/* 26B08 80036308 01000324 */  addiu      $v1, $zero, 0x1
/* 26B0C 8003630C 5A000224 */  addiu      $v0, $zero, 0x5A
/* 26B10 80036310 000023AE */  sw         $v1, 0x0($s1)
/* 26B14 80036314 5C0023AE */  sw         $v1, 0x5C($s1)
/* 26B18 80036318 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26B1C 8003631C F40983AF */  sw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26B20 80036320 8666010C */  jal        Sys_VibrationBuzzWork
/* 26B24 80036324 32000624 */   addiu     $a2, $zero, 0x32
/* 26B28 80036328 21200000 */  addu       $a0, $zero, $zero
/* 26B2C 8003632C FF000524 */  addiu      $a1, $zero, 0xFF
/* 26B30 80036330 6266010C */  jal        Sys_VibrationWaveWork
/* 26B34 80036334 64000624 */   addiu     $a2, $zero, 0x64
/* 26B38 80036338 5876000C */  jal        RemoveInventoryItem
/* 26B3C 8003633C 00000000 */   nop
/* 26B40 80036340 2AD90008 */  j          .L800364A8
/* 26B44 80036344 00000000 */   nop
.L80036348:
/* 26B48 80036348 0980023C */  lui        $v0, %hi(Trg0)
/* 26B4C 8003634C 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 26B50 80036350 00000000 */  nop
/* 26B54 80036354 00F04230 */  andi       $v0, $v0, 0xF000
/* 26B58 80036358 53004010 */  beqz       $v0, .L800364A8
/* 26B5C 8003635C 01000224 */   addiu     $v0, $zero, 0x1
/* 26B60 80036360 5000238E */  lw         $v1, 0x50($s1)
/* 26B64 80036364 00000000 */  nop
/* 26B68 80036368 0F006214 */  bne        $v1, $v0, .L800363A8
/* 26B6C 8003636C 21200002 */   addu      $a0, $s0, $zero
/* 26B70 80036370 28E3000C */  jal        GetSeqNumFrames
/* 26B74 80036374 1F000524 */   addiu     $a1, $zero, 0x1F
/* 26B78 80036378 21200002 */  addu       $a0, $s0, $zero
/* 26B7C 8003637C 1F000524 */  addiu      $a1, $zero, 0x1F
/* 26B80 80036380 21300000 */  addu       $a2, $zero, $zero
/* 26B84 80036384 21384000 */  addu       $a3, $v0, $zero
/* 26B88 80036388 02000324 */  addiu      $v1, $zero, 0x2
/* 26B8C 8003638C 2C010226 */  addiu      $v0, $s0, 0x12C
/* 26B90 80036390 1000A3AF */  sw         $v1, 0x10($sp)
/* 26B94 80036394 1400A3AF */  sw         $v1, 0x14($sp)
/* 26B98 80036398 72E2000C */  jal        RequestAnim
/* 26B9C 8003639C 1800A2AF */   sw        $v0, 0x18($sp)
/* 26BA0 800363A0 F7D80008 */  j          .L800363DC
/* 26BA4 800363A4 0040023C */   lui       $v0, (0x40000002 >> 16)
.L800363A8:
/* 26BA8 800363A8 28E3000C */  jal        GetSeqNumFrames
/* 26BAC 800363AC 10000524 */   addiu     $a1, $zero, 0x10
/* 26BB0 800363B0 21200002 */  addu       $a0, $s0, $zero
/* 26BB4 800363B4 10000524 */  addiu      $a1, $zero, 0x10
/* 26BB8 800363B8 21300000 */  addu       $a2, $zero, $zero
/* 26BBC 800363BC 21384000 */  addu       $a3, $v0, $zero
/* 26BC0 800363C0 02000324 */  addiu      $v1, $zero, 0x2
/* 26BC4 800363C4 2C010226 */  addiu      $v0, $s0, 0x12C
/* 26BC8 800363C8 1000A3AF */  sw         $v1, 0x10($sp)
/* 26BCC 800363CC 1400A3AF */  sw         $v1, 0x14($sp)
/* 26BD0 800363D0 72E2000C */  jal        RequestAnim
/* 26BD4 800363D4 1800A2AF */   sw        $v0, 0x18($sp)
/* 26BD8 800363D8 0040023C */  lui        $v0, (0x40000002 >> 16)
.L800363DC:
/* 26BDC 800363DC 02004234 */  ori        $v0, $v0, (0x40000002 & 0xFFFF)
/* 26BE0 800363E0 01000424 */  addiu      $a0, $zero, 0x1
/* 26BE4 800363E4 46000524 */  addiu      $a1, $zero, 0x46
/* 26BE8 800363E8 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26BEC 800363EC 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26BF0 800363F0 4A53010C */  jal        pxm_que_noteon_layered
/* 26BF4 800363F4 1000A2AF */   sw        $v0, 0x10($sp)
/* 26BF8 800363F8 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26BFC 800363FC 32000224 */  addiu      $v0, $zero, 0x32
/* 26C00 80036400 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26C04 80036404 29D90008 */  j          .L800364A4
/* 26C08 80036408 01006324 */   addiu     $v1, $v1, 0x1
jlabel .L8003640C
/* 26C0C 8003640C FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26C10 80036410 00000000 */  nop
/* 26C14 80036414 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 26C18 80036418 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26C1C 8003641C 2200401C */  bgtz       $v0, .L800364A8
/* 26C20 80036420 00000000 */   nop
/* 26C24 80036424 0A004014 */  bnez       $v0, .L80036450
/* 26C28 80036428 21204002 */   addu      $a0, $s2, $zero
/* 26C2C 8003642C 0040023C */  lui        $v0, (0x40000002 >> 16)
/* 26C30 80036430 02004234 */  ori        $v0, $v0, (0x40000002 & 0xFFFF)
/* 26C34 80036434 1000A2AF */  sw         $v0, 0x10($sp)
/* 26C38 80036438 01000424 */  addiu      $a0, $zero, 0x1
/* 26C3C 8003643C 47000524 */  addiu      $a1, $zero, 0x47
/* 26C40 80036440 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26C44 80036444 4A53010C */  jal        pxm_que_noteon_layered
/* 26C48 80036448 7F000724 */   addiu     $a3, $zero, 0x7F
/* 26C4C 8003644C 21204002 */  addu       $a0, $s2, $zero
.L80036450:
/* 26C50 80036450 0D000524 */  addiu      $a1, $zero, 0xD
/* 26C54 80036454 01000624 */  addiu      $a2, $zero, 0x1
/* 26C58 80036458 8FE2000C */  jal        SetAnimWithInterp
/* 26C5C 8003645C 2C014726 */   addiu     $a3, $s2, 0x12C
/* 26C60 80036460 3C01438E */  lw         $v1, 0x13C($s2)
/* 26C64 80036464 0D000224 */  addiu      $v0, $zero, 0xD
/* 26C68 80036468 0F006214 */  bne        $v1, $v0, .L800364A8
/* 26C6C 8003646C 00000000 */   nop
.L80036470:
/* 26C70 80036470 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 26C74 80036474 00000000 */  nop
/* 26C78 80036478 01004224 */  addiu      $v0, $v0, 0x1
/* 26C7C 8003647C F40982AF */  sw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 26C80 80036480 2AD90008 */  j          .L800364A8
/* 26C84 80036484 00000000 */   nop
jlabel .L80036488
/* 26C88 80036488 3C01428E */  lw         $v0, 0x13C($s2)
/* 26C8C 8003648C 00000000 */  nop
/* 26C90 80036490 05004014 */  bnez       $v0, .L800364A8
/* 26C94 80036494 01000324 */   addiu     $v1, $zero, 0x1
/* 26C98 80036498 5A000224 */  addiu      $v0, $zero, 0x5A
/* 26C9C 8003649C 000023AE */  sw         $v1, 0x0($s1)
/* 26CA0 800364A0 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
.L800364A4:
/* 26CA4 800364A4 F40983AF */  sw         $v1, %gp_rel(SwiperWaitState)($gp)
.L800364A8:
/* 26CA8 800364A8 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 26CAC 800364AC 00000000 */  nop
/* 26CB0 800364B0 03004228 */  slti       $v0, $v0, 0x3
/* 26CB4 800364B4 03004014 */  bnez       $v0, .L800364C4
/* 26CB8 800364B8 00000000 */   nop
/* 26CBC 800364BC 7C24010C */  jal        GenericAIMove
/* 26CC0 800364C0 21204002 */   addu      $a0, $s2, $zero
.L800364C4:
/* 26CC4 800364C4 0000248E */  lw         $a0, 0x0($s1)
/* 26CC8 800364C8 01000224 */  addiu      $v0, $zero, 0x1
/* 26CCC 800364CC 63008214 */  bne        $a0, $v0, .L8003665C
/* 26CD0 800364D0 00000000 */   nop
/* 26CD4 800364D4 5C00228E */  lw         $v0, 0x5C($s1)
/* 26CD8 800364D8 00000000 */  nop
/* 26CDC 800364DC 21004010 */  beqz       $v0, .L80036564
/* 26CE0 800364E0 00000000 */   nop
/* 26CE4 800364E4 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26CE8 800364E8 00000000 */  nop
/* 26CEC 800364EC 40006010 */  beqz       $v1, .L800365F0
/* 26CF0 800364F0 02000224 */   addiu     $v0, $zero, 0x2
/* 26CF4 800364F4 3E006210 */  beq        $v1, $v0, .L800365F0
/* 26CF8 800364F8 03006228 */   slti      $v0, $v1, 0x3
/* 26CFC 800364FC 05004010 */  beqz       $v0, .L80036514
/* 26D00 80036500 03000224 */   addiu     $v0, $zero, 0x3
/* 26D04 80036504 07006410 */  beq        $v1, $a0, .L80036524
/* 26D08 80036508 0380043C */   lui       $a0, %hi(swipertookmystuff)
/* 26D0C 8003650C 74D90008 */  j          .L800365D0
/* 26D10 80036510 00000000 */   nop
.L80036514:
/* 26D14 80036514 0C006210 */  beq        $v1, $v0, .L80036548
/* 26D18 80036518 04000224 */   addiu     $v0, $zero, 0x4
/* 26D1C 8003651C 72D90008 */  j          .L800365C8
/* 26D20 80036520 00000000 */   nop
.L80036524:
/* 26D24 80036524 FB4E010C */  jal        pxm_SetEndeventCallback
/* 26D28 80036528 38688424 */   addiu     $a0, $a0, %lo(swipertookmystuff)
/* 26D2C 8003652C A668000C */  jal        SetPlayerWait
/* 26D30 80036530 00000000 */   nop
/* 26D34 80036534 0040033C */  lui        $v1, (0x40000082 >> 16)
/* 26D38 80036538 82006334 */  ori        $v1, $v1, (0x40000082 & 0xFFFF)
/* 26D3C 8003653C 01000424 */  addiu      $a0, $zero, 0x1
/* 26D40 80036540 68D90008 */  j          .L800365A0
/* 26D44 80036544 49000524 */   addiu     $a1, $zero, 0x49
.L80036548:
/* 26D48 80036548 A668000C */  jal        SetPlayerWait
/* 26D4C 8003654C 00000000 */   nop
/* 26D50 80036550 0040033C */  lui        $v1, (0x40000082 >> 16)
/* 26D54 80036554 82006334 */  ori        $v1, $v1, (0x40000082 & 0xFFFF)
/* 26D58 80036558 01000424 */  addiu      $a0, $zero, 0x1
/* 26D5C 8003655C 68D90008 */  j          .L800365A0
/* 26D60 80036560 48000524 */   addiu     $a1, $zero, 0x48
.L80036564:
/* 26D64 80036564 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26D68 80036568 00000000 */  nop
/* 26D6C 8003656C 20006010 */  beqz       $v1, .L800365F0
/* 26D70 80036570 00000000 */   nop
/* 26D74 80036574 14006414 */  bne        $v1, $a0, .L800365C8
/* 26D78 80036578 02000224 */   addiu     $v0, $zero, 0x2
/* 26D7C 8003657C A668000C */  jal        SetPlayerWait
/* 26D80 80036580 00000000 */   nop
/* 26D84 80036584 0380043C */  lui        $a0, %hi(swipertookmystuff)
/* 26D88 80036588 FB4E010C */  jal        pxm_SetEndeventCallback
/* 26D8C 8003658C 38688424 */   addiu     $a0, $a0, %lo(swipertookmystuff)
/* 26D90 80036590 0040033C */  lui        $v1, (0x40000082 >> 16)
/* 26D94 80036594 82006334 */  ori        $v1, $v1, (0x40000082 & 0xFFFF)
/* 26D98 80036598 01000424 */  addiu      $a0, $zero, 0x1
/* 26D9C 8003659C 4A000524 */  addiu      $a1, $zero, 0x4A
.L800365A0:
/* 26DA0 800365A0 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26DA4 800365A4 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26DA8 800365A8 4A53010C */  jal        pxm_que_noteon_layered
/* 26DAC 800365AC 1000A3AF */   sw        $v1, 0x10($sp)
/* 26DB0 800365B0 F409838F */  lw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26DB4 800365B4 00000000 */  nop
/* 26DB8 800365B8 01006324 */  addiu      $v1, $v1, 0x1
/* 26DBC 800365BC F40983AF */  sw         $v1, %gp_rel(SwiperWaitState)($gp)
/* 26DC0 800365C0 7CD90008 */  j          .L800365F0
/* 26DC4 800365C4 00000000 */   nop
.L800365C8:
/* 26DC8 800365C8 09006210 */  beq        $v1, $v0, .L800365F0
/* 26DCC 800365CC 00000000 */   nop
.L800365D0:
/* 26DD0 800365D0 FB4E010C */  jal        pxm_SetEndeventCallback
/* 26DD4 800365D4 21200000 */   addu      $a0, $zero, $zero
/* 26DD8 800365D8 C168000C */  jal        ClearPlayerWait
/* 26DDC 800365DC 00000000 */   nop
/* 26DE0 800365E0 1000438E */  lw         $v1, 0x10($s2)
/* 26DE4 800365E4 FFFE0224 */  addiu      $v0, $zero, -0x101
/* 26DE8 800365E8 24186200 */  and        $v1, $v1, $v0
/* 26DEC 800365EC 100043AE */  sw         $v1, 0x10($s2)
.L800365F0:
/* 26DF0 800365F0 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26DF4 800365F4 00000000 */  nop
/* 26DF8 800365F8 0F004018 */  blez       $v0, .L80036638
/* 26DFC 800365FC 21204002 */   addu      $a0, $s2, $zero
/* 26E00 80036600 01000524 */  addiu      $a1, $zero, 0x1
/* 26E04 80036604 01000624 */  addiu      $a2, $zero, 0x1
/* 26E08 80036608 8FE2000C */  jal        SetAnimWithInterp
/* 26E0C 8003660C 2C014726 */   addiu     $a3, $s2, 0x12C
/* 26E10 80036610 0400828E */  lw         $v0, 0x4($s4)
/* 26E14 80036614 00000000 */  nop
/* 26E18 80036618 0000458C */  lw         $a1, 0x0($v0)
/* 26E1C 8003661C 21204002 */  addu       $a0, $s2, $zero
/* 26E20 80036620 0400A28C */  lw         $v0, 0x4($a1)
/* 26E24 80036624 F7FF0324 */  addiu      $v1, $zero, -0x9
/* 26E28 80036628 24104300 */  and        $v0, $v0, $v1
/* 26E2C 8003662C 14DA000C */  jal        SwiperGettheFout
/* 26E30 80036630 0400A2AC */   sw        $v0, 0x4($a1)
/* 26E34 80036634 FC09828F */  lw         $v0, %gp_rel(SwiperTimer)($gp)
.L80036638:
/* 26E38 80036638 00000000 */  nop
/* 26E3C 8003663C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 26E40 80036640 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
/* 26E44 80036644 05004104 */  bgez       $v0, .L8003665C
/* 26E48 80036648 FFFB0324 */   addiu     $v1, $zero, -0x401
/* 26E4C 8003664C 1000428E */  lw         $v0, 0x10($s2)
/* 26E50 80036650 00000000 */  nop
/* 26E54 80036654 24104300 */  and        $v0, $v0, $v1
/* 26E58 80036658 100042AE */  sw         $v0, 0x10($s2)
.L8003665C:
/* 26E5C 8003665C 7400BF8F */  lw         $ra, 0x74($sp)
/* 26E60 80036660 7000B48F */  lw         $s4, 0x70($sp)
/* 26E64 80036664 6C00B38F */  lw         $s3, 0x6C($sp)
/* 26E68 80036668 6800B28F */  lw         $s2, 0x68($sp)
/* 26E6C 8003666C 6400B18F */  lw         $s1, 0x64($sp)
/* 26E70 80036670 6000B08F */  lw         $s0, 0x60($sp)
/* 26E74 80036674 0800E003 */  jr         $ra
/* 26E78 80036678 7800BD27 */   addiu     $sp, $sp, 0x78
.size SwiperBrains, . - SwiperBrains
