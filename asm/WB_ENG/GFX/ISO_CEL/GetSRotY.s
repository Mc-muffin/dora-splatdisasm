.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSRotY
/* 51BE8 800613E8 1400A28F */  lw         $v0, 0x14($sp)
/* 51BEC 800613EC 2330C400 */  subu       $a2, $a2, $a0
/* 51BF0 800613F0 1800C200 */  mult       $a2, $v0
/* 51BF4 800613F4 12300000 */  mflo       $a2
/* 51BF8 800613F8 1000A38F */  lw         $v1, 0x10($sp)
/* 51BFC 800613FC 2310E500 */  subu       $v0, $a3, $a1
/* 51C00 80061400 18004300 */  mult       $v0, $v1
/* 51C04 80061404 03330600 */  sra        $a2, $a2, 12
/* 51C08 80061408 21208600 */  addu       $a0, $a0, $a2
/* 51C0C 8006140C 12100000 */  mflo       $v0
/* 51C10 80061410 03130200 */  sra        $v0, $v0, 12
/* 51C14 80061414 0800E003 */  jr         $ra
/* 51C18 80061418 21108200 */   addu      $v0, $a0, $v0
.size GetSRotY, . - GetSRotY
