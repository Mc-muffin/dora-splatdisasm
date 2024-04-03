.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SaveCameraAggression
/* 2C0B8 8003B8B8 9014858F */  lw         $a1, %gp_rel(currentCamera)($gp)
/* 2C0BC 8003B8BC 00000000 */  nop
/* 2C0C0 8003B8C0 9900A280 */  lb         $v0, 0x99($a1)
/* 2C0C4 8003B8C4 9900A390 */  lbu        $v1, 0x99($a1)
/* 2C0C8 8003B8C8 02004228 */  slti       $v0, $v0, 0x2
/* 2C0CC 8003B8CC 04004014 */  bnez       $v0, .L8003B8E0
/* 2C0D0 8003B8D0 FFFF8630 */   andi      $a2, $a0, 0xFFFF
/* 2C0D4 8003B8D4 0200A294 */  lhu        $v0, 0x2($a1)
/* 2C0D8 8003B8D8 40EE0008 */  j          .L8003B900
/* 2C0DC 8003B8DC 9E00A2A4 */   sh        $v0, 0x9E($a1)
.L8003B8E0:
/* 2C0E0 8003B8E0 01006224 */  addiu      $v0, $v1, 0x1
/* 2C0E4 8003B8E4 9900A2A0 */  sb         $v0, 0x99($a1)
/* 2C0E8 8003B8E8 00160200 */  sll        $v0, $v0, 24
/* 2C0EC 8003B8EC 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2C0F0 8003B8F0 C3150200 */  sra        $v0, $v0, 23
/* 2C0F4 8003B8F4 02006494 */  lhu        $a0, 0x2($v1)
/* 2C0F8 8003B8F8 2110A200 */  addu       $v0, $a1, $v0
/* 2C0FC 8003B8FC 9A0044A4 */  sh         $a0, 0x9A($v0)
.L8003B900:
/* 2C100 8003B900 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C104 8003B904 0800E003 */  jr         $ra
/* 2C108 8003B908 020046A4 */   sh        $a2, 0x2($v0)
.size SaveCameraAggression, . - SaveCameraAggression
