.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckScreenClip
/* 4FF80 8005F780 0800E003 */  jr         $ra
/* 4FF84 8005F784 01000224 */   addiu     $v0, $zero, 0x1
.size CheckScreenClip, . - CheckScreenClip
