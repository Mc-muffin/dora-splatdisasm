.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitPickupPool
/* C4DC 8001BCDC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C4E0 8001BCE0 1000B0AF */  sw         $s0, 0x10($sp)
/* C4E4 8001BCE4 21800000 */  addu       $s0, $zero, $zero
/* C4E8 8001BCE8 0980023C */  lui        $v0, %hi(PickupPool)
/* C4EC 8001BCEC 505D4224 */  addiu      $v0, $v0, %lo(PickupPool)
/* C4F0 8001BCF0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* C4F4 8001BCF4 10005324 */  addiu      $s3, $v0, 0x10
/* C4F8 8001BCF8 1800B2AF */  sw         $s2, 0x18($sp)
/* C4FC 8001BCFC 21900000 */  addu       $s2, $zero, $zero
/* C500 8001BD00 1400B1AF */  sw         $s1, 0x14($sp)
/* C504 8001BD04 21880000 */  addu       $s1, $zero, $zero
/* C508 8001BD08 2800B6AF */  sw         $s6, 0x28($sp)
/* C50C 8001BD0C 0C005624 */  addiu      $s6, $v0, 0xC
/* C510 8001BD10 0880033C */  lui        $v1, %hi(PickupSpawnList)
/* C514 8001BD14 2400B5AF */  sw         $s5, 0x24($sp)
/* C518 8001BD18 7C5D7524 */  addiu      $s5, $v1, %lo(PickupSpawnList)
/* C51C 8001BD1C 2000B4AF */  sw         $s4, 0x20($sp)
/* C520 8001BD20 FFFE1424 */  addiu      $s4, $zero, -0x101
/* C524 8001BD24 0A000224 */  addiu      $v0, $zero, 0xA
/* C528 8001BD28 2C00BFAF */  sw         $ra, 0x2C($sp)
/* C52C 8001BD2C 3C0280AF */  sw         $zero, %gp_rel(NumActivePickupPool)($gp)
/* C530 8001BD30 341382AF */  sw         $v0, %gp_rel(gLevelMaxPool)($gp)
.L8001BD34:
/* C534 8001BD34 21103602 */  addu       $v0, $s1, $s6
/* C538 8001BD38 21205502 */  addu       $a0, $s2, $s5
/* C53C 8001BD3C 490A010C */  jal        InitSpawn
/* C540 8001BD40 000040AC */   sw        $zero, 0x0($v0)
/* C544 8001BD44 000062AE */  sw         $v0, 0x0($s3)
/* C548 8001BD48 14007326 */  addiu      $s3, $s3, 0x14
/* C54C 8001BD4C 24005226 */  addiu      $s2, $s2, 0x24
/* C550 8001BD50 14003126 */  addiu      $s1, $s1, 0x14
/* C554 8001BD54 01001026 */  addiu      $s0, $s0, 0x1
/* C558 8001BD58 1000438C */  lw         $v1, 0x10($v0)
/* C55C 8001BD5C 3413848F */  lw         $a0, %gp_rel(gLevelMaxPool)($gp)
/* C560 8001BD60 24187400 */  and        $v1, $v1, $s4
/* C564 8001BD64 2A200402 */  slt        $a0, $s0, $a0
/* C568 8001BD68 F2FF8014 */  bnez       $a0, .L8001BD34
/* C56C 8001BD6C 100043AC */   sw        $v1, 0x10($v0)
/* C570 8001BD70 4002848F */  lw         $a0, %gp_rel(NumExtraPickupList)($gp)
/* C574 8001BD74 00000000 */  nop
/* C578 8001BD78 09008018 */  blez       $a0, .L8001BDA0
/* C57C 8001BD7C 21808000 */   addu      $s0, $a0, $zero
/* C580 8001BD80 02000324 */  addiu      $v1, $zero, 0x2
/* C584 8001BD84 0880023C */  lui        $v0, %hi(MapPickupList2)
/* C588 8001BD88 6C614224 */  addiu      $v0, $v0, %lo(MapPickupList2)
/* C58C 8001BD8C 0C004224 */  addiu      $v0, $v0, 0xC
.L8001BD90:
/* C590 8001BD90 000043AC */  sw         $v1, 0x0($v0)
/* C594 8001BD94 FFFF1026 */  addiu      $s0, $s0, -0x1
/* C598 8001BD98 FDFF0016 */  bnez       $s0, .L8001BD90
/* C59C 8001BD9C 14004224 */   addiu     $v0, $v0, 0x14
.L8001BDA0:
/* C5A0 8001BDA0 2C00BF8F */  lw         $ra, 0x2C($sp)
/* C5A4 8001BDA4 2800B68F */  lw         $s6, 0x28($sp)
/* C5A8 8001BDA8 2400B58F */  lw         $s5, 0x24($sp)
/* C5AC 8001BDAC 2000B48F */  lw         $s4, 0x20($sp)
/* C5B0 8001BDB0 1C00B38F */  lw         $s3, 0x1C($sp)
/* C5B4 8001BDB4 1800B28F */  lw         $s2, 0x18($sp)
/* C5B8 8001BDB8 1400B18F */  lw         $s1, 0x14($sp)
/* C5BC 8001BDBC 1000B08F */  lw         $s0, 0x10($sp)
/* C5C0 8001BDC0 0800E003 */  jr         $ra
/* C5C4 8001BDC4 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitPickupPool, . - InitPickupPool
