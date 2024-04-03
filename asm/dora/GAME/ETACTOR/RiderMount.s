.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RiderMount
/* BB38 8001B338 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BB3C 8001B33C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* BB40 8001B340 21988000 */  addu       $s3, $a0, $zero
/* BB44 8001B344 0980023C */  lui        $v0, %hi(ETActor)
/* BB48 8001B348 1800B2AF */  sw         $s2, 0x18($sp)
/* BB4C 8001B34C B05A5224 */  addiu      $s2, $v0, %lo(ETActor)
/* BB50 8001B350 21204002 */  addu       $a0, $s2, $zero
/* BB54 8001B354 C8128527 */  addiu      $a1, $gp, %gp_rel(g_jump_decision)
/* BB58 8001B358 2000BFAF */  sw         $ra, 0x20($sp)
/* BB5C 8001B35C 1400B1AF */  sw         $s1, 0x14($sp)
/* BB60 8001B360 1000B0AF */  sw         $s0, 0x10($sp)
/* BB64 8001B364 2001638E */  lw         $v1, 0x120($s3)
/* BB68 8001B368 0A80023C */  lui        $v0, %hi(BootsActor)
/* BB6C 8001B36C 2000668C */  lw         $a2, 0x20($v1)
/* BB70 8001B370 988D5124 */  addiu      $s1, $v0, %lo(BootsActor)
/* BB74 8001B374 A826010C */  jal        ActorJump
/* BB78 8001B378 3000C624 */   addiu     $a2, $a2, 0x30
/* BB7C 8001B37C 01005030 */  andi       $s0, $v0, 0x1
/* BB80 8001B380 2001628E */  lw         $v0, 0x120($s3)
/* BB84 8001B384 21202002 */  addu       $a0, $s1, $zero
/* BB88 8001B388 2000468C */  lw         $a2, 0x20($v0)
/* BB8C 8001B38C D4128527 */  addiu      $a1, $gp, %gp_rel(g_bootsjump_decision)
/* BB90 8001B390 A826010C */  jal        ActorJump
/* BB94 8001B394 5000C624 */   addiu     $a2, $a2, 0x50
/* BB98 8001B398 24800202 */  and        $s0, $s0, $v0
/* BB9C 8001B39C 17000012 */  beqz       $s0, .L8001B3FC
/* BBA0 8001B3A0 0D000524 */   addiu     $a1, $zero, 0xD
/* BBA4 8001B3A4 21202002 */  addu       $a0, $s1, $zero
/* BBA8 8001B3A8 DCE2000C */  jal        ForceAnim
/* BBAC 8001B3AC 2C012626 */   addiu     $a2, $s1, 0x12C
/* BBB0 8001B3B0 21204002 */  addu       $a0, $s2, $zero
/* BBB4 8001B3B4 1E000524 */  addiu      $a1, $zero, 0x1E
/* BBB8 8001B3B8 DCE2000C */  jal        ForceAnim
/* BBBC 8001B3BC 2C014626 */   addiu     $a2, $s2, 0x12C
/* BBC0 8001B3C0 21206002 */  addu       $a0, $s3, $zero
/* BBC4 8001B3C4 0D000524 */  addiu      $a1, $zero, 0xD
/* BBC8 8001B3C8 DCE2000C */  jal        ForceAnim
/* BBCC 8001B3CC 2C016626 */   addiu     $a2, $s3, 0x12C
/* BBD0 8001B3D0 C8128527 */  addiu      $a1, $gp, %gp_rel(g_jump_decision)
/* BBD4 8001B3D4 DA28010C */  jal        InitActorJump
/* BBD8 8001B3D8 21204002 */   addu      $a0, $s2, $zero
/* BBDC 8001B3DC D4128527 */  addiu      $a1, $gp, %gp_rel(g_bootsjump_decision)
/* BBE0 8001B3E0 DA28010C */  jal        InitActorJump
/* BBE4 8001B3E4 21202002 */   addu      $a0, $s1, $zero
/* BBE8 8001B3E8 1E000324 */  addiu      $v1, $zero, 0x1E
/* BBEC 8001B3EC 0D000224 */  addiu      $v0, $zero, 0xD
/* BBF0 8001B3F0 440143AE */  sw         $v1, 0x144($s2)
/* BBF4 8001B3F4 440162AE */  sw         $v0, 0x144($s3)
/* BBF8 8001B3F8 440122AE */  sw         $v0, 0x144($s1)
.L8001B3FC:
/* BBFC 8001B3FC 21100002 */  addu       $v0, $s0, $zero
/* BC00 8001B400 2000BF8F */  lw         $ra, 0x20($sp)
/* BC04 8001B404 1C00B38F */  lw         $s3, 0x1C($sp)
/* BC08 8001B408 1800B28F */  lw         $s2, 0x18($sp)
/* BC0C 8001B40C 1400B18F */  lw         $s1, 0x14($sp)
/* BC10 8001B410 1000B08F */  lw         $s0, 0x10($sp)
/* BC14 8001B414 0800E003 */  jr         $ra
/* BC18 8001B418 2800BD27 */   addiu     $sp, $sp, 0x28
.size RiderMount, . - RiderMount
