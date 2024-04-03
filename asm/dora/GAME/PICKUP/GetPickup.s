.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetPickup
/* CB94 8001C394 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* CB98 8001C398 1800B0AF */  sw         $s0, 0x18($sp)
/* CB9C 8001C39C 21808000 */  addu       $s0, $a0, $zero
/* CBA0 8001C3A0 2000BFAF */  sw         $ra, 0x20($sp)
/* CBA4 8001C3A4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* CBA8 8001C3A8 0C00028E */  lw         $v0, 0xC($s0)
/* CBAC 8001C3AC 01001124 */  addiu      $s1, $zero, 0x1
/* CBB0 8001C3B0 88005110 */  beq        $v0, $s1, .L8001C5D4
/* CBB4 8001C3B4 21200000 */   addu      $a0, $zero, $zero
/* CBB8 8001C3B8 02000524 */  addiu      $a1, $zero, 0x2
/* CBBC 8001C3BC 8666010C */  jal        Sys_VibrationBuzzWork
/* CBC0 8001C3C0 01000624 */   addiu     $a2, $zero, 0x1
/* CBC4 8001C3C4 21200000 */  addu       $a0, $zero, $zero
/* CBC8 8001C3C8 64000524 */  addiu      $a1, $zero, 0x64
/* CBCC 8001C3CC 6266010C */  jal        Sys_VibrationWaveWork
/* CBD0 8001C3D0 0A000624 */   addiu     $a2, $zero, 0xA
/* CBD4 8001C3D4 1C00038E */  lw         $v1, 0x1C($s0)
/* CBD8 8001C3D8 07000224 */  addiu      $v0, $zero, 0x7
/* CBDC 8001C3DC 0E006210 */  beq        $v1, $v0, .L8001C418
/* CBE0 8001C3E0 0800622C */   sltiu     $v0, $v1, 0x8
/* CBE4 8001C3E4 05004010 */  beqz       $v0, .L8001C3FC
/* CBE8 8001C3E8 06000224 */   addiu     $v0, $zero, 0x6
/* CBEC 8001C3EC 2E006210 */  beq        $v1, $v0, .L8001C4A8
/* CBF0 8001C3F0 21200000 */   addu      $a0, $zero, $zero
/* CBF4 8001C3F4 75710008 */  j          .L8001C5D4
/* CBF8 8001C3F8 00000000 */   nop
.L8001C3FC:
/* CBFC 8001C3FC 08000224 */  addiu      $v0, $zero, 0x8
/* CC00 8001C400 4C006210 */  beq        $v1, $v0, .L8001C534
/* CC04 8001C404 34000224 */   addiu     $v0, $zero, 0x34
/* CC08 8001C408 64006210 */  beq        $v1, $v0, .L8001C59C
/* CC0C 8001C40C 21200000 */   addu      $a0, $zero, $zero
/* CC10 8001C410 75710008 */  j          .L8001C5D4
/* CC14 8001C414 00000000 */   nop
.L8001C418:
/* CC18 8001C418 CD78000C */  jal        ActivateHUD
/* CC1C 8001C41C 00000000 */   nop
/* CC20 8001C420 21200000 */  addu       $a0, $zero, $zero
/* CC24 8001C424 03000524 */  addiu      $a1, $zero, 0x3
/* CC28 8001C428 7000068E */  lw         $a2, 0x70($s0)
/* CC2C 8001C42C 7400078E */  lw         $a3, 0x74($s0)
/* CC30 8001C430 7800028E */  lw         $v0, 0x78($s0)
/* CC34 8001C434 00FFE724 */  addiu      $a3, $a3, -0x100
/* CC38 8001C438 69BE000C */  jal        RequestParticle
/* CC3C 8001C43C 1000A2AF */   sw        $v0, 0x10($sp)
/* CC40 8001C440 21200002 */  addu       $a0, $s0, $zero
/* CC44 8001C444 04000524 */  addiu      $a1, $zero, 0x4
/* CC48 8001C448 7000068E */  lw         $a2, 0x70($s0)
/* CC4C 8001C44C 7400078E */  lw         $a3, 0x74($s0)
/* CC50 8001C450 7800028E */  lw         $v0, 0x78($s0)
/* CC54 8001C454 80FEE724 */  addiu      $a3, $a3, -0x180
/* CC58 8001C458 69BE000C */  jal        RequestParticle
/* CC5C 8001C45C 1000A2AF */   sw        $v0, 0x10($sp)
/* CC60 8001C460 27000424 */  addiu      $a0, $zero, 0x27
/* CC64 8001C464 21280000 */  addu       $a1, $zero, $zero
/* CC68 8001C468 0980023C */  lui        $v0, %hi(LevelNumStarsCollected)
/* CC6C 8001C46C A047428C */  lw         $v0, %lo(LevelNumStarsCollected)($v0)
/* CC70 8001C470 64000324 */  addiu      $v1, $zero, 0x64
/* CC74 8001C474 0C0011AE */  sw         $s1, 0xC($s0)
/* CC78 8001C478 600003AE */  sw         $v1, 0x60($s0)
/* CC7C 8001C47C 01004224 */  addiu      $v0, $v0, 0x1
/* CC80 8001C480 0980013C */  lui        $at, %hi(LevelNumStarsCollected)
/* CC84 8001C484 A04722AC */  sw         $v0, %lo(LevelNumStarsCollected)($at)
/* CC88 8001C488 6F4A010C */  jal        pxm_sendevent
/* CC8C 8001C48C 21300000 */   addu      $a2, $zero, $zero
/* CC90 8001C490 4400038E */  lw         $v1, 0x44($s0)
/* CC94 8001C494 00000000 */  nop
/* CC98 8001C498 1400648C */  lw         $a0, 0x14($v1)
/* CC9C 8001C49C 02000224 */  addiu      $v0, $zero, 0x2
/* CCA0 8001C4A0 75710008 */  j          .L8001C5D4
/* CCA4 8001C4A4 0C0082AC */   sw        $v0, 0xC($a0)
.L8001C4A8:
/* CCA8 8001C4A8 7000068E */  lw         $a2, 0x70($s0)
/* CCAC 8001C4AC 7400078E */  lw         $a3, 0x74($s0)
/* CCB0 8001C4B0 7800028E */  lw         $v0, 0x78($s0)
/* CCB4 8001C4B4 03000524 */  addiu      $a1, $zero, 0x3
/* CCB8 8001C4B8 69BE000C */  jal        RequestParticle
/* CCBC 8001C4BC 1000A2AF */   sw        $v0, 0x10($sp)
/* CCC0 8001C4C0 CD78000C */  jal        ActivateHUD
/* CCC4 8001C4C4 00000000 */   nop
/* CCC8 8001C4C8 05000424 */  addiu      $a0, $zero, 0x5
/* CCCC 8001C4CC 21280000 */  addu       $a1, $zero, $zero
/* CCD0 8001C4D0 21300000 */  addu       $a2, $zero, $zero
/* CCD4 8001C4D4 0C0011AE */  sw         $s1, 0xC($s0)
/* CCD8 8001C4D8 64001124 */  addiu      $s1, $zero, 0x64
/* CCDC 8001C4DC 6F4A010C */  jal        pxm_sendevent
/* CCE0 8001C4E0 600011AE */   sw        $s1, 0x60($s0)
/* CCE4 8001C4E4 0980033C */  lui        $v1, %hi(Game_Health)
/* CCE8 8001C4E8 8C42638C */  lw         $v1, %lo(Game_Health)($v1)
/* CCEC 8001C4EC 00000000 */  nop
/* CCF0 8001C4F0 32006324 */  addiu      $v1, $v1, 0x32
/* CCF4 8001C4F4 0980013C */  lui        $at, %hi(Game_Health)
/* CCF8 8001C4F8 8C4223AC */  sw         $v1, %lo(Game_Health)($at)
/* CCFC 8001C4FC 65006328 */  slti       $v1, $v1, 0x65
/* CD00 8001C500 03006014 */  bnez       $v1, .L8001C510
/* CD04 8001C504 00000000 */   nop
/* CD08 8001C508 0980013C */  lui        $at, %hi(Game_Health)
/* CD0C 8001C50C 8C4231AC */  sw         $s1, %lo(Game_Health)($at)
.L8001C510:
/* CD10 8001C510 F578000C */  jal        HudAddHealth
/* CD14 8001C514 00000000 */   nop
/* CD18 8001C518 4400038E */  lw         $v1, 0x44($s0)
/* CD1C 8001C51C 00000000 */  nop
/* CD20 8001C520 1C00628C */  lw         $v0, 0x1C($v1)
/* CD24 8001C524 FBFF0424 */  addiu      $a0, $zero, -0x5
/* CD28 8001C528 24104400 */  and        $v0, $v0, $a0
/* CD2C 8001C52C 75710008 */  j          .L8001C5D4
/* CD30 8001C530 1C0062AC */   sw        $v0, 0x1C($v1)
.L8001C534:
/* CD34 8001C534 21200000 */  addu       $a0, $zero, $zero
/* CD38 8001C538 7000068E */  lw         $a2, 0x70($s0)
/* CD3C 8001C53C 7400078E */  lw         $a3, 0x74($s0)
/* CD40 8001C540 7800028E */  lw         $v0, 0x78($s0)
/* CD44 8001C544 03000524 */  addiu      $a1, $zero, 0x3
/* CD48 8001C548 69BE000C */  jal        RequestParticle
/* CD4C 8001C54C 1000A2AF */   sw        $v0, 0x10($sp)
/* CD50 8001C550 CD78000C */  jal        ActivateHUD
/* CD54 8001C554 00000000 */   nop
/* CD58 8001C558 0980023C */  lui        $v0, %hi(Game_Lives)
/* CD5C 8001C55C 9042428C */  lw         $v0, %lo(Game_Lives)($v0)
/* CD60 8001C560 64000324 */  addiu      $v1, $zero, 0x64
/* CD64 8001C564 0C0011AE */  sw         $s1, 0xC($s0)
/* CD68 8001C568 600003AE */  sw         $v1, 0x60($s0)
/* CD6C 8001C56C 01004224 */  addiu      $v0, $v0, 0x1
/* CD70 8001C570 0980013C */  lui        $at, %hi(Game_Lives)
/* CD74 8001C574 904222AC */  sw         $v0, %lo(Game_Lives)($at)
/* CD78 8001C578 0A79000C */  jal        HudAddLives
/* CD7C 8001C57C 00000000 */   nop
/* CD80 8001C580 06000424 */  addiu      $a0, $zero, 0x6
/* CD84 8001C584 21280000 */  addu       $a1, $zero, $zero
/* CD88 8001C588 6F4A010C */  jal        pxm_sendevent
/* CD8C 8001C58C 21300000 */   addu      $a2, $zero, $zero
/* CD90 8001C590 4400048E */  lw         $a0, 0x44($s0)
/* CD94 8001C594 71710008 */  j          .L8001C5C4
/* CD98 8001C598 00000000 */   nop
.L8001C59C:
/* CD9C 8001C59C 7000068E */  lw         $a2, 0x70($s0)
/* CDA0 8001C5A0 7400078E */  lw         $a3, 0x74($s0)
/* CDA4 8001C5A4 7800028E */  lw         $v0, 0x78($s0)
/* CDA8 8001C5A8 03000524 */  addiu      $a1, $zero, 0x3
/* CDAC 8001C5AC 69BE000C */  jal        RequestParticle
/* CDB0 8001C5B0 1000A2AF */   sw        $v0, 0x10($sp)
/* CDB4 8001C5B4 CD78000C */  jal        ActivateHUD
/* CDB8 8001C5B8 00000000 */   nop
/* CDBC 8001C5BC 4400048E */  lw         $a0, 0x44($s0)
/* CDC0 8001C5C0 0C0011AE */  sw         $s1, 0xC($s0)
.L8001C5C4:
/* CDC4 8001C5C4 1C00828C */  lw         $v0, 0x1C($a0)
/* CDC8 8001C5C8 FBFF0324 */  addiu      $v1, $zero, -0x5
/* CDCC 8001C5CC 24104300 */  and        $v0, $v0, $v1
/* CDD0 8001C5D0 1C0082AC */  sw         $v0, 0x1C($a0)
.L8001C5D4:
/* CDD4 8001C5D4 2000BF8F */  lw         $ra, 0x20($sp)
/* CDD8 8001C5D8 1C00B18F */  lw         $s1, 0x1C($sp)
/* CDDC 8001C5DC 1800B08F */  lw         $s0, 0x18($sp)
/* CDE0 8001C5E0 0800E003 */  jr         $ra
/* CDE4 8001C5E4 2800BD27 */   addiu     $sp, $sp, 0x28
.size GetPickup, . - GetPickup
