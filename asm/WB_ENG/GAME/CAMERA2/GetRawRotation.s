.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetRawRotation
/* 2C048 8003B848 0A80023C */  lui        $v0, %hi(GeomEnv)
/* 2C04C 8003B84C 40B14394 */  lhu        $v1, %lo(GeomEnv)($v0)
/* 2C050 8003B850 40B14224 */  addiu      $v0, $v0, %lo(GeomEnv)
/* 2C054 8003B854 000083A4 */  sh         $v1, 0x0($a0)
/* 2C058 8003B858 02004394 */  lhu        $v1, 0x2($v0)
/* 2C05C 8003B85C 0800E003 */  jr         $ra
/* 2C060 8003B860 0000A3A4 */   sh        $v1, 0x0($a1)
.size GetRawRotation, . - GetRawRotation
