.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSRotX
/* 51C1C 8006141C 1400A28F */  lw         $v0, 0x14($sp)
/* 51C20 80061420 2338E500 */  subu       $a3, $a3, $a1
/* 51C24 80061424 1800E200 */  mult       $a3, $v0
/* 51C28 80061428 12380000 */  mflo       $a3
/* 51C2C 8006142C 1000A38F */  lw         $v1, 0x10($sp)
/* 51C30 80061430 2310C400 */  subu       $v0, $a2, $a0
/* 51C34 80061434 18004300 */  mult       $v0, $v1
/* 51C38 80061438 033B0700 */  sra        $a3, $a3, 12
/* 51C3C 8006143C 2128A700 */  addu       $a1, $a1, $a3
/* 51C40 80061440 12100000 */  mflo       $v0
/* 51C44 80061444 03130200 */  sra        $v0, $v0, 12
/* 51C48 80061448 0800E003 */  jr         $ra
/* 51C4C 8006144C 2110A200 */   addu      $v0, $a1, $v0
.size GetSRotX, . - GetSRotX
