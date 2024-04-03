.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadPauseMenuGraphics
/* 23C74 80033474 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 23C78 80033478 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 23C7C 8003347C 0180043C */  lui        $a0, %hi(D_80011B70)
/* 23C80 80033480 0A80053C */  lui        $a1, %hi(pausemenuFT4)
/* 23C84 80033484 701B8424 */  addiu      $a0, $a0, %lo(D_80011B70)
/* 23C88 80033488 A086A524 */  addiu      $a1, $a1, %lo(pausemenuFT4)
/* 23C8C 8003348C 1000A627 */  addiu      $a2, $sp, 0x10
/* 23C90 80033490 3800BFAF */  sw         $ra, 0x38($sp)
/* 23C94 80033494 B329010C */  jal        BillBoardLoad
/* 23C98 80033498 1000A2AF */   sw        $v0, 0x10($sp)
/* 23C9C 8003349C 3800BF8F */  lw         $ra, 0x38($sp)
/* 23CA0 800334A0 00000000 */  nop
/* 23CA4 800334A4 0800E003 */  jr         $ra
/* 23CA8 800334A8 4000BD27 */   addiu     $sp, $sp, 0x40
.size LoadPauseMenuGraphics, . - LoadPauseMenuGraphics
