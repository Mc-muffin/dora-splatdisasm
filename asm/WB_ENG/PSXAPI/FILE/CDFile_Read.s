.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_Read
/* 47210 80056A10 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47214 80056A14 21408000 */  addu       $t0, $a0, $zero
/* 47218 80056A18 2150A000 */  addu       $t2, $a1, $zero
/* 4721C 80056A1C 2148C000 */  addu       $t1, $a2, $zero
/* 47220 80056A20 1400B1AF */  sw         $s1, 0x14($sp)
/* 47224 80056A24 0980113C */  lui        $s1, %hi(gCDCallback)
/* 47228 80056A28 21182002 */  addu       $v1, $s1, $zero
/* 4722C 80056A2C 1800BFAF */  sw         $ra, 0x18($sp)
/* 47230 80056A30 1000B0AF */  sw         $s0, 0x10($sp)
.L80056A34:
/* 47234 80056A34 5C82628C */  lw         $v0, %lo(gCDCallback)($v1)
/* 47238 80056A38 00000000 */  nop
/* 4723C 80056A3C FDFF4014 */  bnez       $v0, .L80056A34
/* 47240 80056A40 0B80043C */   lui       $a0, %hi(gCDFileInfo)
/* 47244 80056A44 78AA8424 */  addiu      $a0, $a0, %lo(gCDFileInfo)
/* 47248 80056A48 80100800 */  sll        $v0, $t0, 2
/* 4724C 80056A4C 21104800 */  addu       $v0, $v0, $t0
/* 47250 80056A50 80100200 */  sll        $v0, $v0, 2
/* 47254 80056A54 21284400 */  addu       $a1, $v0, $a0
/* 47258 80056A58 02000324 */  addiu      $v1, $zero, 0x2
/* 4725C 80056A5C 5C822626 */  addiu      $a2, $s1, %lo(gCDCallback)
/* 47260 80056A60 10008424 */  addiu      $a0, $a0, 0x10
/* 47264 80056A64 21104400 */  addu       $v0, $v0, $a0
/* 47268 80056A68 0000A3AC */  sw         $v1, 0x0($a1)
/* 4726C 80056A6C 0400C9AC */  sw         $t1, 0x4($a2)
/* 47270 80056A70 0800C0AC */  sw         $zero, 0x8($a2)
/* 47274 80056A74 0000448C */  lw         $a0, 0x0($v0)
/* 47278 80056A78 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 4727C 80056A7C 1400C7AC */  sw         $a3, 0x14($a2)
/* 47280 80056A80 1000C8AC */  sw         $t0, 0x10($a2)
/* 47284 80056A84 3756010C */  jal        _ByteToPos
/* 47288 80056A88 2000CAAC */   sw        $t2, 0x20($a2)
/* 4728C 80056A8C 01000424 */  addiu      $a0, $zero, 0x1
.L80056A90:
/* 47290 80056A90 ABD2010C */  jal        CdReady
/* 47294 80056A94 21280000 */   addu      $a1, $zero, $zero
/* 47298 80056A98 FDFF4014 */  bnez       $v0, .L80056A90
/* 4729C 80056A9C 01000424 */   addiu     $a0, $zero, 0x1
/* 472A0 80056AA0 0E000424 */  addiu      $a0, $zero, 0xE
/* 472A4 80056AA4 68168527 */  addiu      $a1, $gp, %gp_rel(gCurrentCDSpeed)
/* 472A8 80056AA8 0B80023C */  lui        $v0, %hi(gCdStatus_dup)
/* 472AC 80056AAC 50AA5024 */  addiu      $s0, $v0, %lo(gCdStatus_dup)
/* 472B0 80056AB0 801F013C */  lui        $at, (0x1F801800 >> 16)
/* 472B4 80056AB4 001820A0 */  sb         $zero, (0x1F801800 & 0xFFFF)($at)
/* 472B8 80056AB8 801F013C */  lui        $at, (0x1F801803 >> 16)
/* 472BC 80056ABC 031820A0 */  sb         $zero, (0x1F801803 & 0xFFFF)($at)
/* 472C0 80056AC0 C3D2010C */  jal        CdControl
/* 472C4 80056AC4 21300002 */   addu      $a2, $s0, $zero
/* 472C8 80056AC8 08004014 */  bnez       $v0, .L80056AEC
/* 472CC 80056ACC 5C822226 */   addiu     $v0, $s1, %lo(gCDCallback)
/* 472D0 80056AD0 1C00448C */  lw         $a0, 0x1C($v0)
/* 472D4 80056AD4 B3D2010C */  jal        CdSyncCallback
/* 472D8 80056AD8 00000000 */   nop
/* 472DC 80056ADC FEFF0224 */  addiu      $v0, $zero, -0x2
/* 472E0 80056AE0 5C8220AE */  sw         $zero, %lo(gCDCallback)($s1)
/* 472E4 80056AE4 D05A0108 */  j          .L80056B40
/* 472E8 80056AE8 00000000 */   nop
.L80056AEC:
/* 472EC 80056AEC EBD6010C */  jal        VSync
/* 472F0 80056AF0 03000424 */   addiu     $a0, $zero, 0x3
/* 472F4 80056AF4 0580043C */  lui        $a0, %hi(CDFile_AsyncCmdSync)
/* 472F8 80056AF8 B3D2010C */  jal        CdSyncCallback
/* 472FC 80056AFC 146F8424 */   addiu     $a0, $a0, %lo(CDFile_AsyncCmdSync)
/* 47300 80056B00 06000424 */  addiu      $a0, $zero, 0x6
/* 47304 80056B04 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 47308 80056B08 21300002 */  addu       $a2, $s0, $zero
/* 4730C 80056B0C 5C823026 */  addiu      $s0, $s1, %lo(gCDCallback)
/* 47310 80056B10 1C0002AE */  sw         $v0, 0x1C($s0)
/* 47314 80056B14 01000224 */  addiu      $v0, $zero, 0x1
/* 47318 80056B18 5C8222AE */  sw         $v0, %lo(gCDCallback)($s1)
/* 4731C 80056B1C C3D2010C */  jal        CdControl
/* 47320 80056B20 00000000 */   nop
/* 47324 80056B24 06004014 */  bnez       $v0, .L80056B40
/* 47328 80056B28 00000000 */   nop
/* 4732C 80056B2C 1C00048E */  lw         $a0, 0x1C($s0)
/* 47330 80056B30 B3D2010C */  jal        CdSyncCallback
/* 47334 80056B34 00000000 */   nop
/* 47338 80056B38 FEFF0224 */  addiu      $v0, $zero, -0x2
/* 4733C 80056B3C 5C8220AE */  sw         $zero, %lo(gCDCallback)($s1)
.L80056B40:
/* 47340 80056B40 1800BF8F */  lw         $ra, 0x18($sp)
/* 47344 80056B44 1400B18F */  lw         $s1, 0x14($sp)
/* 47348 80056B48 1000B08F */  lw         $s0, 0x10($sp)
/* 4734C 80056B4C 0800E003 */  jr         $ra
/* 47350 80056B50 2000BD27 */   addiu     $sp, $sp, 0x20
.size CDFile_Read, . - CDFile_Read
