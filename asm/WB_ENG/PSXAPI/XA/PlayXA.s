.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayXA
/* 4F310 8005EB10 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 4F314 8005EB14 7400B1AF */  sw         $s1, 0x74($sp)
/* 4F318 8005EB18 21888000 */  addu       $s1, $a0, $zero
/* 4F31C 8005EB1C 7F000424 */  addiu      $a0, $zero, 0x7F
/* 4F320 8005EB20 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 4F324 8005EB24 7800B2AF */  sw         $s2, 0x78($sp)
/* 4F328 8005EB28 2F4A010C */  jal        pxm_setspuXAvolume
/* 4F32C 8005EB2C 7000B0AF */   sw        $s0, 0x70($sp)
/* 4F330 8005EB30 0E000424 */  addiu      $a0, $zero, 0xE
/* 4F334 8005EB34 5000A527 */  addiu      $a1, $sp, 0x50
/* 4F338 8005EB38 0C80023C */  lui        $v0, %hi(gCdStatus)
/* 4F33C 8005EB3C 80E85224 */  addiu      $s2, $v0, %lo(gCdStatus)
/* 4F340 8005EB40 21304002 */  addu       $a2, $s2, $zero
/* 4F344 8005EB44 E8000224 */  addiu      $v0, $zero, 0xE8
/* 4F348 8005EB48 C3D2010C */  jal        CdControl
/* 4F34C 8005EB4C 5000A2A3 */   sb        $v0, 0x50($sp)
/* 4F350 8005EB50 1800A427 */  addiu      $a0, $sp, 0x18
/* 4F354 8005EB54 6800A627 */  addiu      $a2, $sp, 0x68
/* 4F358 8005EB58 0000258E */  lw         $a1, 0x0($s1)
/* 4F35C 8005EB5C 7456010C */  jal        CDFile_CdSearchFileX
/* 4F360 8005EB60 6C00A727 */   addiu     $a3, $sp, 0x6C
/* 4F364 8005EB64 3000B027 */  addiu      $s0, $sp, 0x30
/* 4F368 8005EB68 6800A48F */  lw         $a0, 0x68($sp)
/* 4F36C 8005EB6C 3756010C */  jal        _ByteToPos
/* 4F370 8005EB70 21280002 */   addu      $a1, $s0, $zero
/* 4F374 8005EB74 B7C8010C */  jal        CdPosToInt
/* 4F378 8005EB78 21200002 */   addu      $a0, $s0, $zero
/* 4F37C 8005EB7C 6C00A48F */  lw         $a0, 0x6C($sp)
/* 4F380 8005EB80 21184000 */  addu       $v1, $v0, $zero
/* 4F384 8005EB84 080023AE */  sw         $v1, 0x8($s1)
/* 4F388 8005EB88 100023AE */  sw         $v1, 0x10($s1)
/* 4F38C 8005EB8C 02008104 */  bgez       $a0, .L8005EB98
/* 4F390 8005EB90 140023AE */   sw        $v1, 0x14($s1)
/* 4F394 8005EB94 FF078424 */  addiu      $a0, $a0, 0x7FF
.L8005EB98:
/* 4F398 8005EB98 C3120400 */  sra        $v0, $a0, 11
/* 4F39C 8005EB9C 21106200 */  addu       $v0, $v1, $v0
/* 4F3A0 8005EBA0 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4F3A4 8005EBA4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4F3A8 8005EBA8 11006010 */  beqz       $v1, .L8005EBF0
/* 4F3AC 8005EBAC 0C0022AE */   sw        $v0, 0xC($s1)
/* 4F3B0 8005EBB0 F3FF6224 */  addiu      $v0, $v1, -0xD
/* 4F3B4 8005EBB4 0200422C */  sltiu      $v0, $v0, 0x2
/* 4F3B8 8005EBB8 07004014 */  bnez       $v0, .L8005EBD8
/* 4F3BC 8005EBBC 0F000224 */   addiu     $v0, $zero, 0xF
/* 4F3C0 8005EBC0 01000224 */  addiu      $v0, $zero, 0x1
/* 4F3C4 8005EBC4 03006210 */  beq        $v1, $v0, .L8005EBD4
/* 4F3C8 8005EBC8 03000224 */   addiu     $v0, $zero, 0x3
/* 4F3CC 8005EBCC 05006214 */  bne        $v1, $v0, .L8005EBE4
/* 4F3D0 8005EBD0 0B000224 */   addiu     $v0, $zero, 0xB
.L8005EBD4:
/* 4F3D4 8005EBD4 0F000224 */  addiu      $v0, $zero, 0xF
.L8005EBD8:
/* 4F3D8 8005EBD8 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F3DC 8005EBDC 187B0108 */  j          .L8005EC60
/* 4F3E0 8005EBE0 00000000 */   nop
.L8005EBE4:
/* 4F3E4 8005EBE4 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F3E8 8005EBE8 187B0108 */  j          .L8005EC60
/* 4F3EC 8005EBEC 00000000 */   nop
.L8005EBF0:
/* 4F3F0 8005EBF0 0680043C */  lui        $a0, %hi(XA_AsyncCmdSync)
/* 4F3F4 8005EBF4 03000224 */  addiu      $v0, $zero, 0x3
/* 4F3F8 8005EBF8 401791AF */  sw         $s1, %gp_rel(theXAFile)($gp)
/* 4F3FC 8005EBFC 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F400 8005EC00 B3D2010C */  jal        CdSyncCallback
/* 4F404 8005EC04 DCE58424 */   addiu     $a0, $a0, %lo(XA_AsyncCmdSync)
/* 4F408 8005EC08 0D000424 */  addiu      $a0, $zero, 0xD
/* 4F40C 8005EC0C 6000A527 */  addiu      $a1, $sp, 0x60
/* 4F410 8005EC10 21304002 */  addu       $a2, $s2, $zero
/* 4F414 8005EC14 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F418 8005EC18 5800B027 */  addiu      $s0, $sp, 0x58
/* 4F41C 8005EC1C 381782AF */  sw         $v0, %gp_rel(gCDCallback_oldsync_callback)($gp)
/* 4F420 8005EC20 01000224 */  addiu      $v0, $zero, 0x1
/* 4F424 8005EC24 080002A2 */  sb         $v0, 0x8($s0)
/* 4F428 8005EC28 04006790 */  lbu        $a3, 0x4($v1)
/* 4F42C 8005EC2C 01000224 */  addiu      $v0, $zero, 0x1
/* 4F430 8005EC30 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F434 8005EC34 C3D2010C */  jal        CdControl
/* 4F438 8005EC38 6100A7A3 */   sb        $a3, 0x61($sp)
/* 4F43C 8005EC3C 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F440 8005EC40 00000000 */  nop
/* 4F444 8005EC44 1000648C */  lw         $a0, 0x10($v1)
/* 4F448 8005EC48 4BD2010C */  jal        CdIntToPos
/* 4F44C 8005EC4C 21280002 */   addu      $a1, $s0, $zero
/* 4F450 8005EC50 1B000424 */  addiu      $a0, $zero, 0x1B
/* 4F454 8005EC54 21280002 */  addu       $a1, $s0, $zero
/* 4F458 8005EC58 C3D2010C */  jal        CdControl
/* 4F45C 8005EC5C 21300000 */   addu      $a2, $zero, $zero
.L8005EC60:
/* 4F460 8005EC60 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 4F464 8005EC64 7800B28F */  lw         $s2, 0x78($sp)
/* 4F468 8005EC68 7400B18F */  lw         $s1, 0x74($sp)
/* 4F46C 8005EC6C 7000B08F */  lw         $s0, 0x70($sp)
/* 4F470 8005EC70 01000224 */  addiu      $v0, $zero, 0x1
/* 4F474 8005EC74 0800E003 */  jr         $ra
/* 4F478 8005EC78 8000BD27 */   addiu     $sp, $sp, 0x80
.size PlayXA, . - PlayXA
