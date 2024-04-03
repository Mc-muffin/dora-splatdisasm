.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_ReSeekCd
/* 47DD4 800575D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47DD8 800575D8 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 47DDC 800575DC 0980023C */  lui        $v0, %hi(gCDCallback)
/* 47DE0 800575E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 47DE4 800575E4 21804000 */  addu       $s0, $v0, $zero
/* 47DE8 800575E8 0B80033C */  lui        $v1, %hi(gCDFileInfo)
/* 47DEC 800575EC 5C824224 */  addiu      $v0, $v0, %lo(gCDCallback)
/* 47DF0 800575F0 78AA6324 */  addiu      $v1, $v1, %lo(gCDFileInfo)
/* 47DF4 800575F4 1400BFAF */  sw         $ra, 0x14($sp)
/* 47DF8 800575F8 1000448C */  lw         $a0, 0x10($v0)
/* 47DFC 800575FC 10006324 */  addiu      $v1, $v1, 0x10
/* 47E00 80057600 80100400 */  sll        $v0, $a0, 2
/* 47E04 80057604 21104400 */  addu       $v0, $v0, $a0
/* 47E08 80057608 80100200 */  sll        $v0, $v0, 2
/* 47E0C 8005760C 21104300 */  addu       $v0, $v0, $v1
/* 47E10 80057610 0000448C */  lw         $a0, 0x0($v0)
/* 47E14 80057614 3756010C */  jal        _ByteToPos
/* 47E18 80057618 00000000 */   nop
/* 47E1C 8005761C 01000424 */  addiu      $a0, $zero, 0x1
.L80057620:
/* 47E20 80057620 ABD2010C */  jal        CdReady
/* 47E24 80057624 21280000 */   addu      $a1, $zero, $zero
/* 47E28 80057628 FDFF4014 */  bnez       $v0, .L80057620
/* 47E2C 8005762C 01000424 */   addiu     $a0, $zero, 0x1
/* 47E30 80057630 0E000424 */  addiu      $a0, $zero, 0xE
/* 47E34 80057634 68168527 */  addiu      $a1, $gp, %gp_rel(gCurrentCDSpeed)
/* 47E38 80057638 0B80063C */  lui        $a2, %hi(gCdStatus_dup)
/* 47E3C 8005763C 801F013C */  lui        $at, (0x1F801800 >> 16)
/* 47E40 80057640 001820A0 */  sb         $zero, (0x1F801800 & 0xFFFF)($at)
/* 47E44 80057644 801F013C */  lui        $at, (0x1F801803 >> 16)
/* 47E48 80057648 031820A0 */  sb         $zero, (0x1F801803 & 0xFFFF)($at)
/* 47E4C 8005764C C3D2010C */  jal        CdControl
/* 47E50 80057650 50AAC624 */   addiu     $a2, $a2, %lo(gCdStatus_dup)
/* 47E54 80057654 11004010 */  beqz       $v0, .L8005769C
/* 47E58 80057658 00000000 */   nop
/* 47E5C 8005765C EBD6010C */  jal        VSync
/* 47E60 80057660 03000424 */   addiu     $a0, $zero, 0x3
/* 47E64 80057664 0580043C */  lui        $a0, %hi(CDFile_AsyncCmdSync)
/* 47E68 80057668 146F8424 */  addiu      $a0, $a0, %lo(CDFile_AsyncCmdSync)
/* 47E6C 8005766C 01000224 */  addiu      $v0, $zero, 0x1
/* 47E70 80057670 5C8202AE */  sw         $v0, %lo(gCDCallback)($s0)
/* 47E74 80057674 B3D2010C */  jal        CdSyncCallback
/* 47E78 80057678 00000000 */   nop
/* 47E7C 8005767C 5C820326 */  addiu      $v1, $s0, %lo(gCDCallback)
/* 47E80 80057680 1800648C */  lw         $a0, 0x18($v1)
/* 47E84 80057684 BBD2010C */  jal        CdReadyCallback
/* 47E88 80057688 1C0062AC */   sw        $v0, 0x1C($v1)
/* 47E8C 8005768C 06000424 */  addiu      $a0, $zero, 0x6
/* 47E90 80057690 6C168527 */  addiu      $a1, $gp, %gp_rel(gCdPos)
/* 47E94 80057694 C3D2010C */  jal        CdControl
/* 47E98 80057698 21300000 */   addu      $a2, $zero, $zero
.L8005769C:
/* 47E9C 8005769C 1400BF8F */  lw         $ra, 0x14($sp)
/* 47EA0 800576A0 1000B08F */  lw         $s0, 0x10($sp)
/* 47EA4 800576A4 0800E003 */  jr         $ra
/* 47EA8 800576A8 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDFile_ReSeekCd, . - CDFile_ReSeekCd
