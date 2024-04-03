.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel twk_wait_vsync_even
/* 4BF54 8005B754 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BF58 8005B758 21200000 */  addu       $a0, $zero, $zero
/* 4BF5C 8005B75C 1400BFAF */  sw         $ra, 0x14($sp)
/* 4BF60 8005B760 EBD6010C */  jal        VSync
/* 4BF64 8005B764 1000B0AF */   sw        $s0, 0x10($sp)
/* 4BF68 8005B768 F81680AF */  sw         $zero, %gp_rel(Frame)($gp)
/* 4BF6C 8005B76C F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BF70 8005B770 00000000 */  nop
/* 4BF74 8005B774 08004014 */  bnez       $v0, .L8005B798
/* 4BF78 8005B778 01000324 */   addiu     $v1, $zero, 0x1
.L8005B77C:
/* 4BF7C 8005B77C 8DDE010C */  jal        GetODE
/* 4BF80 8005B780 00000000 */   nop
/* 4BF84 8005B784 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4BF88 8005B788 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BF8C 8005B78C 00000000 */  nop
/* 4BF90 8005B790 FAFF4010 */  beqz       $v0, .L8005B77C
/* 4BF94 8005B794 01000324 */   addiu     $v1, $zero, 0x1
.L8005B798:
/* 4BF98 8005B798 F81683AF */  sw         $v1, %gp_rel(Frame)($gp)
/* 4BF9C 8005B79C F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BFA0 8005B7A0 00000000 */  nop
/* 4BFA4 8005B7A4 08004314 */  bne        $v0, $v1, .L8005B7C8
/* 4BFA8 8005B7A8 01001024 */   addiu     $s0, $zero, 0x1
.L8005B7AC:
/* 4BFAC 8005B7AC 8DDE010C */  jal        GetODE
/* 4BFB0 8005B7B0 00000000 */   nop
/* 4BFB4 8005B7B4 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4BFB8 8005B7B8 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BFBC 8005B7BC 00000000 */  nop
/* 4BFC0 8005B7C0 FAFF5010 */  beq        $v0, $s0, .L8005B7AC
/* 4BFC4 8005B7C4 00000000 */   nop
.L8005B7C8:
/* 4BFC8 8005B7C8 1400BF8F */  lw         $ra, 0x14($sp)
/* 4BFCC 8005B7CC 1000B08F */  lw         $s0, 0x10($sp)
/* 4BFD0 8005B7D0 0800E003 */  jr         $ra
/* 4BFD4 8005B7D4 1800BD27 */   addiu     $sp, $sp, 0x18
.size twk_wait_vsync_even, . - twk_wait_vsync_even
