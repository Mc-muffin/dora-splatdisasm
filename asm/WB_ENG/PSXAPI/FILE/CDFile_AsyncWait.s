.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_AsyncWait
/* 47D8C 8005758C 0980033C */  lui        $v1, %hi(gCDCallback)
.L80057590:
/* 47D90 80057590 5C82628C */  lw         $v0, %lo(gCDCallback)($v1)
/* 47D94 80057594 00000000 */  nop
/* 47D98 80057598 FDFF4014 */  bnez       $v0, .L80057590
/* 47D9C 8005759C 21100000 */   addu      $v0, $zero, $zero
/* 47DA0 800575A0 0800E003 */  jr         $ra
/* 47DA4 800575A4 00000000 */   nop
.size CDFile_AsyncWait, . - CDFile_AsyncWait
