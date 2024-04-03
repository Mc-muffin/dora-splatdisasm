.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericReInit
/* 3AB70 8004A370 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AB74 8004A374 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AB78 8004A378 21808000 */  addu       $s0, $a0, $zero
/* 3AB7C 8004A37C 1400BFAF */  sw         $ra, 0x14($sp)
/* 3AB80 8004A380 2401028E */  lw         $v0, 0x124($s0)
/* 3AB84 8004A384 00000000 */  nop
/* 3AB88 8004A388 0400458C */  lw         $a1, 0x4($v0)
/* 3AB8C 8004A38C 00000000 */  nop
/* 3AB90 8004A390 1000A010 */  beqz       $a1, .L8004A3D4
/* 3AB94 8004A394 340040AC */   sw        $zero, 0x34($v0)
/* 3AB98 8004A398 0000468C */  lw         $a2, 0x0($v0)
/* 3AB9C 8004A39C 0C00478C */  lw         $a3, 0xC($v0)
/* 3ABA0 8004A3A0 9C13010C */  jal        InitPath
/* 3ABA4 8004A3A4 00000000 */   nop
/* 3ABA8 8004A3A8 21200002 */  addu       $a0, $s0, $zero
/* 3ABAC 8004A3AC 01000524 */  addiu      $a1, $zero, 0x1
/* 3ABB0 8004A3B0 DCE2000C */  jal        ForceAnim
/* 3ABB4 8004A3B4 2C010626 */   addiu     $a2, $s0, 0x12C
/* 3ABB8 8004A3B8 6C000426 */  addiu      $a0, $s0, 0x6C
/* 3ABBC 8004A3BC 0000058E */  lw         $a1, 0x0($s0)
/* 3ABC0 8004A3C0 0400068E */  lw         $a2, 0x4($s0)
/* 3ABC4 8004A3C4 0800078E */  lw         $a3, 0x8($s0)
/* 3ABC8 8004A3C8 01000224 */  addiu      $v0, $zero, 0x1
/* 3ABCC 8004A3CC 77FB000C */  jal        MotionPhysics_SetPosition
/* 3ABD0 8004A3D0 440102AE */   sw        $v0, 0x144($s0)
.L8004A3D4:
/* 3ABD4 8004A3D4 1400BF8F */  lw         $ra, 0x14($sp)
/* 3ABD8 8004A3D8 1000B08F */  lw         $s0, 0x10($sp)
/* 3ABDC 8004A3DC 0800E003 */  jr         $ra
/* 3ABE0 8004A3E0 1800BD27 */   addiu     $sp, $sp, 0x18
.size GenericReInit, . - GenericReInit
