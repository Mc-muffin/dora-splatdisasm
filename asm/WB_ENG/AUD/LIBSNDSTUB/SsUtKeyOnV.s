.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsUtKeyOnV
/* 45F78 80055778 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45F7C 8005577C 002C0700 */  sll        $a1, $a3, 16
/* 45F80 80055780 21200000 */  addu       $a0, $zero, $zero
/* 45F84 80055784 032C0500 */  sra        $a1, $a1, 16
/* 45F88 80055788 1000BFAF */  sw         $ra, 0x10($sp)
/* 45F8C 8005578C 6F4A010C */  jal        pxm_sendevent
/* 45F90 80055790 21300000 */   addu      $a2, $zero, $zero
/* 45F94 80055794 1000BF8F */  lw         $ra, 0x10($sp)
/* 45F98 80055798 00000000 */  nop
/* 45F9C 8005579C 0800E003 */  jr         $ra
/* 45FA0 800557A0 1800BD27 */   addiu     $sp, $sp, 0x18
.size SsUtKeyOnV, . - SsUtKeyOnV
