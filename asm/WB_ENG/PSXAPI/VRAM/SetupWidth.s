.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupWidth
/* 4D564 8005CD64 00240400 */  sll        $a0, $a0, 16
/* 4D568 8005CD68 03240400 */  sra        $a0, $a0, 16
/* 4D56C 8005CD6C 00140500 */  sll        $v0, $a1, 16
/* 4D570 8005CD70 01000524 */  addiu      $a1, $zero, 0x1
/* 4D574 8005CD74 14008510 */  beq        $a0, $a1, .L8005CDC8
/* 4D578 8005CD78 031C0200 */   sra       $v1, $v0, 16
/* 4D57C 8005CD7C 02008228 */  slti       $v0, $a0, 0x2
/* 4D580 8005CD80 05004010 */  beqz       $v0, .L8005CD98
/* 4D584 8005CD84 00000000 */   nop
/* 4D588 8005CD88 08008010 */  beqz       $a0, .L8005CDAC
/* 4D58C 8005CD8C 00000000 */   nop
/* 4D590 8005CD90 0800E003 */  jr         $ra
/* 4D594 8005CD94 00000000 */   nop
.L8005CD98:
/* 4D598 8005CD98 02000224 */  addiu      $v0, $zero, 0x2
/* 4D59C 8005CD9C 11008210 */  beq        $a0, $v0, .L8005CDE4
/* 4D5A0 8005CDA0 04000224 */   addiu     $v0, $zero, 0x4
/* 4D5A4 8005CDA4 0800E003 */  jr         $ra
/* 4D5A8 8005CDA8 00000000 */   nop
.L8005CDAC:
/* 4D5AC 8005CDAC 02006104 */  bgez       $v1, .L8005CDB8
/* 4D5B0 8005CDB0 21106000 */   addu      $v0, $v1, $zero
/* 4D5B4 8005CDB4 03006224 */  addiu      $v0, $v1, 0x3
.L8005CDB8:
/* 4D5B8 8005CDB8 83100200 */  sra        $v0, $v0, 2
/* 4D5BC 8005CDBC 0000C2A4 */  sh         $v0, 0x0($a2)
/* 4D5C0 8005CDC0 0800E003 */  jr         $ra
/* 4D5C4 8005CDC4 0000E5A0 */   sb        $a1, 0x0($a3)
.L8005CDC8:
/* 4D5C8 8005CDC8 C2170200 */  srl        $v0, $v0, 31
/* 4D5CC 8005CDCC 21106200 */  addu       $v0, $v1, $v0
/* 4D5D0 8005CDD0 43100200 */  sra        $v0, $v0, 1
/* 4D5D4 8005CDD4 02000324 */  addiu      $v1, $zero, 0x2
/* 4D5D8 8005CDD8 0000C2A4 */  sh         $v0, 0x0($a2)
/* 4D5DC 8005CDDC 0800E003 */  jr         $ra
/* 4D5E0 8005CDE0 0000E3A0 */   sb        $v1, 0x0($a3)
.L8005CDE4:
/* 4D5E4 8005CDE4 0000C3A4 */  sh         $v1, 0x0($a2)
/* 4D5E8 8005CDE8 0800E003 */  jr         $ra
/* 4D5EC 8005CDEC 0000E2A0 */   sb        $v0, 0x0($a3)
.size SetupWidth, . - SetupWidth
