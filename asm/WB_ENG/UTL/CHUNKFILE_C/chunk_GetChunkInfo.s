.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_GetChunkInfo
/* 40E54 80050654 0C00828C */  lw         $v0, 0xC($a0)
/* 40E58 80050658 80180500 */  sll        $v1, $a1, 2
/* 40E5C 8005065C 21186500 */  addu       $v1, $v1, $a1
/* 40E60 80050660 80180300 */  sll        $v1, $v1, 2
/* 40E64 80050664 0800E003 */  jr         $ra
/* 40E68 80050668 21104300 */   addu      $v0, $v0, $v1
.size chunk_GetChunkInfo, . - chunk_GetChunkInfo
