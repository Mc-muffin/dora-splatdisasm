.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel VehicleInit
/* 37B5C 8004735C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 37B60 80047360 1400B1AF */  sw         $s1, 0x14($sp)
/* 37B64 80047364 21888000 */  addu       $s1, $a0, $zero
/* 37B68 80047368 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 37B6C 8004736C 1800B2AF */  sw         $s2, 0x18($sp)
/* 37B70 80047370 DA25010C */  jal        GenericActorInit
/* 37B74 80047374 1000B0AF */   sw        $s0, 0x10($sp)
/* 37B78 80047378 2801308E */  lw         $s0, 0x128($s1)
/* 37B7C 8004737C 00000000 */  nop
/* 37B80 80047380 000000AE */  sw         $zero, 0x0($s0)
/* 37B84 80047384 0C0020AE */  sw         $zero, 0xC($s1)
/* 37B88 80047388 080000AE */  sw         $zero, 0x8($s0)
/* 37B8C 8004738C 0C0000AE */  sw         $zero, 0xC($s0)
/* 37B90 80047390 040000AE */  sw         $zero, 0x4($s0)
/* 37B94 80047394 5C0020AE */  sw         $zero, 0x5C($s1)
/* 37B98 80047398 2800028E */  lw         $v0, 0x28($s0)
/* 37B9C 8004739C 00000000 */  nop
/* 37BA0 800473A0 2800438C */  lw         $v1, 0x28($v0)
/* 37BA4 800473A4 00000000 */  nop
/* 37BA8 800473A8 05006010 */  beqz       $v1, .L800473C0
/* 37BAC 800473AC 01000224 */   addiu     $v0, $zero, 0x1
/* 37BB0 800473B0 05006214 */  bne        $v1, $v0, .L800473C8
/* 37BB4 800473B4 00040224 */   addiu     $v0, $zero, 0x400
/* 37BB8 800473B8 F21C0108 */  j          .L800473C8
/* 37BBC 800473BC 540022AE */   sw        $v0, 0x54($s1)
.L800473C0:
/* 37BC0 800473C0 000C0224 */  addiu      $v0, $zero, 0xC00
/* 37BC4 800473C4 540022AE */  sw         $v0, 0x54($s1)
.L800473C8:
/* 37BC8 800473C8 4400228E */  lw         $v0, 0x44($s1)
/* 37BCC 800473CC 6C003226 */  addiu      $s2, $s1, 0x6C
/* 37BD0 800473D0 0C0020AE */  sw         $zero, 0xC($s1)
/* 37BD4 800473D4 0000458C */  lw         $a1, 0x0($v0)
/* 37BD8 800473D8 0400468C */  lw         $a2, 0x4($v0)
/* 37BDC 800473DC 0800478C */  lw         $a3, 0x8($v0)
/* 37BE0 800473E0 77FB000C */  jal        MotionPhysics_SetPosition
/* 37BE4 800473E4 21204002 */   addu      $a0, $s2, $zero
/* 37BE8 800473E8 2000058E */  lw         $a1, 0x20($s0)
/* 37BEC 800473EC 00000000 */  nop
/* 37BF0 800473F0 1300A010 */  beqz       $a1, .L80047440
/* 37BF4 800473F4 00000000 */   nop
/* 37BF8 800473F8 1000068E */  lw         $a2, 0x10($s0)
/* 37BFC 800473FC 1800078E */  lw         $a3, 0x18($s0)
/* 37C00 80047400 9C13010C */  jal        InitPath
/* 37C04 80047404 21202002 */   addu      $a0, $s1, $zero
/* 37C08 80047408 3C01228E */  lw         $v0, 0x13C($s1)
/* 37C0C 8004740C 01001024 */  addiu      $s0, $zero, 0x1
/* 37C10 80047410 05005010 */  beq        $v0, $s0, .L80047428
/* 37C14 80047414 00000000 */   nop
/* 37C18 80047418 21202002 */  addu       $a0, $s1, $zero
/* 37C1C 8004741C 01000524 */  addiu      $a1, $zero, 0x1
/* 37C20 80047420 DCE2000C */  jal        ForceAnim
/* 37C24 80047424 2C012626 */   addiu     $a2, $s1, 0x12C
.L80047428:
/* 37C28 80047428 0000258E */  lw         $a1, 0x0($s1)
/* 37C2C 8004742C 0400268E */  lw         $a2, 0x4($s1)
/* 37C30 80047430 0800278E */  lw         $a3, 0x8($s1)
/* 37C34 80047434 21204002 */  addu       $a0, $s2, $zero
/* 37C38 80047438 77FB000C */  jal        MotionPhysics_SetPosition
/* 37C3C 8004743C 440130AE */   sw        $s0, 0x144($s1)
.L80047440:
/* 37C40 80047440 2801308E */  lw         $s0, 0x128($s1)
/* 37C44 80047444 7087010C */  jal        FindLocationSphere
/* 37C48 80047448 21202002 */   addu      $a0, $s1, $zero
/* 37C4C 8004744C 21202002 */  addu       $a0, $s1, $zero
/* 37C50 80047450 6D12010C */  jal        AttachAudAttackActors
/* 37C54 80047454 21284000 */   addu      $a1, $v0, $zero
/* 37C58 80047458 240002AE */  sw         $v0, 0x24($s0)
/* 37C5C 8004745C 3C01238E */  lw         $v1, 0x13C($s1)
/* 37C60 80047460 01000224 */  addiu      $v0, $zero, 0x1
/* 37C64 80047464 04006210 */  beq        $v1, $v0, .L80047478
/* 37C68 80047468 21202002 */   addu      $a0, $s1, $zero
/* 37C6C 8004746C 01000524 */  addiu      $a1, $zero, 0x1
/* 37C70 80047470 DCE2000C */  jal        ForceAnim
/* 37C74 80047474 2C018624 */   addiu     $a2, $a0, 0x12C
.L80047478:
/* 37C78 80047478 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 37C7C 8004747C 1800B28F */  lw         $s2, 0x18($sp)
/* 37C80 80047480 1400B18F */  lw         $s1, 0x14($sp)
/* 37C84 80047484 1000B08F */  lw         $s0, 0x10($sp)
/* 37C88 80047488 0800E003 */  jr         $ra
/* 37C8C 8004748C 2000BD27 */   addiu     $sp, $sp, 0x20
.size VehicleInit, . - VehicleInit
