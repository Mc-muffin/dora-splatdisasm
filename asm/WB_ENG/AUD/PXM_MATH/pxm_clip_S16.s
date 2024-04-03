.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_clip_S16
/* 44EDC 800546DC 00240400 */  sll        $a0, $a0, 16
/* 44EE0 800546E0 03240400 */  sra        $a0, $a0, 16
/* 44EE4 800546E4 002C0500 */  sll        $a1, $a1, 16
/* 44EE8 800546E8 00340600 */  sll        $a2, $a2, 16
/* 44EEC 800546EC 03340600 */  sra        $a2, $a2, 16
/* 44EF0 800546F0 2A10C400 */  slt        $v0, $a2, $a0
/* 44EF4 800546F4 03004010 */  beqz       $v0, .L80054704
/* 44EF8 800546F8 032C0500 */   sra       $a1, $a1, 16
/* 44EFC 800546FC C5510108 */  j          .L80054714
/* 44F00 80054700 2120C000 */   addu      $a0, $a2, $zero
.L80054704:
/* 44F04 80054704 2A108500 */  slt        $v0, $a0, $a1
/* 44F08 80054708 02004010 */  beqz       $v0, .L80054714
/* 44F0C 8005470C 00000000 */   nop
/* 44F10 80054710 2120A000 */  addu       $a0, $a1, $zero
.L80054714:
/* 44F14 80054714 0800E003 */  jr         $ra
/* 44F18 80054718 21108000 */   addu      $v0, $a0, $zero
.size pxm_clip_S16, . - pxm_clip_S16
