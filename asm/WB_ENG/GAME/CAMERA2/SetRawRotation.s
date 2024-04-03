.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetRawRotation
/* 2C034 8003B834 0A80023C */  lui        $v0, %hi(GeomEnv)
/* 2C038 8003B838 40B144A4 */  sh         $a0, %lo(GeomEnv)($v0)
/* 2C03C 8003B83C 40B14224 */  addiu      $v0, $v0, %lo(GeomEnv)
/* 2C040 8003B840 0800E003 */  jr         $ra
/* 2C044 8003B844 020045A4 */   sh        $a1, 0x2($v0)
.size SetRawRotation, . - SetRawRotation
