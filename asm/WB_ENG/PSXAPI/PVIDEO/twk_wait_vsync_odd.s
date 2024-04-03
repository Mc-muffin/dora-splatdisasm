.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel twk_wait_vsync_odd
/* 4BF04 8005B704 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BF08 8005B708 1000BFAF */  sw         $ra, 0x10($sp)
/* 4BF0C 8005B70C EBD6010C */  jal        VSync
/* 4BF10 8005B710 21200000 */   addu      $a0, $zero, $zero
/* 4BF14 8005B714 F81680AF */  sw         $zero, %gp_rel(Frame)($gp)
/* 4BF18 8005B718 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BF1C 8005B71C 00000000 */  nop
/* 4BF20 8005B720 08004014 */  bnez       $v0, .L8005B744
/* 4BF24 8005B724 00000000 */   nop
.L8005B728:
/* 4BF28 8005B728 8DDE010C */  jal        GetODE
/* 4BF2C 8005B72C 00000000 */   nop
/* 4BF30 8005B730 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4BF34 8005B734 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BF38 8005B738 00000000 */  nop
/* 4BF3C 8005B73C FAFF4010 */  beqz       $v0, .L8005B728
/* 4BF40 8005B740 00000000 */   nop
.L8005B744:
/* 4BF44 8005B744 1000BF8F */  lw         $ra, 0x10($sp)
/* 4BF48 8005B748 00000000 */  nop
/* 4BF4C 8005B74C 0800E003 */  jr         $ra
/* 4BF50 8005B750 1800BD27 */   addiu     $sp, $sp, 0x18
.size twk_wait_vsync_odd, . - twk_wait_vsync_odd
