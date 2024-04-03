.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PauseXA
/* 4F4B0 8005ECB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4F4B4 8005ECB4 2000B0AF */  sw         $s0, 0x20($sp)
/* 4F4B8 8005ECB8 21808000 */  addu       $s0, $a0, $zero
/* 4F4BC 8005ECBC 01000224 */  addiu      $v0, $zero, 0x1
/* 4F4C0 8005ECC0 26000216 */  bne        $s0, $v0, .L8005ED5C
/* 4F4C4 8005ECC4 2400BFAF */   sw        $ra, 0x24($sp)
/* 4F4C8 8005ECC8 1000A427 */  addiu      $a0, $sp, 0x10
/* 4F4CC 8005ECCC 1000A0A3 */  sb         $zero, 0x10($sp)
/* 4F4D0 8005ECD0 1100A0A3 */  sb         $zero, 0x11($sp)
/* 4F4D4 8005ECD4 1200A0A3 */  sb         $zero, 0x12($sp)
/* 4F4D8 8005ECD8 B3D3010C */  jal        CdMix
/* 4F4DC 8005ECDC 1300A0A3 */   sb        $zero, 0x13($sp)
/* 4F4E0 8005ECE0 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4F4E4 8005ECE4 0B000524 */  addiu      $a1, $zero, 0xB
/* 4F4E8 8005ECE8 03006510 */  beq        $v1, $a1, .L8005ECF8
/* 4F4EC 8005ECEC 0F000224 */   addiu     $v0, $zero, 0xF
/* 4F4F0 8005ECF0 06006214 */  bne        $v1, $v0, .L8005ED0C
/* 4F4F4 8005ECF4 0C80023C */   lui       $v0, %hi(XAFiles + 0x1C)
.L8005ECF8:
/* 4F4F8 8005ECF8 10000224 */  addiu      $v0, $zero, 0x10
/* 4F4FC 8005ECFC 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F500 8005ED00 341790AF */  sw         $s0, %gp_rel(resume_VO.39)($gp)
/* 4F504 8005ED04 6D7B0108 */  j          .L8005EDB4
/* 4F508 8005ED08 00000000 */   nop
.L8005ED0C:
/* 4F50C 8005ED0C 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F510 8005ED10 44E84224 */  addiu      $v0, $v0, %lo(XAFiles + 0x1C)
/* 4F514 8005ED14 0E006214 */  bne        $v1, $v0, .L8005ED50
/* 4F518 8005ED18 00000000 */   nop
/* 4F51C 8005ED1C 341790AF */  sw         $s0, %gp_rel(resume_VO.39)($gp)
/* 4F520 8005ED20 781185AF */  sw         $a1, %gp_rel(gCDCallback_status)($gp)
/* 4F524 8005ED24 B3D2010C */  jal        CdSyncCallback
/* 4F528 8005ED28 21200000 */   addu      $a0, $zero, $zero
/* 4F52C 8005ED2C BBD2010C */  jal        CdReadyCallback
/* 4F530 8005ED30 21200000 */   addu      $a0, $zero, $zero
/* 4F534 8005ED34 09000424 */  addiu      $a0, $zero, 0x9
/* 4F538 8005ED38 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F53C 8005ED3C 21280000 */  addu       $a1, $zero, $zero
/* 4F540 8005ED40 C3D2010C */  jal        CdControl
/* 4F544 8005ED44 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4F548 8005ED48 6D7B0108 */  j          .L8005EDB4
/* 4F54C 8005ED4C 00000000 */   nop
.L8005ED50:
/* 4F550 8005ED50 341780AF */  sw         $zero, %gp_rel(resume_VO.39)($gp)
/* 4F554 8005ED54 6D7B0108 */  j          .L8005EDB4
/* 4F558 8005ED58 00000000 */   nop
.L8005ED5C:
/* 4F55C 8005ED5C 02000224 */  addiu      $v0, $zero, 0x2
/* 4F560 8005ED60 08000216 */  bne        $s0, $v0, .L8005ED84
/* 4F564 8005ED64 1800A427 */   addiu     $a0, $sp, 0x18
/* 4F568 8005ED68 1800A0A3 */  sb         $zero, 0x18($sp)
/* 4F56C 8005ED6C 1900A0A3 */  sb         $zero, 0x19($sp)
/* 4F570 8005ED70 1A00A0A3 */  sb         $zero, 0x1A($sp)
/* 4F574 8005ED74 B3D3010C */  jal        CdMix
/* 4F578 8005ED78 1B00A0A3 */   sb        $zero, 0x1B($sp)
/* 4F57C 8005ED7C 6D7B0108 */  j          .L8005EDB4
/* 4F580 8005ED80 00000000 */   nop
.L8005ED84:
/* 4F584 8005ED84 3417828F */  lw         $v0, %gp_rel(resume_VO.39)($gp)
/* 4F588 8005ED88 00000000 */  nop
/* 4F58C 8005ED8C 09004010 */  beqz       $v0, .L8005EDB4
/* 4F590 8005ED90 00000000 */   nop
/* 4F594 8005ED94 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F598 8005ED98 0980043C */  lui        $a0, %hi(EffectsVolume)
/* 4F59C 8005ED9C A049848C */  lw         $a0, %lo(EffectsVolume)($a0)
/* 4F5A0 8005EDA0 1400628C */  lw         $v0, 0x14($v1)
/* 4F5A4 8005EDA4 1F7B010C */  jal        SetXA_Volume
/* 4F5A8 8005EDA8 100062AC */   sw        $v0, 0x10($v1)
/* 4F5AC 8005EDAC 807A010C */  jal        ResumeXA
/* 4F5B0 8005EDB0 00000000 */   nop
.L8005EDB4:
/* 4F5B4 8005EDB4 2400BF8F */  lw         $ra, 0x24($sp)
/* 4F5B8 8005EDB8 2000B08F */  lw         $s0, 0x20($sp)
/* 4F5BC 8005EDBC 0800E003 */  jr         $ra
/* 4F5C0 8005EDC0 2800BD27 */   addiu     $sp, $sp, 0x28
.size PauseXA, . - PauseXA
