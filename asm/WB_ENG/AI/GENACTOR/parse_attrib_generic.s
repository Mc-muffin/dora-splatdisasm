.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_generic
/* 3A138 80049938 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3A13C 8004993C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3A140 80049940 1800B2AF */  sw         $s2, 0x18($sp)
/* 3A144 80049944 1400B1AF */  sw         $s1, 0x14($sp)
/* 3A148 80049948 BC42010C */  jal        pbag_init
/* 3A14C 8004994C 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A150 80049950 1543010C */  jal        pbag_getptr
/* 3A154 80049954 00000000 */   nop
/* 3A158 80049958 21804000 */  addu       $s0, $v0, $zero
/* 3A15C 8004995C 2B3F010C */  jal        new_malloc
/* 3A160 80049960 40000424 */   addiu     $a0, $zero, 0x40
/* 3A164 80049964 21884000 */  addu       $s1, $v0, $zero
/* 3A168 80049968 2C0020AE */  sw         $zero, 0x2C($s1)
/* 3A16C 8004996C 300020AE */  sw         $zero, 0x30($s1)
/* 3A170 80049970 0000048E */  lw         $a0, 0x0($s0)
/* 3A174 80049974 B142010C */  jal        pbag_getenum
/* 3A178 80049978 00000000 */   nop
/* 3A17C 8004997C 21184000 */  addu       $v1, $v0, $zero
/* 3A180 80049980 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 3A184 80049984 3F006210 */  beq        $v1, $v0, .L80049A84
/* 3A188 80049988 00801234 */   ori       $s2, $zero, 0x8000
/* 3A18C 8004998C 21107200 */  addu       $v0, $v1, $s2
.L80049990:
/* 3A190 80049990 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3A194 80049994 0001422C */  sltiu      $v0, $v0, 0x100
/* 3A198 80049998 30004010 */  beqz       $v0, .L80049A5C
/* 3A19C 8004999C 01800234 */   ori       $v0, $zero, 0x8001
/* 3A1A0 800499A0 24006210 */  beq        $v1, $v0, .L80049A34
/* 3A1A4 800499A4 2A104300 */   slt       $v0, $v0, $v1
/* 3A1A8 800499A8 05004014 */  bnez       $v0, .L800499C0
/* 3A1AC 800499AC 02800234 */   ori       $v0, $zero, 0x8002
/* 3A1B0 800499B0 07007210 */  beq        $v1, $s2, .L800499D0
/* 3A1B4 800499B4 00000000 */   nop
/* 3A1B8 800499B8 97260108 */  j          .L80049A5C
/* 3A1BC 800499BC 00000000 */   nop
.L800499C0:
/* 3A1C0 800499C0 21006210 */  beq        $v1, $v0, .L80049A48
/* 3A1C4 800499C4 00000000 */   nop
/* 3A1C8 800499C8 97260108 */  j          .L80049A5C
/* 3A1CC 800499CC 00000000 */   nop
.L800499D0:
/* 3A1D0 800499D0 0800028E */  lw         $v0, 0x8($s0)
/* 3A1D4 800499D4 00000000 */  nop
/* 3A1D8 800499D8 0000448C */  lw         $a0, 0x0($v0)
/* 3A1DC 800499DC 5413010C */  jal        GetWorldPathData
/* 3A1E0 800499E0 00000000 */   nop
/* 3A1E4 800499E4 0400438C */  lw         $v1, 0x4($v0)
/* 3A1E8 800499E8 00000000 */  nop
/* 3A1EC 800499EC 09006104 */  bgez       $v1, .L80049A14
/* 3A1F0 800499F0 00000000 */   nop
/* 3A1F4 800499F4 0800028E */  lw         $v0, 0x8($s0)
/* 3A1F8 800499F8 00000000 */  nop
/* 3A1FC 800499FC 0000448C */  lw         $a0, 0x0($v0)
/* 3A200 80049A00 4415010C */  jal        MoveInBBoxInit
/* 3A204 80049A04 00000000 */   nop
/* 3A208 80049A08 080022AE */  sw         $v0, 0x8($s1)
/* 3A20C 80049A0C 97260108 */  j          .L80049A5C
/* 3A210 80049A10 040020AE */   sw        $zero, 0x4($s1)
.L80049A14:
/* 3A214 80049A14 080020AE */  sw         $zero, 0x8($s1)
/* 3A218 80049A18 0800028E */  lw         $v0, 0x8($s0)
/* 3A21C 80049A1C 00000000 */  nop
/* 3A220 80049A20 0000448C */  lw         $a0, 0x0($v0)
/* 3A224 80049A24 4313010C */  jal        GetWorldPathBrain
/* 3A228 80049A28 00000000 */   nop
/* 3A22C 80049A2C 97260108 */  j          .L80049A5C
/* 3A230 80049A30 040022AE */   sw        $v0, 0x4($s1)
.L80049A34:
/* 3A234 80049A34 0800028E */  lw         $v0, 0x8($s0)
/* 3A238 80049A38 00000000 */  nop
/* 3A23C 80049A3C 0000438C */  lw         $v1, 0x0($v0)
/* 3A240 80049A40 97260108 */  j          .L80049A5C
/* 3A244 80049A44 000023AE */   sw        $v1, 0x0($s1)
.L80049A48:
/* 3A248 80049A48 0800028E */  lw         $v0, 0x8($s0)
/* 3A24C 80049A4C 00000000 */  nop
/* 3A250 80049A50 0000438C */  lw         $v1, 0x0($v0)
/* 3A254 80049A54 00000000 */  nop
/* 3A258 80049A58 0C0023AE */  sw         $v1, 0xC($s1)
.L80049A5C:
/* 3A25C 80049A5C E742010C */  jal        pbag_advanceONE
/* 3A260 80049A60 00000000 */   nop
/* 3A264 80049A64 21804000 */  addu       $s0, $v0, $zero
/* 3A268 80049A68 0000048E */  lw         $a0, 0x0($s0)
/* 3A26C 80049A6C B142010C */  jal        pbag_getenum
/* 3A270 80049A70 00000000 */   nop
/* 3A274 80049A74 21184000 */  addu       $v1, $v0, $zero
/* 3A278 80049A78 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 3A27C 80049A7C C4FF6214 */  bne        $v1, $v0, .L80049990
/* 3A280 80049A80 21107200 */   addu      $v0, $v1, $s2
.L80049A84:
/* 3A284 80049A84 21102002 */  addu       $v0, $s1, $zero
/* 3A288 80049A88 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3A28C 80049A8C 1800B28F */  lw         $s2, 0x18($sp)
/* 3A290 80049A90 1400B18F */  lw         $s1, 0x14($sp)
/* 3A294 80049A94 1000B08F */  lw         $s0, 0x10($sp)
/* 3A298 80049A98 0800E003 */  jr         $ra
/* 3A29C 80049A9C 2000BD27 */   addiu     $sp, $sp, 0x20
.size parse_attrib_generic, . - parse_attrib_generic