.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LeaveDynamicActor
/* 11D44 80021544 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 11D48 80021548 0880023C */  lui        $v0, %hi(DynamicPreSpawn)
/* 11D4C 8002154C 48644924 */  addiu      $t1, $v0, %lo(DynamicPreSpawn)
/* 11D50 80021550 21582001 */  addu       $t3, $t1, $zero
/* 11D54 80021554 08800A3C */  lui        $t2, %hi(TestWorld)
/* 11D58 80021558 8C654A25 */  addiu      $t2, $t2, %lo(TestWorld)
/* 11D5C 8002155C 1400BFAF */  sw         $ra, 0x14($sp)
/* 11D60 80021560 1000B0AF */  sw         $s0, 0x10($sp)
/* 11D64 80021564 1000488D */  lw         $t0, 0x10($t2)
/* 11D68 80021568 20006C25 */  addiu      $t4, $t3, 0x20
/* 11D6C 8002156C 100027AD */  sw         $a3, 0x10($t1)
/* 11D70 80021570 486444AC */  sw         $a0, %lo(DynamicPreSpawn)($v0)
/* 11D74 80021574 040025AD */  sw         $a1, 0x4($t1)
/* 11D78 80021578 080026AD */  sw         $a2, 0x8($t1)
/* 11D7C 8002157C 1C00438D */  lw         $v1, 0x1C($t2)
/* 11D80 80021580 2800A48F */  lw         $a0, 0x28($sp)
/* 11D84 80021584 C0100800 */  sll        $v0, $t0, 3
/* 11D88 80021588 21104800 */  addu       $v0, $v0, $t0
/* 11D8C 8002158C 80100200 */  sll        $v0, $v0, 2
/* 11D90 80021590 21806200 */  addu       $s0, $v1, $v0
/* 11D94 80021594 21100002 */  addu       $v0, $s0, $zero
/* 11D98 80021598 01000825 */  addiu      $t0, $t0, 0x1
/* 11D9C 8002159C 0C0024AD */  sw         $a0, 0xC($t1)
/* 11DA0 800215A0 100048AD */  sw         $t0, 0x10($t2)
.L800215A4:
/* 11DA4 800215A4 0000638D */  lw         $v1, 0x0($t3)
/* 11DA8 800215A8 0400648D */  lw         $a0, 0x4($t3)
/* 11DAC 800215AC 0800658D */  lw         $a1, 0x8($t3)
/* 11DB0 800215B0 0C00668D */  lw         $a2, 0xC($t3)
/* 11DB4 800215B4 000043AC */  sw         $v1, 0x0($v0)
/* 11DB8 800215B8 040044AC */  sw         $a0, 0x4($v0)
/* 11DBC 800215BC 080045AC */  sw         $a1, 0x8($v0)
/* 11DC0 800215C0 0C0046AC */  sw         $a2, 0xC($v0)
/* 11DC4 800215C4 10006B25 */  addiu      $t3, $t3, 0x10
/* 11DC8 800215C8 F6FF6C15 */  bne        $t3, $t4, .L800215A4
/* 11DCC 800215CC 10004224 */   addiu     $v0, $v0, 0x10
/* 11DD0 800215D0 0000638D */  lw         $v1, 0x0($t3)
/* 11DD4 800215D4 00000000 */  nop
/* 11DD8 800215D8 000043AC */  sw         $v1, 0x0($v0)
/* 11DDC 800215DC 21200002 */  addu       $a0, $s0, $zero
/* 11DE0 800215E0 B728010C */  jal        creategenericAI
/* 11DE4 800215E4 21280000 */   addu      $a1, $zero, $zero
/* 11DE8 800215E8 490A010C */  jal        InitSpawn
/* 11DEC 800215EC 21200002 */   addu      $a0, $s0, $zero
/* 11DF0 800215F0 1400BF8F */  lw         $ra, 0x14($sp)
/* 11DF4 800215F4 1000B08F */  lw         $s0, 0x10($sp)
/* 11DF8 800215F8 0800E003 */  jr         $ra
/* 11DFC 800215FC 1800BD27 */   addiu     $sp, $sp, 0x18
.size LeaveDynamicActor, . - LeaveDynamicActor
