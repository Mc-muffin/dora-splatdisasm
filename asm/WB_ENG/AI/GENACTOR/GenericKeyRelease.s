.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericKeyRelease
/* 3AD44 8004A544 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AD48 8004A548 1000BFAF */  sw         $ra, 0x10($sp)
/* 3AD4C 8004A54C 2401828C */  lw         $v0, 0x124($a0)
/* 3AD50 8004A550 00000000 */  nop
/* 3AD54 8004A554 3C004484 */  lh         $a0, 0x3C($v0)
/* 3AD58 8004A558 00000000 */  nop
/* 3AD5C 8004A55C 0300801C */  bgtz       $a0, .L8004A56C
/* 3AD60 8004A560 4000A524 */   addiu     $a1, $a1, 0x40
/* 3AD64 8004A564 5F290108 */  j          .L8004A57C
/* 3AD68 8004A568 21100000 */   addu      $v0, $zero, $zero
.L8004A56C:
/* 3AD6C 8004A56C 80FFC624 */  addiu      $a2, $a2, -0x80
/* 3AD70 8004A570 2302010C */  jal        LeavePickupTrigger
/* 3AD74 8004A574 4000E724 */   addiu     $a3, $a3, 0x40
/* 3AD78 8004A578 01000224 */  addiu      $v0, $zero, 0x1
.L8004A57C:
/* 3AD7C 8004A57C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AD80 8004A580 00000000 */  nop
/* 3AD84 8004A584 0800E003 */  jr         $ra
/* 3AD88 8004A588 1800BD27 */   addiu     $sp, $sp, 0x18
.size GenericKeyRelease, . - GenericKeyRelease
