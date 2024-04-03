.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init_world
/* 24C08 80034408 E0FEBD27 */  addiu      $sp, $sp, -0x120
/* 24C0C 8003440C 0180043C */  lui        $a0, %hi(D_80012628)
/* 24C10 80034410 28268424 */  addiu      $a0, $a0, %lo(D_80012628)
/* 24C14 80034414 0180053C */  lui        $a1, %hi(D_80012640)
/* 24C18 80034418 4026A524 */  addiu      $a1, $a1, %lo(D_80012640)
/* 24C1C 8003441C 0980073C */  lui        $a3, %hi(gWorld)
/* 24C20 80034420 3C56E78C */  lw         $a3, %lo(gWorld)($a3)
/* 24C24 80034424 0880033C */  lui        $v1, %hi(WorldList)
/* 24C28 80034428 1001B0AF */  sw         $s0, 0x110($sp)
/* 24C2C 8003442C 0980103C */  lui        $s0, %hi(gLevel)
/* 24C30 80034430 3456108E */  lw         $s0, %lo(gLevel)($s0)
/* 24C34 80034434 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 24C38 80034438 1C01BFAF */  sw         $ra, 0x11C($sp)
/* 24C3C 8003443C 1801B2AF */  sw         $s2, 0x118($sp)
/* 24C40 80034440 1401B1AF */  sw         $s1, 0x114($sp)
/* 24C44 80034444 80100700 */  sll        $v0, $a3, 2
/* 24C48 80034448 21104700 */  addu       $v0, $v0, $a3
/* 24C4C 8003444C 80100200 */  sll        $v0, $v0, 2
/* 24C50 80034450 21104300 */  addu       $v0, $v0, $v1
/* 24C54 80034454 1000528C */  lw         $s2, 0x10($v0)
/* 24C58 80034458 2650010C */  jal        pxm_loadsndbank
/* 24C5C 8003445C 01000624 */   addiu     $a2, $zero, 0x1
/* 24C60 80034460 1000A427 */  addiu      $a0, $sp, 0x10
/* 24C64 80034464 0180053C */  lui        $a1, %hi(D_80012658)
/* 24C68 80034468 5826A524 */  addiu      $a1, $a1, %lo(D_80012658)
/* 24C6C 8003446C 01001026 */  addiu      $s0, $s0, 0x1
/* 24C70 80034470 21380002 */  addu       $a3, $s0, $zero
/* 24C74 80034474 53C5010C */  jal        sprintf
/* 24C78 80034478 21304002 */   addu      $a2, $s2, $zero
/* 24C7C 8003447C 9000B127 */  addiu      $s1, $sp, 0x90
/* 24C80 80034480 21202002 */  addu       $a0, $s1, $zero
/* 24C84 80034484 0180053C */  lui        $a1, %hi(D_80012670)
/* 24C88 80034488 7026A524 */  addiu      $a1, $a1, %lo(D_80012670)
/* 24C8C 8003448C 21304002 */  addu       $a2, $s2, $zero
/* 24C90 80034490 53C5010C */  jal        sprintf
/* 24C94 80034494 21380002 */   addu      $a3, $s0, $zero
/* 24C98 80034498 1000A427 */  addiu      $a0, $sp, 0x10
/* 24C9C 8003449C 21282002 */  addu       $a1, $s1, $zero
/* 24CA0 800344A0 2650010C */  jal        pxm_loadsndbank
/* 24CA4 800344A4 02000624 */   addiu     $a2, $zero, 0x2
/* 24CA8 800344A8 1C01BF8F */  lw         $ra, 0x11C($sp)
/* 24CAC 800344AC 1801B28F */  lw         $s2, 0x118($sp)
/* 24CB0 800344B0 1401B18F */  lw         $s1, 0x114($sp)
/* 24CB4 800344B4 1001B08F */  lw         $s0, 0x110($sp)
/* 24CB8 800344B8 0800E003 */  jr         $ra
/* 24CBC 800344BC 2001BD27 */   addiu     $sp, $sp, 0x120
.size pxm_init_world, . - pxm_init_world
