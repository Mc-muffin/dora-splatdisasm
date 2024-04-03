.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextureToVRAM
/* 48438 80057C38 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4843C 80057C3C 2800B2AF */  sw         $s2, 0x28($sp)
/* 48440 80057C40 21908000 */  addu       $s2, $a0, $zero
/* 48444 80057C44 1000A527 */  addiu      $a1, $sp, 0x10
/* 48448 80057C48 21300000 */  addu       $a2, $zero, $zero
/* 4844C 80057C4C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 48450 80057C50 2400B1AF */  sw         $s1, 0x24($sp)
/* 48454 80057C54 2000B0AF */  sw         $s0, 0x20($sp)
/* 48458 80057C58 00004492 */  lbu        $a0, 0x0($s2)
/* 4845C 80057C5C 04004296 */  lhu        $v0, 0x4($s2)
/* 48460 80057C60 06004396 */  lhu        $v1, 0x6($s2)
/* 48464 80057C64 21380000 */  addu       $a3, $zero, $zero
/* 48468 80057C68 1400A2A7 */  sh         $v0, 0x14($sp)
/* 4846C 80057C6C 0771010C */  jal        AllocVRAM
/* 48470 80057C70 1600A3A7 */   sh        $v1, 0x16($sp)
/* 48474 80057C74 21884000 */  addu       $s1, $v0, $zero
/* 48478 80057C78 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4847C 80057C7C 16002212 */  beq        $s1, $v0, .L80057CD8
/* 48480 80057C80 0C80023C */   lui       $v0, %hi(VRAMItems)
/* 48484 80057C84 38AD4224 */  addiu      $v0, $v0, %lo(VRAMItems)
/* 48488 80057C88 80181100 */  sll        $v1, $s1, 2
/* 4848C 80057C8C 21187100 */  addu       $v1, $v1, $s1
/* 48490 80057C90 80180300 */  sll        $v1, $v1, 2
/* 48494 80057C94 21186200 */  addu       $v1, $v1, $v0
/* 48498 80057C98 03006288 */  lwl        $v0, 0x3($v1)
/* 4849C 80057C9C 00006298 */  lwr        $v0, 0x0($v1)
/* 484A0 80057CA0 07006488 */  lwl        $a0, 0x7($v1)
/* 484A4 80057CA4 04006498 */  lwr        $a0, 0x4($v1)
/* 484A8 80057CA8 1B00A2AB */  swl        $v0, 0x1B($sp)
/* 484AC 80057CAC 1800A2BB */  swr        $v0, 0x18($sp)
/* 484B0 80057CB0 1F00A4AB */  swl        $a0, 0x1F($sp)
/* 484B4 80057CB4 1C00A4BB */  swr        $a0, 0x1C($sp)
/* 484B8 80057CB8 21200000 */  addu       $a0, $zero, $zero
/* 484BC 80057CBC 36DB010C */  jal        DrawSync
/* 484C0 80057CC0 1800B027 */   addiu     $s0, $sp, 0x18
/* 484C4 80057CC4 21200002 */  addu       $a0, $s0, $zero
/* 484C8 80057CC8 E1DB010C */  jal        LoadImage
/* 484CC 80057CCC 08024526 */   addiu     $a1, $s2, 0x208
/* 484D0 80057CD0 36DB010C */  jal        DrawSync
/* 484D4 80057CD4 21200000 */   addu      $a0, $zero, $zero
.L80057CD8:
/* 484D8 80057CD8 21102002 */  addu       $v0, $s1, $zero
/* 484DC 80057CDC 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 484E0 80057CE0 2800B28F */  lw         $s2, 0x28($sp)
/* 484E4 80057CE4 2400B18F */  lw         $s1, 0x24($sp)
/* 484E8 80057CE8 2000B08F */  lw         $s0, 0x20($sp)
/* 484EC 80057CEC 0800E003 */  jr         $ra
/* 484F0 80057CF0 3000BD27 */   addiu     $sp, $sp, 0x30
.size TextureToVRAM, . - TextureToVRAM
