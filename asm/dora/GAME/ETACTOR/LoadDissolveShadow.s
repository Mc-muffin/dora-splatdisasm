.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadDissolveShadow
/* AC70 8001A470 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* AC74 8001A474 0800E003 */  jr         $ra
/* AC78 8001A478 1000BD27 */   addiu     $sp, $sp, 0x10
.size LoadDissolveShadow, . - LoadDissolveShadow
