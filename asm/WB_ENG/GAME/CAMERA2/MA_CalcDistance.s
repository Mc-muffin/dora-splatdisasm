.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MA_CalcDistance
/* 2C198 8003B998 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2C19C 8003B99C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2C1A0 8003B9A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 2C1A4 8003B9A4 0800628C */  lw         $v0, 0x8($v1)
/* 2C1A8 8003B9A8 1400648C */  lw         $a0, 0x14($v1)
/* 2C1AC 8003B9AC 2000658C */  lw         $a1, 0x20($v1)
/* 2C1B0 8003B9B0 21104400 */  addu       $v0, $v0, $a0
/* 2C1B4 8003B9B4 23104500 */  subu       $v0, $v0, $a1
/* 2C1B8 8003B9B8 18004200 */  mult       $v0, $v0
/* 2C1BC 8003B9BC 2800668C */  lw         $a2, 0x28($v1)
/* 2C1C0 8003B9C0 1000648C */  lw         $a0, 0x10($v1)
/* 2C1C4 8003B9C4 1C00658C */  lw         $a1, 0x1C($v1)
/* 2C1C8 8003B9C8 12100000 */  mflo       $v0
/* 2C1CC 8003B9CC 21208500 */  addu       $a0, $a0, $a1
/* 2C1D0 8003B9D0 23208600 */  subu       $a0, $a0, $a2
/* 2C1D4 8003B9D4 18008400 */  mult       $a0, $a0
/* 2C1D8 8003B9D8 12200000 */  mflo       $a0
/* 2C1DC 8003B9DC C7EB010C */  jal        SquareRoot0
/* 2C1E0 8003B9E0 21204400 */   addu      $a0, $v0, $a0
/* 2C1E4 8003B9E4 1000BF8F */  lw         $ra, 0x10($sp)
/* 2C1E8 8003B9E8 00000000 */  nop
/* 2C1EC 8003B9EC 0800E003 */  jr         $ra
/* 2C1F0 8003B9F0 1800BD27 */   addiu     $sp, $sp, 0x18
.size MA_CalcDistance, . - MA_CalcDistance
