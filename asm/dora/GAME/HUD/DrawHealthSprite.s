.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawHealthSprite
/* E2A0 8001DAA0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* E2A4 8001DAA4 8888033C */  lui        $v1, (0x88888889 >> 16)
/* E2A8 8001DAA8 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* E2AC 8001DAAC 1000B0AF */  sw         $s0, 0x10($sp)
/* E2B0 8001DAB0 2180E000 */  addu       $s0, $a3, $zero
/* E2B4 8001DAB4 2000B4AF */  sw         $s4, 0x20($sp)
/* E2B8 8001DAB8 21A08000 */  addu       $s4, $a0, $zero
/* E2BC 8001DABC 18000302 */  mult       $s0, $v1
/* E2C0 8001DAC0 02000424 */  addiu      $a0, $zero, 0x2
/* E2C4 8001DAC4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* E2C8 8001DAC8 2198A000 */  addu       $s3, $a1, $zero
/* E2CC 8001DACC 01000524 */  addiu      $a1, $zero, 0x1
/* E2D0 8001DAD0 1800B2AF */  sw         $s2, 0x18($sp)
/* E2D4 8001DAD4 2190C000 */  addu       $s2, $a2, $zero
/* E2D8 8001DAD8 C3371000 */  sra        $a2, $s0, 31
/* E2DC 8001DADC 1400B1AF */  sw         $s1, 0x14($sp)
/* E2E0 8001DAE0 3C00B18F */  lw         $s1, 0x3C($sp)
/* E2E4 8001DAE4 00FF0724 */  addiu      $a3, $zero, -0x100
/* E2E8 8001DAE8 2400BFAF */  sw         $ra, 0x24($sp)
/* E2EC 8001DAEC 10180000 */  mfhi       $v1
/* E2F0 8001DAF0 21187000 */  addu       $v1, $v1, $s0
/* E2F4 8001DAF4 C3180300 */  sra        $v1, $v1, 3
/* E2F8 8001DAF8 23186600 */  subu       $v1, $v1, $a2
/* E2FC 8001DAFC 00110300 */  sll        $v0, $v1, 4
/* E300 8001DB00 23104300 */  subu       $v0, $v0, $v1
/* E304 8001DB04 23800202 */  subu       $s0, $s0, $v0
/* E308 8001DB08 40811000 */  sll        $s0, $s0, 5
/* E30C 8001DB0C C0FF0624 */  addiu      $a2, $zero, -0x40
/* E310 8001DB10 24302602 */  and        $a2, $s1, $a2
/* E314 8001DB14 93E6010C */  jal        GetTPage
/* E318 8001DB18 24380702 */   and       $a3, $s0, $a3
/* E31C 8001DB1C 21208002 */  addu       $a0, $s4, $zero
/* E320 8001DB20 21280000 */  addu       $a1, $zero, $zero
/* E324 8001DB24 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* E328 8001DB28 160082A6 */  sh         $v0, 0x16($s4)
/* E32C 8001DB2C 80000224 */  addiu      $v0, $zero, 0x80
/* E330 8001DB30 040082A2 */  sb         $v0, 0x4($s4)
/* E334 8001DB34 050082A2 */  sb         $v0, 0x5($s4)
/* E338 8001DB38 BBE6010C */  jal        SetSemiTrans
/* E33C 8001DB3C 060082A2 */   sb        $v0, 0x6($s4)
/* E340 8001DB40 20006226 */  addiu      $v0, $s3, 0x20
/* E344 8001DB44 0A0092A6 */  sh         $s2, 0xA($s4)
/* E348 8001DB48 120092A6 */  sh         $s2, 0x12($s4)
/* E34C 8001DB4C 20005226 */  addiu      $s2, $s2, 0x20
/* E350 8001DB50 3F003132 */  andi       $s1, $s1, 0x3F
/* E354 8001DB54 100082A6 */  sh         $v0, 0x10($s4)
/* E358 8001DB58 200082A6 */  sh         $v0, 0x20($s4)
/* E35C 8001DB5C 1F002226 */  addiu      $v0, $s1, 0x1F
/* E360 8001DB60 0D0090A2 */  sb         $s0, 0xD($s4)
/* E364 8001DB64 150090A2 */  sb         $s0, 0x15($s4)
/* E368 8001DB68 1F001026 */  addiu      $s0, $s0, 0x1F
/* E36C 8001DB6C 140082A2 */  sb         $v0, 0x14($s4)
/* E370 8001DB70 240082A2 */  sb         $v0, 0x24($s4)
/* E374 8001DB74 0B80023C */  lui        $v0, %hi(g_nt + 0x8)
/* E378 8001DB78 70BB4424 */  addiu      $a0, $v0, %lo(g_nt + 0x8)
/* E37C 8001DB7C 080093A6 */  sh         $s3, 0x8($s4)
/* E380 8001DB80 180093A6 */  sh         $s3, 0x18($s4)
/* E384 8001DB84 1A0092A6 */  sh         $s2, 0x1A($s4)
/* E388 8001DB88 220092A6 */  sh         $s2, 0x22($s4)
/* E38C 8001DB8C 0C0091A2 */  sb         $s1, 0xC($s4)
/* E390 8001DB90 1C0091A2 */  sb         $s1, 0x1C($s4)
/* E394 8001DB94 1D0090A2 */  sb         $s0, 0x1D($s4)
/* E398 8001DB98 250090A2 */  sb         $s0, 0x25($s4)
/* E39C 8001DB9C 70BB438C */  lw         $v1, %lo(g_nt + 0x8)($v0)
/* E3A0 8001DBA0 00000000 */  nop
/* E3A4 8001DBA4 09006010 */  beqz       $v1, .L8001DBCC
/* E3A8 8001DBA8 21284000 */   addu      $a1, $v0, $zero
/* E3AC 8001DBAC 02008388 */  lwl        $v1, 0x2($a0)
/* E3B0 8001DBB0 70BBA28C */  lw         $v0, %lo(g_nt + 0x8)($a1)
/* E3B4 8001DBB4 00000000 */  nop
/* E3B8 8001DBB8 00120200 */  sll        $v0, $v0, 8
/* E3BC 8001DBBC 020082AA */  swl        $v0, 0x2($s4)
/* E3C0 8001DBC0 020083AA */  swl        $v1, 0x2($s4)
/* E3C4 8001DBC4 F4760008 */  j          .L8001DBD0
/* E3C8 8001DBC8 00000000 */   nop
.L8001DBCC:
/* E3CC 8001DBCC 040094AC */  sw         $s4, 0x4($a0)
.L8001DBD0:
/* E3D0 8001DBD0 2400BF8F */  lw         $ra, 0x24($sp)
/* E3D4 8001DBD4 70BBB4AC */  sw         $s4, %lo(g_nt + 0x8)($a1)
/* E3D8 8001DBD8 2000B48F */  lw         $s4, 0x20($sp)
/* E3DC 8001DBDC 1C00B38F */  lw         $s3, 0x1C($sp)
/* E3E0 8001DBE0 1800B28F */  lw         $s2, 0x18($sp)
/* E3E4 8001DBE4 1400B18F */  lw         $s1, 0x14($sp)
/* E3E8 8001DBE8 1000B08F */  lw         $s0, 0x10($sp)
/* E3EC 8001DBEC 0800E003 */  jr         $ra
/* E3F0 8001DBF0 2800BD27 */   addiu     $sp, $sp, 0x28
.size DrawHealthSprite, . - DrawHealthSprite
