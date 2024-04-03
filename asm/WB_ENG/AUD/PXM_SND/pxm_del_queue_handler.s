.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_del_queue_handler
/* 45168 80054968 21200000 */  addu       $a0, $zero, $zero
/* 4516C 8005496C 0B80023C */  lui        $v0, %hi(pxm_del_sound_queue)
/* 45170 80054970 B0874F24 */  addiu      $t7, $v0, %lo(pxm_del_sound_queue)
/* 45174 80054974 FF000E24 */  addiu      $t6, $zero, 0xFF
/* 45178 80054978 80100400 */  sll        $v0, $a0, 2
.L8005497C:
/* 4517C 8005497C 21104400 */  addu       $v0, $v0, $a0
/* 45180 80054980 80100200 */  sll        $v0, $v0, 2
/* 45184 80054984 21304F00 */  addu       $a2, $v0, $t7
/* 45188 80054988 0000C390 */  lbu        $v1, 0x0($a2)
/* 4518C 8005498C 00000000 */  nop
/* 45190 80054990 3B006E10 */  beq        $v1, $t6, .L80054A80
/* 45194 80054994 01008D24 */   addiu     $t5, $a0, 0x1
/* 45198 80054998 0400C294 */  lhu        $v0, 0x4($a2)
/* 4519C 8005499C 00000000 */  nop
/* 451A0 800549A0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 451A4 800549A4 0400C2A4 */  sh         $v0, 0x4($a2)
/* 451A8 800549A8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 451AC 800549AC 35004014 */  bnez       $v0, .L80054A84
/* 451B0 800549B0 2120A001 */   addu      $a0, $t5, $zero
/* 451B4 800549B4 21200000 */  addu       $a0, $zero, $zero
/* 451B8 800549B8 0B80023C */  lui        $v0, %hi(pxm_sound_queue)
/* 451BC 800549BC F0884C24 */  addiu      $t4, $v0, %lo(pxm_sound_queue)
/* 451C0 800549C0 21180000 */  addu       $v1, $zero, $zero
/* 451C4 800549C4 0000C790 */  lbu        $a3, 0x0($a2)
/* 451C8 800549C8 0100C890 */  lbu        $t0, 0x1($a2)
/* 451CC 800549CC 0200C990 */  lbu        $t1, 0x2($a2)
/* 451D0 800549D0 0300CA90 */  lbu        $t2, 0x3($a2)
/* 451D4 800549D4 0800CB8C */  lw         $t3, 0x8($a2)
.L800549D8:
/* 451D8 800549D8 21286C00 */  addu       $a1, $v1, $t4
/* 451DC 800549DC 0800A28C */  lw         $v0, 0x8($a1)
/* 451E0 800549E0 00000000 */  nop
/* 451E4 800549E4 02004010 */  beqz       $v0, .L800549F0
/* 451E8 800549E8 00000000 */   nop
/* 451EC 800549EC 21280000 */  addu       $a1, $zero, $zero
.L800549F0:
/* 451F0 800549F0 01008424 */  addiu      $a0, $a0, 0x1
/* 451F4 800549F4 1000822C */  sltiu      $v0, $a0, 0x10
/* 451F8 800549F8 03004010 */  beqz       $v0, .L80054A08
/* 451FC 800549FC 14006324 */   addiu     $v1, $v1, 0x14
/* 45200 80054A00 F5FFA010 */  beqz       $a1, .L800549D8
/* 45204 80054A04 00000000 */   nop
.L80054A08:
/* 45208 80054A08 1100A010 */  beqz       $a1, .L80054A50
/* 4520C 80054A0C 001A0800 */   sll       $v1, $t0, 8
/* 45210 80054A10 2518E300 */  or         $v1, $a3, $v1
/* 45214 80054A14 00140900 */  sll        $v0, $t1, 16
/* 45218 80054A18 25186200 */  or         $v1, $v1, $v0
/* 4521C 80054A1C 00260A00 */  sll        $a0, $t2, 24
/* 45220 80054A20 0010828F */  lw         $v0, %gp_rel(pxm_num_sounds_queued)($gp)
/* 45224 80054A24 25186400 */  or         $v1, $v1, $a0
/* 45228 80054A28 01004224 */  addiu      $v0, $v0, 0x1
/* 4522C 80054A2C 001082AF */  sw         $v0, %gp_rel(pxm_num_sounds_queued)($gp)
/* 45230 80054A30 0000A7A0 */  sb         $a3, 0x0($a1)
/* 45234 80054A34 0100A8A0 */  sb         $t0, 0x1($a1)
/* 45238 80054A38 0200A9A0 */  sb         $t1, 0x2($a1)
/* 4523C 80054A3C 0300AAA0 */  sb         $t2, 0x3($a1)
/* 45240 80054A40 0800ABAC */  sw         $t3, 0x8($a1)
/* 45244 80054A44 0400A0A4 */  sh         $zero, 0x4($a1)
/* 45248 80054A48 1000A0AC */  sw         $zero, 0x10($a1)
/* 4524C 80054A4C 0C00A3AC */  sw         $v1, 0xC($a1)
.L80054A50:
/* 45250 80054A50 0980023C */  lui        $v0, %hi(pxm_tticks)
/* 45254 80054A54 5858428C */  lw         $v0, %lo(pxm_tticks)($v0)
/* 45258 80054A58 0410838F */  lw         $v1, %gp_rel(pxm_num_del_sounds_queued)($gp)
/* 4525C 80054A5C 0000CEA0 */  sb         $t6, 0x0($a2)
/* 45260 80054A60 0800C0AC */  sw         $zero, 0x8($a2)
/* 45264 80054A64 0400C0A4 */  sh         $zero, 0x4($a2)
/* 45268 80054A68 1000C0AC */  sw         $zero, 0x10($a2)
/* 4526C 80054A6C 0300C0A0 */  sb         $zero, 0x3($a2)
/* 45270 80054A70 0200C0A0 */  sb         $zero, 0x2($a2)
/* 45274 80054A74 0C00C0AC */  sw         $zero, 0xC($a2)
/* 45278 80054A78 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4527C 80054A7C 041083AF */  sw         $v1, %gp_rel(pxm_num_del_sounds_queued)($gp)
.L80054A80:
/* 45280 80054A80 2120A001 */  addu       $a0, $t5, $zero
.L80054A84:
/* 45284 80054A84 1000822C */  sltiu      $v0, $a0, 0x10
/* 45288 80054A88 BCFF4014 */  bnez       $v0, .L8005497C
/* 4528C 80054A8C 80100400 */   sll       $v0, $a0, 2
/* 45290 80054A90 0800E003 */  jr         $ra
/* 45294 80054A94 21100000 */   addu      $v0, $zero, $zero
.size pxm_del_queue_handler, . - pxm_del_queue_handler
