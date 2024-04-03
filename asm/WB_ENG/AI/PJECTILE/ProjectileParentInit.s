.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ProjectileParentInit
/* 36C58 80046458 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 36C5C 8004645C 1800B2AF */  sw         $s2, 0x18($sp)
/* 36C60 80046460 21908000 */  addu       $s2, $a0, $zero
/* 36C64 80046464 1000B0AF */  sw         $s0, 0x10($sp)
/* 36C68 80046468 0880103C */  lui        $s0, %hi(ProjectileSpawn)
/* 36C6C 8004646C 2400BFAF */  sw         $ra, 0x24($sp)
/* 36C70 80046470 2000B4AF */  sw         $s4, 0x20($sp)
/* 36C74 80046474 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 36C78 80046478 1400B1AF */  sw         $s1, 0x14($sp)
/* 36C7C 8004647C 4400538E */  lw         $s3, 0x44($s2)
/* 36C80 80046480 DA25010C */  jal        GenericActorInit
/* 36C84 80046484 B47F1026 */   addiu     $s0, $s0, %lo(ProjectileSpawn)
/* 36C88 80046488 2801518E */  lw         $s1, 0x128($s2)
/* 36C8C 8004648C 00000000 */  nop
/* 36C90 80046490 0400228E */  lw         $v0, 0x4($s1)
/* 36C94 80046494 21204002 */  addu       $a0, $s2, $zero
/* 36C98 80046498 480022AE */  sw         $v0, 0x48($s1)
/* 36C9C 8004649C 2801438E */  lw         $v1, 0x128($s2)
/* 36CA0 800464A0 01001424 */  addiu      $s4, $zero, 0x1
/* 36CA4 800464A4 3C0060AC */  sw         $zero, 0x3C($v1)
/* 36CA8 800464A8 400060AC */  sw         $zero, 0x40($v1)
/* 36CAC 800464AC 440074AC */  sw         $s4, 0x44($v1)
/* 36CB0 800464B0 DC28010C */  jal        GenericReInit
/* 36CB4 800464B4 540060AC */   sw        $zero, 0x54($v1)
/* 36CB8 800464B8 21200002 */  addu       $a0, $s0, $zero
/* 36CBC 800464BC 1C00638E */  lw         $v1, 0x1C($s3)
/* 36CC0 800464C0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 36CC4 800464C4 00106334 */  ori        $v1, $v1, 0x1000
/* 36CC8 800464C8 1C0063AE */  sw         $v1, 0x1C($s3)
/* 36CCC 800464CC 7F000324 */  addiu      $v1, $zero, 0x7F
/* 36CD0 800464D0 100002AE */  sw         $v0, 0x10($s0)
/* 36CD4 800464D4 140000AE */  sw         $zero, 0x14($s0)
/* 36CD8 800464D8 2C0023AE */  sw         $v1, 0x2C($s1)
/* 36CDC 800464DC 5800238E */  lw         $v1, 0x58($s1)
/* 36CE0 800464E0 80FF0224 */  addiu      $v0, $zero, -0x80
/* 36CE4 800464E4 280022AE */  sw         $v0, 0x28($s1)
/* 36CE8 800464E8 50000224 */  addiu      $v0, $zero, 0x50
/* 36CEC 800464EC 300022AE */  sw         $v0, 0x30($s1)
/* 36CF0 800464F0 0A000224 */  addiu      $v0, $zero, 0xA
/* 36CF4 800464F4 380022AE */  sw         $v0, 0x38($s1)
/* 36CF8 800464F8 32006324 */  addiu      $v1, $v1, 0x32
/* 36CFC 800464FC 490A010C */  jal        InitSpawn
/* 36D00 80046500 100003AE */   sw        $v1, 0x10($s0)
/* 36D04 80046504 74000424 */  addiu      $a0, $zero, 0x74
/* 36D08 80046508 21804000 */  addu       $s0, $v0, $zero
/* 36D0C 8004650C 2B3F010C */  jal        new_malloc
/* 36D10 80046510 240030AE */   sw        $s0, 0x24($s1)
/* 36D14 80046514 280102AE */  sw         $v0, 0x128($s0)
/* 36D18 80046518 2801428E */  lw         $v0, 0x128($s2)
/* 36D1C 8004651C 21204002 */  addu       $a0, $s2, $zero
/* 36D20 80046520 3C0040AC */  sw         $zero, 0x3C($v0)
/* 36D24 80046524 400040AC */  sw         $zero, 0x40($v0)
/* 36D28 80046528 440054AC */  sw         $s4, 0x44($v0)
/* 36D2C 8004652C DC28010C */  jal        GenericReInit
/* 36D30 80046530 540040AC */   sw        $zero, 0x54($v0)
/* 36D34 80046534 400D838F */  lw         $v1, %gp_rel(projectileparent_instance_counter)($gp)
/* 36D38 80046538 2400BF8F */  lw         $ra, 0x24($sp)
/* 36D3C 8004653C 2000B48F */  lw         $s4, 0x20($sp)
/* 36D40 80046540 1C00B38F */  lw         $s3, 0x1C($sp)
/* 36D44 80046544 1800B28F */  lw         $s2, 0x18($sp)
/* 36D48 80046548 1400B18F */  lw         $s1, 0x14($sp)
/* 36D4C 8004654C 1000B08F */  lw         $s0, 0x10($sp)
/* 36D50 80046550 01006324 */  addiu      $v1, $v1, 0x1
/* 36D54 80046554 400D83AF */  sw         $v1, %gp_rel(projectileparent_instance_counter)($gp)
/* 36D58 80046558 0800E003 */  jr         $ra
/* 36D5C 8004655C 2800BD27 */   addiu     $sp, $sp, 0x28
.size ProjectileParentInit, . - ProjectileParentInit
