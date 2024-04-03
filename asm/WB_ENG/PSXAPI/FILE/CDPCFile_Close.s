.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_Close
/* 47D80 80057580 0980023C */  lui        $v0, %hi(gCDCallback + 0x14)
/* 47D84 80057584 0800E003 */  jr         $ra
/* 47D88 80057588 708240AC */   sw        $zero, %lo(gCDCallback + 0x14)($v0)
.size CDPCFile_Close, . - CDPCFile_Close
