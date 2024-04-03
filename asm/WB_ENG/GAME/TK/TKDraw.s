.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TKDraw
/* 347F4 80043FF4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 347F8 80043FF8 1400B1AF */  sw         $s1, 0x14($sp)
/* 347FC 80043FFC 21888000 */  addu       $s1, $a0, $zero
/* 34800 80044000 1800BFAF */  sw         $ra, 0x18($sp)
/* 34804 80044004 258C010C */  jal        GetActorDepth
/* 34808 80044008 1000B0AF */   sw        $s0, 0x10($sp)
/* 3480C 8004400C 21804000 */  addu       $s0, $v0, $zero
/* 34810 80044010 03000006 */  bltz       $s0, .L80044020
/* 34814 80044014 21202002 */   addu      $a0, $s1, $zero
/* 34818 80044018 B19A010C */  jal        DrawActor
/* 3481C 8004401C 21280002 */   addu      $a1, $s0, $zero
.L80044020:
/* 34820 80044020 21100002 */  addu       $v0, $s0, $zero
/* 34824 80044024 1800BF8F */  lw         $ra, 0x18($sp)
/* 34828 80044028 1400B18F */  lw         $s1, 0x14($sp)
/* 3482C 8004402C 1000B08F */  lw         $s0, 0x10($sp)
/* 34830 80044030 0800E003 */  jr         $ra
/* 34834 80044034 2000BD27 */   addiu     $sp, $sp, 0x20
.size TKDraw, . - TKDraw
