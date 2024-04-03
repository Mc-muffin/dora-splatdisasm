.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel XA_AsyncCmdSync
/* 4EDDC 8005E5DC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4EDE0 8005E5E0 2000BFAF */  sw         $ra, 0x20($sp)
/* 4EDE4 8005E5E4 0000A290 */  lbu        $v0, 0x0($a1)
/* 4EDE8 8005E5E8 00000000 */  nop
/* 4EDEC 8005E5EC 01004230 */  andi       $v0, $v0, 0x1
/* 4EDF0 8005E5F0 06004010 */  beqz       $v0, .L8005E60C
/* 4EDF4 8005E5F4 02000224 */   addiu     $v0, $zero, 0x2
/* 4EDF8 8005E5F8 0100A290 */  lbu        $v0, 0x1($a1)
/* 4EDFC 8005E5FC 00000000 */  nop
/* 4EE00 8005E600 80004230 */  andi       $v0, $v0, 0x80
/* 4EE04 8005E604 4C004014 */  bnez       $v0, .L8005E738
/* 4EE08 8005E608 02000224 */   addiu     $v0, $zero, 0x2
.L8005E60C:
/* 4EE0C 8005E60C 4A008214 */  bne        $a0, $v0, .L8005E738
/* 4EE10 8005E610 0F000224 */   addiu     $v0, $zero, 0xF
/* 4EE14 8005E614 7811838F */  lw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4EE18 8005E618 00000000 */  nop
/* 4EE1C 8005E61C 09006214 */  bne        $v1, $v0, .L8005E644
/* 4EE20 8005E620 0B000224 */   addiu     $v0, $zero, 0xB
/* 4EE24 8005E624 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4EE28 8005E628 09000424 */  addiu      $a0, $zero, 0x9
/* 4EE2C 8005E62C 21280000 */  addu       $a1, $zero, $zero
/* 4EE30 8005E630 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4EE34 8005E634 C3D2010C */  jal        CdControl
/* 4EE38 8005E638 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4EE3C 8005E63C CE790108 */  j          .L8005E738
/* 4EE40 8005E640 00000000 */   nop
.L8005E644:
/* 4EE44 8005E644 0A006214 */  bne        $v1, $v0, .L8005E670
/* 4EE48 8005E648 00000000 */   nop
/* 4EE4C 8005E64C BBD2010C */  jal        CdReadyCallback
/* 4EE50 8005E650 21200000 */   addu      $a0, $zero, $zero
/* 4EE54 8005E654 0D000424 */  addiu      $a0, $zero, 0xD
/* 4EE58 8005E658 1800A527 */  addiu      $a1, $sp, 0x18
/* 4EE5C 8005E65C 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4EE60 8005E660 80E8C624 */  addiu      $a2, $a2, %lo(gCdStatus)
/* 4EE64 8005E664 0C80023C */  lui        $v0, %hi(XAFiles + 0x1C)
/* 4EE68 8005E668 AD790108 */  j          .L8005E6B4
/* 4EE6C 8005E66C 44E84224 */   addiu     $v0, $v0, %lo(XAFiles + 0x1C)
.L8005E670:
/* 4EE70 8005E670 10000224 */  addiu      $v0, $zero, 0x10
/* 4EE74 8005E674 05006214 */  bne        $v1, $v0, .L8005E68C
/* 4EE78 8005E678 0D000224 */   addiu     $v0, $zero, 0xD
/* 4EE7C 8005E67C BBD2010C */  jal        CdReadyCallback
/* 4EE80 8005E680 21200000 */   addu      $a0, $zero, $zero
/* 4EE84 8005E684 CE790108 */  j          .L8005E738
/* 4EE88 8005E688 00000000 */   nop
.L8005E68C:
/* 4EE8C 8005E68C 1C006214 */  bne        $v1, $v0, .L8005E700
/* 4EE90 8005E690 01000224 */   addiu     $v0, $zero, 0x1
/* 4EE94 8005E694 BBD2010C */  jal        CdReadyCallback
/* 4EE98 8005E698 21200000 */   addu      $a0, $zero, $zero
/* 4EE9C 8005E69C 0D000424 */  addiu      $a0, $zero, 0xD
/* 4EEA0 8005E6A0 1800A527 */  addiu      $a1, $sp, 0x18
/* 4EEA4 8005E6A4 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4EEA8 8005E6A8 80E8C624 */  addiu      $a2, $a2, %lo(gCdStatus)
/* 4EEAC 8005E6AC 0C80023C */  lui        $v0, %hi(XAFiles)
/* 4EEB0 8005E6B0 28E84224 */  addiu      $v0, $v0, %lo(XAFiles)
.L8005E6B4:
/* 4EEB4 8005E6B4 01000324 */  addiu      $v1, $zero, 0x1
/* 4EEB8 8005E6B8 401782AF */  sw         $v0, %gp_rel(theXAFile)($gp)
/* 4EEBC 8005E6BC 1800A3A3 */  sb         $v1, 0x18($sp)
/* 4EEC0 8005E6C0 04004790 */  lbu        $a3, 0x4($v0)
/* 4EEC4 8005E6C4 01000324 */  addiu      $v1, $zero, 0x1
/* 4EEC8 8005E6C8 781183AF */  sw         $v1, %gp_rel(gCDCallback_status)($gp)
/* 4EECC 8005E6CC C3D2010C */  jal        CdControl
/* 4EED0 8005E6D0 1900A7A3 */   sb        $a3, 0x19($sp)
/* 4EED4 8005E6D4 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4EED8 8005E6D8 00000000 */  nop
/* 4EEDC 8005E6DC 1000648C */  lw         $a0, 0x10($v1)
/* 4EEE0 8005E6E0 4BD2010C */  jal        CdIntToPos
/* 4EEE4 8005E6E4 1000A527 */   addiu     $a1, $sp, 0x10
/* 4EEE8 8005E6E8 1B000424 */  addiu      $a0, $zero, 0x1B
/* 4EEEC 8005E6EC 1000A527 */  addiu      $a1, $sp, 0x10
/* 4EEF0 8005E6F0 C3D2010C */  jal        CdControl
/* 4EEF4 8005E6F4 21300000 */   addu      $a2, $zero, $zero
/* 4EEF8 8005E6F8 CE790108 */  j          .L8005E738
/* 4EEFC 8005E6FC 00000000 */   nop
.L8005E700:
/* 4EF00 8005E700 04006214 */  bne        $v1, $v0, .L8005E714
/* 4EF04 8005E704 03000224 */   addiu     $v0, $zero, 0x3
/* 4EF08 8005E708 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4EF0C 8005E70C CE790108 */  j          .L8005E738
/* 4EF10 8005E710 00000000 */   nop
.L8005E714:
/* 4EF14 8005E714 08006214 */  bne        $v1, $v0, .L8005E738
/* 4EF18 8005E718 00000000 */   nop
/* 4EF1C 8005E71C B3D2010C */  jal        CdSyncCallback
/* 4EF20 8005E720 21200000 */   addu      $a0, $zero, $zero
/* 4EF24 8005E724 0680043C */  lui        $a0, %hi(XA_AsyncCmdReady)
/* 4EF28 8005E728 BBD2010C */  jal        CdReadyCallback
/* 4EF2C 8005E72C 48E78424 */   addiu     $a0, $a0, %lo(XA_AsyncCmdReady)
/* 4EF30 8005E730 05000324 */  addiu      $v1, $zero, 0x5
/* 4EF34 8005E734 781183AF */  sw         $v1, %gp_rel(gCDCallback_status)($gp)
.L8005E738:
/* 4EF38 8005E738 2000BF8F */  lw         $ra, 0x20($sp)
/* 4EF3C 8005E73C 00000000 */  nop
/* 4EF40 8005E740 0800E003 */  jr         $ra
/* 4EF44 8005E744 2800BD27 */   addiu     $sp, $sp, 0x28
.size XA_AsyncCmdSync, . - XA_AsyncCmdSync
