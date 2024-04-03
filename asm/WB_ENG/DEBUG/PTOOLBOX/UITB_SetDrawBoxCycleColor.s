.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_SetDrawBoxCycleColor
/* 42570 80051D70 BC0F8297 */  lhu        $v0, %gp_rel(dbcc_r)($gp)
/* 42574 80051D74 C20F8497 */  lhu        $a0, %gp_rel(dbcc_dir)($gp)
/* 42578 80051D78 BE0F8397 */  lhu        $v1, %gp_rel(dbcc_g)($gp)
/* 4257C 80051D7C 21284400 */  addu       $a1, $v0, $a0
/* 42580 80051D80 23186400 */  subu       $v1, $v1, $a0
/* 42584 80051D84 FFFF6230 */  andi       $v0, $v1, 0xFFFF
/* 42588 80051D88 D900422C */  sltiu      $v0, $v0, 0xD9
/* 4258C 80051D8C BC0F85A7 */  sh         $a1, %gp_rel(dbcc_r)($gp)
/* 42590 80051D90 BE0F83A7 */  sh         $v1, %gp_rel(dbcc_g)($gp)
/* 42594 80051D94 04004014 */  bnez       $v0, .L80051DA8
/* 42598 80051D98 00140500 */   sll       $v0, $a1, 16
/* 4259C 80051D9C 23100400 */  negu       $v0, $a0
/* 425A0 80051DA0 C20F82A7 */  sh         $v0, %gp_rel(dbcc_dir)($gp)
/* 425A4 80051DA4 00140500 */  sll        $v0, $a1, 16
.L80051DA8:
/* 425A8 80051DA8 02004104 */  bgez       $v0, .L80051DB4
/* 425AC 80051DAC 00000000 */   nop
/* 425B0 80051DB0 BC0F80A7 */  sh         $zero, %gp_rel(dbcc_r)($gp)
.L80051DB4:
/* 425B4 80051DB4 BC0F8287 */  lh         $v0, %gp_rel(dbcc_r)($gp)
/* 425B8 80051DB8 00000000 */  nop
/* 425BC 80051DBC D9004228 */  slti       $v0, $v0, 0xD9
/* 425C0 80051DC0 04004014 */  bnez       $v0, .L80051DD4
/* 425C4 80051DC4 00140300 */   sll       $v0, $v1, 16
/* 425C8 80051DC8 D8000224 */  addiu      $v0, $zero, 0xD8
/* 425CC 80051DCC BC0F82A7 */  sh         $v0, %gp_rel(dbcc_r)($gp)
/* 425D0 80051DD0 00140300 */  sll        $v0, $v1, 16
.L80051DD4:
/* 425D4 80051DD4 02004104 */  bgez       $v0, .L80051DE0
/* 425D8 80051DD8 00000000 */   nop
/* 425DC 80051DDC BE0F80A7 */  sh         $zero, %gp_rel(dbcc_g)($gp)
.L80051DE0:
/* 425E0 80051DE0 BE0F8287 */  lh         $v0, %gp_rel(dbcc_g)($gp)
/* 425E4 80051DE4 00000000 */  nop
/* 425E8 80051DE8 D9004228 */  slti       $v0, $v0, 0xD9
/* 425EC 80051DEC 04004014 */  bnez       $v0, .L80051E00
/* 425F0 80051DF0 0980023C */   lui       $v0, %hi(gDBInsideColor)
/* 425F4 80051DF4 D8000224 */  addiu      $v0, $zero, 0xD8
/* 425F8 80051DF8 BE0F82A7 */  sh         $v0, %gp_rel(dbcc_g)($gp)
/* 425FC 80051DFC 0980023C */  lui        $v0, %hi(gDBInsideColor)
.L80051E00:
/* 42600 80051E00 448240AC */  sw         $zero, %lo(gDBInsideColor)($v0)
/* 42604 80051E04 44824224 */  addiu      $v0, $v0, %lo(gDBInsideColor)
/* 42608 80051E08 BC0F8487 */  lh         $a0, %gp_rel(dbcc_r)($gp)
/* 4260C 80051E0C BE0F8587 */  lh         $a1, %gp_rel(dbcc_g)($gp)
/* 42610 80051E10 0980033C */  lui        $v1, %hi(gDBBorderColor)
/* 42614 80051E14 040040AC */  sw         $zero, 0x4($v0)
/* 42618 80051E18 080040AC */  sw         $zero, 0x8($v0)
/* 4261C 80051E1C 50826224 */  addiu      $v0, $v1, %lo(gDBBorderColor)
/* 42620 80051E20 040040AC */  sw         $zero, 0x4($v0)
/* 42624 80051E24 508264AC */  sw         $a0, %lo(gDBBorderColor)($v1)
/* 42628 80051E28 0800E003 */  jr         $ra
/* 4262C 80051E2C 080045AC */   sw        $a1, 0x8($v0)
.size UITB_SetDrawBoxCycleColor, . - UITB_SetDrawBoxCycleColor
