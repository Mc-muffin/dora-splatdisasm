.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ProjectileInit
/* 36D60 80046560 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 36D64 80046564 1000BFAF */  sw         $ra, 0x10($sp)
/* 36D68 80046568 4400828C */  lw         $v0, 0x44($a0)
/* 36D6C 8004656C 00000000 */  nop
/* 36D70 80046570 1400458C */  lw         $a1, 0x14($v0)
/* 36D74 80046574 A501010C */  jal        LinkActiveActorToTrigger
/* 36D78 80046578 00000000 */   nop
/* 36D7C 8004657C 1000BF8F */  lw         $ra, 0x10($sp)
/* 36D80 80046580 00000000 */  nop
/* 36D84 80046584 0800E003 */  jr         $ra
/* 36D88 80046588 1800BD27 */   addiu     $sp, $sp, 0x18
.size ProjectileInit, . - ProjectileInit
