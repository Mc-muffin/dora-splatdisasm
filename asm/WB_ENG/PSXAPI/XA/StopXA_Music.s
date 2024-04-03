.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopXA_Music
/* 4F73C 8005EF3C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4F740 8005EF40 1000A427 */  addiu      $a0, $sp, 0x10
/* 4F744 8005EF44 1800BFAF */  sw         $ra, 0x18($sp)
/* 4F748 8005EF48 1000A0A3 */  sb         $zero, 0x10($sp)
/* 4F74C 8005EF4C 1100A0A3 */  sb         $zero, 0x11($sp)
/* 4F750 8005EF50 1200A0A3 */  sb         $zero, 0x12($sp)
/* 4F754 8005EF54 B3D3010C */  jal        CdMix
/* 4F758 8005EF58 1300A0A3 */   sb        $zero, 0x13($sp)
/* 4F75C 8005EF5C 0B000224 */  addiu      $v0, $zero, 0xB
/* 4F760 8005EF60 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F764 8005EF64 B3D2010C */  jal        CdSyncCallback
/* 4F768 8005EF68 21200000 */   addu      $a0, $zero, $zero
/* 4F76C 8005EF6C BBD2010C */  jal        CdReadyCallback
/* 4F770 8005EF70 21200000 */   addu      $a0, $zero, $zero
/* 4F774 8005EF74 09000424 */  addiu      $a0, $zero, 0x9
/* 4F778 8005EF78 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F77C 8005EF7C 21280000 */  addu       $a1, $zero, $zero
/* 4F780 8005EF80 C3D2010C */  jal        CdControl
/* 4F784 8005EF84 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4F788 8005EF88 1800BF8F */  lw         $ra, 0x18($sp)
/* 4F78C 8005EF8C 00000000 */  nop
/* 4F790 8005EF90 0800E003 */  jr         $ra
/* 4F794 8005EF94 2000BD27 */   addiu     $sp, $sp, 0x20
.size StopXA_Music, . - StopXA_Music
