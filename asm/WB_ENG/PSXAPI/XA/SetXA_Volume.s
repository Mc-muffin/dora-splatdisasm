.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetXA_Volume
/* 4F47C 8005EC7C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4F480 8005EC80 7E1184A3 */  sb         $a0, %gp_rel(XA_current_volume)($gp)
/* 4F484 8005EC84 1000A4A3 */  sb         $a0, 0x10($sp)
/* 4F488 8005EC88 1200A4A3 */  sb         $a0, 0x12($sp)
/* 4F48C 8005EC8C 1000A427 */  addiu      $a0, $sp, 0x10
/* 4F490 8005EC90 1800BFAF */  sw         $ra, 0x18($sp)
/* 4F494 8005EC94 1100A0A3 */  sb         $zero, 0x11($sp)
/* 4F498 8005EC98 B3D3010C */  jal        CdMix
/* 4F49C 8005EC9C 1300A0A3 */   sb        $zero, 0x13($sp)
/* 4F4A0 8005ECA0 1800BF8F */  lw         $ra, 0x18($sp)
/* 4F4A4 8005ECA4 00000000 */  nop
/* 4F4A8 8005ECA8 0800E003 */  jr         $ra
/* 4F4AC 8005ECAC 2000BD27 */   addiu     $sp, $sp, 0x20
.size SetXA_Volume, . - SetXA_Volume
