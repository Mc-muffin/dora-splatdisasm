.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UnlinkNTagAndInsert
/* 3B474 8004AC74 21380000 */  addu       $a3, $zero, $zero
/* 3B478 8004AC78 0000C38C */  lw         $v1, 0x0($a2)
/* 3B47C 8004AC7C C0100500 */  sll        $v0, $a1, 3
/* 3B480 8004AC80 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3B484 8004AC84 1D006014 */  bnez       $v1, .L8004ACFC
/* 3B488 8004AC88 21208200 */   addu      $a0, $a0, $v0
/* 3B48C 8004AC8C 262B0108 */  j          .L8004AC98
/* 3B490 8004AC90 00000000 */   nop
.L8004AC94:
/* 3B494 8004AC94 FFFFA524 */  addiu      $a1, $a1, -0x1
.L8004AC98:
/* 3B498 8004AC98 2500A010 */  beqz       $a1, .L8004AD30
/* 3B49C 8004AC9C 00000000 */   nop
/* 3B4A0 8004ACA0 0000838C */  lw         $v1, 0x0($a0)
/* 3B4A4 8004ACA4 00000000 */  nop
/* 3B4A8 8004ACA8 FAFF6010 */  beqz       $v1, .L8004AC94
/* 3B4AC 8004ACAC F8FF8424 */   addiu     $a0, $a0, -0x8
/* 3B4B0 8004ACB0 08008424 */  addiu      $a0, $a0, 0x8
/* 3B4B4 8004ACB4 0000C3AC */  sw         $v1, 0x0($a2)
/* 3B4B8 8004ACB8 0400878C */  lw         $a3, 0x4($a0)
/* 3B4BC 8004ACBC 000080AC */  sw         $zero, 0x0($a0)
/* 3B4C0 8004ACC0 1B00A010 */  beqz       $a1, .L8004AD30
/* 3B4C4 8004ACC4 0400C7AC */   sw        $a3, 0x4($a2)
.L8004ACC8:
/* 3B4C8 8004ACC8 0000838C */  lw         $v1, 0x0($a0)
/* 3B4CC 8004ACCC 00000000 */  nop
/* 3B4D0 8004ACD0 05006010 */  beqz       $v1, .L8004ACE8
/* 3B4D4 8004ACD4 00000000 */   nop
/* 3B4D8 8004ACD8 00120300 */  sll        $v0, $v1, 8
/* 3B4DC 8004ACDC 0200E2A8 */  swl        $v0, 0x2($a3)
/* 3B4E0 8004ACE0 0400878C */  lw         $a3, 0x4($a0)
/* 3B4E4 8004ACE4 000080AC */  sw         $zero, 0x0($a0)
.L8004ACE8:
/* 3B4E8 8004ACE8 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 3B4EC 8004ACEC F6FFA014 */  bnez       $a1, .L8004ACC8
/* 3B4F0 8004ACF0 F8FF8424 */   addiu     $a0, $a0, -0x8
/* 3B4F4 8004ACF4 0800E003 */  jr         $ra
/* 3B4F8 8004ACF8 0400C7AC */   sw        $a3, 0x4($a2)
.L8004ACFC:
/* 3B4FC 8004ACFC 0400C78C */  lw         $a3, 0x4($a2)
/* 3B500 8004AD00 0B00A010 */  beqz       $a1, .L8004AD30
/* 3B504 8004AD04 00000000 */   nop
.L8004AD08:
/* 3B508 8004AD08 0000838C */  lw         $v1, 0x0($a0)
/* 3B50C 8004AD0C 00000000 */  nop
/* 3B510 8004AD10 04006010 */  beqz       $v1, .L8004AD24
/* 3B514 8004AD14 00120300 */   sll       $v0, $v1, 8
/* 3B518 8004AD18 0200E2A8 */  swl        $v0, 0x2($a3)
/* 3B51C 8004AD1C 0400878C */  lw         $a3, 0x4($a0)
/* 3B520 8004AD20 000080AC */  sw         $zero, 0x0($a0)
.L8004AD24:
/* 3B524 8004AD24 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 3B528 8004AD28 F7FFA014 */  bnez       $a1, .L8004AD08
/* 3B52C 8004AD2C F8FF8424 */   addiu     $a0, $a0, -0x8
.L8004AD30:
/* 3B530 8004AD30 0400C7AC */  sw         $a3, 0x4($a2)
/* 3B534 8004AD34 0800E003 */  jr         $ra
/* 3B538 8004AD38 00000000 */   nop
.size UnlinkNTagAndInsert, . - UnlinkNTagAndInsert
