.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetAverageVelocity
/* 2BFA0 8003B7A0 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BFA4 8003B7A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2BFA8 8003B7A8 1400BFAF */  sw         $ra, 0x14($sp)
/* 2BFAC 8003B7AC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BFB0 8003B7B0 6800448C */  lw         $a0, 0x68($v0)
/* 2BFB4 8003B7B4 6C00458C */  lw         $a1, 0x6C($v0)
/* 2BFB8 8003B7B8 7000468C */  lw         $a2, 0x70($v0)
/* 2BFBC 8003B7BC 1FEA000C */  jal        DistApprox_3d
/* 2BFC0 8003B7C0 00000000 */   nop
/* 2BFC4 8003B7C4 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BFC8 8003B7C8 00000000 */  nop
/* 2BFCC 8003B7CC 5C00648C */  lw         $a0, 0x5C($v1)
/* 2BFD0 8003B7D0 6000658C */  lw         $a1, 0x60($v1)
/* 2BFD4 8003B7D4 6400668C */  lw         $a2, 0x64($v1)
/* 2BFD8 8003B7D8 1FEA000C */  jal        DistApprox_3d
/* 2BFDC 8003B7DC 21804000 */   addu      $s0, $v0, $zero
/* 2BFE0 8003B7E0 21100202 */  addu       $v0, $s0, $v0
/* 2BFE4 8003B7E4 1400BF8F */  lw         $ra, 0x14($sp)
/* 2BFE8 8003B7E8 1000B08F */  lw         $s0, 0x10($sp)
/* 2BFEC 8003B7EC 0800E003 */  jr         $ra
/* 2BFF0 8003B7F0 1800BD27 */   addiu     $sp, $sp, 0x18
.size GetAverageVelocity, . - GetAverageVelocity
