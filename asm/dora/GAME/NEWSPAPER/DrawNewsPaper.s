.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawNewsPaper
/* 15160 80024960 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 15164 80024964 0800E003 */  jr         $ra
/* 15168 80024968 1000BD27 */   addiu     $sp, $sp, 0x10
.size DrawNewsPaper, . - DrawNewsPaper
