.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HeartStunDraw
/* 3A890 8004A090 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3A894 8004A094 1400B1AF */  sw         $s1, 0x14($sp)
/* 3A898 8004A098 21888000 */  addu       $s1, $a0, $zero
/* 3A89C 8004A09C 1800BFAF */  sw         $ra, 0x18($sp)
/* 3A8A0 8004A0A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 3A8A4 8004A0A4 1000228E */  lw         $v0, 0x10($s1)
/* 3A8A8 8004A0A8 00000000 */  nop
/* 3A8AC 8004A0AC 00044230 */  andi       $v0, $v0, 0x400
/* 3A8B0 8004A0B0 0A004010 */  beqz       $v0, .L8004A0DC
/* 3A8B4 8004A0B4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 3A8B8 8004A0B8 258C010C */  jal        GetActorDepth
/* 3A8BC 8004A0BC 21202002 */   addu      $a0, $s1, $zero
/* 3A8C0 8004A0C0 21804000 */  addu       $s0, $v0, $zero
/* 3A8C4 8004A0C4 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 3A8C8 8004A0C8 03000212 */  beq        $s0, $v0, .L8004A0D8
/* 3A8CC 8004A0CC 21202002 */   addu      $a0, $s1, $zero
/* 3A8D0 8004A0D0 B19A010C */  jal        DrawActor
/* 3A8D4 8004A0D4 21280002 */   addu      $a1, $s0, $zero
.L8004A0D8:
/* 3A8D8 8004A0D8 21100002 */  addu       $v0, $s0, $zero
.L8004A0DC:
/* 3A8DC 8004A0DC 1800BF8F */  lw         $ra, 0x18($sp)
/* 3A8E0 8004A0E0 1400B18F */  lw         $s1, 0x14($sp)
/* 3A8E4 8004A0E4 1000B08F */  lw         $s0, 0x10($sp)
/* 3A8E8 8004A0E8 0800E003 */  jr         $ra
/* 3A8EC 8004A0EC 2000BD27 */   addiu     $sp, $sp, 0x20
.size HeartStunDraw, . - HeartStunDraw
