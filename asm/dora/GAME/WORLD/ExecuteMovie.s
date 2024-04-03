.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ExecuteMovie
/* 14EBC 800246BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 14EC0 800246C0 1000B0AF */  sw         $s0, 0x10($sp)
/* 14EC4 800246C4 1400BFAF */  sw         $ra, 0x14($sp)
/* 14EC8 800246C8 F866010C */  jal        ClearJoyPad
/* 14ECC 800246CC 21808000 */   addu      $s0, $a0, $zero
/* 14ED0 800246D0 C46C010C */  jal        ScreenOn
/* 14ED4 800246D4 00000000 */   nop
/* 14ED8 800246D8 A66E000C */  jal        InitMemMalloc
/* 14EDC 800246DC 00000000 */   nop
/* 14EE0 800246E0 9B3E010C */  jal        AllocIntroMovieRAM
/* 14EE4 800246E4 00000000 */   nop
/* 14EE8 800246E8 D63E010C */  jal        PlayFullScreenMovie
/* 14EEC 800246EC 21200002 */   addu      $a0, $s0, $zero
/* 14EF0 800246F0 9F3C010C */  jal        CheckMovieRequest
/* 14EF4 800246F4 00000000 */   nop
/* 14EF8 800246F8 913E010C */  jal        DeAllocIntroMovieRAM
/* 14EFC 800246FC 00000000 */   nop
/* 14F00 80024700 A66E000C */  jal        InitMemMalloc
/* 14F04 80024704 00000000 */   nop
/* 14F08 80024708 F866010C */  jal        ClearJoyPad
/* 14F0C 8002470C 00000000 */   nop
/* 14F10 80024710 1400BF8F */  lw         $ra, 0x14($sp)
/* 14F14 80024714 1000B08F */  lw         $s0, 0x10($sp)
/* 14F18 80024718 01000324 */  addiu      $v1, $zero, 0x1
/* 14F1C 8002471C 0980013C */  lui        $at, %hi(MovieDone)
/* 14F20 80024720 F45123AC */  sw         $v1, %lo(MovieDone)($at)
/* 14F24 80024724 0800E003 */  jr         $ra
/* 14F28 80024728 1800BD27 */   addiu     $sp, $sp, 0x18
.size ExecuteMovie, . - ExecuteMovie
