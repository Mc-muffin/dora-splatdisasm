.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalculateCelIndexInit
/* 55D48 80065548 0880023C */  lui        $v0, %hi(TestWorld + 0x18)
/* 55D4C 8006554C A465438C */  lw         $v1, %lo(TestWorld + 0x18)($v0)
/* 55D50 80065550 00000000 */  nop
/* 55D54 80065554 23108300 */  subu       $v0, $a0, $v1
/* 55D58 80065558 0800E003 */  jr         $ra
/* 55D5C 8006555C 83100200 */   sra       $v0, $v0, 2
.size CalculateCelIndexInit, . - CalculateCelIndexInit
