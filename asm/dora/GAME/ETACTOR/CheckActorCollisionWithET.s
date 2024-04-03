.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckActorCollisionWithET
/* A7AC 80019FAC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A7B0 80019FB0 1400B1AF */  sw         $s1, 0x14($sp)
/* A7B4 80019FB4 21888000 */  addu       $s1, $a0, $zero
/* A7B8 80019FB8 1800BFAF */  sw         $ra, 0x18($sp)
/* A7BC 80019FBC 1000B0AF */  sw         $s0, 0x10($sp)
/* A7C0 80019FC0 0C00228E */  lw         $v0, 0xC($s1)
/* A7C4 80019FC4 00000000 */  nop
/* A7C8 80019FC8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* A7CC 80019FCC 0200422C */  sltiu      $v0, $v0, 0x2
/* A7D0 80019FD0 13004014 */  bnez       $v0, .L8001A020
/* A7D4 80019FD4 21100000 */   addu      $v0, $zero, $zero
/* A7D8 80019FD8 0980033C */  lui        $v1, %hi(gGameState)
/* A7DC 80019FDC 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* A7E0 80019FE0 0A000224 */  addiu      $v0, $zero, 0xA
/* A7E4 80019FE4 03006210 */  beq        $v1, $v0, .L80019FF4
/* A7E8 80019FE8 08000224 */   addiu     $v0, $zero, 0x8
/* A7EC 80019FEC 03006214 */  bne        $v1, $v0, .L80019FFC
/* A7F0 80019FF0 21202002 */   addu      $a0, $s1, $zero
.L80019FF4:
/* A7F4 80019FF4 08680008 */  j          .L8001A020
/* A7F8 80019FF8 21100000 */   addu      $v0, $zero, $zero
.L80019FFC:
/* A7FC 80019FFC 0980053C */  lui        $a1, %hi(ETActor)
/* A800 8001A000 3AFC000C */  jal        CollisionCheck
/* A804 8001A004 B05AA524 */   addiu     $a1, $a1, %lo(ETActor)
/* A808 8001A008 21804000 */  addu       $s0, $v0, $zero
/* A80C 8001A00C 03000012 */  beqz       $s0, .L8001A01C
/* A810 8001A010 21202002 */   addu      $a0, $s1, $zero
/* A814 8001A014 84FC000C */  jal        AddActorETCollisionList
/* A818 8001A018 21280002 */   addu      $a1, $s0, $zero
.L8001A01C:
/* A81C 8001A01C 21100002 */  addu       $v0, $s0, $zero
.L8001A020:
/* A820 8001A020 1800BF8F */  lw         $ra, 0x18($sp)
/* A824 8001A024 1400B18F */  lw         $s1, 0x14($sp)
/* A828 8001A028 1000B08F */  lw         $s0, 0x10($sp)
/* A82C 8001A02C 0800E003 */  jr         $ra
/* A830 8001A030 2000BD27 */   addiu     $sp, $sp, 0x20
.size CheckActorCollisionWithET, . - CheckActorCollisionWithET
