.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DisplayActorPool
/* 27DC0 800375C0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 27DC4 800375C4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 27DC8 800375C8 20001324 */  addiu      $s3, $zero, 0x20
/* 27DCC 800375CC 2000B0AF */  sw         $s0, 0x20($sp)
/* 27DD0 800375D0 21800000 */  addu       $s0, $zero, $zero
/* 27DD4 800375D4 0A80023C */  lui        $v0, %hi(ActorDynamicPool)
/* 27DD8 800375D8 88904224 */  addiu      $v0, $v0, %lo(ActorDynamicPool)
/* 27DDC 800375DC 2800B2AF */  sw         $s2, 0x28($sp)
/* 27DE0 800375E0 08005224 */  addiu      $s2, $v0, 0x8
/* 27DE4 800375E4 2400B1AF */  sw         $s1, 0x24($sp)
/* 27DE8 800375E8 21880000 */  addu       $s1, $zero, $zero
/* 27DEC 800375EC 3400B5AF */  sw         $s5, 0x34($sp)
/* 27DF0 800375F0 04005524 */  addiu      $s5, $v0, 0x4
/* 27DF4 800375F4 3000B4AF */  sw         $s4, 0x30($sp)
/* 27DF8 800375F8 0180143C */  lui        $s4, %hi(D_80012814)
/* 27DFC 800375FC 3800BFAF */  sw         $ra, 0x38($sp)
.L80037600:
/* 27E00 80037600 21103502 */  addu       $v0, $s1, $s5
/* 27E04 80037604 0000438C */  lw         $v1, 0x0($v0)
/* 27E08 80037608 00000000 */  nop
/* 27E0C 8003760C 0A006010 */  beqz       $v1, .L80037638
/* 27E10 80037610 21286002 */   addu      $a1, $s3, $zero
/* 27E14 80037614 0C007326 */  addiu      $s3, $s3, 0xC
/* 27E18 80037618 50000424 */  addiu      $a0, $zero, 0x50
/* 27E1C 8003761C 21300000 */  addu       $a2, $zero, $zero
/* 27E20 80037620 0000428E */  lw         $v0, 0x0($s2)
/* 27E24 80037624 14288726 */  addiu      $a3, $s4, %lo(D_80012814)
/* 27E28 80037628 1000B0AF */  sw         $s0, 0x10($sp)
/* 27E2C 8003762C 1400A3AF */  sw         $v1, 0x14($sp)
/* 27E30 80037630 3063010C */  jal        Print
/* 27E34 80037634 1800A2AF */   sw        $v0, 0x18($sp)
.L80037638:
/* 27E38 80037638 5C005226 */  addiu      $s2, $s2, 0x5C
/* 27E3C 8003763C 01001026 */  addiu      $s0, $s0, 0x1
/* 27E40 80037640 3500022A */  slti       $v0, $s0, 0x35
/* 27E44 80037644 EEFF4014 */  bnez       $v0, .L80037600
/* 27E48 80037648 5C003126 */   addiu     $s1, $s1, 0x5C
/* 27E4C 8003764C 3800BF8F */  lw         $ra, 0x38($sp)
/* 27E50 80037650 3400B58F */  lw         $s5, 0x34($sp)
/* 27E54 80037654 3000B48F */  lw         $s4, 0x30($sp)
/* 27E58 80037658 2C00B38F */  lw         $s3, 0x2C($sp)
/* 27E5C 8003765C 2800B28F */  lw         $s2, 0x28($sp)
/* 27E60 80037660 2400B18F */  lw         $s1, 0x24($sp)
/* 27E64 80037664 2000B08F */  lw         $s0, 0x20($sp)
/* 27E68 80037668 0800E003 */  jr         $ra
/* 27E6C 8003766C 4000BD27 */   addiu     $sp, $sp, 0x40
.size DisplayActorPool, . - DisplayActorPool
