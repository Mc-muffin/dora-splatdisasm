.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GameLoop_Loop
/* 21E60 80031660 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 21E64 80031664 5000BFAF */  sw         $ra, 0x50($sp)
/* 21E68 80031668 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 21E6C 8003166C 4800B0AF */  sw         $s0, 0x48($sp)
/* 21E70 80031670 000980AF */  sw         $zero, %gp_rel(ClearSortNTagFlag)($gp)
/* 21E74 80031674 3C89010C */  jal        ResetShadows
/* 21E78 80031678 00000000 */   nop
/* 21E7C 8003167C D808838F */  lw         $v1, %gp_rel(eggdumpheap)($gp)
/* 21E80 80031680 00000000 */  nop
/* 21E84 80031684 02006010 */  beqz       $v1, .L80031690
/* 21E88 80031688 00000000 */   nop
/* 21E8C 8003168C D80880AF */  sw         $zero, %gp_rel(eggdumpheap)($gp)
.L80031690:
/* 21E90 80031690 0164010C */  jal        TextResetText
/* 21E94 80031694 00000000 */   nop
/* 21E98 80031698 9549010C */  jal        ResetBoxes
/* 21E9C 8003169C 00000000 */   nop
/* 21EA0 800316A0 2E7C010C */  jal        CheckXAService
/* 21EA4 800316A4 00000000 */   nop
/* 21EA8 800316A8 8706010C */  jal        CinematicService
/* 21EAC 800316AC 00000000 */   nop
/* 21EB0 800316B0 2014838F */  lw         $v1, %gp_rel(gGameState)($gp)
/* 21EB4 800316B4 00000000 */  nop
/* 21EB8 800316B8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 21EBC 800316BC 0A00622C */  sltiu      $v0, $v1, 0xA
/* 21EC0 800316C0 48024010 */  beqz       $v0, .L80031FE4
/* 21EC4 800316C4 0180023C */   lui       $v0, %hi(jtbl_80011B90)
/* 21EC8 800316C8 901B4224 */  addiu      $v0, $v0, %lo(jtbl_80011B90)
/* 21ECC 800316CC 80180300 */  sll        $v1, $v1, 2
/* 21ED0 800316D0 21186200 */  addu       $v1, $v1, $v0
/* 21ED4 800316D4 0000648C */  lw         $a0, 0x0($v1)
/* 21ED8 800316D8 00000000 */  nop
/* 21EDC 800316DC 08008000 */  jr         $a0
/* 21EE0 800316E0 00000000 */   nop
jlabel .L800316E4
/* 21EE4 800316E4 0A80043C */  lui        $a0, %hi(gDemoTimer)
/* 21EE8 800316E8 788B8424 */  addiu      $a0, $a0, %lo(gDemoTimer)
/* 21EEC 800316EC 2D000524 */  addiu      $a1, $zero, 0x2D
/* 21EF0 800316F0 0A6F010C */  jal        TimerInit
/* 21EF4 800316F4 21300000 */   addu      $a2, $zero, $zero
/* 21EF8 800316F8 A839010C */  jal        EditLevel
/* 21EFC 800316FC 00000000 */   nop
/* 21F00 80031700 A1E8000C */  jal        CameraMan
/* 21F04 80031704 00000000 */   nop
/* 21F08 80031708 16EB000C */  jal        UpdateCamera
/* 21F0C 8003170C 00000000 */   nop
/* 21F10 80031710 4AE9000C */  jal        UpdateCameraMatrix
/* 21F14 80031714 00000000 */   nop
/* 21F18 80031718 F9C70008 */  j          .L80031FE4
/* 21F1C 8003171C 00000000 */   nop
jlabel .L80031720
/* 21F20 80031720 0980023C */  lui        $v0, %hi(g_modelviewactor)
/* 21F24 80031724 B859428C */  lw         $v0, %lo(g_modelviewactor)($v0)
/* 21F28 80031728 08000324 */  addiu      $v1, $zero, 0x8
/* 21F2C 8003172C 000040AC */  sw         $zero, 0x0($v0)
/* 21F30 80031730 040040AC */  sw         $zero, 0x4($v0)
/* 21F34 80031734 080040AC */  sw         $zero, 0x8($v0)
/* 21F38 80031738 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 21F3C 8003173C B04C23AC */  sw         $v1, %lo(CurrentCameraEnum)($at)
/* 21F40 80031740 A1E8000C */  jal        CameraMan
/* 21F44 80031744 0980103C */   lui       $s0, %hi(ETActor)
/* 21F48 80031748 16EB000C */  jal        UpdateCamera
/* 21F4C 8003174C B05A1026 */   addiu     $s0, $s0, %lo(ETActor)
/* 21F50 80031750 4AE9000C */  jal        UpdateCameraMatrix
/* 21F54 80031754 00000000 */   nop
/* 21F58 80031758 0980043C */  lui        $a0, %hi(g_modelviewactor)
/* 21F5C 8003175C B859848C */  lw         $a0, %lo(g_modelviewactor)($a0)
/* 21F60 80031760 B19A010C */  jal        DrawActor
/* 21F64 80031764 21280000 */   addu      $a1, $zero, $zero
/* 21F68 80031768 21200002 */  addu       $a0, $s0, $zero
/* 21F6C 8003176C 01000224 */  addiu      $v0, $zero, 0x1
/* 21F70 80031770 65E2000C */  jal        AnimateActor
/* 21F74 80031774 440102AE */   sw        $v0, 0x144($s0)
/* 21F78 80031778 21200002 */  addu       $a0, $s0, $zero
/* 21F7C 8003177C 10DE000C */  jal        CheckNextAnim
/* 21F80 80031780 2C018524 */   addiu     $a1, $a0, 0x12C
/* 21F84 80031784 46CC000C */  jal        PlayLogic
/* 21F88 80031788 00000000 */   nop
/* 21F8C 8003178C F9C70008 */  j          .L80031FE4
/* 21F90 80031790 00000000 */   nop
jlabel .L80031794
/* 21F94 80031794 F813828F */  lw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 21F98 80031798 00000000 */  nop
/* 21F9C 8003179C 24004010 */  beqz       $v0, .L80031830
/* 21FA0 800317A0 00000000 */   nop
/* 21FA4 800317A4 DC13828F */  lw         $v0, %gp_rel(gMoveEttoSection)($gp)
/* 21FA8 800317A8 00000000 */  nop
/* 21FAC 800317AC BF014010 */  beqz       $v0, .L80031EAC
/* 21FB0 800317B0 0980103C */   lui       $s0, %hi(ETActor)
/* 21FB4 800317B4 F866010C */  jal        ClearJoyPad
/* 21FB8 800317B8 B05A1026 */   addiu     $s0, $s0, %lo(ETActor)
/* 21FBC 800317BC 21200002 */  addu       $a0, $s0, $zero
/* 21FC0 800317C0 E408838F */  lw         $v1, %gp_rel(BEAMUPMAX)($gp)
/* 21FC4 800317C4 6C000226 */  addiu      $v0, $s0, 0x6C
/* 21FC8 800317C8 0980013C */  lui        $at, %hi(gETEndLevel)
/* 21FCC 800317CC D44220AC */  sw         $zero, %lo(gETEndLevel)($at)
/* 21FD0 800317D0 300040AC */  sw         $zero, 0x30($v0)
/* 21FD4 800317D4 340040AC */  sw         $zero, 0x34($v0)
/* 21FD8 800317D8 380040AC */  sw         $zero, 0x38($v0)
/* 21FDC 800317DC 08000224 */  addiu      $v0, $zero, 0x8
/* 21FE0 800317E0 440100AE */  sw         $zero, 0x144($s0)
/* 21FE4 800317E4 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 21FE8 800317E8 F00883AF */  sw         $v1, %gp_rel(BeamTimer)($gp)
/* 21FEC 800317EC 28E3000C */  jal        GetSeqNumFrames
/* 21FF0 800317F0 16000524 */   addiu     $a1, $zero, 0x16
/* 21FF4 800317F4 21200002 */  addu       $a0, $s0, $zero
/* 21FF8 800317F8 16000524 */  addiu      $a1, $zero, 0x16
/* 21FFC 800317FC 21300000 */  addu       $a2, $zero, $zero
/* 22000 80031800 21384000 */  addu       $a3, $v0, $zero
/* 22004 80031804 01000224 */  addiu      $v0, $zero, 0x1
/* 22008 80031808 02001124 */  addiu      $s1, $zero, 0x2
/* 2200C 8003180C 2C011026 */  addiu      $s0, $s0, 0x12C
/* 22010 80031810 1000A2AF */  sw         $v0, 0x10($sp)
/* 22014 80031814 1400B1AF */  sw         $s1, 0x14($sp)
/* 22018 80031818 72E2000C */  jal        RequestAnim
/* 2201C 8003181C 1800B0AF */   sw        $s0, 0x18($sp)
/* 22020 80031820 900880AF */  sw         $zero, %gp_rel(FaderTimer)($gp)
/* 22024 80031824 8C0891AF */  sw         $s1, %gp_rel(FaderFlag)($gp)
/* 22028 80031828 24C80008 */  j          .L80032090
/* 2202C 8003182C 00000000 */   nop
.L80031830:
/* 22030 80031830 A1E8000C */  jal        CameraMan
/* 22034 80031834 00000000 */   nop
/* 22038 80031838 1E5F000C */  jal        CalculateScrollPosition
/* 2203C 8003183C 00000000 */   nop
/* 22040 80031840 16EB000C */  jal        UpdateCamera
/* 22044 80031844 00000000 */   nop
/* 22048 80031848 4AE9000C */  jal        UpdateCameraMatrix
/* 2204C 8003184C 00000000 */   nop
/* 22050 80031850 FC13838F */  lw         $v1, %gp_rel(AttractModeOn)($gp)
/* 22054 80031854 00000000 */  nop
/* 22058 80031858 47006010 */  beqz       $v1, .L80031978
/* 2205C 8003185C 0A80043C */   lui       $a0, %hi(gDemoTimer)
/* 22060 80031860 166F010C */  jal        TimerGet
/* 22064 80031864 788B8424 */   addiu     $a0, $a0, %lo(gDemoTimer)
/* 22068 80031868 43100200 */  sra        $v0, $v0, 1
/* 2206C 8003186C 01004230 */  andi       $v0, $v0, 0x1
/* 22070 80031870 18004010 */  beqz       $v0, .L800318D4
/* 22074 80031874 C8000424 */   addiu     $a0, $zero, 0xC8
/* 22078 80031878 C8000524 */  addiu      $a1, $zero, 0xC8
/* 2207C 8003187C 5363010C */  jal        TextSetTextColor
/* 22080 80031880 21300000 */   addu      $a2, $zero, $zero
/* 22084 80031884 A0000524 */  addiu      $a1, $zero, 0xA0
/* 22088 80031888 51000624 */  addiu      $a2, $zero, 0x51
/* 2208C 8003188C 0880033C */  lui        $v1, %hi(DemoString)
/* 22090 80031890 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 22094 80031894 D0616324 */  addiu      $v1, $v1, %lo(DemoString)
/* 22098 80031898 80100200 */  sll        $v0, $v0, 2
/* 2209C 8003189C 21104300 */  addu       $v0, $v0, $v1
/* 220A0 800318A0 0000448C */  lw         $a0, 0x0($v0)
/* 220A4 800318A4 7163010C */  jal        TextAddStringC
/* 220A8 800318A8 21380000 */   addu      $a3, $zero, $zero
/* 220AC 800318AC A0000524 */  addiu      $a1, $zero, 0xA0
/* 220B0 800318B0 65000624 */  addiu      $a2, $zero, 0x65
/* 220B4 800318B4 0880033C */  lui        $v1, %hi(PressStartString)
/* 220B8 800318B8 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 220BC 800318BC E4616324 */  addiu      $v1, $v1, %lo(PressStartString)
/* 220C0 800318C0 80100200 */  sll        $v0, $v0, 2
/* 220C4 800318C4 21104300 */  addu       $v0, $v0, $v1
/* 220C8 800318C8 0000448C */  lw         $a0, 0x0($v0)
/* 220CC 800318CC 7163010C */  jal        TextAddStringC
/* 220D0 800318D0 21380000 */   addu      $a3, $zero, $zero
.L800318D4:
/* 220D4 800318D4 0980023C */  lui        $v0, %hi(Trg0)
/* 220D8 800318D8 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 220DC 800318DC 00000000 */  nop
/* 220E0 800318E0 0D004010 */  beqz       $v0, .L80031918
/* 220E4 800318E4 19000424 */   addiu     $a0, $zero, 0x19
/* 220E8 800318E8 21280000 */  addu       $a1, $zero, $zero
/* 220EC 800318EC 6F4A010C */  jal        pxm_sendevent
/* 220F0 800318F0 21300000 */   addu      $a2, $zero, $zero
/* 220F4 800318F4 1D001024 */  addiu      $s0, $zero, 0x1D
.L800318F8:
/* 220F8 800318F8 EBD6010C */  jal        VSync
/* 220FC 800318FC 21200000 */   addu      $a0, $zero, $zero
/* 22100 80031900 5B4C010C */  jal        pxm_frameh
/* 22104 80031904 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 22108 80031908 FBFF0106 */  bgez       $s0, .L800318F8
/* 2210C 8003190C 00000000 */   nop
/* 22110 80031910 203F010C */  jal        RequestState
/* 22114 80031914 01000424 */   addiu     $a0, $zero, 0x1
.L80031918:
/* 22118 80031918 4808828F */  lw         $v0, %gp_rel(RecordModeIndex)($gp)
/* 2211C 8003191C 00000000 */  nop
/* 22120 80031920 81034228 */  slti       $v0, $v0, 0x381
/* 22124 80031924 03004014 */  bnez       $v0, .L80031934
/* 22128 80031928 00000000 */   nop
/* 2212C 8003192C 203F010C */  jal        RequestState
/* 22130 80031930 01000424 */   addiu     $a0, $zero, 0x1
.L80031934:
/* 22134 80031934 0980063C */  lui        $a2, %hi(Pad0)
/* 22138 80031938 2C59C694 */  lhu        $a2, %lo(Pad0)($a2)
/* 2213C 8003193C 4808848F */  lw         $a0, %gp_rel(RecordModeIndex)($gp)
/* 22140 80031940 0014858F */  lw         $a1, %gp_rel(RecordedKeysBuffer)($gp)
/* 22144 80031944 40100400 */  sll        $v0, $a0, 1
/* 22148 80031948 21104500 */  addu       $v0, $v0, $a1
/* 2214C 8003194C 00004394 */  lhu        $v1, 0x0($v0)
/* 22150 80031950 01008424 */  addiu      $a0, $a0, 0x1
/* 22154 80031954 0980013C */  lui        $at, %hi(LPad0)
/* 22158 80031958 385926A4 */  sh         $a2, %lo(LPad0)($at)
/* 2215C 8003195C 480884AF */  sw         $a0, %gp_rel(RecordModeIndex)($gp)
/* 22160 80031960 26306600 */  xor        $a2, $v1, $a2
/* 22164 80031964 0980013C */  lui        $at, %hi(Pad0)
/* 22168 80031968 2C5923A4 */  sh         $v1, %lo(Pad0)($at)
/* 2216C 8003196C 24186600 */  and        $v1, $v1, $a2
/* 22170 80031970 0980013C */  lui        $at, %hi(Trg0)
/* 22174 80031974 305923A4 */  sh         $v1, %lo(Trg0)($at)
.L80031978:
/* 22178 80031978 5008828F */  lw         $v0, %gp_rel(FreezeGame)($gp)
/* 2217C 8003197C 00000000 */  nop
/* 22180 80031980 0A004014 */  bnez       $v0, .L800319AC
/* 22184 80031984 00000000 */   nop
/* 22188 80031988 7408828F */  lw         $v0, %gp_rel(PauseFlag)($gp)
/* 2218C 8003198C 00000000 */  nop
/* 22190 80031990 06004014 */  bnez       $v0, .L800319AC
/* 22194 80031994 00000000 */   nop
/* 22198 80031998 0980023C */  lui        $v0, %hi(NewsPaperPauseFlag)
/* 2219C 8003199C 3449428C */  lw         $v0, %lo(NewsPaperPauseFlag)($v0)
/* 221A0 800319A0 00000000 */  nop
/* 221A4 800319A4 29004010 */  beqz       $v0, .L80031A4C
/* 221A8 800319A8 00000000 */   nop
.L800319AC:
/* 221AC 800319AC 0980023C */  lui        $v0, %hi(NewsPaperPauseFlag)
/* 221B0 800319B0 3449428C */  lw         $v0, %lo(NewsPaperPauseFlag)($v0)
/* 221B4 800319B4 00000000 */  nop
/* 221B8 800319B8 08004014 */  bnez       $v0, .L800319DC
/* 221BC 800319BC 00000000 */   nop
/* 221C0 800319C0 0980023C */  lui        $v0, %hi(CinematicScreenPauseFlag)
/* 221C4 800319C4 3C57428C */  lw         $v0, %lo(CinematicScreenPauseFlag)($v0)
/* 221C8 800319C8 00000000 */  nop
/* 221CC 800319CC 03004014 */  bnez       $v0, .L800319DC
/* 221D0 800319D0 00000000 */   nop
/* 221D4 800319D4 117A000C */  jal        HUDOn
/* 221D8 800319D8 00000000 */   nop
.L800319DC:
/* 221DC 800319DC 5008828F */  lw         $v0, %gp_rel(FreezeGame)($gp)
/* 221E0 800319E0 00000000 */  nop
/* 221E4 800319E4 0A004014 */  bnez       $v0, .L80031A10
/* 221E8 800319E8 00000000 */   nop
/* 221EC 800319EC 0980023C */  lui        $v0, %hi(CinematicScreenPauseFlag)
/* 221F0 800319F0 3C57428C */  lw         $v0, %lo(CinematicScreenPauseFlag)($v0)
/* 221F4 800319F4 00000000 */  nop
/* 221F8 800319F8 05004014 */  bnez       $v0, .L80031A10
/* 221FC 800319FC 00000000 */   nop
/* 22200 80031A00 9490010C */  jal        DrawLevel
/* 22204 80031A04 00000000 */   nop
/* 22208 80031A08 86C60008 */  j          .L80031A18
/* 2220C 80031A0C 00000000 */   nop
.L80031A10:
/* 22210 80031A10 893A010C */  jal        ResetCelMem
/* 22214 80031A14 00000000 */   nop
.L80031A18:
/* 22218 80031A18 0980023C */  lui        $v0, %hi(NewsPaperPauseFlag)
/* 2221C 80031A1C 3449428C */  lw         $v0, %lo(NewsPaperPauseFlag)($v0)
/* 22220 80031A20 00000000 */  nop
/* 22224 80031A24 2D004014 */  bnez       $v0, .L80031ADC
/* 22228 80031A28 00000000 */   nop
/* 2222C 80031A2C 5008828F */  lw         $v0, %gp_rel(FreezeGame)($gp)
/* 22230 80031A30 00000000 */  nop
/* 22234 80031A34 29004014 */  bnez       $v0, .L80031ADC
/* 22238 80031A38 00000000 */   nop
/* 2223C 80031A3C 89CA000C */  jal        PauseMenu
/* 22240 80031A40 00000000 */   nop
/* 22244 80031A44 B7C60008 */  j          .L80031ADC
/* 22248 80031A48 00000000 */   nop
.L80031A4C:
/* 2224C 80031A4C 0980023C */  lui        $v0, %hi(CinematicScreenPauseFlag)
/* 22250 80031A50 3C57428C */  lw         $v0, %lo(CinematicScreenPauseFlag)($v0)
/* 22254 80031A54 00000000 */  nop
/* 22258 80031A58 05004014 */  bnez       $v0, .L80031A70
/* 2225C 80031A5C 00000000 */   nop
/* 22260 80031A60 9490010C */  jal        DrawLevel
/* 22264 80031A64 00000000 */   nop
/* 22268 80031A68 9EC60008 */  j          .L80031A78
/* 2226C 80031A6C 00000000 */   nop
.L80031A70:
/* 22270 80031A70 893A010C */  jal        ResetCelMem
/* 22274 80031A74 00000000 */   nop
.L80031A78:
/* 22278 80031A78 0980023C */  lui        $v0, %hi(CinematicScreenPauseFlag)
/* 2227C 80031A7C 3C57428C */  lw         $v0, %lo(CinematicScreenPauseFlag)($v0)
/* 22280 80031A80 00000000 */  nop
/* 22284 80031A84 03004014 */  bnez       $v0, .L80031A94
/* 22288 80031A88 0980113C */   lui       $s1, %hi(ETActor)
/* 2228C 80031A8C E862000C */  jal        ETBrains
/* 22290 80031A90 B05A2426 */   addiu     $a0, $s1, %lo(ETActor)
.L80031A94:
/* 22294 80031A94 46CC000C */  jal        PlayLogic
/* 22298 80031A98 00000000 */   nop
/* 2229C 80031A9C B667000C */  jal        ETCleanUpBrains
/* 222A0 80031AA0 B05A2426 */   addiu     $a0, $s1, %lo(ETActor)
/* 222A4 80031AA4 FC13828F */  lw         $v0, %gp_rel(AttractModeOn)($gp)
/* 222A8 80031AA8 00000000 */  nop
/* 222AC 80031AAC 0B004014 */  bnez       $v0, .L80031ADC
/* 222B0 80031AB0 00000000 */   nop
/* 222B4 80031AB4 0667010C */  jal        padpluggedin
/* 222B8 80031AB8 21200000 */   addu      $a0, $zero, $zero
/* 222BC 80031ABC 07004014 */  bnez       $v0, .L80031ADC
/* 222C0 80031AC0 00000000 */   nop
/* 222C4 80031AC4 0980023C */  lui        $v0, %hi(Trg0)
/* 222C8 80031AC8 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 222CC 80031ACC 00000000 */  nop
/* 222D0 80031AD0 08004234 */  ori        $v0, $v0, 0x8
/* 222D4 80031AD4 0980013C */  lui        $at, %hi(Trg0)
/* 222D8 80031AD8 305922A4 */  sh         $v0, %lo(Trg0)($at)
.L80031ADC:
/* 222DC 80031ADC 0980023C */  lui        $v0, %hi(Trg0)
/* 222E0 80031AE0 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 222E4 80031AE4 00000000 */  nop
/* 222E8 80031AE8 08004230 */  andi       $v0, $v0, 0x8
/* 222EC 80031AEC 1B004010 */  beqz       $v0, .L80031B5C
/* 222F0 80031AF0 00000000 */   nop
/* 222F4 80031AF4 0980023C */  lui        $v0, %hi(gETEndLevel)
/* 222F8 80031AF8 D442428C */  lw         $v0, %lo(gETEndLevel)($v0)
/* 222FC 80031AFC 7408838F */  lw         $v1, %gp_rel(PauseFlag)($gp)
/* 22300 80031B00 03004010 */  beqz       $v0, .L80031B10
/* 22304 80031B04 1D000424 */   addiu     $a0, $zero, 0x1D
/* 22308 80031B08 14006010 */  beqz       $v1, .L80031B5C
/* 2230C 80031B0C 00000000 */   nop
.L80031B10:
/* 22310 80031B10 01006238 */  xori       $v0, $v1, 0x1
/* 22314 80031B14 21284000 */  addu       $a1, $v0, $zero
/* 22318 80031B18 740882AF */  sw         $v0, %gp_rel(PauseFlag)($gp)
/* 2231C 80031B1C 6F4A010C */  jal        pxm_sendevent
/* 22320 80031B20 21300000 */   addu      $a2, $zero, $zero
/* 22324 80031B24 0980033C */  lui        $v1, %hi(ActivePauseCamera)
/* 22328 80031B28 C04C638C */  lw         $v1, %lo(ActivePauseCamera)($v1)
/* 2232C 80031B2C 7408828F */  lw         $v0, %gp_rel(PauseFlag)($gp)
/* 22330 80031B30 01006338 */  xori       $v1, $v1, 0x1
/* 22334 80031B34 0980013C */  lui        $at, %hi(ActivePauseCamera)
/* 22338 80031B38 C04C23AC */  sw         $v1, %lo(ActivePauseCamera)($at)
/* 2233C 80031B3C 05004010 */  beqz       $v0, .L80031B54
/* 22340 80031B40 00000000 */   nop
/* 22344 80031B44 9BCC000C */  jal        InitPauseMenu
/* 22348 80031B48 00000000 */   nop
/* 2234C 80031B4C D7C60008 */  j          .L80031B5C
/* 22350 80031B50 00000000 */   nop
.L80031B54:
/* 22354 80031B54 3ACC000C */  jal        RestoreFromPauseMenu
/* 22358 80031B58 00000000 */   nop
.L80031B5C:
/* 2235C 80031B5C 9681000C */  jal        EndLevelCheckService
/* 22360 80031B60 00000000 */   nop
/* 22364 80031B64 F9C70008 */  j          .L80031FE4
/* 22368 80031B68 00000000 */   nop
jlabel .L80031B6C
/* 2236C 80031B6C 740880AF */  sw         $zero, %gp_rel(PauseFlag)($gp)
/* 22370 80031B70 A1E8000C */  jal        CameraMan
/* 22374 80031B74 00000000 */   nop
/* 22378 80031B78 16EB000C */  jal        UpdateCamera
/* 2237C 80031B7C 00000000 */   nop
/* 22380 80031B80 4AE9000C */  jal        UpdateCameraMatrix
/* 22384 80031B84 00000000 */   nop
/* 22388 80031B88 F866010C */  jal        ClearJoyPad
/* 2238C 80031B8C 00000000 */   nop
/* 22390 80031B90 0980033C */  lui        $v1, %hi(CinematicScreenPauseFlag)
/* 22394 80031B94 3C57638C */  lw         $v1, %lo(CinematicScreenPauseFlag)($v1)
/* 22398 80031B98 00000000 */  nop
/* 2239C 80031B9C 05006014 */  bnez       $v1, .L80031BB4
/* 223A0 80031BA0 00000000 */   nop
/* 223A4 80031BA4 9490010C */  jal        DrawLevel
/* 223A8 80031BA8 0980103C */   lui       $s0, %hi(ETActor)
/* 223AC 80031BAC F0C60008 */  j          .L80031BC0
/* 223B0 80031BB0 B05A1026 */   addiu     $s0, $s0, %lo(ETActor)
.L80031BB4:
/* 223B4 80031BB4 893A010C */  jal        ResetCelMem
/* 223B8 80031BB8 0980103C */   lui       $s0, %hi(ETActor)
/* 223BC 80031BBC B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
.L80031BC0:
/* 223C0 80031BC0 E862000C */  jal        ETBrains
/* 223C4 80031BC4 21200002 */   addu      $a0, $s0, $zero
/* 223C8 80031BC8 B667000C */  jal        ETCleanUpBrains
/* 223CC 80031BCC 21200002 */   addu      $a0, $s0, $zero
/* 223D0 80031BD0 46CC000C */  jal        PlayLogic
/* 223D4 80031BD4 00000000 */   nop
/* 223D8 80031BD8 F008828F */  lw         $v0, %gp_rel(BeamTimer)($gp)
/* 223DC 80031BDC 00000000 */  nop
/* 223E0 80031BE0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 223E4 80031BE4 F00882AF */  sw         $v0, %gp_rel(BeamTimer)($gp)
/* 223E8 80031BE8 24004104 */  bgez       $v0, .L80031C7C
/* 223EC 80031BEC 00000000 */   nop
/* 223F0 80031BF0 F81380AF */  sw         $zero, %gp_rel(g_instructionalscreen)($gp)
/* 223F4 80031BF4 4CC5000C */  jal        BeginWipe
/* 223F8 80031BF8 00000000 */   nop
/* 223FC 80031BFC 5808828F */  lw         $v0, %gp_rel(LevelCompletionFlag)($gp)
/* 22400 80031C00 00000000 */  nop
/* 22404 80031C04 1D004010 */  beqz       $v0, .L80031C7C
/* 22408 80031C08 02000224 */   addiu     $v0, $zero, 0x2
/* 2240C 80031C0C D013838F */  lw         $v1, %gp_rel(gLevel)($gp)
/* 22410 80031C10 00000000 */  nop
/* 22414 80031C14 12006214 */  bne        $v1, $v0, .L80031C60
/* 22418 80031C18 08000224 */   addiu     $v0, $zero, 0x8
/* 2241C 80031C1C D813838F */  lw         $v1, %gp_rel(gWorld)($gp)
/* 22420 80031C20 00000000 */  nop
/* 22424 80031C24 0E006214 */  bne        $v1, $v0, .L80031C60
/* 22428 80031C28 00000000 */   nop
/* 2242C 80031C2C 5D67010C */  jal        InitOrderingTables
/* 22430 80031C30 00000000 */   nop
/* 22434 80031C34 AF91000C */  jal        ExecuteMovie
/* 22438 80031C38 20000424 */   addiu     $a0, $zero, 0x20
/* 2243C 80031C3C AF91000C */  jal        ExecuteMovie
/* 22440 80031C40 21000424 */   addiu     $a0, $zero, 0x21
/* 22444 80031C44 0980013C */  lui        $at, %hi(ShownTitleScreen)
/* 22448 80031C48 C84920AC */  sw         $zero, %lo(ShownTitleScreen)($at)
/* 2244C 80031C4C 203F010C */  jal        RequestState
/* 22450 80031C50 01000424 */   addiu     $a0, $zero, 0x1
/* 22454 80031C54 580880AF */  sw         $zero, %gp_rel(LevelCompletionFlag)($gp)
/* 22458 80031C58 24C80008 */  j          .L80032090
/* 2245C 80031C5C 00000000 */   nop
.L80031C60:
/* 22460 80031C60 8A9F000C */  jal        AutoIncrementLevelWorld
/* 22464 80031C64 00000000 */   nop
/* 22468 80031C68 01000324 */  addiu      $v1, $zero, 0x1
/* 2246C 80031C6C 0980013C */  lui        $at, %hi(TaskerReloadState)
/* 22470 80031C70 EC5123AC */  sw         $v1, %lo(TaskerReloadState)($at)
/* 22474 80031C74 CC6C010C */  jal        ScreenOff
/* 22478 80031C78 00000000 */   nop
.L80031C7C:
/* 2247C 80031C7C F008838F */  lw         $v1, %gp_rel(BeamTimer)($gp)
/* 22480 80031C80 00000000 */  nop
/* 22484 80031C84 0B006228 */  slti       $v0, $v1, 0xB
/* 22488 80031C88 D6004014 */  bnez       $v0, .L80031FE4
/* 2248C 80031C8C 00000000 */   nop
/* 22490 80031C90 E408848F */  lw         $a0, %gp_rel(BEAMUPMAX)($gp)
/* 22494 80031C94 00000000 */  nop
/* 22498 80031C98 FAFF8224 */  addiu      $v0, $a0, -0x6
/* 2249C 80031C9C 2A106200 */  slt        $v0, $v1, $v0
/* 224A0 80031CA0 D0004010 */  beqz       $v0, .L80031FE4
/* 224A4 80031CA4 F9FF8224 */   addiu     $v0, $a0, -0x7
/* 224A8 80031CA8 CE006214 */  bne        $v1, $v0, .L80031FE4
/* 224AC 80031CAC 11000424 */   addiu     $a0, $zero, 0x11
/* 224B0 80031CB0 21280000 */  addu       $a1, $zero, $zero
/* 224B4 80031CB4 21300000 */  addu       $a2, $zero, $zero
/* 224B8 80031CB8 6F4A010C */  jal        pxm_sendevent
/* 224BC 80031CBC 0040073C */   lui       $a3, (0x40000000 >> 16)
/* 224C0 80031CC0 F9C70008 */  j          .L80031FE4
/* 224C4 80031CC4 00000000 */   nop
jlabel .L80031CC8
/* 224C8 80031CC8 A1E8000C */  jal        CameraMan
/* 224CC 80031CCC 00000000 */   nop
/* 224D0 80031CD0 16EB000C */  jal        UpdateCamera
/* 224D4 80031CD4 00000000 */   nop
/* 224D8 80031CD8 4AE9000C */  jal        UpdateCameraMatrix
/* 224DC 80031CDC 00000000 */   nop
/* 224E0 80031CE0 9490010C */  jal        DrawLevel
/* 224E4 80031CE4 00000000 */   nop
/* 224E8 80031CE8 3609010C */  jal        ServiceSpawnListBrains
/* 224EC 80031CEC 00000000 */   nop
/* 224F0 80031CF0 2DBF000C */  jal        ParticleBrainService
/* 224F4 80031CF4 00000000 */   nop
/* 224F8 80031CF8 6C08838F */  lw         $v1, %gp_rel(gEndGameOvertimer)($gp)
/* 224FC 80031CFC 00000000 */  nop
/* 22500 80031D00 21106000 */  addu       $v0, $v1, $zero
/* 22504 80031D04 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 22508 80031D08 6C0883AF */  sw         $v1, %gp_rel(gEndGameOvertimer)($gp)
/* 2250C 80031D0C B5004104 */  bgez       $v0, .L80031FE4
/* 22510 80031D10 04000224 */   addiu     $v0, $zero, 0x4
/* 22514 80031D14 08000324 */  addiu      $v1, $zero, 0x8
/* 22518 80031D18 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 2251C 80031D1C 01000224 */  addiu      $v0, $zero, 0x1
/* 22520 80031D20 CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 22524 80031D24 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 22528 80031D28 F9C70008 */  j          .L80031FE4
/* 2252C 80031D2C 00000000 */   nop
jlabel .L80031D30
/* 22530 80031D30 740880AF */  sw         $zero, %gp_rel(PauseFlag)($gp)
/* 22534 80031D34 A1E8000C */  jal        CameraMan
/* 22538 80031D38 00000000 */   nop
/* 2253C 80031D3C 16EB000C */  jal        UpdateCamera
/* 22540 80031D40 00000000 */   nop
/* 22544 80031D44 4AE9000C */  jal        UpdateCameraMatrix
/* 22548 80031D48 00000000 */   nop
/* 2254C 80031D4C 0980013C */  lui        $at, %hi(Trg0)
/* 22550 80031D50 305920A4 */  sh         $zero, %lo(Trg0)($at)
/* 22554 80031D54 0980013C */  lui        $at, %hi(Pad0)
/* 22558 80031D58 2C5920A4 */  sh         $zero, %lo(Pad0)($at)
/* 2255C 80031D5C 9490010C */  jal        DrawLevel
/* 22560 80031D60 00000000 */   nop
/* 22564 80031D64 0980033C */  lui        $v1, %hi(ETActor)
/* 22568 80031D68 B05A7124 */  addiu      $s1, $v1, %lo(ETActor)
/* 2256C 80031D6C E862000C */  jal        ETBrains
/* 22570 80031D70 21202002 */   addu      $a0, $s1, $zero
/* 22574 80031D74 B667000C */  jal        ETCleanUpBrains
/* 22578 80031D78 21202002 */   addu      $a0, $s1, $zero
/* 2257C 80031D7C 0980023C */  lui        $v0, %hi(ETTpage2)
/* 22580 80031D80 4855428C */  lw         $v0, %lo(ETTpage2)($v0)
/* 22584 80031D84 2001248E */  lw         $a0, 0x120($s1)
/* 22588 80031D88 0980053C */  lui        $a1, %hi(DissolveTpage1)
/* 2258C 80031D8C 7455A58C */  lw         $a1, %lo(DissolveTpage1)($a1)
/* 22590 80031D90 0980063C */  lui        $a2, %hi(DissolveTpage2)
/* 22594 80031D94 7855C68C */  lw         $a2, %lo(DissolveTpage2)($a2)
/* 22598 80031D98 0980073C */  lui        $a3, %hi(ETTpage1)
/* 2259C 80031D9C 4455E78C */  lw         $a3, %lo(ETTpage1)($a3)
/* 225A0 80031DA0 0980033C */  lui        $v1, %hi(DissolveClutId)
/* 225A4 80031DA4 7C55638C */  lw         $v1, %lo(DissolveClutId)($v1)
/* 225A8 80031DA8 0980083C */  lui        $t0, %hi(ETClut)
/* 225AC 80031DAC 2855088D */  lw         $t0, %lo(ETClut)($t0)
/* 225B0 80031DB0 1000A2AF */  sw         $v0, 0x10($sp)
/* 225B4 80031DB4 1400A3AF */  sw         $v1, 0x14($sp)
/* 225B8 80031DB8 367E010C */  jal        ChangeETTPage
/* 225BC 80031DBC 1800A8AF */   sw        $t0, 0x18($sp)
/* 225C0 80031DC0 F008828F */  lw         $v0, %gp_rel(BeamTimer)($gp)
/* 225C4 80031DC4 F40880AF */  sw         $zero, %gp_rel(DISSOLVESTATE)($gp)
/* 225C8 80031DC8 21184000 */  addu       $v1, $v0, $zero
/* 225CC 80031DCC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 225D0 80031DD0 F00882AF */  sw         $v0, %gp_rel(BeamTimer)($gp)
/* 225D4 80031DD4 83006104 */  bgez       $v1, .L80031FE4
/* 225D8 80031DD8 00000000 */   nop
/* 225DC 80031DDC F866010C */  jal        ClearJoyPad
/* 225E0 80031DE0 6C003026 */   addiu     $s0, $s1, 0x6C
/* 225E4 80031DE4 0814848F */  lw         $a0, %gp_rel(gSection)($gp)
/* 225E8 80031DE8 300000AE */  sw         $zero, 0x30($s0)
/* 225EC 80031DEC 340000AE */  sw         $zero, 0x34($s0)
/* 225F0 80031DF0 380000AE */  sw         $zero, 0x38($s0)
/* 225F4 80031DF4 1000228E */  lw         $v0, 0x10($s1)
/* 225F8 80031DF8 FFFE0324 */  addiu      $v1, $zero, -0x101
/* 225FC 80031DFC 24104300 */  and        $v0, $v0, $v1
/* 22600 80031E00 B357000C */  jal        SetETPosition
/* 22604 80031E04 100022AE */   sw        $v0, 0x10($s1)
/* 22608 80031E08 1C6C000C */  jal        ForceScrollPosition
/* 2260C 80031E0C 00000000 */   nop
/* 22610 80031E10 07ED000C */  jal        SetAggressive
/* 22614 80031E14 04000424 */   addiu     $a0, $zero, 0x4
/* 22618 80031E18 F7EC000C */  jal        SetLocaleAggressive
/* 2261C 80031E1C 04000424 */   addiu     $a0, $zero, 0x4
/* 22620 80031E20 0400048E */  lw         $a0, 0x4($s0)
/* 22624 80031E24 0800058E */  lw         $a1, 0x8($s0)
/* 22628 80031E28 0C00068E */  lw         $a2, 0xC($s0)
/* 2262C 80031E2C E70C010C */  jal        CheckActorsVisible
/* 22630 80031E30 00000000 */   nop
/* 22634 80031E34 21202002 */  addu       $a0, $s1, $zero
/* 22638 80031E38 2C012626 */  addiu      $a2, $s1, 0x12C
/* 2263C 80031E3C EC08838F */  lw         $v1, %gp_rel(BEAMDOWNMAX)($gp)
/* 22640 80031E40 0A000224 */  addiu      $v0, $zero, 0xA
/* 22644 80031E44 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 22648 80031E48 01000224 */  addiu      $v0, $zero, 0x1
/* 2264C 80031E4C 0980013C */  lui        $at, %hi(MINDIV)
/* 22650 80031E50 644322AC */  sw         $v0, %lo(MINDIV)($at)
/* 22654 80031E54 2800C28C */  lw         $v0, 0x28($a2)
/* 22658 80031E58 2128C000 */  addu       $a1, $a2, $zero
/* 2265C 80031E5C 0980013C */  lui        $at, %hi(CheckIdle)
/* 22660 80031E60 684320AC */  sw         $zero, %lo(CheckIdle)($at)
/* 22664 80031E64 F00883AF */  sw         $v1, %gp_rel(BeamTimer)($gp)
/* 22668 80031E68 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 2266C 80031E6C 25104300 */  or         $v0, $v0, $v1
/* 22670 80031E70 10DE000C */  jal        CheckNextAnim
/* 22674 80031E74 2800C2AC */   sw        $v0, 0x28($a2)
/* 22678 80031E78 12000424 */  addiu      $a0, $zero, 0x12
/* 2267C 80031E7C 21280000 */  addu       $a1, $zero, $zero
/* 22680 80031E80 6F4A010C */  jal        pxm_sendevent
/* 22684 80031E84 21300000 */   addu      $a2, $zero, $zero
/* 22688 80031E88 02000324 */  addiu      $v1, $zero, 0x2
/* 2268C 80031E8C 0980013C */  lui        $at, %hi(UpdateETHSV)
/* 22690 80031E90 844223AC */  sw         $v1, %lo(UpdateETHSV)($at)
/* 22694 80031E94 F9C70008 */  j          .L80031FE4
/* 22698 80031E98 00000000 */   nop
jlabel .L80031E9C
/* 2269C 80031E9C F813828F */  lw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 226A0 80031EA0 00000000 */  nop
/* 226A4 80031EA4 05004010 */  beqz       $v0, .L80031EBC
/* 226A8 80031EA8 00000000 */   nop
.L80031EAC:
/* 226AC 80031EAC A9C9000C */  jal        ShowInstructionalScreen
/* 226B0 80031EB0 00000000 */   nop
/* 226B4 80031EB4 24C80008 */  j          .L80032090
/* 226B8 80031EB8 00000000 */   nop
.L80031EBC:
/* 226BC 80031EBC 740880AF */  sw         $zero, %gp_rel(PauseFlag)($gp)
/* 226C0 80031EC0 A1E8000C */  jal        CameraMan
/* 226C4 80031EC4 00000000 */   nop
/* 226C8 80031EC8 16EB000C */  jal        UpdateCamera
/* 226CC 80031ECC 00000000 */   nop
/* 226D0 80031ED0 4AE9000C */  jal        UpdateCameraMatrix
/* 226D4 80031ED4 00000000 */   nop
/* 226D8 80031ED8 F866010C */  jal        ClearJoyPad
/* 226DC 80031EDC 00000000 */   nop
/* 226E0 80031EE0 0980033C */  lui        $v1, %hi(CinematicScreenPauseFlag)
/* 226E4 80031EE4 3C57638C */  lw         $v1, %lo(CinematicScreenPauseFlag)($v1)
/* 226E8 80031EE8 00000000 */  nop
/* 226EC 80031EEC 05006014 */  bnez       $v1, .L80031F04
/* 226F0 80031EF0 00000000 */   nop
/* 226F4 80031EF4 9490010C */  jal        DrawLevel
/* 226F8 80031EF8 00000000 */   nop
/* 226FC 80031EFC C3C70008 */  j          .L80031F0C
/* 22700 80031F00 00000000 */   nop
.L80031F04:
/* 22704 80031F04 893A010C */  jal        ResetCelMem
/* 22708 80031F08 00000000 */   nop
.L80031F0C:
/* 2270C 80031F0C 0980023C */  lui        $v0, %hi(NewsPaperPauseFlag)
/* 22710 80031F10 3449428C */  lw         $v0, %lo(NewsPaperPauseFlag)($v0)
/* 22714 80031F14 00000000 */  nop
/* 22718 80031F18 08004014 */  bnez       $v0, .L80031F3C
/* 2271C 80031F1C 0980113C */   lui       $s1, %hi(ETActor)
/* 22720 80031F20 B05A3026 */  addiu      $s0, $s1, %lo(ETActor)
/* 22724 80031F24 E862000C */  jal        ETBrains
/* 22728 80031F28 21200002 */   addu      $a0, $s0, $zero
/* 2272C 80031F2C B667000C */  jal        ETCleanUpBrains
/* 22730 80031F30 21200002 */   addu      $a0, $s0, $zero
/* 22734 80031F34 46CC000C */  jal        PlayLogic
/* 22738 80031F38 00000000 */   nop
.L80031F3C:
/* 2273C 80031F3C B05A3026 */  addiu      $s0, $s1, %lo(ETActor)
/* 22740 80031F40 0C00028E */  lw         $v0, 0xC($s0)
/* 22744 80031F44 00000000 */  nop
/* 22748 80031F48 26004014 */  bnez       $v0, .L80031FE4
/* 2274C 80031F4C 00000000 */   nop
/* 22750 80031F50 6011010C */  jal        ActorOn
/* 22754 80031F54 21200002 */   addu      $a0, $s0, $zero
/* 22758 80031F58 F008838F */  lw         $v1, %gp_rel(BeamTimer)($gp)
/* 2275C 80031F5C 00000000 */  nop
/* 22760 80031F60 21106000 */  addu       $v0, $v1, $zero
/* 22764 80031F64 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 22768 80031F68 F00883AF */  sw         $v1, %gp_rel(BeamTimer)($gp)
/* 2276C 80031F6C 1D004104 */  bgez       $v0, .L80031FE4
/* 22770 80031F70 04000224 */   addiu     $v0, $zero, 0x4
/* 22774 80031F74 0B000324 */  addiu      $v1, $zero, 0xB
/* 22778 80031F78 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 2277C 80031F7C 0980013C */  lui        $at, %hi(MINDIV)
/* 22780 80031F80 644323AC */  sw         $v1, %lo(MINDIV)($at)
/* 22784 80031F84 07ED000C */  jal        SetAggressive
/* 22788 80031F88 02000424 */   addiu     $a0, $zero, 0x2
/* 2278C 80031F8C F7EC000C */  jal        SetLocaleAggressive
/* 22790 80031F90 02000424 */   addiu     $a0, $zero, 0x2
/* 22794 80031F94 21200002 */  addu       $a0, $s0, $zero
/* 22798 80031F98 28E3000C */  jal        GetSeqNumFrames
/* 2279C 80031F9C 1A000524 */   addiu     $a1, $zero, 0x1A
/* 227A0 80031FA0 21200002 */  addu       $a0, $s0, $zero
/* 227A4 80031FA4 1A000524 */  addiu      $a1, $zero, 0x1A
/* 227A8 80031FA8 21300000 */  addu       $a2, $zero, $zero
/* 227AC 80031FAC 21384000 */  addu       $a3, $v0, $zero
/* 227B0 80031FB0 01000224 */  addiu      $v0, $zero, 0x1
/* 227B4 80031FB4 1000A2AF */  sw         $v0, 0x10($sp)
/* 227B8 80031FB8 2C010226 */  addiu      $v0, $s0, 0x12C
/* 227BC 80031FBC 1400A0AF */  sw         $zero, 0x14($sp)
/* 227C0 80031FC0 72E2000C */  jal        RequestAnim
/* 227C4 80031FC4 1800A2AF */   sw        $v0, 0x18($sp)
/* 227C8 80031FC8 F9C70008 */  j          .L80031FE4
/* 227CC 80031FCC 00000000 */   nop
jlabel .L80031FD0
/* 227D0 80031FD0 AA81000C */  jal        EndLevel
/* 227D4 80031FD4 00000000 */   nop
/* 227D8 80031FD8 02004014 */  bnez       $v0, .L80031FE4
/* 227DC 80031FDC 04000224 */   addiu     $v0, $zero, 0x4
/* 227E0 80031FE0 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
jlabel .L80031FE4
/* 227E4 80031FE4 2014838F */  lw         $v1, %gp_rel(gGameState)($gp)
/* 227E8 80031FE8 02000224 */  addiu      $v0, $zero, 0x2
/* 227EC 80031FEC 0C006210 */  beq        $v1, $v0, .L80032020
/* 227F0 80031FF0 00000000 */   nop
/* 227F4 80031FF4 0980023C */  lui        $v0, %hi(CinematicScreenPauseFlag)
/* 227F8 80031FF8 3C57428C */  lw         $v0, %lo(CinematicScreenPauseFlag)($v0)
/* 227FC 80031FFC 00000000 */  nop
/* 22800 80032000 07004014 */  bnez       $v0, .L80032020
/* 22804 80032004 00000000 */   nop
/* 22808 80032008 5008828F */  lw         $v0, %gp_rel(FreezeGame)($gp)
/* 2280C 8003200C 00000000 */  nop
/* 22810 80032010 03004014 */  bnez       $v0, .L80032020
/* 22814 80032014 00000000 */   nop
/* 22818 80032018 66CC000C */  jal        GameDraw
/* 2281C 8003201C 00000000 */   nop
.L80032020:
/* 22820 80032020 7C08828F */  lw         $v0, %gp_rel(gGameFrameCount)($gp)
/* 22824 80032024 00000000 */  nop
/* 22828 80032028 01004224 */  addiu      $v0, $v0, 0x1
/* 2282C 8003202C 7C0882AF */  sw         $v0, %gp_rel(gGameFrameCount)($gp)
/* 22830 80032030 5B4C010C */  jal        pxm_frameh
/* 22834 80032034 00000000 */   nop
/* 22838 80032038 4807010C */  jal        CinematicDraw
/* 2283C 8003203C 00000000 */   nop
/* 22840 80032040 8C47010C */  jal        DrawBoxes
/* 22844 80032044 00000000 */   nop
/* 22848 80032048 B808838F */  lw         $v1, %gp_rel(eggdrawfonts)($gp)
/* 2284C 8003204C 00000000 */  nop
/* 22850 80032050 03006010 */  beqz       $v1, .L80032060
/* 22854 80032054 00000000 */   nop
/* 22858 80032058 8460010C */  jal        TextDrawText
/* 2285C 8003205C 00000000 */   nop
.L80032060:
/* 22860 80032060 D591000C */  jal        ServiceNewspaper
/* 22864 80032064 00000000 */   nop
/* 22868 80032068 5892000C */  jal        DrawNewsPaper
/* 2286C 8003206C 00000000 */   nop
/* 22870 80032070 9769010C */  jal        updateScreen
/* 22874 80032074 00000000 */   nop
/* 22878 80032078 8706010C */  jal        CinematicService
/* 2287C 8003207C 00000000 */   nop
/* 22880 80032080 C008838F */  lw         $v1, %gp_rel(cpfram)($gp)
/* 22884 80032084 21100000 */  addu       $v0, $zero, $zero
/* 22888 80032088 01006324 */  addiu      $v1, $v1, 0x1
/* 2288C 8003208C C00883AF */  sw         $v1, %gp_rel(cpfram)($gp)
.L80032090:
/* 22890 80032090 5000BF8F */  lw         $ra, 0x50($sp)
/* 22894 80032094 4C00B18F */  lw         $s1, 0x4C($sp)
/* 22898 80032098 4800B08F */  lw         $s0, 0x48($sp)
/* 2289C 8003209C 0800E003 */  jr         $ra
/* 228A0 800320A0 5800BD27 */   addiu     $sp, $sp, 0x58
.size GameLoop_Loop, . - GameLoop_Loop
