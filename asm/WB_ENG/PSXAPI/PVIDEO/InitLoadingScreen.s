.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitLoadingScreen
/* 4B8C4 8005B0C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4B8C8 8005B0C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B8CC 8005B0CC 21808000 */  addu       $s0, $a0, $zero
/* 4B8D0 8005B0D0 1800BFAF */  sw         $ra, 0x18($sp)
/* 4B8D4 8005B0D4 08000016 */  bnez       $s0, .L8005B0F8
/* 4B8D8 8005B0D8 1400B1AF */   sw        $s1, 0x14($sp)
/* 4B8DC 8005B0DC 01000424 */  addiu      $a0, $zero, 0x1
/* 4B8E0 8005B0E0 0980103C */  lui        $s0, %hi(LoadingScreens)
/* 4B8E4 8005B0E4 D140010C */  jal        u32Random
/* 4B8E8 8005B0E8 98821026 */   addiu     $s0, $s0, %lo(LoadingScreens)
/* 4B8EC 8005B0EC 80100200 */  sll        $v0, $v0, 2
/* 4B8F0 8005B0F0 21105000 */  addu       $v0, $v0, $s0
/* 4B8F4 8005B0F4 0000508C */  lw         $s0, 0x0($v0)
.L8005B0F8:
/* 4B8F8 8005B0F8 EBD6010C */  jal        VSync
/* 4B8FC 8005B0FC 21200000 */   addu      $a0, $zero, $zero
/* 4B900 8005B100 21200000 */  addu       $a0, $zero, $zero
/* 4B904 8005B104 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4B908 8005B108 EBD6010C */  jal        VSync
/* 4B90C 8005B10C 00000000 */   nop
/* 4B910 8005B110 0B80033C */  lui        $v1, %hi(gDoubleBuffer)
/* 4B914 8005B114 21886000 */  addu       $s1, $v1, $zero
/* 4B918 8005B118 06000224 */  addiu      $v0, $zero, 0x6
/* 4B91C 8005B11C E81080AF */  sw         $zero, %gp_rel(UpdateScreenFlag)($gp)
/* 4B920 8005B120 E8108497 */  lhu        $a0, %gp_rel(UpdateScreenFlag)($gp)
/* 4B924 8005B124 78B96324 */  addiu      $v1, $v1, %lo(gDoubleBuffer)
/* 4B928 8005B128 EC1080AF */  sw         $zero, %gp_rel(UpdateScreenFlag2)($gp)
/* 4B92C 8005B12C F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4B930 8005B130 980064A0 */  sb         $a0, 0x98($v1)
/* 4B934 8005B134 180064A0 */  sb         $a0, 0x18($v1)
.L8005B138:
/* 4B938 8005B138 36DB010C */  jal        DrawSync
/* 4B93C 8005B13C 01000424 */   addiu     $a0, $zero, 0x1
/* 4B940 8005B140 FDFF4014 */  bnez       $v0, .L8005B138
/* 4B944 8005B144 00000000 */   nop
/* 4B948 8005B148 5D67010C */  jal        InitOrderingTables
/* 4B94C 8005B14C 00000000 */   nop
/* 4B950 8005B150 10DB010C */  jal        SetDispMask
/* 4B954 8005B154 21200000 */   addu      $a0, $zero, $zero
/* 4B958 8005B158 21200002 */  addu       $a0, $s0, $zero
/* 4B95C 8005B15C 21280000 */  addu       $a1, $zero, $zero
/* 4B960 8005B160 EE6B010C */  jal        LoadGraphicIntoFrameBufferX
/* 4B964 8005B164 01000624 */   addiu     $a2, $zero, 0x1
/* 4B968 8005B168 EBD6010C */  jal        VSync
/* 4B96C 8005B16C 21200000 */   addu      $a0, $zero, $zero
/* 4B970 8005B170 21200000 */  addu       $a0, $zero, $zero
/* 4B974 8005B174 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4B978 8005B178 EBD6010C */  jal        VSync
/* 4B97C 8005B17C 00000000 */   nop
/* 4B980 8005B180 E81080AF */  sw         $zero, %gp_rel(UpdateScreenFlag)($gp)
/* 4B984 8005B184 E8108397 */  lhu        $v1, %gp_rel(UpdateScreenFlag)($gp)
/* 4B988 8005B188 06000224 */  addiu      $v0, $zero, 0x6
/* 4B98C 8005B18C F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4B990 8005B190 78B92226 */  addiu      $v0, $s1, %lo(gDoubleBuffer)
/* 4B994 8005B194 EC1080AF */  sw         $zero, %gp_rel(UpdateScreenFlag2)($gp)
/* 4B998 8005B198 980043A0 */  sb         $v1, 0x98($v0)
/* 4B99C 8005B19C 180043A0 */  sb         $v1, 0x18($v0)
.L8005B1A0:
/* 4B9A0 8005B1A0 36DB010C */  jal        DrawSync
/* 4B9A4 8005B1A4 01000424 */   addiu     $a0, $zero, 0x1
/* 4B9A8 8005B1A8 FDFF4014 */  bnez       $v0, .L8005B1A0
/* 4B9AC 8005B1AC 00000000 */   nop
/* 4B9B0 8005B1B0 5D67010C */  jal        InitOrderingTables
/* 4B9B4 8005B1B4 00000000 */   nop
/* 4B9B8 8005B1B8 E8108293 */  lbu        $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4B9BC 8005B1BC F010838F */  lw         $v1, %gp_rel(RestartScreenCount)($gp)
/* 4B9C0 8005B1C0 78B92426 */  addiu      $a0, $s1, %lo(gDoubleBuffer)
/* 4B9C4 8005B1C4 980082A0 */  sb         $v0, 0x98($a0)
/* 4B9C8 8005B1C8 08006014 */  bnez       $v1, .L8005B1EC
/* 4B9CC 8005B1CC 180082A0 */   sb        $v0, 0x18($a0)
/* 4B9D0 8005B1D0 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D4 8005B1D4 E81082AF */  sw         $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4B9D8 8005B1D8 E8108397 */  lhu        $v1, %gp_rel(UpdateScreenFlag)($gp)
/* 4B9DC 8005B1DC 00000000 */  nop
/* 4B9E0 8005B1E0 980083A0 */  sb         $v1, 0x98($a0)
/* 4B9E4 8005B1E4 7F6C0108 */  j          .L8005B1FC
/* 4B9E8 8005B1E8 180083A0 */   sb        $v1, 0x18($a0)
.L8005B1EC:
/* 4B9EC 8005B1EC FFFF6224 */  addiu      $v0, $v1, -0x1
/* 4B9F0 8005B1F0 F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4B9F4 8005B1F4 EBD6010C */  jal        VSync
/* 4B9F8 8005B1F8 21200000 */   addu      $a0, $zero, $zero
.L8005B1FC:
/* 4B9FC 8005B1FC 9769010C */  jal        updateScreen
/* 4BA00 8005B200 00000000 */   nop
/* 4BA04 8005B204 10DB010C */  jal        SetDispMask
/* 4BA08 8005B208 01000424 */   addiu     $a0, $zero, 0x1
/* 4BA0C 8005B20C DE6A010C */  jal        InitLoadingBar
/* 4BA10 8005B210 00000000 */   nop
/* 4BA14 8005B214 9769010C */  jal        updateScreen
/* 4BA18 8005B218 00000000 */   nop
/* 4BA1C 8005B21C 0680043C */  lui        $a0, %hi(UpdateLoadingBar)
/* 4BA20 8005B220 9BD7010C */  jal        VSyncCallback
/* 4BA24 8005B224 C0AC8424 */   addiu     $a0, $a0, %lo(UpdateLoadingBar)
/* 4BA28 8005B228 EBD6010C */  jal        VSync
/* 4BA2C 8005B22C 21200000 */   addu      $a0, $zero, $zero
/* 4BA30 8005B230 10DB010C */  jal        SetDispMask
/* 4BA34 8005B234 01000424 */   addiu     $a0, $zero, 0x1
/* 4BA38 8005B238 1800BF8F */  lw         $ra, 0x18($sp)
/* 4BA3C 8005B23C 1400B18F */  lw         $s1, 0x14($sp)
/* 4BA40 8005B240 1000B08F */  lw         $s0, 0x10($sp)
/* 4BA44 8005B244 0800E003 */  jr         $ra
/* 4BA48 8005B248 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitLoadingScreen, . - InitLoadingScreen
