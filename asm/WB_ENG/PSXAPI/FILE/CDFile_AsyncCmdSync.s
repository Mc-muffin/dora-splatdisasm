.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_AsyncCmdSync
/* 47714 80056F14 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47718 80056F18 0600822C */  sltiu      $v0, $a0, 0x6
/* 4771C 80056F1C 1400BFAF */  sw         $ra, 0x14($sp)
/* 47720 80056F20 17004010 */  beqz       $v0, .L80056F80
/* 47724 80056F24 1000B0AF */   sw        $s0, 0x10($sp)
/* 47728 80056F28 0180023C */  lui        $v0, %hi(jtbl_80013090)
/* 4772C 80056F2C 90304224 */  addiu      $v0, $v0, %lo(jtbl_80013090)
/* 47730 80056F30 80180400 */  sll        $v1, $a0, 2
/* 47734 80056F34 21186200 */  addu       $v1, $v1, $v0
/* 47738 80056F38 0000648C */  lw         $a0, 0x0($v1)
/* 4773C 80056F3C 00000000 */  nop
/* 47740 80056F40 08008000 */  jr         $a0
/* 47744 80056F44 00000000 */   nop
jlabel .L80056F48
/* 47748 80056F48 0980053C */  lui        $a1, %hi(gCDCallback)
/* 4774C 80056F4C 5C82B024 */  addiu      $s0, $a1, %lo(gCDCallback)
/* 47750 80056F50 5C82A38C */  lw         $v1, %lo(gCDCallback)($a1)
/* 47754 80056F54 01000224 */  addiu      $v0, $zero, 0x1
/* 47758 80056F58 09006214 */  bne        $v1, $v0, .L80056F80
/* 4775C 80056F5C 02000224 */   addiu     $v0, $zero, 0x2
/* 47760 80056F60 1C00048E */  lw         $a0, 0x1C($s0)
/* 47764 80056F64 5C82A2AC */  sw         $v0, %lo(gCDCallback)($a1)
/* 47768 80056F68 B3D2010C */  jal        CdSyncCallback
/* 4776C 80056F6C 00000000 */   nop
/* 47770 80056F70 0580043C */  lui        $a0, %hi(CDFile_AsyncReadCd)
/* 47774 80056F74 BBD2010C */  jal        CdReadyCallback
/* 47778 80056F78 34658424 */   addiu     $a0, $a0, %lo(CDFile_AsyncReadCd)
/* 4777C 80056F7C 180002AE */  sw         $v0, 0x18($s0)
jlabel .L80056F80
/* 47780 80056F80 1400BF8F */  lw         $ra, 0x14($sp)
/* 47784 80056F84 1000B08F */  lw         $s0, 0x10($sp)
/* 47788 80056F88 0800E003 */  jr         $ra
/* 4778C 80056F8C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDFile_AsyncCmdSync, . - CDFile_AsyncCmdSync
