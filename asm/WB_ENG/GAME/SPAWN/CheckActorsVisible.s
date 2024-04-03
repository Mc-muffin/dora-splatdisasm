.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckActorsVisible
/* 33B9C 8004339C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 33BA0 800433A0 2400BFAF */  sw         $ra, 0x24($sp)
/* 33BA4 800433A4 2000B4AF */  sw         $s4, 0x20($sp)
/* 33BA8 800433A8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 33BAC 800433AC 1800B2AF */  sw         $s2, 0x18($sp)
/* 33BB0 800433B0 1400B1AF */  sw         $s1, 0x14($sp)
/* 33BB4 800433B4 5A70000C */  jal        ForcePickups
/* 33BB8 800433B8 1000B0AF */   sw        $s0, 0x10($sp)
/* 33BBC 800433BC A00C838F */  lw         $v1, %gp_rel(NumSpawnedActors)($gp)
/* 33BC0 800433C0 00000000 */  nop
/* 33BC4 800433C4 36006018 */  blez       $v1, .L800434A0
/* 33BC8 800433C8 21A00000 */   addu      $s4, $zero, $zero
/* 33BCC 800433CC 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 33BD0 800433D0 B8C05124 */  addiu      $s1, $v0, %lo(SpawnServiceList)
.L800433D4:
/* 33BD4 800433D4 1000228E */  lw         $v0, 0x10($s1)
/* 33BD8 800433D8 4400328E */  lw         $s2, 0x44($s1)
/* 33BDC 800433DC 00014230 */  andi       $v0, $v0, 0x100
/* 33BE0 800433E0 1000538E */  lw         $s3, 0x10($s2)
/* 33BE4 800433E4 29004014 */  bnez       $v0, .L8004348C
/* 33BE8 800433E8 00000000 */   nop
/* 33BEC 800433EC 1C00438E */  lw         $v1, 0x1C($s2)
/* 33BF0 800433F0 00000000 */  nop
/* 33BF4 800433F4 04006230 */  andi       $v0, $v1, 0x4
/* 33BF8 800433F8 24004010 */  beqz       $v0, .L8004348C
/* 33BFC 800433FC 02006230 */   andi      $v0, $v1, 0x2
/* 33C00 80043400 22004010 */  beqz       $v0, .L8004348C
/* 33C04 80043404 00000000 */   nop
/* 33C08 80043408 0980023C */  lui        $v0, %hi(ScrollCamXPos)
/* 33C0C 8004340C 4843428C */  lw         $v0, %lo(ScrollCamXPos)($v0)
/* 33C10 80043410 7000248E */  lw         $a0, 0x70($s1)
/* 33C14 80043414 0980033C */  lui        $v1, %hi(ScrollCamZPos)
/* 33C18 80043418 5043638C */  lw         $v1, %lo(ScrollCamZPos)($v1)
/* 33C1C 8004341C 7800258E */  lw         $a1, 0x78($s1)
/* 33C20 80043420 B00C908F */  lw         $s0, %gp_rel(TESTR3)($gp)
/* 33C24 80043424 23208200 */  subu       $a0, $a0, $v0
/* 33C28 80043428 83200400 */  sra        $a0, $a0, 2
/* 33C2C 8004342C 2328A300 */  subu       $a1, $a1, $v1
/* 33C30 80043430 83280500 */  sra        $a1, $a1, 2
/* 33C34 80043434 FEE9000C */  jal        DistApprox_2d
/* 33C38 80043438 83801000 */   sra       $s0, $s0, 2
/* 33C3C 8004343C 2A105000 */  slt        $v0, $v0, $s0
/* 33C40 80043440 0100422C */  sltiu      $v0, $v0, 0x1
/* 33C44 80043444 11004014 */  bnez       $v0, .L8004348C
/* 33C48 80043448 00000000 */   nop
/* 33C4C 8004344C 63DD000C */  jal        CheckIfPooled
/* 33C50 80043450 21206002 */   addu      $a0, $s3, $zero
/* 33C54 80043454 05004010 */  beqz       $v0, .L8004346C
/* 33C58 80043458 21202002 */   addu      $a0, $s1, $zero
/* 33C5C 8004345C 3BDD000C */  jal        AllocatePoolActor
/* 33C60 80043460 21286002 */   addu      $a1, $s3, $zero
/* 33C64 80043464 09004010 */  beqz       $v0, .L8004348C
/* 33C68 80043468 200122AE */   sw        $v0, 0x120($s1)
.L8004346C:
/* 33C6C 8004346C 1000228E */  lw         $v0, 0x10($s1)
/* 33C70 80043470 00000000 */  nop
/* 33C74 80043474 00014234 */  ori        $v0, $v0, 0x100
/* 33C78 80043478 100022AE */  sw         $v0, 0x10($s1)
/* 33C7C 8004347C 1C00438E */  lw         $v1, 0x1C($s2)
/* 33C80 80043480 00000000 */  nop
/* 33C84 80043484 08006334 */  ori        $v1, $v1, 0x8
/* 33C88 80043488 1C0043AE */  sw         $v1, 0x1C($s2)
.L8004348C:
/* 33C8C 8004348C A00C828F */  lw         $v0, %gp_rel(NumSpawnedActors)($gp)
/* 33C90 80043490 01009426 */  addiu      $s4, $s4, 0x1
/* 33C94 80043494 2A108202 */  slt        $v0, $s4, $v0
/* 33C98 80043498 CEFF4014 */  bnez       $v0, .L800433D4
/* 33C9C 8004349C 88013126 */   addiu     $s1, $s1, 0x188
.L800434A0:
/* 33CA0 800434A0 2400BF8F */  lw         $ra, 0x24($sp)
/* 33CA4 800434A4 2000B48F */  lw         $s4, 0x20($sp)
/* 33CA8 800434A8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 33CAC 800434AC 1800B28F */  lw         $s2, 0x18($sp)
/* 33CB0 800434B0 1400B18F */  lw         $s1, 0x14($sp)
/* 33CB4 800434B4 1000B08F */  lw         $s0, 0x10($sp)
/* 33CB8 800434B8 0800E003 */  jr         $ra
/* 33CBC 800434BC 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckActorsVisible, . - CheckActorsVisible
