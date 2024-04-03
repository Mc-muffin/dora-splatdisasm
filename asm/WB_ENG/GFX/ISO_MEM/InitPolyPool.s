.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitPolyPool
/* 3F294 8004EA94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F298 8004EA98 1000BFAF */  sw         $ra, 0x10($sp)
/* 3F29C 8004EA9C 2B3F010C */  jal        new_malloc
/* 3F2A0 8004EAA0 0400043C */   lui       $a0, (0x40000 >> 16)
/* 3F2A4 8004EAA4 0200033C */  lui        $v1, (0x20000 >> 16)
/* 3F2A8 8004EAA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 3F2AC 8004EAAC 21184300 */  addu       $v1, $v0, $v1
/* 3F2B0 8004EAB0 7C1582AF */  sw         $v0, %gp_rel(MEM_PolyPool)($gp)
/* 3F2B4 8004EAB4 801583AF */  sw         $v1, %gp_rel(MEM_PolyPool + 0x4)($gp)
/* 3F2B8 8004EAB8 881582AF */  sw         $v0, %gp_rel(MEM_PolyPoolCurrent)($gp)
/* 3F2BC 8004EABC 0800E003 */  jr         $ra
/* 3F2C0 8004EAC0 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitPolyPool, . - InitPolyPool
