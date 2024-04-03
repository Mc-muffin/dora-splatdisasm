.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SpringET
/* 2F3C4 8003EBC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2F3C8 8003EBC8 0980023C */  lui        $v0, %hi(ETActor)
/* 2F3CC 8003EBCC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F3D0 8003EBD0 B05A5024 */  addiu      $s0, $v0, %lo(ETActor)
/* 2F3D4 8003EBD4 06000324 */  addiu      $v1, $zero, 0x6
/* 2F3D8 8003EBD8 1400BFAF */  sw         $ra, 0x14($sp)
/* 2F3DC 8003EBDC 0C00028E */  lw         $v0, 0xC($s0)
/* 2F3E0 8003EBE0 4001078E */  lw         $a3, 0x140($s0)
/* 2F3E4 8003EBE4 33004310 */  beq        $v0, $v1, .L8003ECB4
/* 2F3E8 8003EBE8 6C000826 */   addiu     $t0, $s0, 0x6C
/* 2F3EC 8003EBEC 05000224 */  addiu      $v0, $zero, 0x5
/* 2F3F0 8003EBF0 3000E210 */  beq        $a3, $v0, .L8003ECB4
/* 2F3F4 8003EBF4 03000224 */   addiu     $v0, $zero, 0x3
/* 2F3F8 8003EBF8 2E00E210 */  beq        $a3, $v0, .L8003ECB4
/* 2F3FC 8003EBFC 08000224 */   addiu     $v0, $zero, 0x8
/* 2F400 8003EC00 0980033C */  lui        $v1, %hi(gGameState)
/* 2F404 8003EC04 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* 2F408 8003EC08 00000000 */  nop
/* 2F40C 8003EC0C 29006210 */  beq        $v1, $v0, .L8003ECB4
/* 2F410 8003EC10 00400224 */   addiu     $v0, $zero, 0x4000
/* 2F414 8003EC14 1000C210 */  beq        $a2, $v0, .L8003EC58
/* 2F418 8003EC18 0140C228 */   slti      $v0, $a2, 0x4001
/* 2F41C 8003EC1C 05004010 */  beqz       $v0, .L8003EC34
/* 2F420 8003EC20 00200224 */   addiu     $v0, $zero, 0x2000
/* 2F424 8003EC24 0A00C210 */  beq        $a2, $v0, .L8003EC50
/* 2F428 8003EC28 00120400 */   sll       $v0, $a0, 8
/* 2F42C 8003EC2C 23FB0008 */  j          .L8003EC8C
/* 2F430 8003EC30 23100200 */   negu      $v0, $v0
.L8003EC34:
/* 2F434 8003EC34 00800234 */  ori        $v0, $zero, 0x8000
/* 2F438 8003EC38 0C00C210 */  beq        $a2, $v0, .L8003EC6C
/* 2F43C 8003EC3C 0100023C */   lui       $v0, (0x10000 >> 16)
/* 2F440 8003EC40 0C00C210 */  beq        $a2, $v0, .L8003EC74
/* 2F444 8003EC44 00120400 */   sll       $v0, $a0, 8
/* 2F448 8003EC48 23FB0008 */  j          .L8003EC8C
/* 2F44C 8003EC4C 23100200 */   negu      $v0, $v0
.L8003EC50:
/* 2F450 8003EC50 18FB0008 */  j          .L8003EC60
/* 2F454 8003EC54 80110500 */   sll       $v0, $a1, 6
.L8003EC58:
/* 2F458 8003EC58 23100500 */  negu       $v0, $a1
/* 2F45C 8003EC5C 80110200 */  sll        $v0, $v0, 6
.L8003EC60:
/* 2F460 8003EC60 380002AD */  sw         $v0, 0x38($t0)
/* 2F464 8003EC64 21FB0008 */  j          .L8003EC84
/* 2F468 8003EC68 300000AD */   sw        $zero, 0x30($t0)
.L8003EC6C:
/* 2F46C 8003EC6C 1FFB0008 */  j          .L8003EC7C
/* 2F470 8003EC70 80110500 */   sll       $v0, $a1, 6
.L8003EC74:
/* 2F474 8003EC74 80110500 */  sll        $v0, $a1, 6
/* 2F478 8003EC78 23100200 */  negu       $v0, $v0
.L8003EC7C:
/* 2F47C 8003EC7C 300002AD */  sw         $v0, 0x30($t0)
/* 2F480 8003EC80 380000AD */  sw         $zero, 0x38($t0)
.L8003EC84:
/* 2F484 8003EC84 00120400 */  sll        $v0, $a0, 8
/* 2F488 8003EC88 23100200 */  negu       $v0, $v0
.L8003EC8C:
/* 2F48C 8003EC8C 340002AD */  sw         $v0, 0x34($t0)
/* 2F490 8003EC90 15000424 */  addiu      $a0, $zero, 0x15
/* 2F494 8003EC94 21280000 */  addu       $a1, $zero, $zero
/* 2F498 8003EC98 6F4A010C */  jal        pxm_sendevent
/* 2F49C 8003EC9C 21300000 */   addu      $a2, $zero, $zero
/* 2F4A0 8003ECA0 21200002 */  addu       $a0, $s0, $zero
/* 2F4A4 8003ECA4 0C000524 */  addiu      $a1, $zero, 0xC
/* 2F4A8 8003ECA8 02000624 */  addiu      $a2, $zero, 0x2
/* 2F4AC 8003ECAC 60DE000C */  jal        CheckAnimLoop
/* 2F4B0 8003ECB0 2C018724 */   addiu     $a3, $a0, 0x12C
.L8003ECB4:
/* 2F4B4 8003ECB4 1400BF8F */  lw         $ra, 0x14($sp)
/* 2F4B8 8003ECB8 1000B08F */  lw         $s0, 0x10($sp)
/* 2F4BC 8003ECBC 0800E003 */  jr         $ra
/* 2F4C0 8003ECC0 1800BD27 */   addiu     $sp, $sp, 0x18
.size SpringET, . - SpringET
