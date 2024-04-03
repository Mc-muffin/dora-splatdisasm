.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetBBoxBrains
/* 35E04 80045604 0800E003 */  jr         $ra
/* 35E08 80045608 140080AC */   sw        $zero, 0x14($a0)
.size ResetBBoxBrains, . - ResetBBoxBrains
