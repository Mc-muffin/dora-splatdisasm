.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GameLoop_Init
/* 217DC 80030FDC 10FFBD27 */  addiu      $sp, $sp, -0xF0
/* 217E0 80030FE0 E800BFAF */  sw         $ra, 0xE8($sp)
/* 217E4 80030FE4 E400B3AF */  sw         $s3, 0xE4($sp)
/* 217E8 80030FE8 E000B2AF */  sw         $s2, 0xE0($sp)
/* 217EC 80030FEC DC00B1AF */  sw         $s1, 0xDC($sp)
/* 217F0 80030FF0 2979010C */  jal        InitHSVService
/* 217F4 80030FF4 D800B0AF */   sw        $s0, 0xD8($sp)
/* 217F8 80030FF8 7C0880AF */  sw         $zero, %gp_rel(gGameFrameCount)($gp)
/* 217FC 80030FFC 0980013C */  lui        $at, %hi(ScrollXPos)
/* 21800 80031000 705420AC */  sw         $zero, %lo(ScrollXPos)($at)
/* 21804 80031004 0980013C */  lui        $at, %hi(ScrollYPos)
/* 21808 80031008 745420AC */  sw         $zero, %lo(ScrollYPos)($at)
/* 2180C 8003100C 0980013C */  lui        $at, %hi(ScrollZPos)
/* 21810 80031010 785420AC */  sw         $zero, %lo(ScrollZPos)($at)
/* 21814 80031014 F866010C */  jal        ClearJoyPad
/* 21818 80031018 00000000 */   nop
/* 2181C 8003101C 3D0D010C */  jal        ResetSpawnService
/* 21820 80031020 00000000 */   nop
/* 21824 80031024 0980013C */  lui        $at, %hi(gBossActor)
/* 21828 80031028 805720AC */  sw         $zero, %lo(gBossActor)($at)
/* 2182C 8003102C 6F5B010C */  jal        StopRedbook
/* 21830 80031030 00000000 */   nop
/* 21834 80031034 3D6E010C */  jal        SetOT2Size
/* 21838 80031038 01000424 */   addiu     $a0, $zero, 0x1
/* 2183C 8003103C 5808838F */  lw         $v1, %gp_rel(LevelCompletionFlag)($gp)
/* 21840 80031040 00000000 */  nop
/* 21844 80031044 0A006010 */  beqz       $v1, .L80031070
/* 21848 80031048 00000000 */   nop
/* 2184C 8003104C A66E000C */  jal        InitMemMalloc
/* 21850 80031050 00000000 */   nop
/* 21854 80031054 0E4F010C */  jal        pxm_init
/* 21858 80031058 02000424 */   addiu     $a0, $zero, 0x2
/* 2185C 8003105C B13A010C */  jal        PolyPoolAddr
/* 21860 80031060 00000000 */   nop
/* 21864 80031064 21204000 */  addu       $a0, $v0, $zero
/* 21868 80031068 82A2000C */  jal        PrepMemcard
/* 2186C 8003106C 01000524 */   addiu     $a1, $zero, 0x1
.L80031070:
/* 21870 80031070 F78D000C */  jal        PlayPostMemcardMovie
/* 21874 80031074 00000000 */   nop
/* 21878 80031078 CC6C010C */  jal        ScreenOff
/* 2187C 8003107C 00000000 */   nop
/* 21880 80031080 A66E000C */  jal        InitMemMalloc
/* 21884 80031084 00000000 */   nop
/* 21888 80031088 5800B027 */  addiu      $s0, $sp, 0x58
/* 2188C 8003108C 15A0000C */  jal        GenerateLevelLoadScreen
/* 21890 80031090 21200002 */   addu      $a0, $s0, $zero
/* 21894 80031094 316C010C */  jal        InitLoadingScreen
/* 21898 80031098 21200002 */   addu      $a0, $s0, $zero
/* 2189C 8003109C 700880AF */  sw         $zero, %gp_rel(pausewaitforallquedeone)($gp)
/* 218A0 800310A0 0980013C */  lui        $at, %hi(pxm_numemitters)
/* 218A4 800310A4 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* 218A8 800310A8 0980013C */  lui        $at, %hi(pxm_emitter_numpoints)
/* 218AC 800310AC 805820AC */  sw         $zero, %lo(pxm_emitter_numpoints)($at)
/* 218B0 800310B0 0E4F010C */  jal        pxm_init
/* 218B4 800310B4 05000424 */   addiu     $a0, $zero, 0x5
/* 218B8 800310B8 21900002 */  addu       $s2, $s0, $zero
/* 218BC 800310BC 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 218C0 800310C0 21984000 */  addu       $s3, $v0, $zero
/* 218C4 800310C4 02001024 */  addiu      $s0, $zero, 0x2
/* 218C8 800310C8 0980033C */  lui        $v1, %hi(MusicVolume)
/* 218CC 800310CC 9C49638C */  lw         $v1, %lo(MusicVolume)($v1)
/* 218D0 800310D0 0980053C */  lui        $a1, %hi(EffectsVolume)
/* 218D4 800310D4 A049A58C */  lw         $a1, %lo(EffectsVolume)($a1)
/* 218D8 800310D8 21206000 */  addu       $a0, $v1, $zero
/* 218DC 800310DC C87F43AC */  sw         $v1, %lo(pxm_mix)($v0)
/* 218E0 800310E0 C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 218E4 800310E4 040045AC */  sw         $a1, 0x4($v0)
/* 218E8 800310E8 1F7B010C */  jal        SetXA_Volume
/* 218EC 800310EC 00000000 */   nop
/* 218F0 800310F0 01000424 */  addiu      $a0, $zero, 0x1
/* 218F4 800310F4 21280000 */  addu       $a1, $zero, $zero
/* 218F8 800310F8 3C000624 */  addiu      $a2, $zero, 0x3C
/* 218FC 800310FC 0980073C */  lui        $a3, %hi(MusicVolume)
/* 21900 80031100 9C49E790 */  lbu        $a3, %lo(MusicVolume)($a3)
/* 21904 80031104 0020023C */  lui        $v0, (0x20000000 >> 16)
/* 21908 80031108 4A53010C */  jal        pxm_que_noteon_layered
/* 2190C 8003110C 1000A2AF */   sw        $v0, 0x10($sp)
/* 21910 80031110 D000B127 */  addiu      $s1, $sp, 0xD0
.L80031114:
/* 21914 80031114 EBD6010C */  jal        VSync
/* 21918 80031118 21200000 */   addu      $a0, $zero, $zero
/* 2191C 8003111C 5B4C010C */  jal        pxm_frameh
/* 21920 80031120 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 21924 80031124 FBFF0106 */  bgez       $s0, .L80031114
/* 21928 80031128 00000000 */   nop
/* 2192C 8003112C 0164010C */  jal        TextResetText
/* 21930 80031130 00000000 */   nop
/* 21934 80031134 3943010C */  jal        InitPSXBoxes
/* 21938 80031138 00000000 */   nop
/* 2193C 8003113C 40010424 */  addiu      $a0, $zero, 0x140
/* 21940 80031140 21280000 */  addu       $a1, $zero, $zero
/* 21944 80031144 C0020624 */  addiu      $a2, $zero, 0x2C0
/* 21948 80031148 00020724 */  addiu      $a3, $zero, 0x200
/* 2194C 8003114C 08000224 */  addiu      $v0, $zero, 0x8
/* 21950 80031150 1000A2AF */  sw         $v0, 0x10($sp)
/* 21954 80031154 8672010C */  jal        InitVRAMManager
/* 21958 80031158 1400A2AF */   sw        $v0, 0x14($sp)
/* 2195C 8003115C 8578010C */  jal        InitCLUTManager
/* 21960 80031160 00000000 */   nop
/* 21964 80031164 0180043C */  lui        $a0, %hi(D_80011A38)
/* 21968 80031168 45C3000C */  jal        LoadFaderTexture
/* 2196C 8003116C 381A8424 */   addiu     $a0, $a0, %lo(D_80011A38)
/* 21970 80031170 A66E000C */  jal        InitMemMalloc
/* 21974 80031174 00000000 */   nop
/* 21978 80031178 A72A010C */  jal        InitGameMallocedBuffers
/* 2197C 8003117C 00000000 */   nop
/* 21980 80031180 9795000C */  jal        LoadNewsPaperTextures
/* 21984 80031184 00000000 */   nop
/* 21988 80031188 21202002 */  addu       $a0, $s1, $zero
/* 2198C 8003118C 03000624 */  addiu      $a2, $zero, 0x3
/* 21990 80031190 0880033C */  lui        $v1, %hi(WorldList)
/* 21994 80031194 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 21998 80031198 0980053C */  lui        $a1, %hi(gmenuworld)
/* 2199C 8003119C E849A58C */  lw         $a1, %lo(gmenuworld)($a1)
/* 219A0 800311A0 D013908F */  lw         $s0, %gp_rel(gLevel)($gp)
/* 219A4 800311A4 80100500 */  sll        $v0, $a1, 2
/* 219A8 800311A8 21104500 */  addu       $v0, $v0, $a1
/* 219AC 800311AC 80100200 */  sll        $v0, $v0, 2
/* 219B0 800311B0 21186200 */  addu       $v1, $v1, $v0
/* 219B4 800311B4 1000658C */  lw         $a1, 0x10($v1)
/* 219B8 800311B8 D3C2010C */  jal        strncpy
/* 219BC 800311BC 01001026 */   addiu     $s0, $s0, 0x1
/* 219C0 800311C0 21204002 */  addu       $a0, $s2, $zero
/* 219C4 800311C4 0180053C */  lui        $a1, %hi(D_80011A50)
/* 219C8 800311C8 501AA524 */  addiu      $a1, $a1, %lo(D_80011A50)
/* 219CC 800311CC 21302002 */  addu       $a2, $s1, $zero
/* 219D0 800311D0 21380002 */  addu       $a3, $s0, $zero
/* 219D4 800311D4 53C5010C */  jal        sprintf
/* 219D8 800311D8 D300A0A3 */   sb        $zero, 0xD3($sp)
/* 219DC 800311DC EA93000C */  jal        LoadBackGroundTexture
/* 219E0 800311E0 21204002 */   addu      $a0, $s2, $zero
/* 219E4 800311E4 5A93000C */  jal        InitScreenGrabSprites
/* 219E8 800311E8 00000000 */   nop
/* 219EC 800311EC 0864010C */  jal        TextInitFonts
/* 219F0 800311F0 00000000 */   nop
/* 219F4 800311F4 EBD6010C */  jal        VSync
/* 219F8 800311F8 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 219FC 800311FC C0180200 */  sll        $v1, $v0, 3
/* 21A00 80031200 23186200 */  subu       $v1, $v1, $v0
/* 21A04 80031204 C0180300 */  sll        $v1, $v1, 3
/* 21A08 80031208 23186200 */  subu       $v1, $v1, $v0
/* 21A0C 8003120C C0190300 */  sll        $v1, $v1, 7
/* 21A10 80031210 21186200 */  addu       $v1, $v1, $v0
/* 21A14 80031214 40210300 */  sll        $a0, $v1, 5
/* 21A18 80031218 23208300 */  subu       $a0, $a0, $v1
/* 21A1C 8003121C 80200400 */  sll        $a0, $a0, 2
/* 21A20 80031220 21208200 */  addu       $a0, $a0, $v0
/* 21A24 80031224 80200400 */  sll        $a0, $a0, 2
/* 21A28 80031228 E440010C */  jal        u32SRandom
/* 21A2C 8003122C 21208200 */   addu      $a0, $a0, $v0
/* 21A30 80031230 FC13838F */  lw         $v1, %gp_rel(AttractModeOn)($gp)
/* 21A34 80031234 00000000 */  nop
/* 21A38 80031238 19006010 */  beqz       $v1, .L800312A0
/* 21A3C 8003123C 00000000 */   nop
/* 21A40 80031240 2B3F010C */  jal        new_malloc
/* 21A44 80031244 0C070424 */   addiu     $a0, $zero, 0x70C
/* 21A48 80031248 21204002 */  addu       $a0, $s2, $zero
/* 21A4C 8003124C 0180053C */  lui        $a1, %hi(D_80011A6C)
/* 21A50 80031250 D813868F */  lw         $a2, %gp_rel(gWorld)($gp)
/* 21A54 80031254 D013878F */  lw         $a3, %gp_rel(gLevel)($gp)
/* 21A58 80031258 001482AF */  sw         $v0, %gp_rel(RecordedKeysBuffer)($gp)
/* 21A5C 8003125C 480880AF */  sw         $zero, %gp_rel(RecordModeIndex)($gp)
/* 21A60 80031260 53C5010C */  jal        sprintf
/* 21A64 80031264 6C1AA524 */   addiu     $a1, $a1, %lo(D_80011A6C)
/* 21A68 80031268 0014858F */  lw         $a1, %gp_rel(RecordedKeysBuffer)($gp)
/* 21A6C 8003126C 495C010C */  jal        LoadFile
/* 21A70 80031270 21204002 */   addu      $a0, $s2, $zero
/* 21A74 80031274 0A80043C */  lui        $a0, %hi(gDemoTimer)
/* 21A78 80031278 788B8424 */  addiu      $a0, $a0, %lo(gDemoTimer)
/* 21A7C 8003127C 2D000524 */  addiu      $a1, $zero, 0x2D
/* 21A80 80031280 0A6F010C */  jal        TimerInit
/* 21A84 80031284 21300000 */   addu      $a2, $zero, $zero
/* 21A88 80031288 0014908F */  lw         $s0, %gp_rel(RecordedKeysBuffer)($gp)
/* 21A8C 8003128C 00000000 */  nop
/* 21A90 80031290 0000048E */  lw         $a0, 0x0($s0)
/* 21A94 80031294 E440010C */  jal        u32SRandom
/* 21A98 80031298 04001026 */   addiu     $s0, $s0, 0x4
/* 21A9C 8003129C 001490AF */  sw         $s0, %gp_rel(RecordedKeysBuffer)($gp)
.L800312A0:
/* 21AA0 800312A0 5211010C */  jal        LoadBillBoardTextures
/* 21AA4 800312A4 00000000 */   nop
/* 21AA8 800312A8 F3CD000C */  jal        LoadCinematicTextures
/* 21AAC 800312AC 00000000 */   nop
/* 21AB0 800312B0 1DCD000C */  jal        LoadPauseMenuGraphics
/* 21AB4 800312B4 00000000 */   nop
/* 21AB8 800312B8 3489010C */  jal        InitShadows
/* 21ABC 800312BC 00000000 */   nop
/* 21AC0 800312C0 3C89010C */  jal        ResetShadows
/* 21AC4 800312C4 00000000 */   nop
/* 21AC8 800312C8 4F94010C */  jal        IsoWorld_Init
/* 21ACC 800312CC 00000000 */   nop
/* 21AD0 800312D0 9679000C */  jal        InitHud
/* 21AD4 800312D4 00000000 */   nop
/* 21AD8 800312D8 33BD000C */  jal        InitParticleEngine
/* 21ADC 800312DC 00000000 */   nop
/* 21AE0 800312E0 1B59000C */  jal        InitETActor
/* 21AE4 800312E4 00000000 */   nop
/* 21AE8 800312E8 AA6B010C */  jal        FinishLoadingBar
/* 21AEC 800312EC 00000000 */   nop
/* 21AF0 800312F0 9BD7010C */  jal        VSyncCallback
/* 21AF4 800312F4 21200000 */   addu      $a0, $zero, $zero
/* 21AF8 800312F8 1E79010C */  jal        ResetHSVService
/* 21AFC 800312FC 00000000 */   nop
/* 21B00 80031300 0680043C */  lui        $a0, %hi(LowRezVSyncFunc)
/* 21B04 80031304 9BD7010C */  jal        VSyncCallback
/* 21B08 80031308 ACB58424 */   addiu     $a0, $a0, %lo(LowRezVSyncFunc)
/* 21B0C 8003130C 09C5000C */  jal        InitLevel
/* 21B10 80031310 00000000 */   nop
/* 21B14 80031314 AFCE000C */  jal        InitGameAudioPreMalloc
/* 21B18 80031318 00000000 */   nop
/* 21B1C 8003131C 30D1000C */  jal        BootsInit
/* 21B20 80031320 00000000 */   nop
/* 21B24 80031324 FC13838F */  lw         $v1, %gp_rel(AttractModeOn)($gp)
/* 21B28 80031328 04000224 */  addiu      $v0, $zero, 0x4
/* 21B2C 8003132C 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 21B30 80031330 02006010 */  beqz       $v1, .L8003133C
/* 21B34 80031334 00000000 */   nop
/* 21B38 80031338 F81380AF */  sw         $zero, %gp_rel(g_instructionalscreen)($gp)
.L8003133C:
/* 21B3C 8003133C DC1380AF */  sw         $zero, %gp_rel(gMoveEttoSection)($gp)
/* 21B40 80031340 740880AF */  sw         $zero, %gp_rel(PauseFlag)($gp)
/* 21B44 80031344 E4CC000C */  jal        SetBeamDownSequence
/* 21B48 80031348 0980103C */   lui       $s0, %hi(ETActor)
/* 21B4C 8003134C B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* 21B50 80031350 E862000C */  jal        ETBrains
/* 21B54 80031354 21200002 */   addu      $a0, $s0, $zero
/* 21B58 80031358 46CC000C */  jal        PlayLogic
/* 21B5C 8003135C 00000000 */   nop
/* 21B60 80031360 B667000C */  jal        ETCleanUpBrains
/* 21B64 80031364 21200002 */   addu      $a0, $s0, $zero
/* 21B68 80031368 20000224 */  addiu      $v0, $zero, 0x20
/* 21B6C 8003136C 540882AF */  sw         $v0, %gp_rel(WIPESPEED)($gp)
/* 21B70 80031370 C46C010C */  jal        ScreenOn
/* 21B74 80031374 01001024 */   addiu     $s0, $zero, 0x1
/* 21B78 80031378 CD78000C */  jal        ActivateHUD
/* 21B7C 8003137C 00000000 */   nop
/* 21B80 80031380 880890AF */  sw         $s0, %gp_rel(BEGOODTIMER)($gp)
/* 21B84 80031384 8C81000C */  jal        InitEndLevelService
/* 21B88 80031388 00000000 */   nop
/* 21B8C 8003138C CD91000C */  jal        NewsPaperLevelStart
/* 21B90 80031390 00000000 */   nop
/* 21B94 80031394 0F79010C */  jal        InitColorCluts
/* 21B98 80031398 00000000 */   nop
/* 21B9C 8003139C CD91000C */  jal        NewsPaperLevelStart
/* 21BA0 800313A0 00000000 */   nop
/* 21BA4 800313A4 2077010C */  jal        SaveHSVPalettes
/* 21BA8 800313A8 00000000 */   nop
/* 21BAC 800313AC 0E4F010C */  jal        pxm_init
/* 21BB0 800313B0 06000424 */   addiu     $a0, $zero, 0x6
/* 21BB4 800313B4 717B010C */  jal        InitXA
/* 21BB8 800313B8 00000000 */   nop
/* 21BBC 800313BC C87F6226 */  addiu      $v0, $s3, %lo(pxm_mix)
/* 21BC0 800313C0 0980033C */  lui        $v1, %hi(MusicVolume)
/* 21BC4 800313C4 9C49638C */  lw         $v1, %lo(MusicVolume)($v1)
/* 21BC8 800313C8 0980053C */  lui        $a1, %hi(EffectsVolume)
/* 21BCC 800313CC A049A58C */  lw         $a1, %lo(EffectsVolume)($a1)
/* 21BD0 800313D0 21206000 */  addu       $a0, $v1, $zero
/* 21BD4 800313D4 C87F63AE */  sw         $v1, %lo(pxm_mix)($s3)
/* 21BD8 800313D8 040045AC */  sw         $a1, 0x4($v0)
/* 21BDC 800313DC 1F7B010C */  jal        SetXA_Volume
/* 21BE0 800313E0 00000000 */   nop
/* 21BE4 800313E4 0D91000C */  jal        SelectWorldRedBook
/* 21BE8 800313E8 00000000 */   nop
/* 21BEC 800313EC 0980013C */  lui        $at, %hi(RedBookTrack)
/* 21BF0 800313F0 FC4922AC */  sw         $v0, %lo(RedBookTrack)($at)
/* 21BF4 800313F4 675B010C */  jal        BeginRedbook
/* 21BF8 800313F8 21204000 */   addu      $a0, $v0, $zero
/* 21BFC 800313FC E800BF8F */  lw         $ra, 0xE8($sp)
/* 21C00 80031400 E400B38F */  lw         $s3, 0xE4($sp)
/* 21C04 80031404 E000B28F */  lw         $s2, 0xE0($sp)
/* 21C08 80031408 DC00B18F */  lw         $s1, 0xDC($sp)
/* 21C0C 8003140C 8C0890AF */  sw         $s0, %gp_rel(FaderFlag)($gp)
/* 21C10 80031410 D800B08F */  lw         $s0, 0xD8($sp)
/* 21C14 80031414 80000224 */  addiu      $v0, $zero, 0x80
/* 21C18 80031418 900882AF */  sw         $v0, %gp_rel(FaderTimer)($gp)
/* 21C1C 8003141C 0800E003 */  jr         $ra
/* 21C20 80031420 F000BD27 */   addiu     $sp, $sp, 0xF0
.size GameLoop_Init, . - GameLoop_Init
