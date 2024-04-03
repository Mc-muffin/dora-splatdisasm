.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DecDCTvlcBuild3
/* 584DC 80067CDC 801F043C */  lui        $a0, (0x1F800004 >> 16)
/* 584E0 80067CE0 0980053C */  lui        $a1, %hi(D_800882F4)
/* 584E4 80067CE4 F482A524 */  addiu      $a1, $a1, %lo(D_800882F4)
/* 584E8 80067CE8 D6000834 */  ori        $t0, $zero, 0xD6
.L80067CEC:
/* 584EC 80067CEC 0000A990 */  lbu        $t1, 0x0($a1)
/* 584F0 80067CF0 0100AA90 */  lbu        $t2, 0x1($a1)
/* 584F4 80067CF4 804A0900 */  sll        $t1, $t1, 10
/* 584F8 80067CF8 22580A00 */  neg        $t3, $t2 /* handwritten instruction */
/* 584FC 80067CFC FF036B31 */  andi       $t3, $t3, 0x3FF
/* 58500 80067D00 25502A01 */  or         $t2, $t1, $t2
/* 58504 80067D04 00008AA4 */  sh         $t2, (0x1F800000 & 0xFFFF)($a0)
/* 58508 80067D08 25582B01 */  or         $t3, $t1, $t3
/* 5850C 80067D0C 02008BA4 */  sh         $t3, (0x1F800002 & 0xFFFF)($a0)
/* 58510 80067D10 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
/* 58514 80067D14 04008420 */  addi       $a0, $a0, (0x1F800004 & 0xFFFF) /* handwritten instruction */
/* 58518 80067D18 F4FF0105 */  bgez       $t0, .L80067CEC
/* 5851C 80067D1C FEFF0821 */   addi      $t0, $t0, -0x2 /* handwritten instruction */
/* 58520 80067D20 0800E003 */  jr         $ra
/* 58524 80067D24 00000000 */   nop
.size DecDCTvlcBuild3, . - DecDCTvlcBuild3
