.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MA_CalcLocale
/* 2C214 8003BA14 0A80033C */  lui        $v1, %hi(GeomEnv + 0x2)
/* 2C218 8003BA18 42B16294 */  lhu        $v0, %lo(GeomEnv + 0x2)($v1)
/* 2C21C 8003BA1C 0800E003 */  jr         $ra
/* 2C220 8003BA20 00000000 */   nop
.size MA_CalcLocale, . - MA_CalcLocale
