.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResumeXA
/* 4F200 8005EA00 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4F204 8005EA04 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4F208 8005EA08 10000224 */  addiu      $v0, $zero, 0x10
/* 4F20C 8005EA0C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4F210 8005EA10 21006214 */  bne        $v1, $v0, .L8005EA98
/* 4F214 8005EA14 2800B0AF */   sw        $s0, 0x28($sp)
/* 4F218 8005EA18 0680043C */  lui        $a0, %hi(XA_AsyncCmdSync)
/* 4F21C 8005EA1C 03000324 */  addiu      $v1, $zero, 0x3
/* 4F220 8005EA20 0C80023C */  lui        $v0, %hi(XAFiles + 0x1C)
/* 4F224 8005EA24 44E84224 */  addiu      $v0, $v0, %lo(XAFiles + 0x1C)
/* 4F228 8005EA28 781183AF */  sw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4F22C 8005EA2C 401782AF */  sw         $v0, %gp_rel(theXAFile)($gp)
/* 4F230 8005EA30 B3D2010C */  jal        CdSyncCallback
/* 4F234 8005EA34 DCE58424 */   addiu     $a0, $a0, %lo(XA_AsyncCmdSync)
/* 4F238 8005EA38 0D000424 */  addiu      $a0, $zero, 0xD
/* 4F23C 8005EA3C 2000A527 */  addiu      $a1, $sp, 0x20
/* 4F240 8005EA40 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F244 8005EA44 80E8C624 */  addiu      $a2, $a2, %lo(gCdStatus)
/* 4F248 8005EA48 1800B027 */  addiu      $s0, $sp, 0x18
/* 4F24C 8005EA4C 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F250 8005EA50 01000224 */  addiu      $v0, $zero, 0x1
/* 4F254 8005EA54 080002A2 */  sb         $v0, 0x8($s0)
/* 4F258 8005EA58 04006790 */  lbu        $a3, 0x4($v1)
/* 4F25C 8005EA5C 01000224 */  addiu      $v0, $zero, 0x1
/* 4F260 8005EA60 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F264 8005EA64 C3D2010C */  jal        CdControl
/* 4F268 8005EA68 2100A7A3 */   sb        $a3, 0x21($sp)
/* 4F26C 8005EA6C 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F270 8005EA70 00000000 */  nop
/* 4F274 8005EA74 1000648C */  lw         $a0, 0x10($v1)
/* 4F278 8005EA78 4BD2010C */  jal        CdIntToPos
/* 4F27C 8005EA7C 21280002 */   addu      $a1, $s0, $zero
/* 4F280 8005EA80 1B000424 */  addiu      $a0, $zero, 0x1B
/* 4F284 8005EA84 21280002 */  addu       $a1, $s0, $zero
/* 4F288 8005EA88 C3D2010C */  jal        CdControl
/* 4F28C 8005EA8C 21300000 */   addu      $a2, $zero, $zero
/* 4F290 8005EA90 C07A0108 */  j          .L8005EB00
/* 4F294 8005EA94 00000000 */   nop
.L8005EA98:
/* 4F298 8005EA98 0680043C */  lui        $a0, %hi(XA_AsyncCmdSync)
/* 4F29C 8005EA9C B3D2010C */  jal        CdSyncCallback
/* 4F2A0 8005EAA0 DCE58424 */   addiu     $a0, $a0, %lo(XA_AsyncCmdSync)
/* 4F2A4 8005EAA4 0D000424 */  addiu      $a0, $zero, 0xD
/* 4F2A8 8005EAA8 2000A527 */  addiu      $a1, $sp, 0x20
/* 4F2AC 8005EAAC 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F2B0 8005EAB0 80E8C624 */  addiu      $a2, $a2, %lo(gCdStatus)
/* 4F2B4 8005EAB4 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F2B8 8005EAB8 1800B027 */  addiu      $s0, $sp, 0x18
/* 4F2BC 8005EABC 381782AF */  sw         $v0, %gp_rel(gCDCallback_oldsync_callback)($gp)
/* 4F2C0 8005EAC0 01000224 */  addiu      $v0, $zero, 0x1
/* 4F2C4 8005EAC4 080002A2 */  sb         $v0, 0x8($s0)
/* 4F2C8 8005EAC8 04006790 */  lbu        $a3, 0x4($v1)
/* 4F2CC 8005EACC 01000224 */  addiu      $v0, $zero, 0x1
/* 4F2D0 8005EAD0 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F2D4 8005EAD4 C3D2010C */  jal        CdControl
/* 4F2D8 8005EAD8 2100A7A3 */   sb        $a3, 0x21($sp)
/* 4F2DC 8005EADC 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F2E0 8005EAE0 00000000 */  nop
/* 4F2E4 8005EAE4 1000648C */  lw         $a0, 0x10($v1)
/* 4F2E8 8005EAE8 4BD2010C */  jal        CdIntToPos
/* 4F2EC 8005EAEC 21280002 */   addu      $a1, $s0, $zero
/* 4F2F0 8005EAF0 1B000424 */  addiu      $a0, $zero, 0x1B
/* 4F2F4 8005EAF4 21280002 */  addu       $a1, $s0, $zero
/* 4F2F8 8005EAF8 C3D2010C */  jal        CdControl
/* 4F2FC 8005EAFC 21300000 */   addu      $a2, $zero, $zero
.L8005EB00:
/* 4F300 8005EB00 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4F304 8005EB04 2800B08F */  lw         $s0, 0x28($sp)
/* 4F308 8005EB08 0800E003 */  jr         $ra
/* 4F30C 8005EB0C 3000BD27 */   addiu     $sp, $sp, 0x30
.size ResumeXA, . - ResumeXA
