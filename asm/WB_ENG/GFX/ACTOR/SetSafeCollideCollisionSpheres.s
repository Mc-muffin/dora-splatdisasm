.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSafeCollideCollisionSpheres
/* 527C8 80061FC8 21388000 */  addu       $a3, $a0, $zero
/* 527CC 80061FCC 0E00E010 */  beqz       $a3, .L80062008
/* 527D0 80061FD0 00000000 */   nop
/* 527D4 80061FD4 0800E694 */  lhu        $a2, 0x8($a3)
/* 527D8 80061FD8 00000000 */  nop
/* 527DC 80061FDC 0A00C010 */  beqz       $a2, .L80062008
/* 527E0 80061FE0 21280000 */   addu      $a1, $zero, $zero
.L80061FE4:
/* 527E4 80061FE4 40110500 */  sll        $v0, $a1, 5
/* 527E8 80061FE8 2000E48C */  lw         $a0, 0x20($a3)
/* 527EC 80061FEC 0100A524 */  addiu      $a1, $a1, 0x1
/* 527F0 80061FF0 21208200 */  addu       $a0, $a0, $v0
/* 527F4 80061FF4 02008394 */  lhu        $v1, 0x2($a0)
/* 527F8 80061FF8 2A10A600 */  slt        $v0, $a1, $a2
/* 527FC 80061FFC FEFF6330 */  andi       $v1, $v1, 0xFFFE
/* 52800 80062000 F8FF4014 */  bnez       $v0, .L80061FE4
/* 52804 80062004 020083A4 */   sh        $v1, 0x2($a0)
.L80062008:
/* 52808 80062008 0800E003 */  jr         $ra
/* 5280C 8006200C 00000000 */   nop
.size SetSafeCollideCollisionSpheres, . - SetSafeCollideCollisionSpheres
