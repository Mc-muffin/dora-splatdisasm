.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActorJump
/* 3A2A0 80049AA0 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 3A2A4 80049AA4 6800B6AF */  sw         $s6, 0x68($sp)
/* 3A2A8 80049AA8 21B0A000 */  addu       $s6, $a1, $zero
/* 3A2AC 80049AAC 5400B1AF */  sw         $s1, 0x54($sp)
/* 3A2B0 80049AB0 21888000 */  addu       $s1, $a0, $zero
/* 3A2B4 80049AB4 5000B0AF */  sw         $s0, 0x50($sp)
/* 3A2B8 80049AB8 2180C000 */  addu       $s0, $a2, $zero
/* 3A2BC 80049ABC 5800B2AF */  sw         $s2, 0x58($sp)
/* 3A2C0 80049AC0 01000224 */  addiu      $v0, $zero, 0x1
/* 3A2C4 80049AC4 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 3A2C8 80049AC8 6400B5AF */  sw         $s5, 0x64($sp)
/* 3A2CC 80049ACC 6000B4AF */  sw         $s4, 0x60($sp)
/* 3A2D0 80049AD0 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 3A2D4 80049AD4 0000D386 */  lh         $s3, 0x0($s6)
/* 3A2D8 80049AD8 0200D586 */  lh         $s5, 0x2($s6)
/* 3A2DC 80049ADC 38006212 */  beq        $s3, $v0, .L80049BC0
/* 3A2E0 80049AE0 6C003226 */   addiu     $s2, $s1, 0x6C
/* 3A2E4 80049AE4 0200622A */  slti       $v0, $s3, 0x2
/* 3A2E8 80049AE8 05004010 */  beqz       $v0, .L80049B00
/* 3A2EC 80049AEC 02000224 */   addiu     $v0, $zero, 0x2
/* 3A2F0 80049AF0 09006012 */  beqz       $s3, .L80049B18
/* 3A2F4 80049AF4 00141500 */   sll       $v0, $s5, 16
/* 3A2F8 80049AF8 59270108 */  j          .L80049D64
/* 3A2FC 80049AFC 25106202 */   or        $v0, $s3, $v0
.L80049B00:
/* 3A300 80049B00 40006212 */  beq        $s3, $v0, .L80049C04
/* 3A304 80049B04 03000224 */   addiu     $v0, $zero, 0x3
/* 3A308 80049B08 72006212 */  beq        $s3, $v0, .L80049CD4
/* 3A30C 80049B0C 00141500 */   sll       $v0, $s5, 16
/* 3A310 80049B10 59270108 */  j          .L80049D64
/* 3A314 80049B14 25106202 */   or        $v0, $s3, $v0
.L80049B18:
/* 3A318 80049B18 73FB000C */  jal        MotionPhysics_Halt
/* 3A31C 80049B1C 21204002 */   addu      $a0, $s2, $zero
/* 3A320 80049B20 21202002 */  addu       $a0, $s1, $zero
/* 3A324 80049B24 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3A328 80049B28 21284002 */   addu      $a1, $s2, $zero
/* 3A32C 80049B2C 0400268E */  lw         $a2, 0x4($s1)
/* 3A330 80049B30 0400028E */  lw         $v0, 0x4($s0)
/* 3A334 80049B34 0000238E */  lw         $v1, 0x0($s1)
/* 3A338 80049B38 0000048E */  lw         $a0, 0x0($s0)
/* 3A33C 80049B3C 0800058E */  lw         $a1, 0x8($s0)
/* 3A340 80049B40 23104600 */  subu       $v0, $v0, $a2
/* 3A344 80049B44 2BA80200 */  sltu       $s5, $zero, $v0
/* 3A348 80049B48 0800228E */  lw         $v0, 0x8($s1)
/* 3A34C 80049B4C 23208300 */  subu       $a0, $a0, $v1
/* 3A350 80049B50 2000A3AF */  sw         $v1, 0x20($sp)
/* 3A354 80049B54 2400A6AF */  sw         $a2, 0x24($sp)
/* 3A358 80049B58 2328A200 */  subu       $a1, $a1, $v0
/* 3A35C 80049B5C FEE9000C */  jal        DistApprox_2d
/* 3A360 80049B60 2800A2AF */   sw        $v0, 0x28($sp)
/* 3A364 80049B64 C40D868F */  lw         $a2, %gp_rel(benolobspeed)($gp)
/* 3A368 80049B68 00000000 */  nop
/* 3A36C 80049B6C 1800C200 */  mult       $a2, $v0
/* 3A370 80049B70 01001324 */  addiu      $s3, $zero, 0x1
/* 3A374 80049B74 2000A427 */  addiu      $a0, $sp, 0x20
/* 3A378 80049B78 21280002 */  addu       $a1, $s0, $zero
/* 3A37C 80049B7C C00D908F */  lw         $s0, %gp_rel(benolob)($gp)
/* 3A380 80049B80 1000A727 */  addiu      $a3, $sp, 0x10
/* 3A384 80049B84 12300000 */  mflo       $a2
/* 3A388 80049B88 DE13010C */  jal        GetDirVector
/* 3A38C 80049B8C 23801000 */   negu      $s0, $s0
/* 3A390 80049B90 21204002 */  addu       $a0, $s2, $zero
/* 3A394 80049B94 1000A58F */  lw         $a1, 0x10($sp)
/* 3A398 80049B98 1800A78F */  lw         $a3, 0x18($sp)
/* 3A39C 80049B9C 7BFB000C */  jal        MotionPhysics_AddVectorForce
/* 3A3A0 80049BA0 21300002 */   addu      $a2, $s0, $zero
/* 3A3A4 80049BA4 21202002 */  addu       $a0, $s1, $zero
/* 3A3A8 80049BA8 09000524 */  addiu      $a1, $zero, 0x9
/* 3A3AC 80049BAC 04000624 */  addiu      $a2, $zero, 0x4
/* 3A3B0 80049BB0 8FE2000C */  jal        SetAnimWithInterp
/* 3A3B4 80049BB4 2C018724 */   addiu     $a3, $a0, 0x12C
/* 3A3B8 80049BB8 58270108 */  j          .L80049D60
/* 3A3BC 80049BBC 00141500 */   sll       $v0, $s5, 16
.L80049BC0:
/* 3A3C0 80049BC0 65E2000C */  jal        AnimateActor
/* 3A3C4 80049BC4 21202002 */   addu      $a0, $s1, $zero
/* 3A3C8 80049BC8 D9F4000C */  jal        CheckGravity
/* 3A3CC 80049BCC 21204002 */   addu      $a0, $s2, $zero
/* 3A3D0 80049BD0 A7F7000C */  jal        UpdateMotionPhysics
/* 3A3D4 80049BD4 21204002 */   addu      $a0, $s2, $zero
/* 3A3D8 80049BD8 E885010C */  jal        ActorUpdateDirVelocity
/* 3A3DC 80049BDC 21202002 */   addu      $a0, $s1, $zero
/* 3A3E0 80049BE0 21202002 */  addu       $a0, $s1, $zero
/* 3A3E4 80049BE4 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3A3E8 80049BE8 21284002 */   addu      $a1, $s2, $zero
/* 3A3EC 80049BEC F400228E */  lw         $v0, 0xF4($s1)
/* 3A3F0 80049BF0 00000000 */  nop
/* 3A3F4 80049BF4 5A004104 */  bgez       $v0, .L80049D60
/* 3A3F8 80049BF8 00141500 */   sll       $v0, $s5, 16
/* 3A3FC 80049BFC 58270108 */  j          .L80049D60
/* 3A400 80049C00 02001324 */   addiu     $s3, $zero, 0x2
.L80049C04:
/* 3A404 80049C04 65E2000C */  jal        AnimateActor
/* 3A408 80049C08 21202002 */   addu      $a0, $s1, $zero
/* 3A40C 80049C0C D9F4000C */  jal        CheckGravity
/* 3A410 80049C10 21204002 */   addu      $a0, $s2, $zero
/* 3A414 80049C14 A7F7000C */  jal        UpdateMotionPhysics
/* 3A418 80049C18 21204002 */   addu      $a0, $s2, $zero
/* 3A41C 80049C1C E885010C */  jal        ActorUpdateDirVelocity
/* 3A420 80049C20 21202002 */   addu      $a0, $s1, $zero
/* 3A424 80049C24 21202002 */  addu       $a0, $s1, $zero
/* 3A428 80049C28 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3A42C 80049C2C 21284002 */   addu      $a1, $s2, $zero
/* 3A430 80049C30 0500A016 */  bnez       $s5, .L80049C48
/* 3A434 80049C34 00000000 */   nop
/* 3A438 80049C38 F400228E */  lw         $v0, 0xF4($s1)
/* 3A43C 80049C3C 00000000 */  nop
/* 3A440 80049C40 47004018 */  blez       $v0, .L80049D60
/* 3A444 80049C44 00141500 */   sll       $v0, $s5, 16
.L80049C48:
/* 3A448 80049C48 0000268E */  lw         $a2, 0x0($s1)
/* 3A44C 80049C4C 0000048E */  lw         $a0, 0x0($s0)
/* 3A450 80049C50 0800238E */  lw         $v1, 0x8($s1)
/* 3A454 80049C54 0800058E */  lw         $a1, 0x8($s0)
/* 3A458 80049C58 0400228E */  lw         $v0, 0x4($s1)
/* 3A45C 80049C5C 23208600 */  subu       $a0, $a0, $a2
/* 3A460 80049C60 2328A300 */  subu       $a1, $a1, $v1
/* 3A464 80049C64 4000A6AF */  sw         $a2, 0x40($sp)
/* 3A468 80049C68 4400A2AF */  sw         $v0, 0x44($sp)
/* 3A46C 80049C6C FEE9000C */  jal        DistApprox_2d
/* 3A470 80049C70 4800A3AF */   sw        $v1, 0x48($sp)
/* 3A474 80049C74 4000422C */  sltiu      $v0, $v0, 0x40
/* 3A478 80049C78 0F004010 */  beqz       $v0, .L80049CB8
/* 3A47C 80049C7C 00000000 */   nop
/* 3A480 80049C80 73FB000C */  jal        MotionPhysics_Halt
/* 3A484 80049C84 21204002 */   addu      $a0, $s2, $zero
/* 3A488 80049C88 21202002 */  addu       $a0, $s1, $zero
/* 3A48C 80049C8C 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3A490 80049C90 21284002 */   addu      $a1, $s2, $zero
/* 3A494 80049C94 0300A012 */  beqz       $s5, .L80049CA4
/* 3A498 80049C98 00141500 */   sll       $v0, $s5, 16
/* 3A49C 80049C9C 59270108 */  j          .L80049D64
/* 3A4A0 80049CA0 03004234 */   ori       $v0, $v0, 0x3
.L80049CA4:
/* 3A4A4 80049CA4 21202002 */  addu       $a0, $s1, $zero
/* 3A4A8 80049CA8 0E000524 */  addiu      $a1, $zero, 0xE
/* 3A4AC 80049CAC 04000624 */  addiu      $a2, $zero, 0x4
/* 3A4B0 80049CB0 4B270108 */  j          .L80049D2C
/* 3A4B4 80049CB4 2C012726 */   addiu     $a3, $s1, 0x12C
.L80049CB8:
/* 3A4B8 80049CB8 A000228E */  lw         $v0, 0xA0($s1)
/* 3A4BC 80049CBC 00000000 */  nop
/* 3A4C0 80049CC0 64004228 */  slti       $v0, $v0, 0x64
/* 3A4C4 80049CC4 25004010 */  beqz       $v0, .L80049D5C
/* 3A4C8 80049CC8 02000224 */   addiu     $v0, $zero, 0x2
/* 3A4CC 80049CCC 5B270108 */  j          .L80049D6C
/* 3A4D0 80049CD0 00000000 */   nop
.L80049CD4:
/* 3A4D4 80049CD4 65E2000C */  jal        AnimateActor
/* 3A4D8 80049CD8 21202002 */   addu      $a0, $s1, $zero
/* 3A4DC 80049CDC 21202002 */  addu       $a0, $s1, $zero
/* 3A4E0 80049CE0 2C013426 */  addiu      $s4, $s1, 0x12C
/* 3A4E4 80049CE4 10DE000C */  jal        CheckNextAnim
/* 3A4E8 80049CE8 21288002 */   addu      $a1, $s4, $zero
/* 3A4EC 80049CEC D9F4000C */  jal        CheckGravity
/* 3A4F0 80049CF0 21204002 */   addu      $a0, $s2, $zero
/* 3A4F4 80049CF4 A7F7000C */  jal        UpdateMotionPhysics
/* 3A4F8 80049CF8 21204002 */   addu      $a0, $s2, $zero
/* 3A4FC 80049CFC E885010C */  jal        ActorUpdateDirVelocity
/* 3A500 80049D00 21202002 */   addu      $a0, $s1, $zero
/* 3A504 80049D04 21202002 */  addu       $a0, $s1, $zero
/* 3A508 80049D08 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3A50C 80049D0C 21284002 */   addu      $a1, $s2, $zero
/* 3A510 80049D10 F400228E */  lw         $v0, 0xF4($s1)
/* 3A514 80049D14 00000000 */  nop
/* 3A518 80049D18 10004018 */  blez       $v0, .L80049D5C
/* 3A51C 80049D1C 21202002 */   addu      $a0, $s1, $zero
/* 3A520 80049D20 0E000524 */  addiu      $a1, $zero, 0xE
/* 3A524 80049D24 04000624 */  addiu      $a2, $zero, 0x4
/* 3A528 80049D28 21388002 */  addu       $a3, $s4, $zero
.L80049D2C:
/* 3A52C 80049D2C 8FE2000C */  jal        SetAnimWithInterp
/* 3A530 80049D30 00000000 */   nop
/* 3A534 80049D34 0000028E */  lw         $v0, 0x0($s0)
/* 3A538 80049D38 00000000 */  nop
/* 3A53C 80049D3C 000022AE */  sw         $v0, 0x0($s1)
/* 3A540 80049D40 0400038E */  lw         $v1, 0x4($s0)
/* 3A544 80049D44 00000000 */  nop
/* 3A548 80049D48 040023AE */  sw         $v1, 0x4($s1)
/* 3A54C 80049D4C 0800048E */  lw         $a0, 0x8($s0)
/* 3A550 80049D50 01000224 */  addiu      $v0, $zero, 0x1
/* 3A554 80049D54 5B270108 */  j          .L80049D6C
/* 3A558 80049D58 080024AE */   sw        $a0, 0x8($s1)
.L80049D5C:
/* 3A55C 80049D5C 00141500 */  sll        $v0, $s5, 16
.L80049D60:
/* 3A560 80049D60 25106202 */  or         $v0, $s3, $v0
.L80049D64:
/* 3A564 80049D64 0000C2AE */  sw         $v0, 0x0($s6)
/* 3A568 80049D68 21100000 */  addu       $v0, $zero, $zero
.L80049D6C:
/* 3A56C 80049D6C 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 3A570 80049D70 6800B68F */  lw         $s6, 0x68($sp)
/* 3A574 80049D74 6400B58F */  lw         $s5, 0x64($sp)
/* 3A578 80049D78 6000B48F */  lw         $s4, 0x60($sp)
/* 3A57C 80049D7C 5C00B38F */  lw         $s3, 0x5C($sp)
/* 3A580 80049D80 5800B28F */  lw         $s2, 0x58($sp)
/* 3A584 80049D84 5400B18F */  lw         $s1, 0x54($sp)
/* 3A588 80049D88 5000B08F */  lw         $s0, 0x50($sp)
/* 3A58C 80049D8C 0800E003 */  jr         $ra
/* 3A590 80049D90 7000BD27 */   addiu     $sp, $sp, 0x70
.size ActorJump, . - ActorJump
