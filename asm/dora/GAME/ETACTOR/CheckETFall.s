.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckETFall
/* 7FCC 800177CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7FD0 800177D0 0800E003 */  jr         $ra
/* 7FD4 800177D4 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckETFall, . - CheckETFall
