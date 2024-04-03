.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_muspaneq_R
/* 4508C 8005488C FF00C630 */  andi       $a2, $a2, 0xFF
/* 45090 80054890 0B80023C */  lui        $v0, %hi(pxm_midichpan)
/* 45094 80054894 88824224 */  addiu      $v0, $v0, %lo(pxm_midichpan)
/* 45098 80054898 2130C200 */  addu       $a2, $a2, $v0
/* 4509C 8005489C FF00A530 */  andi       $a1, $a1, 0xFF
/* 450A0 800548A0 00240400 */  sll        $a0, $a0, 16
/* 450A4 800548A4 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 450A8 800548A8 0000C390 */  lbu        $v1, 0x0($a2)
/* 450AC 800548AC C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 450B0 800548B0 21186500 */  addu       $v1, $v1, $a1
/* 450B4 800548B4 42280300 */  srl        $a1, $v1, 1
/* 450B8 800548B8 18004390 */  lbu        $v1, 0x18($v0)
/* 450BC 800548BC 00000000 */  nop
/* 450C0 800548C0 02006014 */  bnez       $v1, .L800548CC
/* 450C4 800548C4 03240400 */   sra       $a0, $a0, 16
/* 450C8 800548C8 80000524 */  addiu      $a1, $zero, 0x80
.L800548CC:
/* 450CC 800548CC 80000224 */  addiu      $v0, $zero, 0x80
/* 450D0 800548D0 23104500 */  subu       $v0, $v0, $a1
/* 450D4 800548D4 18004200 */  mult       $v0, $v0
/* 450D8 800548D8 12100000 */  mflo       $v0
/* 450DC 800548DC 00400324 */  addiu      $v1, $zero, 0x4000
/* 450E0 800548E0 23106200 */  subu       $v0, $v1, $v0
/* 450E4 800548E4 18008200 */  mult       $a0, $v0
/* 450E8 800548E8 12100000 */  mflo       $v0
/* 450EC 800548EC 02004104 */  bgez       $v0, .L800548F8
/* 450F0 800548F0 00000000 */   nop
/* 450F4 800548F4 FF3F4224 */  addiu      $v0, $v0, 0x3FFF
.L800548F8:
/* 450F8 800548F8 80100200 */  sll        $v0, $v0, 2
/* 450FC 800548FC 0800E003 */  jr         $ra
/* 45100 80054900 03140200 */   sra       $v0, $v0, 16
.size pxm_muspaneq_R, . - pxm_muspaneq_R
