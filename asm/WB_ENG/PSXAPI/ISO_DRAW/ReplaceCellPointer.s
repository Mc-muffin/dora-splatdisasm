.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReplaceCellPointer
/* 55D60 80065560 0800E003 */  jr         $ra
/* 55D64 80065564 0000A4AC */   sw        $a0, 0x0($a1)
.size ReplaceCellPointer, . - ReplaceCellPointer
