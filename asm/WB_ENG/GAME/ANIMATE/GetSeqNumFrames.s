.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSeqNumFrames
/* 294A0 80038CA0 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 294A4 80038CA4 2130A000 */  addu       $a2, $a1, $zero
/* 294A8 80038CA8 6000BFAF */  sw         $ra, 0x60($sp)
/* 294AC 80038CAC 4400828C */  lw         $v0, 0x44($a0)
/* 294B0 80038CB0 0A80033C */  lui        $v1, %hi(AnimationList)
/* 294B4 80038CB4 1000448C */  lw         $a0, 0x10($v0)
/* 294B8 80038CB8 80516324 */  addiu      $v1, $v1, %lo(AnimationList)
/* 294BC 80038CBC 40110400 */  sll        $v0, $a0, 5
/* 294C0 80038CC0 23104400 */  subu       $v0, $v0, $a0
/* 294C4 80038CC4 21104600 */  addu       $v0, $v0, $a2
/* 294C8 80038CC8 80100200 */  sll        $v0, $v0, 2
/* 294CC 80038CCC 21186200 */  addu       $v1, $v1, $v0
/* 294D0 80038CD0 0400638C */  lw         $v1, 0x4($v1)
/* 294D4 80038CD4 00000000 */  nop
/* 294D8 80038CD8 0F006014 */  bnez       $v1, .L80038D18
/* 294DC 80038CDC 0180053C */   lui       $a1, %hi(D_80012894)
/* 294E0 80038CE0 0880033C */  lui        $v1, %hi(MeshIDTable)
/* 294E4 80038CE4 60546324 */  addiu      $v1, $v1, %lo(MeshIDTable)
/* 294E8 80038CE8 40100400 */  sll        $v0, $a0, 1
/* 294EC 80038CEC 21104400 */  addu       $v0, $v0, $a0
/* 294F0 80038CF0 80100200 */  sll        $v0, $v0, 2
/* 294F4 80038CF4 23104400 */  subu       $v0, $v0, $a0
/* 294F8 80038CF8 80100200 */  sll        $v0, $v0, 2
/* 294FC 80038CFC 21186200 */  addu       $v1, $v1, $v0
/* 29500 80038D00 1000A427 */  addiu      $a0, $sp, 0x10
/* 29504 80038D04 2800678C */  lw         $a3, 0x28($v1)
/* 29508 80038D08 53C5010C */  jal        sprintf
/* 2950C 80038D0C 9428A524 */   addiu     $a1, $a1, %lo(D_80012894)
/* 29510 80038D10 4FE30008 */  j          .L80038D3C
/* 29514 80038D14 01000224 */   addiu     $v0, $zero, 0x1
.L80038D18:
/* 29518 80038D18 0000628C */  lw         $v0, 0x0($v1)
/* 2951C 80038D1C 00000000 */  nop
/* 29520 80038D20 0010422C */  sltiu      $v0, $v0, 0x1000
/* 29524 80038D24 04004014 */  bnez       $v0, .L80038D38
/* 29528 80038D28 00000000 */   nop
/* 2952C 80038D2C 0400628C */  lw         $v0, 0x4($v1)
/* 29530 80038D30 4FE30008 */  j          .L80038D3C
/* 29534 80038D34 FFFF4224 */   addiu     $v0, $v0, -0x1
.L80038D38:
/* 29538 80038D38 01000224 */  addiu      $v0, $zero, 0x1
.L80038D3C:
/* 2953C 80038D3C 6000BF8F */  lw         $ra, 0x60($sp)
/* 29540 80038D40 00000000 */  nop
/* 29544 80038D44 0800E003 */  jr         $ra
/* 29548 80038D48 6800BD27 */   addiu     $sp, $sp, 0x68
.size GetSeqNumFrames, . - GetSeqNumFrames
