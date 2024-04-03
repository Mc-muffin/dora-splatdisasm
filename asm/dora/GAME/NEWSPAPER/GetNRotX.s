.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetNRotX
/* 15D58 80025558 1400A28F */  lw         $v0, 0x14($sp)
/* 15D5C 8002555C 2330C400 */  subu       $a2, $a2, $a0
/* 15D60 80025560 1800C200 */  mult       $a2, $v0
/* 15D64 80025564 12300000 */  mflo       $a2
/* 15D68 80025568 1000A38F */  lw         $v1, 0x10($sp)
/* 15D6C 8002556C 2310E500 */  subu       $v0, $a3, $a1
/* 15D70 80025570 18004300 */  mult       $v0, $v1
/* 15D74 80025574 03330600 */  sra        $a2, $a2, 12
/* 15D78 80025578 21208600 */  addu       $a0, $a0, $a2
/* 15D7C 8002557C 12100000 */  mflo       $v0
/* 15D80 80025580 03130200 */  sra        $v0, $v0, 12
/* 15D84 80025584 0800E003 */  jr         $ra
/* 15D88 80025588 23108200 */   subu      $v0, $a0, $v0
.size GetNRotX, . - GetNRotX
