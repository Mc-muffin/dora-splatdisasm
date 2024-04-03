.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MallocMovie
/* 401EC 8004F9EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 401F0 8004F9F0 1000BFAF */  sw         $ra, 0x10($sp)
/* 401F4 8004F9F4 CFFD010C */  jal        DecDCTReset
/* 401F8 8004F9F8 21200000 */   addu      $a0, $zero, $zero
/* 401FC 8004F9FC 0500043C */  lui        $a0, (0x53000 >> 16)
/* 40200 8004FA00 2B3F010C */  jal        new_malloc
/* 40204 8004FA04 00308434 */   ori       $a0, $a0, (0x53000 & 0xFFFF)
/* 40208 8004FA08 1000BF8F */  lw         $ra, 0x10($sp)
/* 4020C 8004FA0C 00000000 */  nop
/* 40210 8004FA10 0800E003 */  jr         $ra
/* 40214 8004FA14 1800BD27 */   addiu     $sp, $sp, 0x18
.size MallocMovie, . - MallocMovie
