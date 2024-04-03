.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsJumping
/* 260D4 800358D4 0A80033C */  lui        $v1, %hi(boots_aidata)
/* 260D8 800358D8 588F628C */  lw         $v0, %lo(boots_aidata)($v1)
/* 260DC 800358DC 0800E003 */  jr         $ra
/* 260E0 800358E0 2B100200 */   sltu      $v0, $zero, $v0
.size BootsJumping, . - BootsJumping
