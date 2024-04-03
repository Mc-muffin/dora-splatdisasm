.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TeleportService
/* 691C 8001611C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6920 80016120 2000B0AF */  sw         $s0, 0x20($sp)
/* 6924 80016124 21808000 */  addu       $s0, $a0, $zero
/* 6928 80016128 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 692C 8001612C 2800B2AF */  sw         $s2, 0x28($sp)
/* 6930 80016130 F866010C */  jal        ClearJoyPad
/* 6934 80016134 2400B1AF */   sw        $s1, 0x24($sp)
/* 6938 80016138 0C00038E */  lw         $v1, 0xC($s0)
/* 693C 8001613C 10000224 */  addiu      $v0, $zero, 0x10
/* 6940 80016140 05006210 */  beq        $v1, $v0, .L80016158
/* 6944 80016144 11000224 */   addiu     $v0, $zero, 0x11
/* 6948 80016148 3A006210 */  beq        $v1, $v0, .L80016234
/* 694C 8001614C 01000324 */   addiu     $v1, $zero, 0x1
/* 6950 80016150 9A580008 */  j          .L80016268
/* 6954 80016154 00000000 */   nop
.L80016158:
/* 6958 80016158 21200002 */  addu       $a0, $s0, $zero
/* 695C 8001615C 7400828F */  lw         $v0, %gp_rel(TeleportTimer)($gp)
/* 6960 80016160 00000000 */  nop
/* 6964 80016164 01004224 */  addiu      $v0, $v0, 0x1
/* 6968 80016168 740082AF */  sw         $v0, %gp_rel(TeleportTimer)($gp)
/* 696C 8001616C 28E3000C */  jal        GetSeqNumFrames
/* 6970 80016170 16000524 */   addiu     $a1, $zero, 0x16
/* 6974 80016174 7400838F */  lw         $v1, %gp_rel(TeleportTimer)($gp)
/* 6978 80016178 00000000 */  nop
/* 697C 8001617C 2A104300 */  slt        $v0, $v0, $v1
/* 6980 80016180 39004010 */  beqz       $v0, .L80016268
/* 6984 80016184 0980023C */   lui       $v0, %hi(ETActor)
/* 6988 80016188 B05A5224 */  addiu      $s2, $v0, %lo(ETActor)
/* 698C 8001618C 6511010C */  jal        ActorOff
/* 6990 80016190 21204002 */   addu      $a0, $s2, $zero
/* 6994 80016194 7400838F */  lw         $v1, %gp_rel(TeleportTimer)($gp)
/* 6998 80016198 01001124 */  addiu      $s1, $zero, 0x1
/* 699C 8001619C 0980013C */  lui        $at, %hi(DISSOLVESTATE)
/* 69A0 800161A0 584B31AC */  sw         $s1, %lo(DISSOLVESTATE)($at)
/* 69A4 800161A4 3D006328 */  slti       $v1, $v1, 0x3D
/* 69A8 800161A8 2F006014 */  bnez       $v1, .L80016268
/* 69AC 800161AC 11000224 */   addiu     $v0, $zero, 0x11
/* 69B0 800161B0 1C13858F */  lw         $a1, %gp_rel(ETTeleport)($gp)
/* 69B4 800161B4 0C0002AE */  sw         $v0, 0xC($s0)
/* 69B8 800161B8 0000A38C */  lw         $v1, 0x0($a1)
/* 69BC 800161BC 740080AF */  sw         $zero, %gp_rel(TeleportTimer)($gp)
/* 69C0 800161C0 700003AE */  sw         $v1, 0x70($s0)
/* 69C4 800161C4 0400A28C */  lw         $v0, 0x4($a1)
/* 69C8 800161C8 21200002 */  addu       $a0, $s0, $zero
/* 69CC 800161CC 740002AE */  sw         $v0, 0x74($s0)
/* 69D0 800161D0 0800A38C */  lw         $v1, 0x8($a1)
/* 69D4 800161D4 6C000526 */  addiu      $a1, $s0, 0x6C
/* 69D8 800161D8 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 69DC 800161DC 780003AE */   sw        $v1, 0x78($s0)
/* 69E0 800161E0 14000424 */  addiu      $a0, $zero, 0x14
/* 69E4 800161E4 21280000 */  addu       $a1, $zero, $zero
/* 69E8 800161E8 6F4A010C */  jal        pxm_sendevent
/* 69EC 800161EC 21300000 */   addu      $a2, $zero, $zero
/* 69F0 800161F0 21200002 */  addu       $a0, $s0, $zero
/* 69F4 800161F4 28E3000C */  jal        GetSeqNumFrames
/* 69F8 800161F8 17000524 */   addiu     $a1, $zero, 0x17
/* 69FC 800161FC 21200002 */  addu       $a0, $s0, $zero
/* 6A00 80016200 17000524 */  addiu      $a1, $zero, 0x17
/* 6A04 80016204 21300000 */  addu       $a2, $zero, $zero
/* 6A08 80016208 02000324 */  addiu      $v1, $zero, 0x2
/* 6A0C 8001620C 2C010726 */  addiu      $a3, $s0, 0x12C
/* 6A10 80016210 1800A7AF */  sw         $a3, 0x18($sp)
/* 6A14 80016214 21384000 */  addu       $a3, $v0, $zero
/* 6A18 80016218 1000B1AF */  sw         $s1, 0x10($sp)
/* 6A1C 8001621C 72E2000C */  jal        RequestAnim
/* 6A20 80016220 1400A3AF */   sw        $v1, 0x14($sp)
/* 6A24 80016224 6011010C */  jal        ActorOn
/* 6A28 80016228 21204002 */   addu      $a0, $s2, $zero
/* 6A2C 8001622C 9A580008 */  j          .L80016268
/* 6A30 80016230 00000000 */   nop
.L80016234:
/* 6A34 80016234 7400828F */  lw         $v0, %gp_rel(TeleportTimer)($gp)
/* 6A38 80016238 0980013C */  lui        $at, %hi(DISSOLVESTATE)
/* 6A3C 8001623C 584B23AC */  sw         $v1, %lo(DISSOLVESTATE)($at)
/* 6A40 80016240 01004324 */  addiu      $v1, $v0, 0x1
/* 6A44 80016244 29006228 */  slti       $v0, $v1, 0x29
/* 6A48 80016248 740083AF */  sw         $v1, %gp_rel(TeleportTimer)($gp)
/* 6A4C 8001624C 06004014 */  bnez       $v0, .L80016268
/* 6A50 80016250 3D006228 */   slti      $v0, $v1, 0x3D
/* 6A54 80016254 0980013C */  lui        $at, %hi(DISSOLVESTATE)
/* 6A58 80016258 584B20AC */  sw         $zero, %lo(DISSOLVESTATE)($at)
/* 6A5C 8001625C 02004014 */  bnez       $v0, .L80016268
/* 6A60 80016260 00000000 */   nop
/* 6A64 80016264 0C0000AE */  sw         $zero, 0xC($s0)
.L80016268:
/* 6A68 80016268 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 6A6C 8001626C 2800B28F */  lw         $s2, 0x28($sp)
/* 6A70 80016270 2400B18F */  lw         $s1, 0x24($sp)
/* 6A74 80016274 2000B08F */  lw         $s0, 0x20($sp)
/* 6A78 80016278 0800E003 */  jr         $ra
/* 6A7C 8001627C 3000BD27 */   addiu     $sp, $sp, 0x30
.size TeleportService, . - TeleportService
