.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitGameMallocedBuffers
/* 3B29C 8004AA9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3B2A0 8004AAA0 1000BFAF */  sw         $ra, 0x10($sp)
/* 3B2A4 8004AAA4 2B3F010C */  jal        new_malloc
/* 3B2A8 8004AAA8 60090424 */   addiu     $a0, $zero, 0x960
/* 3B2AC 8004AAAC 2C1582AF */  sw         $v0, %gp_rel(DistBuf)($gp)
/* 3B2B0 8004AAB0 2B3F010C */  jal        new_malloc
/* 3B2B4 8004AAB4 60090424 */   addiu     $a0, $zero, 0x960
/* 3B2B8 8004AAB8 1000BF8F */  lw         $ra, 0x10($sp)
/* 3B2BC 8004AABC 301582AF */  sw         $v0, %gp_rel(ScreenXY)($gp)
/* 3B2C0 8004AAC0 0800E003 */  jr         $ra
/* 3B2C4 8004AAC4 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitGameMallocedBuffers, . - InitGameMallocedBuffers
