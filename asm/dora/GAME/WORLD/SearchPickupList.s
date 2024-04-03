.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchPickupList
/* 1493C 8002413C 0980033C */  lui        $v1, %hi(NumPickupList)
/* 14940 80024140 A055638C */  lw         $v1, %lo(NumPickupList)($v1)
/* 14944 80024144 00000000 */  nop
/* 14948 80024148 04006018 */  blez       $v1, .L8002415C
/* 1494C 8002414C 21100000 */   addu      $v0, $zero, $zero
.L80024150:
/* 14950 80024150 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 14954 80024154 FEFF6014 */  bnez       $v1, .L80024150
/* 14958 80024158 01004224 */   addiu     $v0, $v0, 0x1
.L8002415C:
/* 1495C 8002415C 0800E003 */  jr         $ra
/* 14960 80024160 00000000 */   nop
.size SearchPickupList, . - SearchPickupList
