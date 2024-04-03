.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckSphericalRange
/* 33950 80043150 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 33954 80043154 2320E400 */  subu       $a0, $a3, $a0
/* 33958 80043158 1000B0AF */  sw         $s0, 0x10($sp)
/* 3395C 8004315C 3000B08F */  lw         $s0, 0x30($sp)
/* 33960 80043160 2C00A58F */  lw         $a1, 0x2C($sp)
/* 33964 80043164 83200400 */  sra        $a0, $a0, 2
/* 33968 80043168 1400BFAF */  sw         $ra, 0x14($sp)
/* 3396C 8004316C 83801000 */  sra        $s0, $s0, 2
/* 33970 80043170 2328A600 */  subu       $a1, $a1, $a2
/* 33974 80043174 FEE9000C */  jal        DistApprox_2d
/* 33978 80043178 83280500 */   sra       $a1, $a1, 2
/* 3397C 8004317C 2A105000 */  slt        $v0, $v0, $s0
/* 33980 80043180 1400BF8F */  lw         $ra, 0x14($sp)
/* 33984 80043184 1000B08F */  lw         $s0, 0x10($sp)
/* 33988 80043188 0800E003 */  jr         $ra
/* 3398C 8004318C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckSphericalRange, . - CheckSphericalRange
