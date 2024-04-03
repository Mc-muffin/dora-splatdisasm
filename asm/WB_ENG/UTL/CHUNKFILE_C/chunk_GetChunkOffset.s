.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_GetChunkOffset
/* 40E6C 8005066C 80100500 */  sll        $v0, $a1, 2
/* 40E70 80050670 21104500 */  addu       $v0, $v0, $a1
/* 40E74 80050674 0C00838C */  lw         $v1, 0xC($a0)
/* 40E78 80050678 80100200 */  sll        $v0, $v0, 2
/* 40E7C 8005067C 21186200 */  addu       $v1, $v1, $v0
/* 40E80 80050680 0C00658C */  lw         $a1, 0xC($v1)
/* 40E84 80050684 0400828C */  lw         $v0, 0x4($a0)
/* 40E88 80050688 0800E003 */  jr         $ra
/* 40E8C 8005068C 2110A200 */   addu      $v0, $a1, $v0
.size chunk_GetChunkOffset, . - chunk_GetChunkOffset
