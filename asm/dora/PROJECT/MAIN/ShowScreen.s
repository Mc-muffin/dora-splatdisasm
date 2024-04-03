.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen
/* C3CC 8001BBCC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* C3D0 8001BBD0 1800B0AF */  sw         $s0, 0x18($sp)
/* C3D4 8001BBD4 21808000 */  addu       $s0, $a0, $zero
/* C3D8 8001BBD8 2400BFAF */  sw         $ra, 0x24($sp)
/* C3DC 8001BBDC 2000B2AF */  sw         $s2, 0x20($sp)
/* C3E0 8001BBE0 B35C010C */  jal        GetSizeOfFile
/* C3E4 8001BBE4 1C00B1AF */   sw        $s1, 0x1C($sp)
/* C3E8 8001BBE8 2B3F010C */  jal        new_malloc
/* C3EC 8001BBEC 21204000 */   addu      $a0, $v0, $zero
/* C3F0 8001BBF0 CC6C010C */  jal        ScreenOff
/* C3F4 8001BBF4 21904000 */   addu      $s2, $v0, $zero
/* C3F8 8001BBF8 CC68010C */  jal        SetupVideoMode
/* C3FC 8001BBFC 01000424 */   addiu     $a0, $zero, 0x1
/* C400 8001BC00 CC6C010C */  jal        ScreenOff
/* C404 8001BC04 F0001124 */   addiu     $s1, $zero, 0xF0
/* C408 8001BC08 F66D010C */  jal        UpdateScreenOff
/* C40C 8001BC0C 00000000 */   nop
/* C410 8001BC10 21200002 */  addu       $a0, $s0, $zero
/* C414 8001BC14 21284002 */  addu       $a1, $s2, $zero
/* C418 8001BC18 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* C41C 8001BC1C 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* C420 8001BC20 980040A0 */  sb         $zero, 0x98($v0)
/* C424 8001BC24 495C010C */  jal        LoadFile
/* C428 8001BC28 180040A0 */   sb        $zero, 0x18($v0)
/* C42C 8001BC2C 21200000 */  addu       $a0, $zero, $zero
/* C430 8001BC30 40010224 */  addiu      $v0, $zero, 0x140
/* C434 8001BC34 1000A0A7 */  sh         $zero, 0x10($sp)
/* C438 8001BC38 1200A0A7 */  sh         $zero, 0x12($sp)
/* C43C 8001BC3C 1400A2A7 */  sh         $v0, 0x14($sp)
/* C440 8001BC40 EBD6010C */  jal        VSync
/* C444 8001BC44 1600B1A7 */   sh        $s1, 0x16($sp)
/* C448 8001BC48 1000A427 */  addiu      $a0, $sp, 0x10
/* C44C 8001BC4C 08025026 */  addiu      $s0, $s2, 0x208
/* C450 8001BC50 E1DB010C */  jal        LoadImage
/* C454 8001BC54 21280002 */   addu      $a1, $s0, $zero
/* C458 8001BC58 21200000 */  addu       $a0, $zero, $zero
/* C45C 8001BC5C EBD6010C */  jal        VSync
/* C460 8001BC60 1200B1A7 */   sh        $s1, 0x12($sp)
/* C464 8001BC64 1000A427 */  addiu      $a0, $sp, 0x10
/* C468 8001BC68 E1DB010C */  jal        LoadImage
/* C46C 8001BC6C 21280002 */   addu      $a1, $s0, $zero
/* C470 8001BC70 1C40010C */  jal        new_free
/* C474 8001BC74 21204002 */   addu      $a0, $s2, $zero
/* C478 8001BC78 9769010C */  jal        updateScreen
/* C47C 8001BC7C 00000000 */   nop
/* C480 8001BC80 EBD6010C */  jal        VSync
/* C484 8001BC84 0F000424 */   addiu     $a0, $zero, 0xF
/* C488 8001BC88 C46C010C */  jal        ScreenOn
/* C48C 8001BC8C 00000000 */   nop
/* C490 8001BC90 2400BF8F */  lw         $ra, 0x24($sp)
/* C494 8001BC94 2000B28F */  lw         $s2, 0x20($sp)
/* C498 8001BC98 1C00B18F */  lw         $s1, 0x1C($sp)
/* C49C 8001BC9C 1800B08F */  lw         $s0, 0x18($sp)
/* C4A0 8001BCA0 0800E003 */  jr         $ra
/* C4A4 8001BCA4 2800BD27 */   addiu     $sp, $sp, 0x28
.size ShowScreen, . - ShowScreen
