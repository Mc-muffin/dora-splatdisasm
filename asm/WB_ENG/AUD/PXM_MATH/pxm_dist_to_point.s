.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_dist_to_point
/* 45118 80054918 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4511C 8005491C 1000BFAF */  sw         $ra, 0x10($sp)
/* 45120 80054920 00008384 */  lh         $v1, 0x0($a0)
/* 45124 80054924 0000A284 */  lh         $v0, 0x0($a1)
/* 45128 80054928 00000000 */  nop
/* 4512C 8005492C 23186200 */  subu       $v1, $v1, $v0
/* 45130 80054930 18006300 */  mult       $v1, $v1
/* 45134 80054934 04008484 */  lh         $a0, 0x4($a0)
/* 45138 80054938 0400A284 */  lh         $v0, 0x4($a1)
/* 4513C 8005493C 12180000 */  mflo       $v1
/* 45140 80054940 23208200 */  subu       $a0, $a0, $v0
/* 45144 80054944 00000000 */  nop
/* 45148 80054948 18008400 */  mult       $a0, $a0
/* 4514C 8005494C 12200000 */  mflo       $a0
/* 45150 80054950 CB50010C */  jal        fast_sqrt
/* 45154 80054954 21206400 */   addu      $a0, $v1, $a0
/* 45158 80054958 1000BF8F */  lw         $ra, 0x10($sp)
/* 4515C 8005495C 00000000 */  nop
/* 45160 80054960 0800E003 */  jr         $ra
/* 45164 80054964 1800BD27 */   addiu     $sp, $sp, 0x18
.size pxm_dist_to_point, . - pxm_dist_to_point
