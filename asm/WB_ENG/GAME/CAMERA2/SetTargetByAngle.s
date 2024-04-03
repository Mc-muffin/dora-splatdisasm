.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTargetByAngle
/* 2BEB4 8003B6B4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BEB8 8003B6B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2BEBC 8003B6BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BEC0 8003B6C0 FFFF9030 */  andi       $s0, $a0, 0xFFFF
/* 2BEC4 8003B6C4 2000BFAF */  sw         $ra, 0x20($sp)
/* 2BEC8 8003B6C8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2BECC 8003B6CC 1800B2AF */  sw         $s2, 0x18($sp)
/* 2BED0 8003B6D0 1400B1AF */  sw         $s1, 0x14($sp)
/* 2BED4 8003B6D4 2C00518C */  lw         $s1, 0x2C($v0)
/* 2BED8 8003B6D8 3000528C */  lw         $s2, 0x30($v0)
/* 2BEDC 8003B6DC 3400538C */  lw         $s3, 0x34($v0)
/* 2BEE0 8003B6E0 21200002 */  addu       $a0, $s0, $zero
/* 2BEE4 8003B6E4 8A40010C */  jal        s16Sin
/* 2BEE8 8003B6E8 840050A4 */   sh        $s0, 0x84($v0)
/* 2BEEC 8003B6EC 21200002 */  addu       $a0, $s0, $zero
/* 2BEF0 8003B6F0 C0110200 */  sll        $v0, $v0, 7
/* 2BEF4 8003B6F4 83120200 */  sra        $v0, $v0, 10
/* 2BEF8 8003B6F8 AD40010C */  jal        s16Cos
/* 2BEFC 8003B6FC 21882202 */   addu      $s1, $s1, $v0
/* 2BF00 8003B700 21202002 */  addu       $a0, $s1, $zero
/* 2BF04 8003B704 C0110200 */  sll        $v0, $v0, 7
/* 2BF08 8003B708 83120200 */  sra        $v0, $v0, 10
/* 2BF0C 8003B70C 21284002 */  addu       $a1, $s2, $zero
/* 2BF10 8003B710 E2ED000C */  jal        SetViewReference
/* 2BF14 8003B714 21306202 */   addu      $a2, $s3, $v0
/* 2BF18 8003B718 2000BF8F */  lw         $ra, 0x20($sp)
/* 2BF1C 8003B71C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2BF20 8003B720 1800B28F */  lw         $s2, 0x18($sp)
/* 2BF24 8003B724 1400B18F */  lw         $s1, 0x14($sp)
/* 2BF28 8003B728 1000B08F */  lw         $s0, 0x10($sp)
/* 2BF2C 8003B72C 0800E003 */  jr         $ra
/* 2BF30 8003B730 2800BD27 */   addiu     $sp, $sp, 0x28
.size SetTargetByAngle, . - SetTargetByAngle
