.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitSpawnActors
/* 337AC 80042FAC 9C0C828F */  lw         $v0, %gp_rel(ACTORS_ON)($gp)
/* 337B0 80042FB0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 337B4 80042FB4 1800BFAF */  sw         $ra, 0x18($sp)
/* 337B8 80042FB8 1400B1AF */  sw         $s1, 0x14($sp)
/* 337BC 80042FBC 14004010 */  beqz       $v0, .L80043010
/* 337C0 80042FC0 1000B0AF */   sw        $s0, 0x10($sp)
/* 337C4 80042FC4 0880023C */  lui        $v0, %hi(TestWorld)
/* 337C8 80042FC8 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 337CC 80042FCC 1000438C */  lw         $v1, 0x10($v0)
/* 337D0 80042FD0 1C00508C */  lw         $s0, 0x1C($v0)
/* 337D4 80042FD4 0C006018 */  blez       $v1, .L80043008
/* 337D8 80042FD8 21886000 */   addu      $s1, $v1, $zero
.L80042FDC:
/* 337DC 80042FDC 1C00038E */  lw         $v1, 0x1C($s0)
/* 337E0 80042FE0 00000000 */  nop
/* 337E4 80042FE4 01006230 */  andi       $v0, $v1, 0x1
/* 337E8 80042FE8 04004014 */  bnez       $v0, .L80042FFC
/* 337EC 80042FEC 04006234 */   ori       $v0, $v1, 0x4
/* 337F0 80042FF0 1C0002AE */  sw         $v0, 0x1C($s0)
/* 337F4 80042FF4 490A010C */  jal        InitSpawn
/* 337F8 80042FF8 21200002 */   addu      $a0, $s0, $zero
.L80042FFC:
/* 337FC 80042FFC FFFF3126 */  addiu      $s1, $s1, -0x1
/* 33800 80043000 F6FF2016 */  bnez       $s1, .L80042FDC
/* 33804 80043004 24001026 */   addiu     $s0, $s0, 0x24
.L80043008:
/* 33808 80043008 376F000C */  jal        InitPickupPool
/* 3380C 8004300C 00000000 */   nop
.L80043010:
/* 33810 80043010 1800BF8F */  lw         $ra, 0x18($sp)
/* 33814 80043014 1400B18F */  lw         $s1, 0x14($sp)
/* 33818 80043018 1000B08F */  lw         $s0, 0x10($sp)
/* 3381C 8004301C 0800E003 */  jr         $ra
/* 33820 80043020 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitSpawnActors, . - InitSpawnActors
