.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MakeParticleSlot
/* 19BAC 800293AC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 19BB0 800293B0 3000BEAF */  sw         $fp, 0x30($sp)
/* 19BB4 800293B4 21F08000 */  addu       $fp, $a0, $zero
/* 19BB8 800293B8 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 19BBC 800293BC 21B8E000 */  addu       $s7, $a3, $zero
/* 19BC0 800293C0 80201700 */  sll        $a0, $s7, 2
/* 19BC4 800293C4 21209700 */  addu       $a0, $a0, $s7
/* 19BC8 800293C8 00210400 */  sll        $a0, $a0, 4
/* 19BCC 800293CC 2000B4AF */  sw         $s4, 0x20($sp)
/* 19BD0 800293D0 21A00000 */  addu       $s4, $zero, $zero
/* 19BD4 800293D4 1400B1AF */  sw         $s1, 0x14($sp)
/* 19BD8 800293D8 0A80113C */  lui        $s1, %hi(ParticleTypeTable)
/* 19BDC 800293DC D0843126 */  addiu      $s1, $s1, %lo(ParticleTypeTable)
/* 19BE0 800293E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 19BE4 800293E4 80801E00 */  sll        $s0, $fp, 2
/* 19BE8 800293E8 21801E02 */  addu       $s0, $s0, $fp
/* 19BEC 800293EC 80801000 */  sll        $s0, $s0, 2
/* 19BF0 800293F0 5400A38F */  lw         $v1, 0x54($sp)
/* 19BF4 800293F4 21103002 */  addu       $v0, $s1, $s0
/* 19BF8 800293F8 3400BFAF */  sw         $ra, 0x34($sp)
/* 19BFC 800293FC 2800B6AF */  sw         $s6, 0x28($sp)
/* 19C00 80029400 2400B5AF */  sw         $s5, 0x24($sp)
/* 19C04 80029404 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 19C08 80029408 1800B2AF */  sw         $s2, 0x18($sp)
/* 19C0C 8002940C 080043AC */  sw         $v1, 0x8($v0)
/* 19C10 80029410 5800A78F */  lw         $a3, 0x58($sp)
/* 19C14 80029414 21A8A000 */  addu       $s5, $a1, $zero
/* 19C18 80029418 0C0047AC */  sw         $a3, 0xC($v0)
/* 19C1C 8002941C 5C00A38F */  lw         $v1, 0x5C($sp)
/* 19C20 80029420 00000000 */  nop
/* 19C24 80029424 100043AC */  sw         $v1, 0x10($v0)
/* 19C28 80029428 4800B38F */  lw         $s3, 0x48($sp)
/* 19C2C 8002942C 2B3F010C */  jal        new_malloc
/* 19C30 80029430 21B0C000 */   addu      $s6, $a2, $zero
/* 19C34 80029434 21904000 */  addu       $s2, $v0, $zero
/* 19C38 80029438 21103002 */  addu       $v0, $s1, $s0
/* 19C3C 8002943C 21801102 */  addu       $s0, $s0, $s1
/* 19C40 80029440 040052AC */  sw         $s2, 0x4($v0)
/* 19C44 80029444 0000028E */  lw         $v0, 0x0($s0)
/* 19C48 80029448 2120A002 */  addu       $a0, $s5, $zero
/* 19C4C 8002944C 21105700 */  addu       $v0, $v0, $s7
/* 19C50 80029450 B35C010C */  jal        GetSizeOfFile
/* 19C54 80029454 000002AE */   sw        $v0, 0x0($s0)
/* 19C58 80029458 2B3F010C */  jal        new_malloc
/* 19C5C 8002945C 21204000 */   addu      $a0, $v0, $zero
/* 19C60 80029460 21804000 */  addu       $s0, $v0, $zero
/* 19C64 80029464 23000012 */  beqz       $s0, .L800294F4
/* 19C68 80029468 2120A002 */   addu      $a0, $s5, $zero
/* 19C6C 8002946C 495C010C */  jal        LoadFile
/* 19C70 80029470 21280002 */   addu      $a1, $s0, $zero
/* 19C74 80029474 0E5F010C */  jal        TextureToVRAM
/* 19C78 80029478 21200002 */   addu      $a0, $s0, $zero
/* 19C7C 8002947C 21884000 */  addu       $s1, $v0, $zero
/* 19C80 80029480 08000326 */  addiu      $v1, $s0, 0x8
/* 19C84 80029484 0880153C */  lui        $s5, %hi(ParticleTextureData)
/* 19C88 80029488 007C0624 */  addiu      $a2, $zero, 0x7C00
/* 19C8C 8002948C 00FC0534 */  ori        $a1, $zero, 0xFC00
/* 19C90 80029490 FF000424 */  addiu      $a0, $zero, 0xFF
.L80029494:
/* 19C94 80029494 00006294 */  lhu        $v0, 0x0($v1)
/* 19C98 80029498 00000000 */  nop
/* 19C9C 8002949C 03004610 */  beq        $v0, $a2, .L800294AC
/* 19CA0 800294A0 00000000 */   nop
/* 19CA4 800294A4 03004514 */  bne        $v0, $a1, .L800294B4
/* 19CA8 800294A8 00804234 */   ori       $v0, $v0, 0x8000
.L800294AC:
/* 19CAC 800294AC 2EA50008 */  j          .L800294B8
/* 19CB0 800294B0 000060A4 */   sh        $zero, 0x0($v1)
.L800294B4:
/* 19CB4 800294B4 000062A4 */  sh         $v0, 0x0($v1)
.L800294B8:
/* 19CB8 800294B8 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 19CBC 800294BC F5FF8104 */  bgez       $a0, .L80029494
/* 19CC0 800294C0 02006324 */   addiu     $v1, $v1, 0x2
/* 19CC4 800294C4 F75E010C */  jal        PaletteToVRAM
/* 19CC8 800294C8 21200002 */   addu      $a0, $s0, $zero
/* 19CCC 800294CC A86BB426 */  addiu      $s4, $s5, %lo(ParticleTextureData)
/* 19CD0 800294D0 04000396 */  lhu        $v1, 0x4($s0)
/* 19CD4 800294D4 06000596 */  lhu        $a1, 0x6($s0)
/* 19CD8 800294D8 21200002 */  addu       $a0, $s0, $zero
/* 19CDC 800294DC A86BB1AE */  sw         $s1, %lo(ParticleTextureData)($s5)
/* 19CE0 800294E0 040082AE */  sw         $v0, 0x4($s4)
/* 19CE4 800294E4 100096AE */  sw         $s6, 0x10($s4)
/* 19CE8 800294E8 080083AE */  sw         $v1, 0x8($s4)
/* 19CEC 800294EC 1C40010C */  jal        new_free
/* 19CF0 800294F0 0C0085AE */   sw        $a1, 0xC($s4)
.L800294F4:
/* 19CF4 800294F4 2900E01A */  blez       $s7, .L8002959C
/* 19CF8 800294F8 21800000 */   addu      $s0, $zero, $zero
/* 19CFC 800294FC C0101300 */  sll        $v0, $s3, 3
/* 19D00 80029500 23105300 */  subu       $v0, $v0, $s3
/* 19D04 80029504 80100200 */  sll        $v0, $v0, 2
/* 19D08 80029508 21B05300 */  addu       $s6, $v0, $s3
/* 19D0C 8002950C 80181E00 */  sll        $v1, $fp, 2
/* 19D10 80029510 21187E00 */  addu       $v1, $v1, $fp
/* 19D14 80029514 80180300 */  sll        $v1, $v1, 2
/* 19D18 80029518 0A80023C */  lui        $v0, %hi(ParticleTypeTable + 0x8)
/* 19D1C 8002951C D8844224 */  addiu      $v0, $v0, %lo(ParticleTypeTable + 0x8)
/* 19D20 80029520 21A86200 */  addu       $s5, $v1, $v0
.L80029524:
/* 19D24 80029524 80201600 */  sll        $a0, $s6, 2
/* 19D28 80029528 000040AE */  sw         $zero, 0x0($s2)
/* 19D2C 8002952C 04005EAE */  sw         $fp, 0x4($s2)
/* 19D30 80029530 2B3F010C */  jal        new_malloc
/* 19D34 80029534 080053AE */   sw        $s3, 0x8($s2)
/* 19D38 80029538 01001026 */  addiu      $s0, $s0, 0x1
/* 19D3C 8002953C 50005126 */  addiu      $s1, $s2, 0x50
/* 19D40 80029540 0700601A */  blez       $s3, .L80029560
/* 19D44 80029544 400042AE */   sw        $v0, 0x40($s2)
/* 19D48 80029548 21186002 */  addu       $v1, $s3, $zero
.L8002954C:
/* 19D4C 8002954C 5000A48F */  lw         $a0, 0x50($sp)
/* 19D50 80029550 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 19D54 80029554 6C0044A4 */  sh         $a0, 0x6C($v0)
/* 19D58 80029558 FCFF6014 */  bnez       $v1, .L8002954C
/* 19D5C 8002955C 74004224 */   addiu     $v0, $v0, 0x74
.L80029560:
/* 19D60 80029560 21204002 */  addu       $a0, $s2, $zero
/* 19D64 80029564 21280000 */  addu       $a1, $zero, $zero
/* 19D68 80029568 4C00A28F */  lw         $v0, 0x4C($sp)
/* 19D6C 8002956C 21300000 */  addu       $a2, $zero, $zero
/* 19D70 80029570 140042AE */  sw         $v0, 0x14($s2)
/* 19D74 80029574 0000A28E */  lw         $v0, 0x0($s5)
/* 19D78 80029578 00000000 */  nop
/* 19D7C 8002957C 09F84000 */  jalr       $v0
/* 19D80 80029580 21380000 */   addu      $a3, $zero, $zero
/* 19D84 80029584 21204002 */  addu       $a0, $s2, $zero
/* 19D88 80029588 84A4000C */  jal        AssignTextureToParticlePolys
/* 19D8C 8002958C 21288002 */   addu      $a1, $s4, $zero
/* 19D90 80029590 2A101702 */  slt        $v0, $s0, $s7
/* 19D94 80029594 E3FF4014 */  bnez       $v0, .L80029524
/* 19D98 80029598 21902002 */   addu      $s2, $s1, $zero
.L8002959C:
/* 19D9C 8002959C 3400BF8F */  lw         $ra, 0x34($sp)
/* 19DA0 800295A0 3000BE8F */  lw         $fp, 0x30($sp)
/* 19DA4 800295A4 2C00B78F */  lw         $s7, 0x2C($sp)
/* 19DA8 800295A8 2800B68F */  lw         $s6, 0x28($sp)
/* 19DAC 800295AC 2400B58F */  lw         $s5, 0x24($sp)
/* 19DB0 800295B0 2000B48F */  lw         $s4, 0x20($sp)
/* 19DB4 800295B4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 19DB8 800295B8 1800B28F */  lw         $s2, 0x18($sp)
/* 19DBC 800295BC 1400B18F */  lw         $s1, 0x14($sp)
/* 19DC0 800295C0 1000B08F */  lw         $s0, 0x10($sp)
/* 19DC4 800295C4 0800E003 */  jr         $ra
/* 19DC8 800295C8 3800BD27 */   addiu     $sp, $sp, 0x38
.size MakeParticleSlot, . - MakeParticleSlot
