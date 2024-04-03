.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_clear_sfx_queues
/* 45798 80054F98 21200000 */  addu       $a0, $zero, $zero
/* 4579C 80054F9C FF000524 */  addiu      $a1, $zero, 0xFF
/* 457A0 80054FA0 0B80023C */  lui        $v0, %hi(pxm_sound_queue)
/* 457A4 80054FA4 F0884324 */  addiu      $v1, $v0, %lo(pxm_sound_queue)
.L80054FA8:
/* 457A8 80054FA8 000065A0 */  sb         $a1, 0x0($v1)
/* 457AC 80054FAC 080060AC */  sw         $zero, 0x8($v1)
/* 457B0 80054FB0 040060A4 */  sh         $zero, 0x4($v1)
/* 457B4 80054FB4 100060AC */  sw         $zero, 0x10($v1)
/* 457B8 80054FB8 030060A0 */  sb         $zero, 0x3($v1)
/* 457BC 80054FBC 020060A0 */  sb         $zero, 0x2($v1)
/* 457C0 80054FC0 0C0060AC */  sw         $zero, 0xC($v1)
/* 457C4 80054FC4 01008424 */  addiu      $a0, $a0, 0x1
/* 457C8 80054FC8 1000822C */  sltiu      $v0, $a0, 0x10
/* 457CC 80054FCC F6FF4014 */  bnez       $v0, .L80054FA8
/* 457D0 80054FD0 14006324 */   addiu     $v1, $v1, 0x14
/* 457D4 80054FD4 21200000 */  addu       $a0, $zero, $zero
/* 457D8 80054FD8 FF000524 */  addiu      $a1, $zero, 0xFF
/* 457DC 80054FDC 0B80023C */  lui        $v0, %hi(pxm_del_sound_queue)
/* 457E0 80054FE0 B0874324 */  addiu      $v1, $v0, %lo(pxm_del_sound_queue)
.L80054FE4:
/* 457E4 80054FE4 000065A0 */  sb         $a1, 0x0($v1)
/* 457E8 80054FE8 080060AC */  sw         $zero, 0x8($v1)
/* 457EC 80054FEC 040060A4 */  sh         $zero, 0x4($v1)
/* 457F0 80054FF0 100060AC */  sw         $zero, 0x10($v1)
/* 457F4 80054FF4 030060A0 */  sb         $zero, 0x3($v1)
/* 457F8 80054FF8 020060A0 */  sb         $zero, 0x2($v1)
/* 457FC 80054FFC 0C0060AC */  sw         $zero, 0xC($v1)
/* 45800 80055000 01008424 */  addiu      $a0, $a0, 0x1
/* 45804 80055004 1000822C */  sltiu      $v0, $a0, 0x10
/* 45808 80055008 F6FF4014 */  bnez       $v0, .L80054FE4
/* 4580C 8005500C 14006324 */   addiu     $v1, $v1, 0x14
/* 45810 80055010 001080AF */  sw         $zero, %gp_rel(pxm_num_sounds_queued)($gp)
/* 45814 80055014 041080AF */  sw         $zero, %gp_rel(pxm_num_del_sounds_queued)($gp)
/* 45818 80055018 0800E003 */  jr         $ra
/* 4581C 8005501C 00000000 */   nop
.size pxm_clear_sfx_queues, . - pxm_clear_sfx_queues
