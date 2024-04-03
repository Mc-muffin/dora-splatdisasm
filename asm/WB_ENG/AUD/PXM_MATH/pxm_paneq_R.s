.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_paneq_R
/* 44FC8 800547C8 FF00A530 */  andi       $a1, $a1, 0xFF
/* 44FCC 800547CC 00240400 */  sll        $a0, $a0, 16
/* 44FD0 800547D0 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 44FD4 800547D4 C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 44FD8 800547D8 18004390 */  lbu        $v1, 0x18($v0)
/* 44FDC 800547DC 00000000 */  nop
/* 44FE0 800547E0 02006014 */  bnez       $v1, .L800547EC
/* 44FE4 800547E4 03240400 */   sra       $a0, $a0, 16
/* 44FE8 800547E8 80000524 */  addiu      $a1, $zero, 0x80
.L800547EC:
/* 44FEC 800547EC 80000224 */  addiu      $v0, $zero, 0x80
/* 44FF0 800547F0 23104500 */  subu       $v0, $v0, $a1
/* 44FF4 800547F4 18004200 */  mult       $v0, $v0
/* 44FF8 800547F8 12100000 */  mflo       $v0
/* 44FFC 800547FC 00400324 */  addiu      $v1, $zero, 0x4000
/* 45000 80054800 23106200 */  subu       $v0, $v1, $v0
/* 45004 80054804 18008200 */  mult       $a0, $v0
/* 45008 80054808 12100000 */  mflo       $v0
/* 4500C 8005480C 02004104 */  bgez       $v0, .L80054818
/* 45010 80054810 00000000 */   nop
/* 45014 80054814 FF3F4224 */  addiu      $v0, $v0, 0x3FFF
.L80054818:
/* 45018 80054818 80100200 */  sll        $v0, $v0, 2
/* 4501C 8005481C 0800E003 */  jr         $ra
/* 45020 80054820 03140200 */   sra       $v0, $v0, 16
.size pxm_paneq_R, . - pxm_paneq_R
