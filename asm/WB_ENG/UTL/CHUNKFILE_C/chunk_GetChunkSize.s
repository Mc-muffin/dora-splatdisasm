.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_GetChunkSize
/* 4127C 80050A7C 80100500 */  sll        $v0, $a1, 2
/* 41280 80050A80 21104500 */  addu       $v0, $v0, $a1
/* 41284 80050A84 0C00838C */  lw         $v1, 0xC($a0)
/* 41288 80050A88 80100200 */  sll        $v0, $v0, 2
/* 4128C 80050A8C 21186200 */  addu       $v1, $v1, $v0
/* 41290 80050A90 1000628C */  lw         $v0, 0x10($v1)
/* 41294 80050A94 0800E003 */  jr         $ra
/* 41298 80050A98 00000000 */   nop
.size chunk_GetChunkSize, . - chunk_GetChunkSize
