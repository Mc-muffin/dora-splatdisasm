.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndMovie
/* 4018C 8004F98C 240F828F */  lw         $v0, %gp_rel(MovieOnFlag)($gp)
/* 40190 8004F990 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40194 8004F994 03004010 */  beqz       $v0, .L8004F9A4
/* 40198 8004F998 1000BFAF */   sw        $ra, 0x10($sp)
/* 4019C 8004F99C 533E010C */  jal        prepareExit
/* 401A0 8004F9A0 00000000 */   nop
.L8004F9A4:
/* 401A4 8004F9A4 1000BF8F */  lw         $ra, 0x10($sp)
/* 401A8 8004F9A8 240F80AF */  sw         $zero, %gp_rel(MovieOnFlag)($gp)
/* 401AC 8004F9AC 0800E003 */  jr         $ra
/* 401B0 8004F9B0 1800BD27 */   addiu     $sp, $sp, 0x18
.size EndMovie, . - EndMovie
