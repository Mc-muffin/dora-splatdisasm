.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitFileSystem
/* 47B0C 8005730C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47B10 80057310 0980023C */  lui        $v0, %hi(gCDCallback)
/* 47B14 80057314 5C8240AC */  sw         $zero, %lo(gCDCallback)($v0)
/* 47B18 80057318 5C824224 */  addiu      $v0, $v0, %lo(gCDCallback)
/* 47B1C 8005731C FFFF0324 */  addiu      $v1, $zero, -0x1
/* 47B20 80057320 1000B0AF */  sw         $s0, 0x10($sp)
/* 47B24 80057324 21808000 */  addu       $s0, $a0, $zero
/* 47B28 80057328 1400BFAF */  sw         $ra, 0x14($sp)
/* 47B2C 8005732C 100043AC */  sw         $v1, 0x10($v0)
/* 47B30 80057330 040040AC */  sw         $zero, 0x4($v0)
/* 47B34 80057334 080040AC */  sw         $zero, 0x8($v0)
/* 47B38 80057338 5FC8010C */  jal        CdInit
/* 47B3C 8005733C 00000000 */   nop
/* 47B40 80057340 8FD2010C */  jal        CdReset
/* 47B44 80057344 21200000 */   addu      $a0, $zero, $zero
/* 47B48 80057348 0B80043C */  lui        $a0, %hi(loc)
/* 47B4C 8005734C CBC7010C */  jal        CdGetToc
/* 47B50 80057350 A8B28424 */   addiu     $a0, $a0, %lo(loc)
/* 47B54 80057354 0E000424 */  addiu      $a0, $zero, 0xE
/* 47B58 80057358 981682AF */  sw         $v0, %gp_rel(ntoc)($gp)
/* 47B5C 8005735C A2000224 */  addiu      $v0, $zero, 0xA2
/* 47B60 80057360 82000324 */  addiu      $v1, $zero, 0x82
/* 47B64 80057364 0B80063C */  lui        $a2, %hi(gCdStatus_dup)
/* 47B68 80057368 68168527 */  addiu      $a1, $gp, %gp_rel(gCurrentCDSpeed)
/* 47B6C 8005736C 681682A3 */  sb         $v0, %gp_rel(gCurrentCDSpeed)($gp)
/* 47B70 80057370 691683A3 */  sb         $v1, %gp_rel(gCurrentCDSpeed + 0x1)($gp)
/* 47B74 80057374 C3D2010C */  jal        CdControl
/* 47B78 80057378 50AAC624 */   addiu     $a2, $a2, %lo(gCdStatus_dup)
/* 47B7C 8005737C EBD6010C */  jal        VSync
/* 47B80 80057380 03000424 */   addiu     $a0, $zero, 0x3
/* 47B84 80057384 7A5B010C */  jal        File_CacheRootDir
/* 47B88 80057388 21200002 */   addu      $a0, $s0, $zero
/* 47B8C 8005738C 1400BF8F */  lw         $ra, 0x14($sp)
/* 47B90 80057390 1000B08F */  lw         $s0, 0x10($sp)
/* 47B94 80057394 0800E003 */  jr         $ra
/* 47B98 80057398 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitFileSystem, . - InitFileSystem
