.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_play_queue
/* 45298 80054A98 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 4529C 80054A9C 5400B7AF */  sw         $s7, 0x54($sp)
/* 452A0 80054AA0 21B80000 */  addu       $s7, $zero, $zero
/* 452A4 80054AA4 5800BFAF */  sw         $ra, 0x58($sp)
/* 452A8 80054AA8 5000B6AF */  sw         $s6, 0x50($sp)
/* 452AC 80054AAC 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 452B0 80054AB0 4800B4AF */  sw         $s4, 0x48($sp)
/* 452B4 80054AB4 4400B3AF */  sw         $s3, 0x44($sp)
/* 452B8 80054AB8 4000B2AF */  sw         $s2, 0x40($sp)
/* 452BC 80054ABC 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 452C0 80054AC0 4E54010C */  jal        pxm_get_hw_status
/* 452C4 80054AC4 3800B0AF */   sw        $s0, 0x38($sp)
/* 452C8 80054AC8 5A52010C */  jal        pxm_del_queue_handler
/* 452CC 80054ACC 21A00000 */   addu      $s4, $zero, $zero
/* 452D0 80054AD0 21900000 */  addu       $s2, $zero, $zero
/* 452D4 80054AD4 0B80153C */  lui        $s5, %hi(pxm_sound_queue)
/* 452D8 80054AD8 21980000 */  addu       $s3, $zero, $zero
/* 452DC 80054ADC 0C1080AF */  sw         $zero, %gp_rel(pxm_spuchan_ONmask)($gp)
.L80054AE0:
/* 452E0 80054AE0 F088A226 */  addiu      $v0, $s5, %lo(pxm_sound_queue)
/* 452E4 80054AE4 21806202 */  addu       $s0, $s3, $v0
/* 452E8 80054AE8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 452EC 80054AEC 00000492 */  lbu        $a0, 0x0($s0)
/* 452F0 80054AF0 0800038E */  lw         $v1, 0x8($s0)
/* 452F4 80054AF4 13008210 */  beq        $a0, $v0, .L80054B44
/* 452F8 80054AF8 00000000 */   nop
/* 452FC 80054AFC 11006004 */  bltz       $v1, .L80054B44
/* 45300 80054B00 0080113C */   lui       $s1, (0x80000000 >> 16)
/* 45304 80054B04 01000592 */  lbu        $a1, 0x1($s0)
/* 45308 80054B08 1000A3AF */  sw         $v1, 0x10($sp)
/* 4530C 80054B0C 02000692 */  lbu        $a2, 0x2($s0)
/* 45310 80054B10 03000792 */  lbu        $a3, 0x3($s0)
/* 45314 80054B14 7353010C */  jal        pxm_rt_noteon_layered
/* 45318 80054B18 00000000 */   nop
/* 4531C 80054B1C 80181400 */  sll        $v1, $s4, 2
/* 45320 80054B20 01009426 */  addiu      $s4, $s4, 0x1
/* 45324 80054B24 100002AE */  sw         $v0, 0x10($s0)
/* 45328 80054B28 0000448C */  lw         $a0, 0x0($v0)
/* 4532C 80054B2C 2110A303 */  addu       $v0, $sp, $v1
/* 45330 80054B30 180050AC */  sw         $s0, 0x18($v0)
/* 45334 80054B34 0800038E */  lw         $v1, 0x8($s0)
/* 45338 80054B38 21B8E402 */  addu       $s7, $s7, $a0
/* 4533C 80054B3C 25187100 */  or         $v1, $v1, $s1
/* 45340 80054B40 080003AE */  sw         $v1, 0x8($s0)
.L80054B44:
/* 45344 80054B44 01005226 */  addiu      $s2, $s2, 0x1
/* 45348 80054B48 1000422E */  sltiu      $v0, $s2, 0x10
/* 4534C 80054B4C E4FF4014 */  bnez       $v0, .L80054AE0
/* 45350 80054B50 14007326 */   addiu     $s3, $s3, 0x14
/* 45354 80054B54 0C10858F */  lw         $a1, %gp_rel(pxm_spuchan_ONmask)($gp)
/* 45358 80054B58 00000000 */  nop
/* 4535C 80054B5C 0600A010 */  beqz       $a1, .L80054B78
/* 45360 80054B60 00000000 */   nop
/* 45364 80054B64 0F05020C */  jal        SpuSetKey
/* 45368 80054B68 01000424 */   addiu     $a0, $zero, 0x1
/* 4536C 80054B6C 0C10828F */  lw         $v0, %gp_rel(pxm_spuchan_ONmask)($gp)
/* 45370 80054B70 0980013C */  lui        $at, %hi(pxm_test_hs)
/* 45374 80054B74 445222AC */  sw         $v0, %lo(pxm_test_hs)($at)
.L80054B78:
/* 45378 80054B78 1010858F */  lw         $a1, %gp_rel(pxm_spuchan_OFFmask)($gp)
/* 4537C 80054B7C 00000000 */  nop
/* 45380 80054B80 0400A010 */  beqz       $a1, .L80054B94
/* 45384 80054B84 21980000 */   addu      $s3, $zero, $zero
/* 45388 80054B88 0F05020C */  jal        SpuSetKey
/* 4538C 80054B8C 21200000 */   addu      $a0, $zero, $zero
/* 45390 80054B90 21980000 */  addu       $s3, $zero, $zero
.L80054B94:
/* 45394 80054B94 21900000 */  addu       $s2, $zero, $zero
/* 45398 80054B98 FF001124 */  addiu      $s1, $zero, 0xFF
/* 4539C 80054B9C 0B80023C */  lui        $v0, %hi(pxm_sound_queue)
/* 453A0 80054BA0 F0885024 */  addiu      $s0, $v0, %lo(pxm_sound_queue)
.L80054BA4:
/* 453A4 80054BA4 00000492 */  lbu        $a0, 0x0($s0)
/* 453A8 80054BA8 0800038E */  lw         $v1, 0x8($s0)
/* 453AC 80054BAC 11009110 */  beq        $a0, $s1, .L80054BF4
/* 453B0 80054BB0 40006230 */   andi      $v0, $v1, 0x40
/* 453B4 80054BB4 0F004010 */  beqz       $v0, .L80054BF4
/* 453B8 80054BB8 00000000 */   nop
/* 453BC 80054BBC 1000048E */  lw         $a0, 0x10($s0)
/* 453C0 80054BC0 00000000 */  nop
/* 453C4 80054BC4 0B008010 */  beqz       $a0, .L80054BF4
/* 453C8 80054BC8 00000000 */   nop
/* 453CC 80054BCC 1C00828C */  lw         $v0, 0x1C($a0)
/* 453D0 80054BD0 2953010C */  jal        pxm_noteoff_vs
/* 453D4 80054BD4 25986202 */   or        $s3, $s3, $v0
/* 453D8 80054BD8 000011A2 */  sb         $s1, 0x0($s0)
/* 453DC 80054BDC 080000AE */  sw         $zero, 0x8($s0)
/* 453E0 80054BE0 040000A6 */  sh         $zero, 0x4($s0)
/* 453E4 80054BE4 100000AE */  sw         $zero, 0x10($s0)
/* 453E8 80054BE8 030000A2 */  sb         $zero, 0x3($s0)
/* 453EC 80054BEC 020000A2 */  sb         $zero, 0x2($s0)
/* 453F0 80054BF0 0C0000AE */  sw         $zero, 0xC($s0)
.L80054BF4:
/* 453F4 80054BF4 01005226 */  addiu      $s2, $s2, 0x1
/* 453F8 80054BF8 1000422E */  sltiu      $v0, $s2, 0x10
/* 453FC 80054BFC E9FF4014 */  bnez       $v0, .L80054BA4
/* 45400 80054C00 14001026 */   addiu     $s0, $s0, 0x14
/* 45404 80054C04 19008012 */  beqz       $s4, .L80054C6C
/* 45408 80054C08 21900000 */   addu      $s2, $zero, $zero
/* 4540C 80054C0C 0040163C */  lui        $s6, (0x40000000 >> 16)
/* 45410 80054C10 1800B127 */  addiu      $s1, $sp, 0x18
/* 45414 80054C14 FF001524 */  addiu      $s5, $zero, 0xFF
.L80054C18:
/* 45418 80054C18 0000308E */  lw         $s0, 0x0($s1)
/* 4541C 80054C1C 00000000 */  nop
/* 45420 80054C20 0800028E */  lw         $v0, 0x8($s0)
/* 45424 80054C24 1000048E */  lw         $a0, 0x10($s0)
/* 45428 80054C28 24105600 */  and        $v0, $v0, $s6
/* 4542C 80054C2C 0B004010 */  beqz       $v0, .L80054C5C
/* 45430 80054C30 00000000 */   nop
/* 45434 80054C34 1C00828C */  lw         $v0, 0x1C($a0)
/* 45438 80054C38 2953010C */  jal        pxm_noteoff_vs
/* 4543C 80054C3C 25986202 */   or        $s3, $s3, $v0
/* 45440 80054C40 000015A2 */  sb         $s5, 0x0($s0)
/* 45444 80054C44 080000AE */  sw         $zero, 0x8($s0)
/* 45448 80054C48 040000A6 */  sh         $zero, 0x4($s0)
/* 4544C 80054C4C 100000AE */  sw         $zero, 0x10($s0)
/* 45450 80054C50 030000A2 */  sb         $zero, 0x3($s0)
/* 45454 80054C54 020000A2 */  sb         $zero, 0x2($s0)
/* 45458 80054C58 0C0000AE */  sw         $zero, 0xC($s0)
.L80054C5C:
/* 4545C 80054C5C 01005226 */  addiu      $s2, $s2, 0x1
/* 45460 80054C60 2B105402 */  sltu       $v0, $s2, $s4
/* 45464 80054C64 ECFF4014 */  bnez       $v0, .L80054C18
/* 45468 80054C68 04003126 */   addiu     $s1, $s1, 0x4
.L80054C6C:
/* 4546C 80054C6C 2110E002 */  addu       $v0, $s7, $zero
/* 45470 80054C70 5800BF8F */  lw         $ra, 0x58($sp)
/* 45474 80054C74 5400B78F */  lw         $s7, 0x54($sp)
/* 45478 80054C78 5000B68F */  lw         $s6, 0x50($sp)
/* 4547C 80054C7C 4C00B58F */  lw         $s5, 0x4C($sp)
/* 45480 80054C80 4800B48F */  lw         $s4, 0x48($sp)
/* 45484 80054C84 101093AF */  sw         $s3, %gp_rel(pxm_spuchan_OFFmask)($gp)
/* 45488 80054C88 4400B38F */  lw         $s3, 0x44($sp)
/* 4548C 80054C8C 4000B28F */  lw         $s2, 0x40($sp)
/* 45490 80054C90 3C00B18F */  lw         $s1, 0x3C($sp)
/* 45494 80054C94 3800B08F */  lw         $s0, 0x38($sp)
/* 45498 80054C98 001080AF */  sw         $zero, %gp_rel(pxm_num_sounds_queued)($gp)
/* 4549C 80054C9C 0800E003 */  jr         $ra
/* 454A0 80054CA0 6000BD27 */   addiu     $sp, $sp, 0x60
.size pxm_play_queue, . - pxm_play_queue
