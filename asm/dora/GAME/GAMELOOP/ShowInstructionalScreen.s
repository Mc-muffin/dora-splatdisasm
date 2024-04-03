.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowInstructionalScreen
/* 22EA4 800326A4 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 22EA8 800326A8 21200000 */  addu       $a0, $zero, $zero
/* 22EAC 800326AC 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 22EB0 800326B0 5965010C */  jal        Sys_StopVibration
/* 22EB4 800326B4 7800B0AF */   sw        $s0, 0x78($sp)
/* 22EB8 800326B8 CC13838F */  lw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 22EBC 800326BC 00000000 */  nop
/* 22EC0 800326C0 0A00622C */  sltiu      $v0, $v1, 0xA
/* 22EC4 800326C4 D3004010 */  beqz       $v0, .L80032A14
/* 22EC8 800326C8 0180023C */   lui       $v0, %hi(jtbl_80011BD0)
/* 22ECC 800326CC D01B4224 */  addiu      $v0, $v0, %lo(jtbl_80011BD0)
/* 22ED0 800326D0 80180300 */  sll        $v1, $v1, 2
/* 22ED4 800326D4 21186200 */  addu       $v1, $v1, $v0
/* 22ED8 800326D8 0000648C */  lw         $a0, 0x0($v1)
/* 22EDC 800326DC 00000000 */  nop
/* 22EE0 800326E0 08008000 */  jr         $a0
/* 22EE4 800326E4 00000000 */   nop
jlabel .L800326E8
/* 22EE8 800326E8 936C010C */  jal        InitFade
/* 22EEC 800326EC 00000000 */   nop
/* 22EF0 800326F0 1E000424 */  addiu      $a0, $zero, 0x1E
/* 22EF4 800326F4 21280000 */  addu       $a1, $zero, $zero
/* 22EF8 800326F8 6F4A010C */  jal        pxm_sendevent
/* 22EFC 800326FC 21300000 */   addu      $a2, $zero, $zero
/* 22F00 80032700 1000A427 */  addiu      $a0, $sp, 0x10
/* 22F04 80032704 0180053C */  lui        $a1, %hi(D_80011B00)
/* 22F08 80032708 53C5010C */  jal        sprintf
/* 22F0C 8003270C 001BA524 */   addiu     $a1, $a1, %lo(D_80011B00)
/* 22F10 80032710 05000324 */  addiu      $v1, $zero, 0x5
/* 22F14 80032714 CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 22F18 80032718 B13A010C */  jal        PolyPoolAddr
/* 22F1C 8003271C 00000000 */   nop
/* 22F20 80032720 1000A427 */  addiu      $a0, $sp, 0x10
/* 22F24 80032724 21284000 */  addu       $a1, $v0, $zero
/* 22F28 80032728 0380063C */  lui        $a2, %hi(ChangeTaskToGameOverWait)
/* 22F2C 8003272C 945C010C */  jal        LoadFileBackground
/* 22F30 80032730 1836C624 */   addiu     $a2, $a2, %lo(ChangeTaskToGameOverWait)
/* 22F34 80032734 85CA0008 */  j          .L80032A14
/* 22F38 80032738 00000000 */   nop
jlabel .L8003273C
/* 22F3C 8003273C 0980023C */  lui        $v0, %hi(TrgRel0)
/* 22F40 80032740 18594294 */  lhu        $v0, %lo(TrgRel0)($v0)
/* 22F44 80032744 00000000 */  nop
/* 22F48 80032748 08404230 */  andi       $v0, $v0, 0x4008
/* 22F4C 8003274C B1004010 */  beqz       $v0, .L80032A14
/* 22F50 80032750 19000424 */   addiu     $a0, $zero, 0x19
/* 22F54 80032754 21280000 */  addu       $a1, $zero, $zero
/* 22F58 80032758 6F4A010C */  jal        pxm_sendevent
/* 22F5C 8003275C 21300000 */   addu      $a2, $zero, $zero
/* 22F60 80032760 1D001024 */  addiu      $s0, $zero, 0x1D
.L80032764:
/* 22F64 80032764 EBD6010C */  jal        VSync
/* 22F68 80032768 21200000 */   addu      $a0, $zero, $zero
/* 22F6C 8003276C 5B4C010C */  jal        pxm_frameh
/* 22F70 80032770 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 22F74 80032774 FBFF0106 */  bgez       $s0, .L80032764
/* 22F78 80032778 00000000 */   nop
/* 22F7C 8003277C F81380AF */  sw         $zero, %gp_rel(g_instructionalscreen)($gp)
/* 22F80 80032780 656D010C */  jal        GraphicsSetAutoClear
/* 22F84 80032784 01000424 */   addiu     $a0, $zero, 0x1
/* 22F88 80032788 F866010C */  jal        ClearJoyPad
/* 22F8C 8003278C 00000000 */   nop
/* 22F90 80032790 203F010C */  jal        RequestState
/* 22F94 80032794 01000424 */   addiu     $a0, $zero, 0x1
/* 22F98 80032798 85CA0008 */  j          .L80032A14
/* 22F9C 8003279C 00000000 */   nop
jlabel .L800327A0
/* 22FA0 800327A0 1D000424 */  addiu      $a0, $zero, 0x1D
/* 22FA4 800327A4 01000524 */  addiu      $a1, $zero, 0x1
/* 22FA8 800327A8 6F4A010C */  jal        pxm_sendevent
/* 22FAC 800327AC 21300000 */   addu      $a2, $zero, $zero
/* 22FB0 800327B0 5B4C010C */  jal        pxm_frameh
/* 22FB4 800327B4 00000000 */   nop
/* 22FB8 800327B8 5B4C010C */  jal        pxm_frameh
/* 22FBC 800327BC 00000000 */   nop
/* 22FC0 800327C0 1000A427 */  addiu      $a0, $sp, 0x10
/* 22FC4 800327C4 0180053C */  lui        $a1, %hi(D_80011B1C)
/* 22FC8 800327C8 F813868F */  lw         $a2, %gp_rel(g_instructionalscreen)($gp)
/* 22FCC 800327CC 7BCA0008 */  j          .L800329EC
/* 22FD0 800327D0 1C1BA524 */   addiu     $a1, $a1, %lo(D_80011B1C)
jlabel .L800327D4
/* 22FD4 800327D4 1D000424 */  addiu      $a0, $zero, 0x1D
/* 22FD8 800327D8 01000524 */  addiu      $a1, $zero, 0x1
/* 22FDC 800327DC 6F4A010C */  jal        pxm_sendevent
/* 22FE0 800327E0 21300000 */   addu      $a2, $zero, $zero
/* 22FE4 800327E4 5B4C010C */  jal        pxm_frameh
/* 22FE8 800327E8 00000000 */   nop
/* 22FEC 800327EC 5B4C010C */  jal        pxm_frameh
/* 22FF0 800327F0 00000000 */   nop
/* 22FF4 800327F4 936C010C */  jal        InitFade
/* 22FF8 800327F8 00000000 */   nop
/* 22FFC 800327FC 1000A427 */  addiu      $a0, $sp, 0x10
/* 23000 80032800 0180053C */  lui        $a1, %hi(D_80011B1C)
/* 23004 80032804 F813868F */  lw         $a2, %gp_rel(g_instructionalscreen)($gp)
/* 23008 80032808 53C5010C */  jal        sprintf
/* 2300C 8003280C 1C1BA524 */   addiu     $a1, $a1, %lo(D_80011B1C)
/* 23010 80032810 02000324 */  addiu      $v1, $zero, 0x2
/* 23014 80032814 CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 23018 80032818 B13A010C */  jal        PolyPoolAddr
/* 2301C 8003281C 00000000 */   nop
/* 23020 80032820 1000A427 */  addiu      $a0, $sp, 0x10
/* 23024 80032824 21284000 */  addu       $a1, $v0, $zero
/* 23028 80032828 0380063C */  lui        $a2, %hi(ChangeTaskToWait)
/* 2302C 8003282C 945C010C */  jal        LoadFileBackground
/* 23030 80032830 E035C624 */   addiu     $a2, $a2, %lo(ChangeTaskToWait)
/* 23034 80032834 85CA0008 */  j          .L80032A14
/* 23038 80032838 00000000 */   nop
jlabel .L8003283C
/* 2303C 8003283C DC13828F */  lw         $v0, %gp_rel(gMoveEttoSection)($gp)
/* 23040 80032840 00000000 */  nop
/* 23044 80032844 04004010 */  beqz       $v0, .L80032858
/* 23048 80032848 00000000 */   nop
/* 2304C 8003284C 0814848F */  lw         $a0, %gp_rel(gSection)($gp)
/* 23050 80032850 B357000C */  jal        SetETPosition
/* 23054 80032854 00000000 */   nop
.L80032858:
/* 23058 80032858 0980023C */  lui        $v0, %hi(TrgRel0)
/* 2305C 8003285C 18594294 */  lhu        $v0, %lo(TrgRel0)($v0)
/* 23060 80032860 00000000 */  nop
/* 23064 80032864 08404230 */  andi       $v0, $v0, 0x4008
/* 23068 80032868 6A004010 */  beqz       $v0, .L80032A14
/* 2306C 8003286C 1D000424 */   addiu     $a0, $zero, 0x1D
/* 23070 80032870 21280000 */  addu       $a1, $zero, $zero
/* 23074 80032874 6F4A010C */  jal        pxm_sendevent
/* 23078 80032878 21300000 */   addu      $a2, $zero, $zero
/* 2307C 8003287C 5B4C010C */  jal        pxm_frameh
/* 23080 80032880 1D001024 */   addiu     $s0, $zero, 0x1D
/* 23084 80032884 5B4C010C */  jal        pxm_frameh
/* 23088 80032888 00000000 */   nop
/* 2308C 8003288C 5B4C010C */  jal        pxm_frameh
/* 23090 80032890 00000000 */   nop
/* 23094 80032894 19000424 */  addiu      $a0, $zero, 0x19
/* 23098 80032898 21280000 */  addu       $a1, $zero, $zero
/* 2309C 8003289C 6F4A010C */  jal        pxm_sendevent
/* 230A0 800328A0 21300000 */   addu      $a2, $zero, $zero
.L800328A4:
/* 230A4 800328A4 EBD6010C */  jal        VSync
/* 230A8 800328A8 21200000 */   addu      $a0, $zero, $zero
/* 230AC 800328AC 5B4C010C */  jal        pxm_frameh
/* 230B0 800328B0 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 230B4 800328B4 FBFF0106 */  bgez       $s0, .L800328A4
/* 230B8 800328B8 00000000 */   nop
/* 230BC 800328BC F81380AF */  sw         $zero, %gp_rel(g_instructionalscreen)($gp)
/* 230C0 800328C0 656D010C */  jal        GraphicsSetAutoClear
/* 230C4 800328C4 01000424 */   addiu     $a0, $zero, 0x1
/* 230C8 800328C8 F866010C */  jal        ClearJoyPad
/* 230CC 800328CC 00000000 */   nop
/* 230D0 800328D0 0980043C */  lui        $a0, %hi(RedBookTrack)
/* 230D4 800328D4 FC49848C */  lw         $a0, %lo(RedBookTrack)($a0)
/* 230D8 800328D8 675B010C */  jal        BeginRedbook
/* 230DC 800328DC 00000000 */   nop
/* 230E0 800328E0 85CA0008 */  j          .L80032A14
/* 230E4 800328E4 00000000 */   nop
jlabel .L800328E8
/* 230E8 800328E8 936C010C */  jal        InitFade
/* 230EC 800328EC 00000000 */   nop
/* 230F0 800328F0 F866010C */  jal        ClearJoyPad
/* 230F4 800328F4 00000000 */   nop
/* 230F8 800328F8 1000A427 */  addiu      $a0, $sp, 0x10
/* 230FC 800328FC 0180053C */  lui        $a1, %hi(D_80011B38)
/* 23100 80032900 53C5010C */  jal        sprintf
/* 23104 80032904 381BA524 */   addiu     $a1, $a1, %lo(D_80011B38)
/* 23108 80032908 05000324 */  addiu      $v1, $zero, 0x5
/* 2310C 8003290C CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 23110 80032910 B13A010C */  jal        PolyPoolAddr
/* 23114 80032914 00000000 */   nop
/* 23118 80032918 1000A427 */  addiu      $a0, $sp, 0x10
/* 2311C 8003291C 21284000 */  addu       $a1, $v0, $zero
/* 23120 80032920 0380063C */  lui        $a2, %hi(ChangeTaskToEndWait)
/* 23124 80032924 945C010C */  jal        LoadFileBackground
/* 23128 80032928 5836C624 */   addiu     $a2, $a2, %lo(ChangeTaskToEndWait)
/* 2312C 8003292C 85CA0008 */  j          .L80032A14
/* 23130 80032930 00000000 */   nop
jlabel .L80032934
/* 23134 80032934 F866010C */  jal        ClearJoyPad
/* 23138 80032938 00000000 */   nop
/* 2313C 8003293C F56E010C */  jal        AttemptToFade
/* 23140 80032940 00000000 */   nop
/* 23144 80032944 85CA0008 */  j          .L80032A14
/* 23148 80032948 00000000 */   nop
jlabel .L8003294C
/* 2314C 8003294C 0980023C */  lui        $v0, %hi(TrgRel0)
/* 23150 80032950 18594294 */  lhu        $v0, %lo(TrgRel0)($v0)
/* 23154 80032954 00000000 */  nop
/* 23158 80032958 08404230 */  andi       $v0, $v0, 0x4008
/* 2315C 8003295C 2D004010 */  beqz       $v0, .L80032A14
/* 23160 80032960 19000424 */   addiu     $a0, $zero, 0x19
/* 23164 80032964 21280000 */  addu       $a1, $zero, $zero
/* 23168 80032968 6F4A010C */  jal        pxm_sendevent
/* 2316C 8003296C 21300000 */   addu      $a2, $zero, $zero
/* 23170 80032970 F81380AF */  sw         $zero, %gp_rel(g_instructionalscreen)($gp)
/* 23174 80032974 656D010C */  jal        GraphicsSetAutoClear
/* 23178 80032978 01000424 */   addiu     $a0, $zero, 0x1
/* 2317C 8003297C F866010C */  jal        ClearJoyPad
/* 23180 80032980 00000000 */   nop
/* 23184 80032984 8A9F000C */  jal        AutoIncrementLevelWorld
/* 23188 80032988 00000000 */   nop
/* 2318C 8003298C 01000224 */  addiu      $v0, $zero, 0x1
/* 23190 80032990 04000324 */  addiu      $v1, $zero, 0x4
/* 23194 80032994 0980013C */  lui        $at, %hi(TaskerReloadState)
/* 23198 80032998 EC5122AC */  sw         $v0, %lo(TaskerReloadState)($at)
/* 2319C 8003299C 201483AF */  sw         $v1, %gp_rel(gGameState)($gp)
/* 231A0 800329A0 CC1380AF */  sw         $zero, %gp_rel(gInstructionalScreenState)($gp)
/* 231A4 800329A4 203F010C */  jal        RequestState
/* 231A8 800329A8 01000424 */   addiu     $a0, $zero, 0x1
/* 231AC 800329AC 85CA0008 */  j          .L80032A14
/* 231B0 800329B0 00000000 */   nop
jlabel .L800329B4
/* 231B4 800329B4 1D000424 */  addiu      $a0, $zero, 0x1D
/* 231B8 800329B8 01000524 */  addiu      $a1, $zero, 0x1
/* 231BC 800329BC 6F4A010C */  jal        pxm_sendevent
/* 231C0 800329C0 21300000 */   addu      $a2, $zero, $zero
/* 231C4 800329C4 5B4C010C */  jal        pxm_frameh
/* 231C8 800329C8 00000000 */   nop
/* 231CC 800329CC 5B4C010C */  jal        pxm_frameh
/* 231D0 800329D0 00000000 */   nop
/* 231D4 800329D4 38A0000C */  jal        GetWorld3Letter
/* 231D8 800329D8 00000000 */   nop
/* 231DC 800329DC 1000A427 */  addiu      $a0, $sp, 0x10
/* 231E0 800329E0 0180053C */  lui        $a1, %hi(D_80011B54)
/* 231E4 800329E4 541BA524 */  addiu      $a1, $a1, %lo(D_80011B54)
/* 231E8 800329E8 21304000 */  addu       $a2, $v0, $zero
.L800329EC:
/* 231EC 800329EC 53C5010C */  jal        sprintf
/* 231F0 800329F0 00000000 */   nop
/* 231F4 800329F4 B13A010C */  jal        PolyPoolAddr
/* 231F8 800329F8 00000000 */   nop
/* 231FC 800329FC 1000A427 */  addiu      $a0, $sp, 0x10
/* 23200 80032A00 21284000 */  addu       $a1, $v0, $zero
/* 23204 80032A04 A06E010C */  jal        LoadGraphicIntoFrameBuffer
/* 23208 80032A08 01000624 */   addiu     $a2, $zero, 0x1
/* 2320C 80032A0C 03000324 */  addiu      $v1, $zero, 0x3
/* 23210 80032A10 CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
.L80032A14:
/* 23214 80032A14 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 23218 80032A18 7800B08F */  lw         $s0, 0x78($sp)
/* 2321C 80032A1C 0800E003 */  jr         $ra
/* 23220 80032A20 8000BD27 */   addiu     $sp, $sp, 0x80
.size ShowInstructionalScreen, . - ShowInstructionalScreen
