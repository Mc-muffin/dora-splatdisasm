.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_GetChunkLength
/* 40E90 80050690 80100500 */  sll        $v0, $a1, 2
/* 40E94 80050694 21104500 */  addu       $v0, $v0, $a1
/* 40E98 80050698 0C00838C */  lw         $v1, 0xC($a0)
/* 40E9C 8005069C 80100200 */  sll        $v0, $v0, 2
/* 40EA0 800506A0 21186200 */  addu       $v1, $v1, $v0
/* 40EA4 800506A4 1000628C */  lw         $v0, 0x10($v1)
/* 40EA8 800506A8 0800E003 */  jr         $ra
/* 40EAC 800506AC 00000000 */   nop
.size chunk_GetChunkLength, . - chunk_GetChunkLength
