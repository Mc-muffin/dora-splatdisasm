.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeETTPage
/* 500D8 8005F8D8 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 500DC 8005F8DC 0800E003 */  jr         $ra
/* 500E0 8005F8E0 1000BD27 */   addiu     $sp, $sp, 0x10
.size ChangeETTPage, . - ChangeETTPage
