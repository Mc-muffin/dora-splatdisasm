.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitFader
/* 23D1C 8003351C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23D20 80033520 0180043C */  lui        $a0, %hi(D_80011A38)
/* 23D24 80033524 1000BFAF */  sw         $ra, 0x10($sp)
/* 23D28 80033528 45C3000C */  jal        LoadFaderTexture
/* 23D2C 8003352C 381A8424 */   addiu     $a0, $a0, %lo(D_80011A38)
/* 23D30 80033530 1000BF8F */  lw         $ra, 0x10($sp)
/* 23D34 80033534 00000000 */  nop
/* 23D38 80033538 0800E003 */  jr         $ra
/* 23D3C 8003353C 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitFader, . - InitFader
