.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PickupDraw
/* D1FC 8001C9FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* D200 8001CA00 1400B1AF */  sw         $s1, 0x14($sp)
/* D204 8001CA04 21888000 */  addu       $s1, $a0, $zero
/* D208 8001CA08 1800BFAF */  sw         $ra, 0x18($sp)
/* D20C 8001CA0C 1000B0AF */  sw         $s0, 0x10($sp)
/* D210 8001CA10 1C00238E */  lw         $v1, 0x1C($s1)
/* D214 8001CA14 07000224 */  addiu      $v0, $zero, 0x7
/* D218 8001CA18 05006210 */  beq        $v1, $v0, .L8001CA30
/* D21C 8001CA1C 34000224 */   addiu     $v0, $zero, 0x34
/* D220 8001CA20 19006210 */  beq        $v1, $v0, .L8001CA88
/* D224 8001CA24 FFFF0224 */   addiu     $v0, $zero, -0x1
/* D228 8001CA28 97720008 */  j          .L8001CA5C
/* D22C 8001CA2C 00000000 */   nop
.L8001CA30:
/* D230 8001CA30 6400238E */  lw         $v1, 0x64($s1)
/* D234 8001CA34 01000224 */  addiu      $v0, $zero, 0x1
/* D238 8001CA38 08006214 */  bne        $v1, $v0, .L8001CA5C
/* D23C 8001CA3C 00000000 */   nop
/* D240 8001CA40 5C00238E */  lw         $v1, 0x5C($s1)
/* D244 8001CA44 00000000 */  nop
/* D248 8001CA48 32006228 */  slti       $v0, $v1, 0x32
/* D24C 8001CA4C 03004010 */  beqz       $v0, .L8001CA5C
/* D250 8001CA50 01006230 */   andi      $v0, $v1, 0x1
/* D254 8001CA54 0C004014 */  bnez       $v0, .L8001CA88
/* D258 8001CA58 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8001CA5C:
/* D25C 8001CA5C 258C010C */  jal        GetActorDepth
/* D260 8001CA60 21202002 */   addu      $a0, $s1, $zero
/* D264 8001CA64 21804000 */  addu       $s0, $v0, $zero
/* D268 8001CA68 06000006 */  bltz       $s0, .L8001CA84
/* D26C 8001CA6C 21202002 */   addu      $a0, $s1, $zero
/* D270 8001CA70 B19A010C */  jal        DrawActor
/* D274 8001CA74 21280002 */   addu      $a1, $s0, $zero
/* D278 8001CA78 21202002 */  addu       $a0, $s1, $zero
/* D27C 8001CA7C 3F89010C */  jal        DrawActorShadow
/* D280 8001CA80 01000526 */   addiu     $a1, $s0, 0x1
.L8001CA84:
/* D284 8001CA84 21100002 */  addu       $v0, $s0, $zero
.L8001CA88:
/* D288 8001CA88 1800BF8F */  lw         $ra, 0x18($sp)
/* D28C 8001CA8C 1400B18F */  lw         $s1, 0x14($sp)
/* D290 8001CA90 1000B08F */  lw         $s0, 0x10($sp)
/* D294 8001CA94 0800E003 */  jr         $ra
/* D298 8001CA98 2000BD27 */   addiu     $sp, $sp, 0x20
.size PickupDraw, . - PickupDraw
