.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookupCelAnimbyTrigger
/* 55CB4 800654B4 8817868F */  lw         $a2, %gp_rel(NumLocalCellAnims)($gp)
/* 55CB8 800654B8 00000000 */  nop
/* 55CBC 800654BC 0C00C018 */  blez       $a2, .L800654F0
/* 55CC0 800654C0 21180000 */   addu      $v1, $zero, $zero
/* 55CC4 800654C4 C017828F */  lw         $v0, %gp_rel(LocalCellAnims)($gp)
/* 55CC8 800654C8 00000000 */  nop
/* 55CCC 800654CC 24004524 */  addiu      $a1, $v0, 0x24
.L800654D0:
/* 55CD0 800654D0 0000A28C */  lw         $v0, 0x0($a1)
/* 55CD4 800654D4 00000000 */  nop
/* 55CD8 800654D8 07004410 */  beq        $v0, $a0, .L800654F8
/* 55CDC 800654DC 21106000 */   addu      $v0, $v1, $zero
/* 55CE0 800654E0 01006324 */  addiu      $v1, $v1, 0x1
/* 55CE4 800654E4 2A106600 */  slt        $v0, $v1, $a2
/* 55CE8 800654E8 F9FF4014 */  bnez       $v0, .L800654D0
/* 55CEC 800654EC 3400A524 */   addiu     $a1, $a1, 0x34
.L800654F0:
/* 55CF0 800654F0 0800E003 */  jr         $ra
/* 55CF4 800654F4 FFFF0224 */   addiu     $v0, $zero, -0x1
.L800654F8:
/* 55CF8 800654F8 0800E003 */  jr         $ra
/* 55CFC 800654FC 00000000 */   nop
.size LookupCelAnimbyTrigger, . - LookupCelAnimbyTrigger
