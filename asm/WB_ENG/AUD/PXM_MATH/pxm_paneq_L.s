.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_paneq_L
/* 44F74 80054774 FF00A530 */  andi       $a1, $a1, 0xFF
/* 44F78 80054778 00240400 */  sll        $a0, $a0, 16
/* 44F7C 8005477C 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 44F80 80054780 C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 44F84 80054784 18004390 */  lbu        $v1, 0x18($v0)
/* 44F88 80054788 00000000 */  nop
/* 44F8C 8005478C 02006014 */  bnez       $v1, .L80054798
/* 44F90 80054790 03240400 */   sra       $a0, $a0, 16
/* 44F94 80054794 21280000 */  addu       $a1, $zero, $zero
.L80054798:
/* 44F98 80054798 1800A500 */  mult       $a1, $a1
/* 44F9C 8005479C 12100000 */  mflo       $v0
/* 44FA0 800547A0 00400324 */  addiu      $v1, $zero, 0x4000
/* 44FA4 800547A4 23106200 */  subu       $v0, $v1, $v0
/* 44FA8 800547A8 18008200 */  mult       $a0, $v0
/* 44FAC 800547AC 12100000 */  mflo       $v0
/* 44FB0 800547B0 02004104 */  bgez       $v0, .L800547BC
/* 44FB4 800547B4 00000000 */   nop
/* 44FB8 800547B8 FF3F4224 */  addiu      $v0, $v0, 0x3FFF
.L800547BC:
/* 44FBC 800547BC 80100200 */  sll        $v0, $v0, 2
/* 44FC0 800547C0 0800E003 */  jr         $ra
/* 44FC4 800547C4 03140200 */   sra       $v0, $v0, 16
.size pxm_paneq_L, . - pxm_paneq_L
