.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetNRotY
/* 15D8C 8002558C 1400A28F */  lw         $v0, 0x14($sp)
/* 15D90 80025590 2338E500 */  subu       $a3, $a3, $a1
/* 15D94 80025594 1800E200 */  mult       $a3, $v0
/* 15D98 80025598 12380000 */  mflo       $a3
/* 15D9C 8002559C 1000A38F */  lw         $v1, 0x10($sp)
/* 15DA0 800255A0 2310C400 */  subu       $v0, $a2, $a0
/* 15DA4 800255A4 18004300 */  mult       $v0, $v1
/* 15DA8 800255A8 033B0700 */  sra        $a3, $a3, 12
/* 15DAC 800255AC 2128A700 */  addu       $a1, $a1, $a3
/* 15DB0 800255B0 12100000 */  mflo       $v0
/* 15DB4 800255B4 03130200 */  sra        $v0, $v0, 12
/* 15DB8 800255B8 0800E003 */  jr         $ra
/* 15DBC 800255BC 2110A200 */   addu      $v0, $a1, $v0
.size GetNRotY, . - GetNRotY
