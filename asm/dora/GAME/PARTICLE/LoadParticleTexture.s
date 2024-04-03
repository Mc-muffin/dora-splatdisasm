.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadParticleTexture
/* 2025C 8002FA5C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 20260 8002FA60 1400B1AF */  sw         $s1, 0x14($sp)
/* 20264 8002FA64 21880000 */  addu       $s1, $zero, $zero
/* 20268 8002FA68 1800B2AF */  sw         $s2, 0x18($sp)
/* 2026C 8002FA6C 21908000 */  addu       $s2, $a0, $zero
/* 20270 8002FA70 2000B4AF */  sw         $s4, 0x20($sp)
/* 20274 8002FA74 21A0A000 */  addu       $s4, $a1, $zero
/* 20278 8002FA78 2400BFAF */  sw         $ra, 0x24($sp)
/* 2027C 8002FA7C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 20280 8002FA80 B35C010C */  jal        GetSizeOfFile
/* 20284 8002FA84 1000B0AF */   sw        $s0, 0x10($sp)
/* 20288 8002FA88 2B3F010C */  jal        new_malloc
/* 2028C 8002FA8C 21204000 */   addu      $a0, $v0, $zero
/* 20290 8002FA90 21804000 */  addu       $s0, $v0, $zero
/* 20294 8002FA94 23000012 */  beqz       $s0, .L8002FB24
/* 20298 8002FA98 21204002 */   addu      $a0, $s2, $zero
/* 2029C 8002FA9C 495C010C */  jal        LoadFile
/* 202A0 8002FAA0 21280002 */   addu      $a1, $s0, $zero
/* 202A4 8002FAA4 0E5F010C */  jal        TextureToVRAM
/* 202A8 8002FAA8 21200002 */   addu      $a0, $s0, $zero
/* 202AC 8002FAAC 21904000 */  addu       $s2, $v0, $zero
/* 202B0 8002FAB0 08000326 */  addiu      $v1, $s0, 0x8
/* 202B4 8002FAB4 0880133C */  lui        $s3, %hi(ParticleTextureData)
/* 202B8 8002FAB8 007C0624 */  addiu      $a2, $zero, 0x7C00
/* 202BC 8002FABC 00FC0534 */  ori        $a1, $zero, 0xFC00
/* 202C0 8002FAC0 FF000424 */  addiu      $a0, $zero, 0xFF
.L8002FAC4:
/* 202C4 8002FAC4 00006294 */  lhu        $v0, 0x0($v1)
/* 202C8 8002FAC8 00000000 */  nop
/* 202CC 8002FACC 03004610 */  beq        $v0, $a2, .L8002FADC
/* 202D0 8002FAD0 00000000 */   nop
/* 202D4 8002FAD4 03004514 */  bne        $v0, $a1, .L8002FAE4
/* 202D8 8002FAD8 00804234 */   ori       $v0, $v0, 0x8000
.L8002FADC:
/* 202DC 8002FADC BABE0008 */  j          .L8002FAE8
/* 202E0 8002FAE0 000060A4 */   sh        $zero, 0x0($v1)
.L8002FAE4:
/* 202E4 8002FAE4 000062A4 */  sh         $v0, 0x0($v1)
.L8002FAE8:
/* 202E8 8002FAE8 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 202EC 8002FAEC F5FF8104 */  bgez       $a0, .L8002FAC4
/* 202F0 8002FAF0 02006324 */   addiu     $v1, $v1, 0x2
/* 202F4 8002FAF4 F75E010C */  jal        PaletteToVRAM
/* 202F8 8002FAF8 21200002 */   addu      $a0, $s0, $zero
/* 202FC 8002FAFC A86B7126 */  addiu      $s1, $s3, %lo(ParticleTextureData)
/* 20300 8002FB00 04000396 */  lhu        $v1, 0x4($s0)
/* 20304 8002FB04 06000596 */  lhu        $a1, 0x6($s0)
/* 20308 8002FB08 21200002 */  addu       $a0, $s0, $zero
/* 2030C 8002FB0C A86B72AE */  sw         $s2, %lo(ParticleTextureData)($s3)
/* 20310 8002FB10 040022AE */  sw         $v0, 0x4($s1)
/* 20314 8002FB14 100034AE */  sw         $s4, 0x10($s1)
/* 20318 8002FB18 080023AE */  sw         $v1, 0x8($s1)
/* 2031C 8002FB1C 1C40010C */  jal        new_free
/* 20320 8002FB20 0C0025AE */   sw        $a1, 0xC($s1)
.L8002FB24:
/* 20324 8002FB24 21102002 */  addu       $v0, $s1, $zero
/* 20328 8002FB28 2400BF8F */  lw         $ra, 0x24($sp)
/* 2032C 8002FB2C 2000B48F */  lw         $s4, 0x20($sp)
/* 20330 8002FB30 1C00B38F */  lw         $s3, 0x1C($sp)
/* 20334 8002FB34 1800B28F */  lw         $s2, 0x18($sp)
/* 20338 8002FB38 1400B18F */  lw         $s1, 0x14($sp)
/* 2033C 8002FB3C 1000B08F */  lw         $s0, 0x10($sp)
/* 20340 8002FB40 0800E003 */  jr         $ra
/* 20344 8002FB44 2800BD27 */   addiu     $sp, $sp, 0x28
.size LoadParticleTexture, . - LoadParticleTexture
