.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FreeGameMallocedBuffers
/* 3B2C8 8004AAC8 2C15848F */  lw         $a0, %gp_rel(DistBuf)($gp)
/* 3B2CC 8004AACC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3B2D0 8004AAD0 03008010 */  beqz       $a0, .L8004AAE0
/* 3B2D4 8004AAD4 1000BFAF */   sw        $ra, 0x10($sp)
/* 3B2D8 8004AAD8 1C40010C */  jal        new_free
/* 3B2DC 8004AADC 00000000 */   nop
.L8004AAE0:
/* 3B2E0 8004AAE0 3015848F */  lw         $a0, %gp_rel(ScreenXY)($gp)
/* 3B2E4 8004AAE4 00000000 */  nop
/* 3B2E8 8004AAE8 03008010 */  beqz       $a0, .L8004AAF8
/* 3B2EC 8004AAEC 00000000 */   nop
/* 3B2F0 8004AAF0 1C40010C */  jal        new_free
/* 3B2F4 8004AAF4 00000000 */   nop
.L8004AAF8:
/* 3B2F8 8004AAF8 1000BF8F */  lw         $ra, 0x10($sp)
/* 3B2FC 8004AAFC 00000000 */  nop
/* 3B300 8004AB00 0800E003 */  jr         $ra
/* 3B304 8004AB04 1800BD27 */   addiu     $sp, $sp, 0x18
.size FreeGameMallocedBuffers, . - FreeGameMallocedBuffers
