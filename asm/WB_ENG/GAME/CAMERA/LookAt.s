.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookAt
/* 2AFD4 8003A7D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2AFD8 8003A7D8 2320C400 */  subu       $a0, $a2, $a0
/* 2AFDC 8003A7DC 1000BFAF */  sw         $ra, 0x10($sp)
/* 2AFE0 8003A7E0 63EF010C */  jal        ratan2
/* 2AFE4 8003A7E4 2328A700 */   subu      $a1, $a1, $a3
/* 2AFE8 8003A7E8 1000BF8F */  lw         $ra, 0x10($sp)
/* 2AFEC 8003A7EC 00000000 */  nop
/* 2AFF0 8003A7F0 0800E003 */  jr         $ra
/* 2AFF4 8003A7F4 1800BD27 */   addiu     $sp, $sp, 0x18
.size LookAt, . - LookAt
