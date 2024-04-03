.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_get_hw_status
/* 45938 80055138 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4593C 8005513C 1000B0AF */  sw         $s0, 0x10($sp)
/* 45940 80055140 0B80103C */  lui        $s0, %hi(pxm_spuchan_status)
/* 45944 80055144 308A1026 */  addiu      $s0, $s0, %lo(pxm_spuchan_status)
/* 45948 80055148 21200002 */  addu       $a0, $s0, $zero
/* 4594C 8005514C 2000BFAF */  sw         $ra, 0x20($sp)
/* 45950 80055150 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 45954 80055154 1800B2AF */  sw         $s2, 0x18($sp)
/* 45958 80055158 F005020C */  jal        SpuGetAllKeysStatus
/* 4595C 8005515C 1400B1AF */   sw        $s1, 0x14($sp)
/* 45960 80055160 21900000 */  addu       $s2, $zero, $zero
/* 45964 80055164 0A80023C */  lui        $v0, %hi(pxm_chanstat)
/* 45968 80055168 E87F4224 */  addiu      $v0, $v0, %lo(pxm_chanstat)
/* 4596C 8005516C 18005324 */  addiu      $s3, $v0, 0x18
/* 45970 80055170 21884000 */  addu       $s1, $v0, $zero
.L80055174:
/* 45974 80055174 21205002 */  addu       $a0, $s2, $s0
/* 45978 80055178 13002292 */  lbu        $v0, 0x13($s1)
/* 4597C 8005517C 10002392 */  lbu        $v1, 0x10($s1)
/* 45980 80055180 00008290 */  lbu        $v0, 0x0($a0)
/* 45984 80055184 0A006338 */  xori       $v1, $v1, 0xA
/* 45988 80055188 130022A2 */  sb         $v0, 0x13($s1)
/* 4598C 8005518C 0B006014 */  bnez       $v1, .L800551BC
/* 45990 80055190 00000000 */   nop
/* 45994 80055194 13002292 */  lbu        $v0, 0x13($s1)
/* 45998 80055198 00000000 */  nop
/* 4599C 8005519C 07004014 */  bnez       $v0, .L800551BC
/* 459A0 800551A0 00000000 */   nop
/* 459A4 800551A4 0000628E */  lw         $v0, 0x0($s3)
/* 459A8 800551A8 00000000 */  nop
/* 459AC 800551AC 00004494 */  lhu        $a0, 0x0($v0)
/* 459B0 800551B0 FE4E010C */  jal        pxm_Endevent
/* 459B4 800551B4 00000000 */   nop
/* 459B8 800551B8 100020A2 */  sb         $zero, 0x10($s1)
.L800551BC:
/* 459BC 800551BC 1C007326 */  addiu      $s3, $s3, 0x1C
/* 459C0 800551C0 01005226 */  addiu      $s2, $s2, 0x1
/* 459C4 800551C4 1800422E */  sltiu      $v0, $s2, 0x18
/* 459C8 800551C8 EAFF4014 */  bnez       $v0, .L80055174
/* 459CC 800551CC 1C003126 */   addiu     $s1, $s1, 0x1C
/* 459D0 800551D0 2000BF8F */  lw         $ra, 0x20($sp)
/* 459D4 800551D4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 459D8 800551D8 1800B28F */  lw         $s2, 0x18($sp)
/* 459DC 800551DC 1400B18F */  lw         $s1, 0x14($sp)
/* 459E0 800551E0 1000B08F */  lw         $s0, 0x10($sp)
/* 459E4 800551E4 0800E003 */  jr         $ra
/* 459E8 800551E8 2800BD27 */   addiu     $sp, $sp, 0x28
.size pxm_get_hw_status, . - pxm_get_hw_status
