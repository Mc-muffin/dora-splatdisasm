.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReSavePaletteToAdjust
/* 4E330 8005DB30 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4E334 8005DB34 2400B3AF */  sw         $s3, 0x24($sp)
/* 4E338 8005DB38 21988000 */  addu       $s3, $a0, $zero
/* 4E33C 8005DB3C 0C80033C */  lui        $v1, %hi(SavedPalettes)
/* 4E340 8005DB40 28E56324 */  addiu      $v1, $v1, %lo(SavedPalettes)
/* 4E344 8005DB44 40100500 */  sll        $v0, $a1, 1
/* 4E348 8005DB48 21104500 */  addu       $v0, $v0, $a1
/* 4E34C 8005DB4C 80100200 */  sll        $v0, $v0, 2
/* 4E350 8005DB50 21186200 */  addu       $v1, $v1, $v0
/* 4E354 8005DB54 3000B6AF */  sw         $s6, 0x30($sp)
/* 4E358 8005DB58 D8129627 */  addiu      $s6, $gp, %gp_rel(s)
/* 4E35C 8005DB5C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 4E360 8005DB60 DC129527 */  addiu      $s5, $gp, %gp_rel(v)
/* 4E364 8005DB64 2000B2AF */  sw         $s2, 0x20($sp)
/* 4E368 8005DB68 2184123C */  lui        $s2, (0x84210843 >> 16)
/* 4E36C 8005DB6C 43085236 */  ori        $s2, $s2, (0x84210843 & 0xFFFF)
/* 4E370 8005DB70 2800B4AF */  sw         $s4, 0x28($sp)
/* 4E374 8005DB74 0F001424 */  addiu      $s4, $zero, 0xF
/* 4E378 8005DB78 3400BFAF */  sw         $ra, 0x34($sp)
/* 4E37C 8005DB7C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4E380 8005DB80 1800B0AF */  sw         $s0, 0x18($sp)
/* 4E384 8005DB84 0800718C */  lw         $s1, 0x8($v1)
/* 4E388 8005DB88 40190700 */  sll        $v1, $a3, 5
/* 4E38C 8005DB8C 40100700 */  sll        $v0, $a3, 1
/* 4E390 8005DB90 21104700 */  addu       $v0, $v0, $a3
/* 4E394 8005DB94 40110200 */  sll        $v0, $v0, 5
/* 4E398 8005DB98 00023026 */  addiu      $s0, $s1, 0x200
/* 4E39C 8005DB9C 21882302 */  addu       $s1, $s1, $v1
/* 4E3A0 8005DBA0 21800202 */  addu       $s0, $s0, $v0
.L8005DBA4:
/* 4E3A4 8005DBA4 00006896 */  lhu        $t0, 0x0($s3)
/* 4E3A8 8005DBA8 00000000 */  nop
/* 4E3AC 8005DBAC FF7F0431 */  andi       $a0, $t0, 0x7FFF
/* 4E3B0 8005DBB0 82320400 */  srl        $a2, $a0, 10
/* 4E3B4 8005DBB4 00320600 */  sll        $a2, $a2, 8
/* 4E3B8 8005DBB8 1800D200 */  mult       $a2, $s2
/* 4E3BC 8005DBBC 10380000 */  mfhi       $a3
/* 4E3C0 8005DBC0 C0280400 */  sll        $a1, $a0, 3
/* 4E3C4 8005DBC4 001FA530 */  andi       $a1, $a1, 0x1F00
/* 4E3C8 8005DBC8 1800B200 */  mult       $a1, $s2
/* 4E3CC 8005DBCC 02007326 */  addiu      $s3, $s3, 0x2
/* 4E3D0 8005DBD0 FFFF9426 */  addiu      $s4, $s4, -0x1
/* 4E3D4 8005DBD4 1F008430 */  andi       $a0, $a0, 0x1F
/* 4E3D8 8005DBD8 10180000 */  mfhi       $v1
/* 4E3DC 8005DBDC 00220400 */  sll        $a0, $a0, 8
/* 4E3E0 8005DBE0 000028A6 */  sh         $t0, 0x0($s1)
/* 4E3E4 8005DBE4 18009200 */  mult       $a0, $s2
/* 4E3E8 8005DBE8 1000B6AF */  sw         $s6, 0x10($sp)
/* 4E3EC 8005DBEC 1400B5AF */  sw         $s5, 0x14($sp)
/* 4E3F0 8005DBF0 2138E600 */  addu       $a3, $a3, $a2
/* 4E3F4 8005DBF4 03390700 */  sra        $a3, $a3, 4
/* 4E3F8 8005DBF8 C3370600 */  sra        $a2, $a2, 31
/* 4E3FC 8005DBFC 2330E600 */  subu       $a2, $a3, $a2
/* 4E400 8005DC00 D0128727 */  addiu      $a3, $gp, %gp_rel(h)
/* 4E404 8005DC04 21186500 */  addu       $v1, $v1, $a1
/* 4E408 8005DC08 03190300 */  sra        $v1, $v1, 4
/* 4E40C 8005DC0C C32F0500 */  sra        $a1, $a1, 31
/* 4E410 8005DC10 23286500 */  subu       $a1, $v1, $a1
/* 4E414 8005DC14 10100000 */  mfhi       $v0
/* 4E418 8005DC18 21104400 */  addu       $v0, $v0, $a0
/* 4E41C 8005DC1C 03110200 */  sra        $v0, $v0, 4
/* 4E420 8005DC20 C3270400 */  sra        $a0, $a0, 31
/* 4E424 8005DC24 6275010C */  jal        RGB2HSV
/* 4E428 8005DC28 23204400 */   subu      $a0, $v0, $a0
/* 4E42C 8005DC2C D0128297 */  lhu        $v0, %gp_rel(h)($gp)
/* 4E430 8005DC30 02003126 */  addiu      $s1, $s1, 0x2
/* 4E434 8005DC34 000002A6 */  sh         $v0, 0x0($s0)
/* 4E438 8005DC38 D8128397 */  lhu        $v1, %gp_rel(s)($gp)
/* 4E43C 8005DC3C 02001026 */  addiu      $s0, $s0, 0x2
/* 4E440 8005DC40 000003A6 */  sh         $v1, 0x0($s0)
/* 4E444 8005DC44 DC128297 */  lhu        $v0, %gp_rel(v)($gp)
/* 4E448 8005DC48 02001026 */  addiu      $s0, $s0, 0x2
/* 4E44C 8005DC4C 000002A6 */  sh         $v0, 0x0($s0)
/* 4E450 8005DC50 D4FF8106 */  bgez       $s4, .L8005DBA4
/* 4E454 8005DC54 02001026 */   addiu     $s0, $s0, 0x2
/* 4E458 8005DC58 3400BF8F */  lw         $ra, 0x34($sp)
/* 4E45C 8005DC5C 3000B68F */  lw         $s6, 0x30($sp)
/* 4E460 8005DC60 2C00B58F */  lw         $s5, 0x2C($sp)
/* 4E464 8005DC64 2800B48F */  lw         $s4, 0x28($sp)
/* 4E468 8005DC68 2400B38F */  lw         $s3, 0x24($sp)
/* 4E46C 8005DC6C 2000B28F */  lw         $s2, 0x20($sp)
/* 4E470 8005DC70 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4E474 8005DC74 1800B08F */  lw         $s0, 0x18($sp)
/* 4E478 8005DC78 0800E003 */  jr         $ra
/* 4E47C 8005DC7C 3800BD27 */   addiu     $sp, $sp, 0x38
.size ReSavePaletteToAdjust, . - ReSavePaletteToAdjust
