.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerSwiperActor
/* 26370 80035B70 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 26374 80035B74 3800B0AF */  sw         $s0, 0x38($sp)
/* 26378 80035B78 21808000 */  addu       $s0, $a0, $zero
/* 2637C 80035B7C 4400BFAF */  sw         $ra, 0x44($sp)
/* 26380 80035B80 4000B2AF */  sw         $s2, 0x40($sp)
/* 26384 80035B84 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 26388 80035B88 2801118E */  lw         $s1, 0x128($s0)
/* 2638C 80035B8C 0980023C */  lui        $v0, %hi(gWorld)
/* 26390 80035B90 3C56428C */  lw         $v0, %lo(gWorld)($v0)
/* 26394 80035B94 2401128E */  lw         $s2, 0x124($s0)
/* 26398 80035B98 09004014 */  bnez       $v0, .L80035BC0
/* 2639C 80035B9C 00000000 */   nop
/* 263A0 80035BA0 0980023C */  lui        $v0, %hi(gLevel)
/* 263A4 80035BA4 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 263A8 80035BA8 00000000 */  nop
/* 263AC 80035BAC 04004014 */  bnez       $v0, .L80035BC0
/* 263B0 80035BB0 01000224 */   addiu     $v0, $zero, 0x1
/* 263B4 80035BB4 F80982AF */  sw         $v0, %gp_rel(SwiperTraining)($gp)
/* 263B8 80035BB8 F1D60008 */  j          .L80035BC4
/* 263BC 80035BBC 00000000 */   nop
.L80035BC0:
/* 263C0 80035BC0 F80980AF */  sw         $zero, %gp_rel(SwiperTraining)($gp)
.L80035BC4:
/* 263C4 80035BC4 F809828F */  lw         $v0, %gp_rel(SwiperTraining)($gp)
/* 263C8 80035BC8 00000000 */  nop
/* 263CC 80035BCC 05004010 */  beqz       $v0, .L80035BE4
/* 263D0 80035BD0 00000000 */   nop
/* 263D4 80035BD4 A668000C */  jal        SetPlayerWait
/* 263D8 80035BD8 00000000 */   nop
/* 263DC 80035BDC 06D70008 */  j          .L80035C18
/* 263E0 80035BE0 00000000 */   nop
.L80035BE4:
/* 263E4 80035BE4 0000228E */  lw         $v0, 0x0($s1)
/* 263E8 80035BE8 00000000 */  nop
/* 263EC 80035BEC 85004014 */  bnez       $v0, .L80035E04
/* 263F0 80035BF0 01000224 */   addiu     $v0, $zero, 0x1
/* 263F4 80035BF4 0980023C */  lui        $v0, %hi(NumInventoryActors)
/* 263F8 80035BF8 C446428C */  lw         $v0, %lo(NumInventoryActors)($v0)
/* 263FC 80035BFC 00000000 */  nop
/* 26400 80035C00 80004010 */  beqz       $v0, .L80035E04
/* 26404 80035C04 01000224 */   addiu     $v0, $zero, 0x1
/* 26408 80035C08 3C00228E */  lw         $v0, 0x3C($s1)
/* 2640C 80035C0C 00000000 */  nop
/* 26410 80035C10 7C004014 */  bnez       $v0, .L80035E04
/* 26414 80035C14 01000224 */   addiu     $v0, $zero, 0x1
.L80035C18:
/* 26418 80035C18 A668000C */  jal        SetPlayerWait
/* 2641C 80035C1C 00000000 */   nop
/* 26420 80035C20 0040033C */  lui        $v1, (0x40000002 >> 16)
/* 26424 80035C24 02006334 */  ori        $v1, $v1, (0x40000002 & 0xFFFF)
/* 26428 80035C28 01000424 */  addiu      $a0, $zero, 0x1
/* 2642C 80035C2C 44000524 */  addiu      $a1, $zero, 0x44
/* 26430 80035C30 3C000624 */  addiu      $a2, $zero, 0x3C
/* 26434 80035C34 7F000724 */  addiu      $a3, $zero, 0x7F
/* 26438 80035C38 4A53010C */  jal        pxm_que_noteon_layered
/* 2643C 80035C3C 1000A3AF */   sw        $v1, 0x10($sp)
/* 26440 80035C40 F809838F */  lw         $v1, %gp_rel(SwiperTraining)($gp)
/* 26444 80035C44 01000424 */  addiu      $a0, $zero, 0x1
/* 26448 80035C48 07006014 */  bnez       $v1, .L80035C68
/* 2644C 80035C4C 3C0024AE */   sw        $a0, 0x3C($s1)
/* 26450 80035C50 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 26454 80035C54 00000000 */  nop
/* 26458 80035C58 03004014 */  bnez       $v0, .L80035C68
/* 2645C 80035C5C 32000224 */   addiu     $v0, $zero, 0x32
/* 26460 80035C60 F40984AF */  sw         $a0, %gp_rel(SwiperWaitState)($gp)
/* 26464 80035C64 FC0982AF */  sw         $v0, %gp_rel(SwiperTimer)($gp)
.L80035C68:
/* 26468 80035C68 0980043C */  lui        $a0, %hi(ETActor)
/* 2646C 80035C6C B05A828C */  lw         $v0, %lo(ETActor)($a0)
/* 26470 80035C70 B05A8424 */  addiu      $a0, $a0, %lo(ETActor)
/* 26474 80035C74 0400838C */  lw         $v1, 0x4($a0)
/* 26478 80035C78 C3110200 */  sra        $v0, $v0, 7
/* 2647C 80035C7C C0310200 */  sll        $a2, $v0, 7
/* 26480 80035C80 4000C224 */  addiu      $v0, $a2, 0x40
/* 26484 80035C84 C3190300 */  sra        $v1, $v1, 7
/* 26488 80035C88 C0190300 */  sll        $v1, $v1, 7
/* 2648C 80035C8C 2800A2AF */  sw         $v0, 0x28($sp)
/* 26490 80035C90 0800828C */  lw         $v0, 0x8($a0)
/* 26494 80035C94 40006324 */  addiu      $v1, $v1, 0x40
/* 26498 80035C98 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 2649C 80035C9C C3110200 */  sra        $v0, $v0, 7
/* 264A0 80035CA0 C0110200 */  sll        $v0, $v0, 7
/* 264A4 80035CA4 40004524 */  addiu      $a1, $v0, 0x40
/* 264A8 80035CA8 3000A5AF */  sw         $a1, 0x30($sp)
/* 264AC 80035CAC 5000248E */  lw         $a0, 0x50($s1)
/* 264B0 80035CB0 01000224 */  addiu      $v0, $zero, 0x1
/* 264B4 80035CB4 03008214 */  bne        $a0, $v0, .L80035CC4
/* 264B8 80035CB8 03000224 */   addiu     $v0, $zero, 0x3
/* 264BC 80035CBC 34D70008 */  j          .L80035CD0
/* 264C0 80035CC0 4003C224 */   addiu     $v0, $a2, 0x340
.L80035CC4:
/* 264C4 80035CC4 06008214 */  bne        $a0, $v0, .L80035CE0
/* 264C8 80035CC8 6C000426 */   addiu     $a0, $s0, 0x6C
/* 264CC 80035CCC 40FDC224 */  addiu      $v0, $a2, -0x2C0
.L80035CD0:
/* 264D0 80035CD0 1800A2AF */  sw         $v0, 0x18($sp)
/* 264D4 80035CD4 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 264D8 80035CD8 2000A5AF */  sw         $a1, 0x20($sp)
/* 264DC 80035CDC 6C000426 */  addiu      $a0, $s0, 0x6C
.L80035CE0:
/* 264E0 80035CE0 1800A88F */  lw         $t0, 0x18($sp)
/* 264E4 80035CE4 1C00A28F */  lw         $v0, 0x1C($sp)
/* 264E8 80035CE8 2000A38F */  lw         $v1, 0x20($sp)
/* 264EC 80035CEC 21280001 */  addu       $a1, $t0, $zero
/* 264F0 80035CF0 21304000 */  addu       $a2, $v0, $zero
/* 264F4 80035CF4 21386000 */  addu       $a3, $v1, $zero
/* 264F8 80035CF8 000008AE */  sw         $t0, 0x0($s0)
/* 264FC 80035CFC 040002AE */  sw         $v0, 0x4($s0)
/* 26500 80035D00 77FB000C */  jal        MotionPhysics_SetPosition
/* 26504 80035D04 080003AE */   sw        $v1, 0x8($s0)
/* 26508 80035D08 0000038E */  lw         $v1, 0x0($s0)
/* 2650C 80035D0C 0A80053C */  lui        $a1, %hi(SwiperTrack)
/* 26510 80035D10 5890A3AC */  sw         $v1, %lo(SwiperTrack)($a1)
/* 26514 80035D14 0400048E */  lw         $a0, 0x4($s0)
/* 26518 80035D18 5890AC24 */  addiu      $t4, $a1, %lo(SwiperTrack)
/* 2651C 80035D1C 040084AD */  sw         $a0, 0x4($t4)
/* 26520 80035D20 0800028E */  lw         $v0, 0x8($s0)
/* 26524 80035D24 2168A000 */  addu       $t5, $a1, $zero
/* 26528 80035D28 080082AD */  sw         $v0, 0x8($t4)
/* 2652C 80035D2C 5000238E */  lw         $v1, 0x50($s1)
/* 26530 80035D30 01000224 */  addiu      $v0, $zero, 0x1
/* 26534 80035D34 06006214 */  bne        $v1, $v0, .L80035D50
/* 26538 80035D38 10008C25 */   addiu     $t4, $t4, 0x10
/* 2653C 80035D3C 2800A28F */  lw         $v0, 0x28($sp)
/* 26540 80035D40 2C00A38F */  lw         $v1, 0x2C($sp)
/* 26544 80035D44 3000A48F */  lw         $a0, 0x30($sp)
/* 26548 80035D48 5BD70008 */  j          .L80035D6C
/* 2654C 80035D4C 75004224 */   addiu     $v0, $v0, 0x75
.L80035D50:
/* 26550 80035D50 03000224 */  addiu      $v0, $zero, 0x3
/* 26554 80035D54 09006214 */  bne        $v1, $v0, .L80035D7C
/* 26558 80035D58 21200002 */   addu      $a0, $s0, $zero
/* 2655C 80035D5C 2800A28F */  lw         $v0, 0x28($sp)
/* 26560 80035D60 2C00A38F */  lw         $v1, 0x2C($sp)
/* 26564 80035D64 3000A48F */  lw         $a0, 0x30($sp)
/* 26568 80035D68 8BFF4224 */  addiu      $v0, $v0, -0x75
.L80035D6C:
/* 2656C 80035D6C 1800A2AF */  sw         $v0, 0x18($sp)
/* 26570 80035D70 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 26574 80035D74 2000A4AF */  sw         $a0, 0x20($sp)
/* 26578 80035D78 21200002 */  addu       $a0, $s0, $zero
.L80035D7C:
/* 2657C 80035D7C 0A800A3C */  lui        $t2, %hi(SwiperTrackPath)
/* 26580 80035D80 30904B25 */  addiu      $t3, $t2, %lo(SwiperTrackPath)
/* 26584 80035D84 21286001 */  addu       $a1, $t3, $zero
/* 26588 80035D88 000C0624 */  addiu      $a2, $zero, 0xC00
/* 2658C 80035D8C 0A80073C */  lui        $a3, %hi(SwiperTrackPathData)
/* 26590 80035D90 02000224 */  addiu      $v0, $zero, 0x2
/* 26594 80035D94 7890E2AC */  sw         $v0, %lo(SwiperTrackPathData)($a3)
/* 26598 80035D98 7890E724 */  addiu      $a3, $a3, %lo(SwiperTrackPathData)
/* 2659C 80035D9C 1800A38F */  lw         $v1, 0x18($sp)
/* 265A0 80035DA0 1C00A88F */  lw         $t0, 0x1C($sp)
/* 265A4 80035DA4 2000A98F */  lw         $t1, 0x20($sp)
/* 265A8 80035DA8 5890A225 */  addiu      $v0, $t5, %lo(SwiperTrack)
/* 265AC 80035DAC 0800E2AC */  sw         $v0, 0x8($a3)
/* 265B0 80035DB0 309047AD */  sw         $a3, %lo(SwiperTrackPath)($t2)
/* 265B4 80035DB4 000083AD */  sw         $v1, 0x0($t4)
/* 265B8 80035DB8 040088AD */  sw         $t0, 0x4($t4)
/* 265BC 80035DBC 080089AD */  sw         $t1, 0x8($t4)
/* 265C0 80035DC0 0400E28C */  lw         $v0, 0x4($a3)
/* 265C4 80035DC4 F7FF0324 */  addiu      $v1, $zero, -0x9
/* 265C8 80035DC8 24104300 */  and        $v0, $v0, $v1
/* 265CC 80035DCC 0400E2AC */  sw         $v0, 0x4($a3)
/* 265D0 80035DD0 4400088E */  lw         $t0, 0x44($s0)
/* 265D4 80035DD4 21380000 */  addu       $a3, $zero, $zero
/* 265D8 80035DD8 1C00028D */  lw         $v0, 0x1C($t0)
/* 265DC 80035DDC FFF70324 */  addiu      $v1, $zero, -0x801
/* 265E0 80035DE0 24104300 */  and        $v0, $v0, $v1
/* 265E4 80035DE4 1C0002AD */  sw         $v0, 0x1C($t0)
/* 265E8 80035DE8 9C13010C */  jal        InitPath
/* 265EC 80035DEC 04004BAE */   sw        $t3, 0x4($s2)
/* 265F0 80035DF0 5C0020AE */  sw         $zero, 0x5C($s1)
/* 265F4 80035DF4 1000038E */  lw         $v1, 0x10($s0)
/* 265F8 80035DF8 01000224 */  addiu      $v0, $zero, 0x1
/* 265FC 80035DFC 00016334 */  ori        $v1, $v1, 0x100
/* 26600 80035E00 100003AE */  sw         $v1, 0x10($s0)
.L80035E04:
/* 26604 80035E04 4400BF8F */  lw         $ra, 0x44($sp)
/* 26608 80035E08 4000B28F */  lw         $s2, 0x40($sp)
/* 2660C 80035E0C 3C00B18F */  lw         $s1, 0x3C($sp)
/* 26610 80035E10 3800B08F */  lw         $s0, 0x38($sp)
/* 26614 80035E14 0800E003 */  jr         $ra
/* 26618 80035E18 4800BD27 */   addiu     $sp, $sp, 0x48
.size TriggerSwiperActor, . - TriggerSwiperActor
