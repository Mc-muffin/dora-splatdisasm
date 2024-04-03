.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel KludgeScrollYOffset
/* B868 8001B068 0800E003 */  jr         $ra
/* B86C 8001B06C 03000224 */   addiu     $v0, $zero, 0x3
.size KludgeScrollYOffset, . - KludgeScrollYOffset
