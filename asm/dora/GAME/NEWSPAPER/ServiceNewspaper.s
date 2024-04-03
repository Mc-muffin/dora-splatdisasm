.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ServiceNewspaper
/* 14F54 80024754 FC06838F */  lw         $v1, %gp_rel(PaperState)($gp)
/* 14F58 80024758 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 14F5C 8002475C 0D00622C */  sltiu      $v0, $v1, 0xD
/* 14F60 80024760 7B004010 */  beqz       $v0, .L80024950
/* 14F64 80024764 1000BFAF */   sw        $ra, 0x10($sp)
/* 14F68 80024768 0180023C */  lui        $v0, %hi(jtbl_80011424)
/* 14F6C 8002476C 24144224 */  addiu      $v0, $v0, %lo(jtbl_80011424)
/* 14F70 80024770 80180300 */  sll        $v1, $v1, 2
/* 14F74 80024774 21186200 */  addu       $v1, $v1, $v0
/* 14F78 80024778 0000648C */  lw         $a0, 0x0($v1)
/* 14F7C 8002477C 00000000 */  nop
/* 14F80 80024780 08008000 */  jr         $a0
/* 14F84 80024784 00000000 */   nop
jlabel .L80024788
/* 14F88 80024788 F406838F */  lw         $v1, %gp_rel(ScalePaper)($gp)
/* 14F8C 8002478C EC06828F */  lw         $v0, %gp_rel(PaperScaleMax)($gp)
/* 14F90 80024790 00000000 */  nop
/* 14F94 80024794 2A106200 */  slt        $v0, $v1, $v0
/* 14F98 80024798 6D004010 */  beqz       $v0, .L80024950
/* 14F9C 8002479C 00000000 */   nop
/* 14FA0 800247A0 E006828F */  lw         $v0, %gp_rel(PaperScaleInc)($gp)
/* 14FA4 800247A4 00000000 */  nop
/* 14FA8 800247A8 21106200 */  addu       $v0, $v1, $v0
/* 14FAC 800247AC F40682AF */  sw         $v0, %gp_rel(ScalePaper)($gp)
/* 14FB0 800247B0 54920008 */  j          .L80024950
/* 14FB4 800247B4 00000000 */   nop
jlabel .L800247B8
/* 14FB8 800247B8 F406838F */  lw         $v1, %gp_rel(ScalePaper)($gp)
/* 14FBC 800247BC E806828F */  lw         $v0, %gp_rel(PaperScaleMid)($gp)
/* 14FC0 800247C0 00000000 */  nop
/* 14FC4 800247C4 2A104300 */  slt        $v0, $v0, $v1
/* 14FC8 800247C8 61004010 */  beqz       $v0, .L80024950
/* 14FCC 800247CC 00000000 */   nop
/* 14FD0 800247D0 3B920008 */  j          .L800248EC
/* 14FD4 800247D4 00000000 */   nop
jlabel .L800247D8
/* 14FD8 800247D8 D406828F */  lw         $v0, %gp_rel(NewsPaperAngle)($gp)
/* 14FDC 800247DC DC06838F */  lw         $v1, %gp_rel(NEWSPAPER_SPIN_SPEED)($gp)
/* 14FE0 800247E0 F406848F */  lw         $a0, %gp_rel(ScalePaper)($gp)
/* 14FE4 800247E4 21104300 */  addu       $v0, $v0, $v1
/* 14FE8 800247E8 E806838F */  lw         $v1, %gp_rel(PaperScaleMid)($gp)
/* 14FEC 800247EC FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 14FF0 800247F0 D40682AF */  sw         $v0, %gp_rel(NewsPaperAngle)($gp)
/* 14FF4 800247F4 2A188300 */  slt        $v1, $a0, $v1
/* 14FF8 800247F8 07006010 */  beqz       $v1, .L80024818
/* 14FFC 800247FC 00000000 */   nop
/* 15000 80024800 E006828F */  lw         $v0, %gp_rel(PaperScaleInc)($gp)
/* 15004 80024804 00000000 */  nop
/* 15008 80024808 21108200 */  addu       $v0, $a0, $v0
/* 1500C 8002480C F40682AF */  sw         $v0, %gp_rel(ScalePaper)($gp)
/* 15010 80024810 54920008 */  j          .L80024950
/* 15014 80024814 00000000 */   nop
.L80024818:
/* 15018 80024818 4D004014 */  bnez       $v0, .L80024950
/* 1501C 8002481C 02000224 */   addiu     $v0, $zero, 0x2
/* 15020 80024820 64000324 */  addiu      $v1, $zero, 0x64
/* 15024 80024824 FC0682AF */  sw         $v0, %gp_rel(PaperState)($gp)
/* 15028 80024828 F80683AF */  sw         $v1, %gp_rel(PaperWaitTimer)($gp)
/* 1502C 8002482C 54920008 */  j          .L80024950
/* 15030 80024830 00000000 */   nop
jlabel .L80024834
/* 15034 80024834 32000224 */  addiu      $v0, $zero, 0x32
/* 15038 80024838 D00680AF */  sw         $zero, %gp_rel(NewsPaperPauseFlag)($gp)
/* 1503C 8002483C 42920008 */  j          .L80024908
/* 15040 80024840 03000324 */   addiu     $v1, $zero, 0x3
jlabel .L80024844
/* 15044 80024844 0F79010C */  jal        InitColorCluts
/* 15048 80024848 00000000 */   nop
/* 1504C 8002484C 3C000324 */  addiu      $v1, $zero, 0x3C
/* 15050 80024850 05000224 */  addiu      $v0, $zero, 0x5
/* 15054 80024854 F80683AF */  sw         $v1, %gp_rel(PaperWaitTimer)($gp)
/* 15058 80024858 FC0682AF */  sw         $v0, %gp_rel(PaperState)($gp)
/* 1505C 8002485C 54920008 */  j          .L80024950
/* 15060 80024860 00000000 */   nop
jlabel .L80024864
/* 15064 80024864 0A000224 */  addiu      $v0, $zero, 0xA
/* 15068 80024868 42920008 */  j          .L80024908
/* 1506C 8002486C 0B000324 */   addiu     $v1, $zero, 0xB
jlabel .L80024870
/* 15070 80024870 F806828F */  lw         $v0, %gp_rel(PaperWaitTimer)($gp)
/* 15074 80024874 00000000 */  nop
/* 15078 80024878 2B00401C */  bgtz       $v0, .L80024928
/* 1507C 8002487C FFFF4224 */   addiu     $v0, $v0, -0x1
/* 15080 80024880 F406838F */  lw         $v1, %gp_rel(ScalePaper)($gp)
/* 15084 80024884 E406828F */  lw         $v0, %gp_rel(PaperScaleMin)($gp)
/* 15088 80024888 00000000 */  nop
/* 1508C 8002488C 2A104300 */  slt        $v0, $v0, $v1
/* 15090 80024890 16004014 */  bnez       $v0, .L800248EC
/* 15094 80024894 64000224 */   addiu     $v0, $zero, 0x64
/* 15098 80024898 42920008 */  j          .L80024908
/* 1509C 8002489C 0C000324 */   addiu     $v1, $zero, 0xC
jlabel .L800248A0
/* 150A0 800248A0 F806828F */  lw         $v0, %gp_rel(PaperWaitTimer)($gp)
/* 150A4 800248A4 00000000 */  nop
/* 150A8 800248A8 1F00401C */  bgtz       $v0, .L80024928
/* 150AC 800248AC FFFF4224 */   addiu     $v0, $v0, -0x1
/* 150B0 800248B0 4E920008 */  j          .L80024938
/* 150B4 800248B4 08000224 */   addiu     $v0, $zero, 0x8
jlabel .L800248B8
/* 150B8 800248B8 0A000224 */  addiu      $v0, $zero, 0xA
/* 150BC 800248BC 42920008 */  j          .L80024908
/* 150C0 800248C0 08000324 */   addiu     $v1, $zero, 0x8
jlabel .L800248C4
/* 150C4 800248C4 F806828F */  lw         $v0, %gp_rel(PaperWaitTimer)($gp)
/* 150C8 800248C8 00000000 */  nop
/* 150CC 800248CC 1600401C */  bgtz       $v0, .L80024928
/* 150D0 800248D0 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 150D4 800248D4 F406838F */  lw         $v1, %gp_rel(ScalePaper)($gp)
/* 150D8 800248D8 E406828F */  lw         $v0, %gp_rel(PaperScaleMin)($gp)
/* 150DC 800248DC 00000000 */  nop
/* 150E0 800248E0 2A104300 */  slt        $v0, $v0, $v1
/* 150E4 800248E4 07004010 */  beqz       $v0, .L80024904
/* 150E8 800248E8 64000224 */   addiu     $v0, $zero, 0x64
.L800248EC:
/* 150EC 800248EC E006828F */  lw         $v0, %gp_rel(PaperScaleInc)($gp)
/* 150F0 800248F0 00000000 */  nop
/* 150F4 800248F4 23106200 */  subu       $v0, $v1, $v0
/* 150F8 800248F8 F40682AF */  sw         $v0, %gp_rel(ScalePaper)($gp)
/* 150FC 800248FC 54920008 */  j          .L80024950
/* 15100 80024900 00000000 */   nop
.L80024904:
/* 15104 80024904 09000324 */  addiu      $v1, $zero, 0x9
.L80024908:
/* 15108 80024908 F80682AF */  sw         $v0, %gp_rel(PaperWaitTimer)($gp)
/* 1510C 8002490C FC0683AF */  sw         $v1, %gp_rel(PaperState)($gp)
/* 15110 80024910 54920008 */  j          .L80024950
/* 15114 80024914 00000000 */   nop
jlabel .L80024918
/* 15118 80024918 F806828F */  lw         $v0, %gp_rel(PaperWaitTimer)($gp)
/* 1511C 8002491C 00000000 */  nop
/* 15120 80024920 04004018 */  blez       $v0, .L80024934
/* 15124 80024924 FFFF4224 */   addiu     $v0, $v0, -0x1
.L80024928:
/* 15128 80024928 F80682AF */  sw         $v0, %gp_rel(PaperWaitTimer)($gp)
/* 1512C 8002492C 54920008 */  j          .L80024950
/* 15130 80024930 00000000 */   nop
.L80024934:
/* 15134 80024934 08000224 */  addiu      $v0, $zero, 0x8
.L80024938:
/* 15138 80024938 01000324 */  addiu      $v1, $zero, 0x1
/* 1513C 8002493C 0980013C */  lui        $at, %hi(gInstructionalScreenState)
/* 15140 80024940 305622AC */  sw         $v0, %lo(gInstructionalScreenState)($at)
/* 15144 80024944 0980013C */  lui        $at, %hi(g_instructionalscreen)
/* 15148 80024948 5C5623AC */  sw         $v1, %lo(g_instructionalscreen)($at)
/* 1514C 8002494C FC0680AF */  sw         $zero, %gp_rel(PaperState)($gp)
jlabel .L80024950
/* 15150 80024950 1000BF8F */  lw         $ra, 0x10($sp)
/* 15154 80024954 00000000 */  nop
/* 15158 80024958 0800E003 */  jr         $ra
/* 1515C 8002495C 1800BD27 */   addiu     $sp, $sp, 0x18
.size ServiceNewspaper, . - ServiceNewspaper
