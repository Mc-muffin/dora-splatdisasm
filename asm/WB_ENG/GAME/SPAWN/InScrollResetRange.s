.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InScrollResetRange
/* 33B44 80043344 0980033C */  lui        $v1, %hi(ScrollCamXPos)
/* 33B48 80043348 4843638C */  lw         $v1, %lo(ScrollCamXPos)($v1)
/* 33B4C 8004334C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 33B50 80043350 1400BFAF */  sw         $ra, 0x14($sp)
/* 33B54 80043354 1000B0AF */  sw         $s0, 0x10($sp)
/* 33B58 80043358 7000828C */  lw         $v0, 0x70($a0)
/* 33B5C 8004335C 0980063C */  lui        $a2, %hi(ScrollCamZPos)
/* 33B60 80043360 5043C68C */  lw         $a2, %lo(ScrollCamZPos)($a2)
/* 33B64 80043364 7800858C */  lw         $a1, 0x78($a0)
/* 33B68 80043368 B00C908F */  lw         $s0, %gp_rel(TESTR3)($gp)
/* 33B6C 8004336C 23104300 */  subu       $v0, $v0, $v1
/* 33B70 80043370 2328A600 */  subu       $a1, $a1, $a2
/* 33B74 80043374 83801000 */  sra        $s0, $s0, 2
/* 33B78 80043378 83200200 */  sra        $a0, $v0, 2
/* 33B7C 8004337C FEE9000C */  jal        DistApprox_2d
/* 33B80 80043380 83280500 */   sra       $a1, $a1, 2
/* 33B84 80043384 2A105000 */  slt        $v0, $v0, $s0
/* 33B88 80043388 1400BF8F */  lw         $ra, 0x14($sp)
/* 33B8C 8004338C 1000B08F */  lw         $s0, 0x10($sp)
/* 33B90 80043390 01004238 */  xori       $v0, $v0, 0x1
/* 33B94 80043394 0800E003 */  jr         $ra
/* 33B98 80043398 1800BD27 */   addiu     $sp, $sp, 0x18
.size InScrollResetRange, . - InScrollResetRange
