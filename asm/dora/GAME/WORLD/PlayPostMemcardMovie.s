.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayPostMemcardMovie
/* 13FDC 800237DC 0980023C */  lui        $v0, %hi(gLevel)
/* 13FE0 800237E0 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 13FE4 800237E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13FE8 800237E8 74004014 */  bnez       $v0, .L800239BC
/* 13FEC 800237EC 1000BFAF */   sw        $ra, 0x10($sp)
/* 13FF0 800237F0 0980033C */  lui        $v1, %hi(gWorld)
/* 13FF4 800237F4 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 13FF8 800237F8 00000000 */  nop
/* 13FFC 800237FC 0900622C */  sltiu      $v0, $v1, 0x9
/* 14000 80023800 6E004010 */  beqz       $v0, .L800239BC
/* 14004 80023804 0180023C */   lui       $v0, %hi(jtbl_800113A8)
/* 14008 80023808 A8134224 */  addiu      $v0, $v0, %lo(jtbl_800113A8)
/* 1400C 8002380C 80180300 */  sll        $v1, $v1, 2
/* 14010 80023810 21186200 */  addu       $v1, $v1, $v0
/* 14014 80023814 0000648C */  lw         $a0, 0x0($v1)
/* 14018 80023818 00000000 */  nop
/* 1401C 8002381C 08008000 */  jr         $a0
/* 14020 80023820 00000000 */   nop
jlabel .L80023824
/* 14024 80023824 F866010C */  jal        ClearJoyPad
/* 14028 80023828 00000000 */   nop
/* 1402C 8002382C C46C010C */  jal        ScreenOn
/* 14030 80023830 00000000 */   nop
/* 14034 80023834 A66E000C */  jal        InitMemMalloc
/* 14038 80023838 00000000 */   nop
/* 1403C 8002383C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14040 80023840 00000000 */   nop
/* 14044 80023844 628E0008 */  j          .L80023988
/* 14048 80023848 02000424 */   addiu     $a0, $zero, 0x2
jlabel .L8002384C
/* 1404C 8002384C F866010C */  jal        ClearJoyPad
/* 14050 80023850 00000000 */   nop
/* 14054 80023854 C46C010C */  jal        ScreenOn
/* 14058 80023858 00000000 */   nop
/* 1405C 8002385C A66E000C */  jal        InitMemMalloc
/* 14060 80023860 00000000 */   nop
/* 14064 80023864 9B3E010C */  jal        AllocIntroMovieRAM
/* 14068 80023868 00000000 */   nop
/* 1406C 8002386C 628E0008 */  j          .L80023988
/* 14070 80023870 05000424 */   addiu     $a0, $zero, 0x5
jlabel .L80023874
/* 14074 80023874 F866010C */  jal        ClearJoyPad
/* 14078 80023878 00000000 */   nop
/* 1407C 8002387C C46C010C */  jal        ScreenOn
/* 14080 80023880 00000000 */   nop
/* 14084 80023884 A66E000C */  jal        InitMemMalloc
/* 14088 80023888 00000000 */   nop
/* 1408C 8002388C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14090 80023890 00000000 */   nop
/* 14094 80023894 628E0008 */  j          .L80023988
/* 14098 80023898 09000424 */   addiu     $a0, $zero, 0x9
jlabel .L8002389C
/* 1409C 8002389C F866010C */  jal        ClearJoyPad
/* 140A0 800238A0 00000000 */   nop
/* 140A4 800238A4 C46C010C */  jal        ScreenOn
/* 140A8 800238A8 00000000 */   nop
/* 140AC 800238AC A66E000C */  jal        InitMemMalloc
/* 140B0 800238B0 00000000 */   nop
/* 140B4 800238B4 9B3E010C */  jal        AllocIntroMovieRAM
/* 140B8 800238B8 00000000 */   nop
/* 140BC 800238BC 628E0008 */  j          .L80023988
/* 140C0 800238C0 0D000424 */   addiu     $a0, $zero, 0xD
jlabel .L800238C4
/* 140C4 800238C4 F866010C */  jal        ClearJoyPad
/* 140C8 800238C8 00000000 */   nop
/* 140CC 800238CC C46C010C */  jal        ScreenOn
/* 140D0 800238D0 00000000 */   nop
/* 140D4 800238D4 A66E000C */  jal        InitMemMalloc
/* 140D8 800238D8 00000000 */   nop
/* 140DC 800238DC 9B3E010C */  jal        AllocIntroMovieRAM
/* 140E0 800238E0 00000000 */   nop
/* 140E4 800238E4 628E0008 */  j          .L80023988
/* 140E8 800238E8 10000424 */   addiu     $a0, $zero, 0x10
jlabel .L800238EC
/* 140EC 800238EC F866010C */  jal        ClearJoyPad
/* 140F0 800238F0 00000000 */   nop
/* 140F4 800238F4 C46C010C */  jal        ScreenOn
/* 140F8 800238F8 00000000 */   nop
/* 140FC 800238FC A66E000C */  jal        InitMemMalloc
/* 14100 80023900 00000000 */   nop
/* 14104 80023904 9B3E010C */  jal        AllocIntroMovieRAM
/* 14108 80023908 00000000 */   nop
/* 1410C 8002390C 628E0008 */  j          .L80023988
/* 14110 80023910 13000424 */   addiu     $a0, $zero, 0x13
jlabel .L80023914
/* 14114 80023914 F866010C */  jal        ClearJoyPad
/* 14118 80023918 00000000 */   nop
/* 1411C 8002391C C46C010C */  jal        ScreenOn
/* 14120 80023920 00000000 */   nop
/* 14124 80023924 A66E000C */  jal        InitMemMalloc
/* 14128 80023928 00000000 */   nop
/* 1412C 8002392C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14130 80023930 00000000 */   nop
/* 14134 80023934 628E0008 */  j          .L80023988
/* 14138 80023938 16000424 */   addiu     $a0, $zero, 0x16
jlabel .L8002393C
/* 1413C 8002393C F866010C */  jal        ClearJoyPad
/* 14140 80023940 00000000 */   nop
/* 14144 80023944 C46C010C */  jal        ScreenOn
/* 14148 80023948 00000000 */   nop
/* 1414C 8002394C A66E000C */  jal        InitMemMalloc
/* 14150 80023950 00000000 */   nop
/* 14154 80023954 9B3E010C */  jal        AllocIntroMovieRAM
/* 14158 80023958 00000000 */   nop
/* 1415C 8002395C 628E0008 */  j          .L80023988
/* 14160 80023960 19000424 */   addiu     $a0, $zero, 0x19
jlabel .L80023964
/* 14164 80023964 F866010C */  jal        ClearJoyPad
/* 14168 80023968 00000000 */   nop
/* 1416C 8002396C C46C010C */  jal        ScreenOn
/* 14170 80023970 00000000 */   nop
/* 14174 80023974 A66E000C */  jal        InitMemMalloc
/* 14178 80023978 00000000 */   nop
/* 1417C 8002397C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14180 80023980 00000000 */   nop
/* 14184 80023984 1D000424 */  addiu      $a0, $zero, 0x1D
.L80023988:
/* 14188 80023988 D63E010C */  jal        PlayFullScreenMovie
/* 1418C 8002398C 00000000 */   nop
/* 14190 80023990 9F3C010C */  jal        CheckMovieRequest
/* 14194 80023994 00000000 */   nop
/* 14198 80023998 913E010C */  jal        DeAllocIntroMovieRAM
/* 1419C 8002399C 00000000 */   nop
/* 141A0 800239A0 A66E000C */  jal        InitMemMalloc
/* 141A4 800239A4 00000000 */   nop
/* 141A8 800239A8 F866010C */  jal        ClearJoyPad
/* 141AC 800239AC 00000000 */   nop
/* 141B0 800239B0 01000324 */  addiu      $v1, $zero, 0x1
/* 141B4 800239B4 0980013C */  lui        $at, %hi(MovieDone)
/* 141B8 800239B8 F45123AC */  sw         $v1, %lo(MovieDone)($at)
.L800239BC:
/* 141BC 800239BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 141C0 800239C0 00000000 */  nop
/* 141C4 800239C4 0800E003 */  jr         $ra
/* 141C8 800239C8 1800BD27 */   addiu     $sp, $sp, 0x18
.size PlayPostMemcardMovie, . - PlayPostMemcardMovie
