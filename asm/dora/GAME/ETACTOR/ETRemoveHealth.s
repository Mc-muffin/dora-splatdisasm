.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETRemoveHealth
/* AB40 8001A340 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AB44 8001A344 1000B0AF */  sw         $s0, 0x10($sp)
/* AB48 8001A348 21808000 */  addu       $s0, $a0, $zero
/* AB4C 8001A34C 1800BFAF */  sw         $ra, 0x18($sp)
/* AB50 8001A350 1400B1AF */  sw         $s1, 0x14($sp)
/* AB54 8001A354 0C00038E */  lw         $v1, 0xC($s0)
/* AB58 8001A358 00000000 */  nop
/* AB5C 8001A35C 1300622C */  sltiu      $v0, $v1, 0x13
/* AB60 8001A360 0B004010 */  beqz       $v0, .L8001A390
/* AB64 8001A364 2188A000 */   addu      $s1, $a1, $zero
/* AB68 8001A368 0180023C */  lui        $v0, %hi(jtbl_80010148)
/* AB6C 8001A36C 48014224 */  addiu      $v0, $v0, %lo(jtbl_80010148)
/* AB70 8001A370 80180300 */  sll        $v1, $v1, 2
/* AB74 8001A374 21186200 */  addu       $v1, $v1, $v0
/* AB78 8001A378 0000648C */  lw         $a0, 0x0($v1)
/* AB7C 8001A37C 00000000 */  nop
/* AB80 8001A380 08008000 */  jr         $a0
/* AB84 8001A384 00000000 */   nop
jlabel .L8001A388
/* AB88 8001A388 E30F010C */  jal        EndTK
/* AB8C 8001A38C 21200002 */   addu      $a0, $s0, $zero
jlabel .L8001A390
/* AB90 8001A390 1000038E */  lw         $v1, 0x10($s0)
/* AB94 8001A394 05000224 */  addiu      $v0, $zero, 0x5
/* AB98 8001A398 0C0002AE */  sw         $v0, 0xC($s0)
/* AB9C 8001A39C 2800828F */  lw         $v0, %gp_rel(Game_Health)($gp)
/* ABA0 8001A3A0 040100AE */  sw         $zero, 0x104($s0)
/* ABA4 8001A3A4 00026334 */  ori        $v1, $v1, 0x200
/* ABA8 8001A3A8 64004228 */  slti       $v0, $v0, 0x64
/* ABAC 8001A3AC 03004014 */  bnez       $v0, .L8001A3BC
/* ABB0 8001A3B0 100003AE */   sw        $v1, 0x10($s0)
/* ABB4 8001A3B4 63000224 */  addiu      $v0, $zero, 0x63
/* ABB8 8001A3B8 280082AF */  sw         $v0, %gp_rel(Game_Health)($gp)
.L8001A3BC:
/* ABBC 8001A3BC 2800828F */  lw         $v0, %gp_rel(Game_Health)($gp)
/* ABC0 8001A3C0 00000000 */  nop
/* ABC4 8001A3C4 23105100 */  subu       $v0, $v0, $s1
/* ABC8 8001A3C8 280082AF */  sw         $v0, %gp_rel(Game_Health)($gp)
/* ABCC 8001A3CC 0A00401C */  bgtz       $v0, .L8001A3F8
/* ABD0 8001A3D0 06000224 */   addiu     $v0, $zero, 0x6
/* ABD4 8001A3D4 280080AF */  sw         $zero, %gp_rel(Game_Health)($gp)
/* ABD8 8001A3D8 1F79000C */  jal        HudTakeLives
/* ABDC 8001A3DC 0C0002AE */   sw        $v0, 0xC($s0)
/* ABE0 8001A3E0 0B000424 */  addiu      $a0, $zero, 0xB
/* ABE4 8001A3E4 21280000 */  addu       $a1, $zero, $zero
/* ABE8 8001A3E8 6F4A010C */  jal        pxm_sendevent
/* ABEC 8001A3EC 21300000 */   addu      $a2, $zero, $zero
/* ABF0 8001A3F0 05690008 */  j          .L8001A414
/* ABF4 8001A3F4 21200002 */   addu      $a0, $s0, $zero
.L8001A3F8:
/* ABF8 8001A3F8 E078000C */  jal        HudTakeHealth
/* ABFC 8001A3FC 00000000 */   nop
/* AC00 8001A400 0A000424 */  addiu      $a0, $zero, 0xA
/* AC04 8001A404 21280000 */  addu       $a1, $zero, $zero
/* AC08 8001A408 6F4A010C */  jal        pxm_sendevent
/* AC0C 8001A40C 21300000 */   addu      $a2, $zero, $zero
/* AC10 8001A410 21200002 */  addu       $a0, $s0, $zero
.L8001A414:
/* AC14 8001A414 03000524 */  addiu      $a1, $zero, 0x3
/* AC18 8001A418 01000624 */  addiu      $a2, $zero, 0x1
/* AC1C 8001A41C 8FE2000C */  jal        SetAnimWithInterp
/* AC20 8001A420 2C018724 */   addiu     $a3, $a0, 0x12C
jlabel .L8001A424
/* AC24 8001A424 1800BF8F */  lw         $ra, 0x18($sp)
/* AC28 8001A428 1400B18F */  lw         $s1, 0x14($sp)
/* AC2C 8001A42C 1000B08F */  lw         $s0, 0x10($sp)
/* AC30 8001A430 0800E003 */  jr         $ra
/* AC34 8001A434 2000BD27 */   addiu     $sp, $sp, 0x20
.size ETRemoveHealth, . - ETRemoveHealth
