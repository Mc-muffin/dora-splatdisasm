.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleMove
/* 20348 8002FB48 0400828C */  lw         $v0, 0x4($a0)
/* 2034C 8002FB4C 1000838C */  lw         $v1, 0x10($a0)
/* 20350 8002FB50 1400868C */  lw         $a2, 0x14($a0)
/* 20354 8002FB54 21104300 */  addu       $v0, $v0, $v1
/* 20358 8002FB58 2130C500 */  addu       $a2, $a2, $a1
/* 2035C 8002FB5C 040082AC */  sw         $v0, 0x4($a0)
/* 20360 8002FB60 0800828C */  lw         $v0, 0x8($a0)
/* 20364 8002FB64 0C00838C */  lw         $v1, 0xC($a0)
/* 20368 8002FB68 1800858C */  lw         $a1, 0x18($a0)
/* 2036C 8002FB6C 21104600 */  addu       $v0, $v0, $a2
/* 20370 8002FB70 21186500 */  addu       $v1, $v1, $a1
/* 20374 8002FB74 080082AC */  sw         $v0, 0x8($a0)
/* 20378 8002FB78 0800E003 */  jr         $ra
/* 2037C 8002FB7C 0C0083AC */   sw        $v1, 0xC($a0)
.size ParticleMove, . - ParticleMove
