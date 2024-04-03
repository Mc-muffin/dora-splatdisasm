.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_que_noteon_layered
/* 45528 80054D28 FF008A30 */  andi       $t2, $a0, 0xFF
/* 4552C 80054D2C FF00A530 */  andi       $a1, $a1, 0xFF
/* 45530 80054D30 FF00C630 */  andi       $a2, $a2, 0xFF
/* 45534 80054D34 FF00E730 */  andi       $a3, $a3, 0xFF
/* 45538 80054D38 21200000 */  addu       $a0, $zero, $zero
/* 4553C 80054D3C 0B80023C */  lui        $v0, %hi(pxm_sound_queue)
/* 45540 80054D40 F0884924 */  addiu      $t1, $v0, %lo(pxm_sound_queue)
/* 45544 80054D44 21180000 */  addu       $v1, $zero, $zero
.L80054D48:
/* 45548 80054D48 21406900 */  addu       $t0, $v1, $t1
/* 4554C 80054D4C 0800028D */  lw         $v0, 0x8($t0)
/* 45550 80054D50 00000000 */  nop
/* 45554 80054D54 02004010 */  beqz       $v0, .L80054D60
/* 45558 80054D58 00000000 */   nop
/* 4555C 80054D5C 21400000 */  addu       $t0, $zero, $zero
.L80054D60:
/* 45560 80054D60 01008424 */  addiu      $a0, $a0, 0x1
/* 45564 80054D64 1000822C */  sltiu      $v0, $a0, 0x10
/* 45568 80054D68 03004010 */  beqz       $v0, .L80054D78
/* 4556C 80054D6C 14006324 */   addiu     $v1, $v1, 0x14
/* 45570 80054D70 F5FF0011 */  beqz       $t0, .L80054D48
/* 45574 80054D74 00000000 */   nop
.L80054D78:
/* 45578 80054D78 12000011 */  beqz       $t0, .L80054DC4
/* 4557C 80054D7C 001A0500 */   sll       $v1, $a1, 8
/* 45580 80054D80 25184301 */  or         $v1, $t2, $v1
/* 45584 80054D84 00140600 */  sll        $v0, $a2, 16
/* 45588 80054D88 25186200 */  or         $v1, $v1, $v0
/* 4558C 80054D8C 0010828F */  lw         $v0, %gp_rel(pxm_num_sounds_queued)($gp)
/* 45590 80054D90 00260700 */  sll        $a0, $a3, 24
/* 45594 80054D94 01004224 */  addiu      $v0, $v0, 0x1
/* 45598 80054D98 001082AF */  sw         $v0, %gp_rel(pxm_num_sounds_queued)($gp)
/* 4559C 80054D9C 00000AA1 */  sb         $t2, 0x0($t0)
/* 455A0 80054DA0 010005A1 */  sb         $a1, 0x1($t0)
/* 455A4 80054DA4 020006A1 */  sb         $a2, 0x2($t0)
/* 455A8 80054DA8 030007A1 */  sb         $a3, 0x3($t0)
/* 455AC 80054DAC 1000A28F */  lw         $v0, 0x10($sp)
/* 455B0 80054DB0 25186400 */  or         $v1, $v1, $a0
/* 455B4 80054DB4 040000A5 */  sh         $zero, 0x4($t0)
/* 455B8 80054DB8 100000AD */  sw         $zero, 0x10($t0)
/* 455BC 80054DBC 0C0003AD */  sw         $v1, 0xC($t0)
/* 455C0 80054DC0 080002AD */  sw         $v0, 0x8($t0)
.L80054DC4:
/* 455C4 80054DC4 0800E003 */  jr         $ra
/* 455C8 80054DC8 21100001 */   addu      $v0, $t0, $zero
.size pxm_que_noteon_layered, . - pxm_que_noteon_layered
