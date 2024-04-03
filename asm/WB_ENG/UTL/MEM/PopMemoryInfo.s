.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PopMemoryInfo
/* 40860 80050060 B415838F */  lw         $v1, %gp_rel(glastblock)($gp)
/* 40864 80050064 B815828F */  lw         $v0, %gp_rel(glastHeap)($gp)
/* 40868 80050068 0800E003 */  jr         $ra
/* 4086C 8005006C 000062AC */   sw        $v0, 0x0($v1)
.size PopMemoryInfo, . - PopMemoryInfo
