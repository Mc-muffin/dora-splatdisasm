.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitXA
/* 4F5C4 8005EDC4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4F5C8 8005EDC8 2000A427 */  addiu      $a0, $sp, 0x20
/* 4F5CC 8005EDCC 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4F5D0 8005EDD0 2800B0AF */  sw         $s0, 0x28($sp)
/* 4F5D4 8005EDD4 2000A0A3 */  sb         $zero, 0x20($sp)
/* 4F5D8 8005EDD8 2100A0A3 */  sb         $zero, 0x21($sp)
/* 4F5DC 8005EDDC 2200A0A3 */  sb         $zero, 0x22($sp)
/* 4F5E0 8005EDE0 B3D3010C */  jal        CdMix
/* 4F5E4 8005EDE4 2300A0A3 */   sb        $zero, 0x23($sp)
/* 4F5E8 8005EDE8 0B000224 */  addiu      $v0, $zero, 0xB
/* 4F5EC 8005EDEC 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F5F0 8005EDF0 B3D2010C */  jal        CdSyncCallback
/* 4F5F4 8005EDF4 21200000 */   addu      $a0, $zero, $zero
/* 4F5F8 8005EDF8 BBD2010C */  jal        CdReadyCallback
/* 4F5FC 8005EDFC 21200000 */   addu      $a0, $zero, $zero
/* 4F600 8005EE00 09000424 */  addiu      $a0, $zero, 0x9
/* 4F604 8005EE04 21280000 */  addu       $a1, $zero, $zero
/* 4F608 8005EE08 0C80103C */  lui        $s0, %hi(gCdStatus)
/* 4F60C 8005EE0C 80E81026 */  addiu      $s0, $s0, %lo(gCdStatus)
/* 4F610 8005EE10 C3D2010C */  jal        CdControl
/* 4F614 8005EE14 21300002 */   addu      $a2, $s0, $zero
/* 4F618 8005EE18 0E000424 */  addiu      $a0, $zero, 0xE
/* 4F61C 8005EE1C 1800A527 */  addiu      $a1, $sp, 0x18
/* 4F620 8005EE20 21300002 */  addu       $a2, $s0, $zero
/* 4F624 8005EE24 E8000224 */  addiu      $v0, $zero, 0xE8
/* 4F628 8005EE28 C3D2010C */  jal        CdControl
/* 4F62C 8005EE2C 1800A2A3 */   sb        $v0, 0x18($sp)
/* 4F630 8005EE30 EBD6010C */  jal        VSync
/* 4F634 8005EE34 06000424 */   addiu     $a0, $zero, 0x6
/* 4F638 8005EE38 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4F63C 8005EE3C 2800B08F */  lw         $s0, 0x28($sp)
/* 4F640 8005EE40 781180AF */  sw         $zero, %gp_rel(gCDCallback_status)($gp)
/* 4F644 8005EE44 0800E003 */  jr         $ra
/* 4F648 8005EE48 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitXA, . - InitXA
