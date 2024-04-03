.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel XA_AsyncCmdReady
/* 4EF48 8005E748 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4EF4C 8005E74C 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4EF50 8005E750 10000224 */  addiu      $v0, $zero, 0x10
/* 4EF54 8005E754 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 4EF58 8005E758 3800B2AF */  sw         $s2, 0x38($sp)
/* 4EF5C 8005E75C 3400B1AF */  sw         $s1, 0x34($sp)
/* 4EF60 8005E760 A1006210 */  beq        $v1, $v0, .L8005E9E8
/* 4EF64 8005E764 3000B0AF */   sw        $s0, 0x30($sp)
/* 4EF68 8005E768 01000224 */  addiu      $v0, $zero, 0x1
/* 4EF6C 8005E76C 91008214 */  bne        $a0, $v0, .L8005E9B4
/* 4EF70 8005E770 05000224 */   addiu     $v0, $zero, 0x5
/* 4EF74 8005E774 0A80023C */  lui        $v0, %hi(buffer)
/* 4EF78 8005E778 B06B5024 */  addiu      $s0, $v0, %lo(buffer)
/* 4EF7C 8005E77C 21200002 */  addu       $a0, $s0, $zero
/* 4EF80 8005E780 BBD3010C */  jal        CdGetSector
/* 4EF84 8005E784 08000524 */   addiu     $a1, $zero, 0x8
/* 4EF88 8005E788 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4EF8C 8005E78C 7811848F */  lw         $a0, %gp_rel(gCDCallback_status)($gp)
/* 4EF90 8005E790 1000628C */  lw         $v0, 0x10($v1)
/* 4EF94 8005E794 00000000 */  nop
/* 4EF98 8005E798 140062AC */  sw         $v0, 0x14($v1)
/* 4EF9C 8005E79C 0B000224 */  addiu      $v0, $zero, 0xB
/* 4EFA0 8005E7A0 0D008214 */  bne        $a0, $v0, .L8005E7D8
/* 4EFA4 8005E7A4 00000000 */   nop
/* 4EFA8 8005E7A8 BBD2010C */  jal        CdReadyCallback
/* 4EFAC 8005E7AC 21200000 */   addu      $a0, $zero, $zero
/* 4EFB0 8005E7B0 0680043C */  lui        $a0, %hi(XA_AsyncCmdSync)
/* 4EFB4 8005E7B4 B3D2010C */  jal        CdSyncCallback
/* 4EFB8 8005E7B8 DCE58424 */   addiu     $a0, $a0, %lo(XA_AsyncCmdSync)
/* 4EFBC 8005E7BC 09000424 */  addiu      $a0, $zero, 0x9
/* 4EFC0 8005E7C0 21280000 */  addu       $a1, $zero, $zero
/* 4EFC4 8005E7C4 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4EFC8 8005E7C8 C3D2010C */  jal        CdControl
/* 4EFCC 8005E7CC 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4EFD0 8005E7D0 7A7A0108 */  j          .L8005E9E8
/* 4EFD4 8005E7D4 00000000 */   nop
.L8005E7D8:
/* 4EFD8 8005E7D8 B7C8010C */  jal        CdPosToInt
/* 4EFDC 8005E7DC 21200002 */   addu      $a0, $s0, $zero
/* 4EFE0 8005E7E0 4017848F */  lw         $a0, %gp_rel(theXAFile)($gp)
/* 4EFE4 8005E7E4 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4EFE8 8005E7E8 701182AF */  sw         $v0, %gp_rel(currentPos)($gp)
/* 4EFEC 8005E7EC 100082AC */  sw         $v0, 0x10($a0)
/* 4EFF0 8005E7F0 05000224 */  addiu      $v0, $zero, 0x5
/* 4EFF4 8005E7F4 08006214 */  bne        $v1, $v0, .L8005E818
/* 4EFF8 8005E7F8 00000000 */   nop
/* 4EFFC 8005E7FC 0980023C */  lui        $v0, %hi(PauseFlag)
/* 4F000 8005E800 D84A428C */  lw         $v0, %lo(PauseFlag)($v0)
/* 4F004 8005E804 00000000 */  nop
/* 4F008 8005E808 03004014 */  bnez       $v0, .L8005E818
/* 4F00C 8005E80C 00000000 */   nop
/* 4F010 8005E810 2F4A010C */  jal        pxm_setspuXAvolume
/* 4F014 8005E814 7F000424 */   addiu     $a0, $zero, 0x7F
.L8005E818:
/* 4F018 8005E818 6C11848F */  lw         $a0, %gp_rel(cAddress)($gp)
/* 4F01C 8005E81C 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4F020 8005E820 0E008594 */  lhu        $a1, 0xE($a0)
/* 4F024 8005E824 06000224 */  addiu      $v0, $zero, 0x6
/* 4F028 8005E828 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F02C 8005E82C 741183AF */  sw         $v1, %gp_rel(gCDCallback_prevstatus)($gp)
/* 4F030 8005E830 0C008394 */  lhu        $v1, 0xC($a0)
/* 4F034 8005E834 007CA230 */  andi       $v0, $a1, 0x7C00
/* 4F038 8005E838 832A0200 */  sra        $a1, $v0, 10
/* 4F03C 8005E83C 60010224 */  addiu      $v0, $zero, 0x160
/* 4F040 8005E840 69006214 */  bne        $v1, $v0, .L8005E9E8
/* 4F044 8005E844 00000000 */   nop
/* 4F048 8005E848 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F04C 8005E84C 00000000 */  nop
/* 4F050 8005E850 0400628C */  lw         $v0, 0x4($v1)
/* 4F054 8005E854 00000000 */  nop
/* 4F058 8005E858 6300A214 */  bne        $a1, $v0, .L8005E9E8
/* 4F05C 8005E85C 00000000 */   nop
/* 4F060 8005E860 1800728C */  lw         $s2, 0x18($v1)
/* 4F064 8005E864 0C000224 */  addiu      $v0, $zero, 0xC
/* 4F068 8005E868 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F06C 8005E86C 01000224 */  addiu      $v0, $zero, 0x1
/* 4F070 8005E870 28004216 */  bne        $s2, $v0, .L8005E914
/* 4F074 8005E874 02000224 */   addiu     $v0, $zero, 0x2
/* 4F078 8005E878 09000424 */  addiu      $a0, $zero, 0x9
/* 4F07C 8005E87C 21280000 */  addu       $a1, $zero, $zero
/* 4F080 8005E880 0C80113C */  lui        $s1, %hi(gCdStatus)
/* 4F084 8005E884 80E83126 */  addiu      $s1, $s1, %lo(gCdStatus)
/* 4F088 8005E888 C3D2010C */  jal        CdControl
/* 4F08C 8005E88C 21302002 */   addu      $a2, $s1, $zero
/* 4F090 8005E890 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F094 8005E894 00000000 */  nop
/* 4F098 8005E898 0800628C */  lw         $v0, 0x8($v1)
/* 4F09C 8005E89C 21200000 */  addu       $a0, $zero, $zero
/* 4F0A0 8005E8A0 BBD2010C */  jal        CdReadyCallback
/* 4F0A4 8005E8A4 100062AC */   sw        $v0, 0x10($v1)
/* 4F0A8 8005E8A8 0680043C */  lui        $a0, %hi(XA_AsyncCmdSync)
/* 4F0AC 8005E8AC 0E000224 */  addiu      $v0, $zero, 0xE
/* 4F0B0 8005E8B0 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F0B4 8005E8B4 B3D2010C */  jal        CdSyncCallback
/* 4F0B8 8005E8B8 DCE58424 */   addiu     $a0, $a0, %lo(XA_AsyncCmdSync)
/* 4F0BC 8005E8BC 0D000424 */  addiu      $a0, $zero, 0xD
/* 4F0C0 8005E8C0 2800A527 */  addiu      $a1, $sp, 0x28
/* 4F0C4 8005E8C4 381782AF */  sw         $v0, %gp_rel(gCDCallback_oldsync_callback)($gp)
/* 4F0C8 8005E8C8 4017828F */  lw         $v0, %gp_rel(theXAFile)($gp)
/* 4F0CC 8005E8CC 2000B027 */  addiu      $s0, $sp, 0x20
/* 4F0D0 8005E8D0 080012A2 */  sb         $s2, 0x8($s0)
/* 4F0D4 8005E8D4 04004390 */  lbu        $v1, 0x4($v0)
/* 4F0D8 8005E8D8 21302002 */  addu       $a2, $s1, $zero
/* 4F0DC 8005E8DC 781192AF */  sw         $s2, %gp_rel(gCDCallback_status)($gp)
/* 4F0E0 8005E8E0 C3D2010C */  jal        CdControl
/* 4F0E4 8005E8E4 2900A3A3 */   sb        $v1, 0x29($sp)
/* 4F0E8 8005E8E8 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F0EC 8005E8EC 00000000 */  nop
/* 4F0F0 8005E8F0 1000648C */  lw         $a0, 0x10($v1)
/* 4F0F4 8005E8F4 4BD2010C */  jal        CdIntToPos
/* 4F0F8 8005E8F8 21280002 */   addu      $a1, $s0, $zero
/* 4F0FC 8005E8FC 1B000424 */  addiu      $a0, $zero, 0x1B
/* 4F100 8005E900 21280002 */  addu       $a1, $s0, $zero
/* 4F104 8005E904 C3D2010C */  jal        CdControl
/* 4F108 8005E908 21300000 */   addu      $a2, $zero, $zero
/* 4F10C 8005E90C 7A7A0108 */  j          .L8005E9E8
/* 4F110 8005E910 00000000 */   nop
.L8005E914:
/* 4F114 8005E914 1B004216 */  bne        $s2, $v0, .L8005E984
/* 4F118 8005E918 00000000 */   nop
/* 4F11C 8005E91C 2F4A010C */  jal        pxm_setspuXAvolume
/* 4F120 8005E920 21200000 */   addu      $a0, $zero, $zero
/* 4F124 8005E924 0980043C */  lui        $a0, %hi(MusicVolume)
/* 4F128 8005E928 9C49848C */  lw         $a0, %lo(MusicVolume)($a0)
/* 4F12C 8005E92C 1F7B010C */  jal        SetXA_Volume
/* 4F130 8005E930 00000000 */   nop
/* 4F134 8005E934 BBD2010C */  jal        CdReadyCallback
/* 4F138 8005E938 21200000 */   addu      $a0, $zero, $zero
/* 4F13C 8005E93C 0680043C */  lui        $a0, %hi(XA_AsyncCmdSync)
/* 4F140 8005E940 4017858F */  lw         $a1, %gp_rel(theXAFile)($gp)
/* 4F144 8005E944 DCE58424 */  addiu      $a0, $a0, %lo(XA_AsyncCmdSync)
/* 4F148 8005E948 1000A38C */  lw         $v1, 0x10($a1)
/* 4F14C 8005E94C 0D000224 */  addiu      $v0, $zero, 0xD
/* 4F150 8005E950 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F154 8005E954 B3D2010C */  jal        CdSyncCallback
/* 4F158 8005E958 1400A3AC */   sw        $v1, 0x14($a1)
/* 4F15C 8005E95C 09000424 */  addiu      $a0, $zero, 0x9
/* 4F160 8005E960 21280000 */  addu       $a1, $zero, $zero
/* 4F164 8005E964 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F168 8005E968 381782AF */  sw         $v0, %gp_rel(gCDCallback_oldsync_callback)($gp)
/* 4F16C 8005E96C C3D2010C */  jal        CdControl
/* 4F170 8005E970 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4F174 8005E974 C168000C */  jal        ClearPlayerWait
/* 4F178 8005E978 00000000 */   nop
/* 4F17C 8005E97C 7A7A0108 */  j          .L8005E9E8
/* 4F180 8005E980 00000000 */   nop
.L8005E984:
/* 4F184 8005E984 BBD2010C */  jal        CdReadyCallback
/* 4F188 8005E988 21200000 */   addu      $a0, $zero, $zero
/* 4F18C 8005E98C 09000424 */  addiu      $a0, $zero, 0x9
/* 4F190 8005E990 21280000 */  addu       $a1, $zero, $zero
/* 4F194 8005E994 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F198 8005E998 C3D2010C */  jal        CdControl
/* 4F19C 8005E99C 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4F1A0 8005E9A0 781180AF */  sw         $zero, %gp_rel(gCDCallback_status)($gp)
/* 4F1A4 8005E9A4 C168000C */  jal        ClearPlayerWait
/* 4F1A8 8005E9A8 00000000 */   nop
/* 4F1AC 8005E9AC 7A7A0108 */  j          .L8005E9E8
/* 4F1B0 8005E9B0 00000000 */   nop
.L8005E9B4:
/* 4F1B4 8005E9B4 0C008214 */  bne        $a0, $v0, .L8005E9E8
/* 4F1B8 8005E9B8 2000B027 */   addiu     $s0, $sp, 0x20
/* 4F1BC 8005E9BC 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F1C0 8005E9C0 00000000 */  nop
/* 4F1C4 8005E9C4 1000648C */  lw         $a0, 0x10($v1)
/* 4F1C8 8005E9C8 0A000224 */  addiu      $v0, $zero, 0xA
/* 4F1CC 8005E9CC 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F1D0 8005E9D0 4BD2010C */  jal        CdIntToPos
/* 4F1D4 8005E9D4 21280002 */   addu      $a1, $s0, $zero
/* 4F1D8 8005E9D8 1B000424 */  addiu      $a0, $zero, 0x1B
/* 4F1DC 8005E9DC 21280002 */  addu       $a1, $s0, $zero
/* 4F1E0 8005E9E0 C3D2010C */  jal        CdControl
/* 4F1E4 8005E9E4 21300000 */   addu      $a2, $zero, $zero
.L8005E9E8:
/* 4F1E8 8005E9E8 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 4F1EC 8005E9EC 3800B28F */  lw         $s2, 0x38($sp)
/* 4F1F0 8005E9F0 3400B18F */  lw         $s1, 0x34($sp)
/* 4F1F4 8005E9F4 3000B08F */  lw         $s0, 0x30($sp)
/* 4F1F8 8005E9F8 0800E003 */  jr         $ra
/* 4F1FC 8005E9FC 4000BD27 */   addiu     $sp, $sp, 0x40
.size XA_AsyncCmdReady, . - XA_AsyncCmdReady
