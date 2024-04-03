.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutCamera_STBA
/* 2BB0C 8003B30C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BB10 8003B310 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2BB14 8003B314 1400B1AF */  sw         $s1, 0x14($sp)
/* 2BB18 8003B318 21888000 */  addu       $s1, $a0, $zero
/* 2BB1C 8003B31C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2BB20 8003B320 2198A000 */  addu       $s3, $a1, $zero
/* 2BB24 8003B324 2000BFAF */  sw         $ra, 0x20($sp)
/* 2BB28 8003B328 1800B2AF */  sw         $s2, 0x18($sp)
/* 2BB2C 8003B32C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BB30 8003B330 84005094 */  lhu        $s0, 0x84($v0)
/* 2BB34 8003B334 2190C000 */  addu       $s2, $a2, $zero
/* 2BB38 8003B338 2C0051AC */  sw         $s1, 0x2C($v0)
/* 2BB3C 8003B33C 300053AC */  sw         $s3, 0x30($v0)
/* 2BB40 8003B340 340052AC */  sw         $s2, 0x34($v0)
/* 2BB44 8003B344 21200002 */  addu       $a0, $s0, $zero
/* 2BB48 8003B348 8A40010C */  jal        s16Sin
/* 2BB4C 8003B34C 840050A4 */   sh        $s0, 0x84($v0)
/* 2BB50 8003B350 21200002 */  addu       $a0, $s0, $zero
/* 2BB54 8003B354 C0110200 */  sll        $v0, $v0, 7
/* 2BB58 8003B358 83120200 */  sra        $v0, $v0, 10
/* 2BB5C 8003B35C AD40010C */  jal        s16Cos
/* 2BB60 8003B360 21882202 */   addu      $s1, $s1, $v0
/* 2BB64 8003B364 21202002 */  addu       $a0, $s1, $zero
/* 2BB68 8003B368 C0110200 */  sll        $v0, $v0, 7
/* 2BB6C 8003B36C 83120200 */  sra        $v0, $v0, 10
/* 2BB70 8003B370 21286002 */  addu       $a1, $s3, $zero
/* 2BB74 8003B374 E2ED000C */  jal        SetViewReference
/* 2BB78 8003B378 21304202 */   addu      $a2, $s2, $v0
/* 2BB7C 8003B37C 2000BF8F */  lw         $ra, 0x20($sp)
/* 2BB80 8003B380 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2BB84 8003B384 1800B28F */  lw         $s2, 0x18($sp)
/* 2BB88 8003B388 1400B18F */  lw         $s1, 0x14($sp)
/* 2BB8C 8003B38C 1000B08F */  lw         $s0, 0x10($sp)
/* 2BB90 8003B390 0800E003 */  jr         $ra
/* 2BB94 8003B394 2800BD27 */   addiu     $sp, $sp, 0x28
.size PutCamera_STBA, . - PutCamera_STBA
