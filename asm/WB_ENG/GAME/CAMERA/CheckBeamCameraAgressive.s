.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckBeamCameraAgressive
/* 2B400 8003AC00 0980033C */  lui        $v1, %hi(ETActor + 0xC)
/* 2B404 8003AC04 BC5A628C */  lw         $v0, %lo(ETActor + 0xC)($v1)
/* 2B408 8003AC08 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2B40C 8003AC0C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 2B410 8003AC10 0200422C */  sltiu      $v0, $v0, 0x2
/* 2B414 8003AC14 04004010 */  beqz       $v0, .L8003AC28
/* 2B418 8003AC18 1000BFAF */   sw        $ra, 0x10($sp)
/* 2B41C 8003AC1C 6C0B8497 */  lhu        $a0, %gp_rel(BEAM_AGGRESIVE)($gp)
/* 2B420 8003AC20 07ED000C */  jal        SetAggressive
/* 2B424 8003AC24 00000000 */   nop
.L8003AC28:
/* 2B428 8003AC28 700B828F */  lw         $v0, %gp_rel(ForceBeamCam)($gp)
/* 2B42C 8003AC2C 00000000 */  nop
/* 2B430 8003AC30 03004010 */  beqz       $v0, .L8003AC40
/* 2B434 8003AC34 00000000 */   nop
/* 2B438 8003AC38 07ED000C */  jal        SetAggressive
/* 2B43C 8003AC3C 21200000 */   addu      $a0, $zero, $zero
.L8003AC40:
/* 2B440 8003AC40 1000BF8F */  lw         $ra, 0x10($sp)
/* 2B444 8003AC44 00000000 */  nop
/* 2B448 8003AC48 0800E003 */  jr         $ra
/* 2B44C 8003AC4C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckBeamCameraAgressive, . - CheckBeamCameraAgressive
