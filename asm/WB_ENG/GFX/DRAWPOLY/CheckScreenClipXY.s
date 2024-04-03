.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckScreenClipXY
/* 4FF88 8005F788 FFFF8730 */  andi       $a3, $a0, 0xFFFF
/* 4FF8C 8005F78C FFFFA830 */  andi       $t0, $a1, 0xFFFF
/* 4FF90 8005F790 FFFFC930 */  andi       $t1, $a2, 0xFFFF
/* 4FF94 8005F794 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
/* 4FF98 8005F798 24208200 */  and        $a0, $a0, $v0
/* 4FF9C 8005F79C 2428A200 */  and        $a1, $a1, $v0
/* 4FFA0 8005F7A0 4101E328 */  slti       $v1, $a3, 0x141
/* 4FFA4 8005F7A4 06006014 */  bnez       $v1, .L8005F7C0
/* 4FFA8 8005F7A8 2430C200 */   and       $a2, $a2, $v0
/* 4FFAC 8005F7AC 41010229 */  slti       $v0, $t0, 0x141
/* 4FFB0 8005F7B0 03004014 */  bnez       $v0, .L8005F7C0
/* 4FFB4 8005F7B4 41012229 */   slti      $v0, $t1, 0x141
/* 4FFB8 8005F7B8 14004010 */  beqz       $v0, .L8005F80C
/* 4FFBC 8005F7BC 00000000 */   nop
.L8005F7C0:
/* 4FFC0 8005F7C0 0500E104 */  bgez       $a3, .L8005F7D8
/* 4FFC4 8005F7C4 F000033C */   lui       $v1, (0xF00000 >> 16)
/* 4FFC8 8005F7C8 04000105 */  bgez       $t0, .L8005F7DC
/* 4FFCC 8005F7CC 2A106400 */   slt       $v0, $v1, $a0
/* 4FFD0 8005F7D0 0E002005 */  bltz       $t1, .L8005F80C
/* 4FFD4 8005F7D4 00000000 */   nop
.L8005F7D8:
/* 4FFD8 8005F7D8 2A106400 */  slt        $v0, $v1, $a0
.L8005F7DC:
/* 4FFDC 8005F7DC 05004010 */  beqz       $v0, .L8005F7F4
/* 4FFE0 8005F7E0 2A106500 */   slt       $v0, $v1, $a1
/* 4FFE4 8005F7E4 03004010 */  beqz       $v0, .L8005F7F4
/* 4FFE8 8005F7E8 2A106600 */   slt       $v0, $v1, $a2
/* 4FFEC 8005F7EC 07004014 */  bnez       $v0, .L8005F80C
/* 4FFF0 8005F7F0 00000000 */   nop
.L8005F7F4:
/* 4FFF4 8005F7F4 07008104 */  bgez       $a0, .L8005F814
/* 4FFF8 8005F7F8 00000000 */   nop
/* 4FFFC 8005F7FC 0500A104 */  bgez       $a1, .L8005F814
/* 50000 8005F800 00000000 */   nop
/* 50004 8005F804 0300C104 */  bgez       $a2, .L8005F814
/* 50008 8005F808 00000000 */   nop
.L8005F80C:
/* 5000C 8005F80C 0800E003 */  jr         $ra
/* 50010 8005F810 21100000 */   addu      $v0, $zero, $zero
.L8005F814:
/* 50014 8005F814 0800E003 */  jr         $ra
/* 50018 8005F818 01000224 */   addiu     $v0, $zero, 0x1
.size CheckScreenClipXY, . - CheckScreenClipXY
