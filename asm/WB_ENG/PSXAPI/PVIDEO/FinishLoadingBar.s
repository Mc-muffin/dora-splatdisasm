.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FinishLoadingBar
/* 4B6A8 8005AEA8 4011828F */  lw         $v0, %gp_rel(gShowingLoadingBar)($gp)
/* 4B6AC 8005AEAC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4B6B0 8005AEB0 1800BFAF */  sw         $ra, 0x18($sp)
/* 4B6B4 8005AEB4 1400B1AF */  sw         $s1, 0x14($sp)
/* 4B6B8 8005AEB8 3A004010 */  beqz       $v0, .L8005AFA4
/* 4B6BC 8005AEBC 1000B0AF */   sw        $s0, 0x10($sp)
/* 4B6C0 8005AEC0 3811828F */  lw         $v0, %gp_rel(LOADING_W)($gp)
/* 4B6C4 8005AEC4 21800000 */  addu       $s0, $zero, $zero
/* 4B6C8 8005AEC8 401180AF */  sw         $zero, %gp_rel(gShowingLoadingBar)($gp)
/* 4B6CC 8005AECC 00110200 */  sll        $v0, $v0, 4
/* 4B6D0 8005AED0 2C1182AF */  sw         $v0, %gp_rel(rightEdge)($gp)
/* 4B6D4 8005AED4 0A80113C */  lui        $s1, %hi(pxm_mix)
.L8005AED8:
/* 4B6D8 8005AED8 2800022A */  slti       $v0, $s0, 0x28
/* 4B6DC 8005AEDC 15004010 */  beqz       $v0, .L8005AF34
/* 4B6E0 8005AEE0 00000000 */   nop
/* 4B6E4 8005AEE4 EBD6010C */  jal        VSync
/* 4B6E8 8005AEE8 0A000424 */   addiu     $a0, $zero, 0xA
/* 4B6EC 8005AEEC 4411838F */  lw         $v1, %gp_rel(LoadingVol)($gp)
/* 4B6F0 8005AEF0 00000000 */  nop
/* 4B6F4 8005AEF4 FCFF6324 */  addiu      $v1, $v1, -0x4
/* 4B6F8 8005AEF8 441183AF */  sw         $v1, %gp_rel(LoadingVol)($gp)
/* 4B6FC 8005AEFC 02006104 */  bgez       $v1, .L8005AF08
/* 4B700 8005AF00 00000000 */   nop
/* 4B704 8005AF04 441180AF */  sw         $zero, %gp_rel(LoadingVol)($gp)
.L8005AF08:
/* 4B708 8005AF08 4411828F */  lw         $v0, %gp_rel(LoadingVol)($gp)
/* 4B70C 8005AF0C 00000000 */  nop
/* 4B710 8005AF10 C0210200 */  sll        $a0, $v0, 7
/* 4B714 8005AF14 21208200 */  addu       $a0, $a0, $v0
/* 4B718 8005AF18 00240400 */  sll        $a0, $a0, 16
/* 4B71C 8005AF1C 2B3D010C */  jal        mov_setvolume
/* 4B720 8005AF20 03240400 */   sra       $a0, $a0, 16
/* 4B724 8005AF24 4411838F */  lw         $v1, %gp_rel(LoadingVol)($gp)
/* 4B728 8005AF28 00000000 */  nop
/* 4B72C 8005AF2C EAFF6014 */  bnez       $v1, .L8005AED8
/* 4B730 8005AF30 01001026 */   addiu     $s0, $s0, 0x1
.L8005AF34:
/* 4B734 8005AF34 F010828F */  lw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4B738 8005AF38 00000000 */  nop
/* 4B73C 8005AF3C 09004014 */  bnez       $v0, .L8005AF64
/* 4B740 8005AF40 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 4B744 8005AF44 01000224 */  addiu      $v0, $zero, 0x1
/* 4B748 8005AF48 0B80033C */  lui        $v1, %hi(gDoubleBuffer)
/* 4B74C 8005AF4C E81082AF */  sw         $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4B750 8005AF50 E8108297 */  lhu        $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4B754 8005AF54 78B96324 */  addiu      $v1, $v1, %lo(gDoubleBuffer)
/* 4B758 8005AF58 980062A0 */  sb         $v0, 0x98($v1)
/* 4B75C 8005AF5C DC6B0108 */  j          .L8005AF70
/* 4B760 8005AF60 180062A0 */   sb        $v0, 0x18($v1)
.L8005AF64:
/* 4B764 8005AF64 F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4B768 8005AF68 EBD6010C */  jal        VSync
/* 4B76C 8005AF6C 21200000 */   addu      $a0, $zero, $zero
.L8005AF70:
/* 4B770 8005AF70 9769010C */  jal        updateScreen
/* 4B774 8005AF74 00000000 */   nop
/* 4B778 8005AF78 0980043C */  lui        $a0, %hi(atv)
/* 4B77C 8005AF7C 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 4B780 8005AF80 0980053C */  lui        $a1, %hi(MusicVolume)
/* 4B784 8005AF84 9C49A58C */  lw         $a1, %lo(MusicVolume)($a1)
/* 4B788 8005AF88 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 4B78C 8005AF8C A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 4B790 8005AF90 C87F2226 */  addiu      $v0, $s1, %lo(pxm_mix)
/* 4B794 8005AF94 C87F25AE */  sw         $a1, %lo(pxm_mix)($s1)
/* 4B798 8005AF98 040043AC */  sw         $v1, 0x4($v0)
/* 4B79C 8005AF9C 2BCD000C */  jal        cdSetVol
/* 4B7A0 8005AFA0 00000000 */   nop
.L8005AFA4:
/* 4B7A4 8005AFA4 1800BF8F */  lw         $ra, 0x18($sp)
/* 4B7A8 8005AFA8 1400B18F */  lw         $s1, 0x14($sp)
/* 4B7AC 8005AFAC 1000B08F */  lw         $s0, 0x10($sp)
/* 4B7B0 8005AFB0 0800E003 */  jr         $ra
/* 4B7B4 8005AFB4 2000BD27 */   addiu     $sp, $sp, 0x20
.size FinishLoadingBar, . - FinishLoadingBar
