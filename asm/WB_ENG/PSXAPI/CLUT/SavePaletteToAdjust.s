.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SavePaletteToAdjust
/* 4E1F0 8005D9F0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4E1F4 8005D9F4 2400B3AF */  sw         $s3, 0x24($sp)
/* 4E1F8 8005D9F8 21988000 */  addu       $s3, $a0, $zero
/* 4E1FC 8005D9FC 3000B6AF */  sw         $s6, 0x30($sp)
/* 4E200 8005DA00 D8129627 */  addiu      $s6, $gp, %gp_rel(s)
/* 4E204 8005DA04 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 4E208 8005DA08 DC129527 */  addiu      $s5, $gp, %gp_rel(v)
/* 4E20C 8005DA0C 2000B2AF */  sw         $s2, 0x20($sp)
/* 4E210 8005DA10 2184123C */  lui        $s2, (0x84210843 >> 16)
/* 4E214 8005DA14 43085236 */  ori        $s2, $s2, (0x84210843 & 0xFFFF)
/* 4E218 8005DA18 2800B4AF */  sw         $s4, 0x28($sp)
/* 4E21C 8005DA1C FF001424 */  addiu      $s4, $zero, 0xFF
/* 4E220 8005DA20 0C80023C */  lui        $v0, %hi(SavedPalettes)
/* 4E224 8005DA24 28E54224 */  addiu      $v0, $v0, %lo(SavedPalettes)
/* 4E228 8005DA28 40180500 */  sll        $v1, $a1, 1
/* 4E22C 8005DA2C 21186500 */  addu       $v1, $v1, $a1
/* 4E230 8005DA30 80180300 */  sll        $v1, $v1, 2
/* 4E234 8005DA34 21204300 */  addu       $a0, $v0, $v1
/* 4E238 8005DA38 3400BFAF */  sw         $ra, 0x34($sp)
/* 4E23C 8005DA3C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4E240 8005DA40 1800B0AF */  sw         $s0, 0x18($sp)
/* 4E244 8005DA44 0800918C */  lw         $s1, 0x8($a0)
/* 4E248 8005DA48 21108000 */  addu       $v0, $a0, $zero
/* 4E24C 8005DA4C 040046AC */  sw         $a2, 0x4($v0)
/* 4E250 8005DA50 00023026 */  addiu      $s0, $s1, 0x200
.L8005DA54:
/* 4E254 8005DA54 00006896 */  lhu        $t0, 0x0($s3)
/* 4E258 8005DA58 00000000 */  nop
/* 4E25C 8005DA5C FF7F0431 */  andi       $a0, $t0, 0x7FFF
/* 4E260 8005DA60 82320400 */  srl        $a2, $a0, 10
/* 4E264 8005DA64 00320600 */  sll        $a2, $a2, 8
/* 4E268 8005DA68 1800D200 */  mult       $a2, $s2
/* 4E26C 8005DA6C 10380000 */  mfhi       $a3
/* 4E270 8005DA70 C0280400 */  sll        $a1, $a0, 3
/* 4E274 8005DA74 001FA530 */  andi       $a1, $a1, 0x1F00
/* 4E278 8005DA78 1800B200 */  mult       $a1, $s2
/* 4E27C 8005DA7C 02007326 */  addiu      $s3, $s3, 0x2
/* 4E280 8005DA80 FFFF9426 */  addiu      $s4, $s4, -0x1
/* 4E284 8005DA84 1F008430 */  andi       $a0, $a0, 0x1F
/* 4E288 8005DA88 10180000 */  mfhi       $v1
/* 4E28C 8005DA8C 00220400 */  sll        $a0, $a0, 8
/* 4E290 8005DA90 000028A6 */  sh         $t0, 0x0($s1)
/* 4E294 8005DA94 18009200 */  mult       $a0, $s2
/* 4E298 8005DA98 1000B6AF */  sw         $s6, 0x10($sp)
/* 4E29C 8005DA9C 1400B5AF */  sw         $s5, 0x14($sp)
/* 4E2A0 8005DAA0 2138E600 */  addu       $a3, $a3, $a2
/* 4E2A4 8005DAA4 03390700 */  sra        $a3, $a3, 4
/* 4E2A8 8005DAA8 C3370600 */  sra        $a2, $a2, 31
/* 4E2AC 8005DAAC 2330E600 */  subu       $a2, $a3, $a2
/* 4E2B0 8005DAB0 D0128727 */  addiu      $a3, $gp, %gp_rel(h)
/* 4E2B4 8005DAB4 21186500 */  addu       $v1, $v1, $a1
/* 4E2B8 8005DAB8 03190300 */  sra        $v1, $v1, 4
/* 4E2BC 8005DABC C32F0500 */  sra        $a1, $a1, 31
/* 4E2C0 8005DAC0 23286500 */  subu       $a1, $v1, $a1
/* 4E2C4 8005DAC4 10100000 */  mfhi       $v0
/* 4E2C8 8005DAC8 21104400 */  addu       $v0, $v0, $a0
/* 4E2CC 8005DACC 03110200 */  sra        $v0, $v0, 4
/* 4E2D0 8005DAD0 C3270400 */  sra        $a0, $a0, 31
/* 4E2D4 8005DAD4 6275010C */  jal        RGB2HSV
/* 4E2D8 8005DAD8 23204400 */   subu      $a0, $v0, $a0
/* 4E2DC 8005DADC D0128297 */  lhu        $v0, %gp_rel(h)($gp)
/* 4E2E0 8005DAE0 02003126 */  addiu      $s1, $s1, 0x2
/* 4E2E4 8005DAE4 000002A6 */  sh         $v0, 0x0($s0)
/* 4E2E8 8005DAE8 D8128397 */  lhu        $v1, %gp_rel(s)($gp)
/* 4E2EC 8005DAEC 02001026 */  addiu      $s0, $s0, 0x2
/* 4E2F0 8005DAF0 000003A6 */  sh         $v1, 0x0($s0)
/* 4E2F4 8005DAF4 DC128297 */  lhu        $v0, %gp_rel(v)($gp)
/* 4E2F8 8005DAF8 02001026 */  addiu      $s0, $s0, 0x2
/* 4E2FC 8005DAFC 000002A6 */  sh         $v0, 0x0($s0)
/* 4E300 8005DB00 D4FF8106 */  bgez       $s4, .L8005DA54
/* 4E304 8005DB04 02001026 */   addiu     $s0, $s0, 0x2
/* 4E308 8005DB08 3400BF8F */  lw         $ra, 0x34($sp)
/* 4E30C 8005DB0C 3000B68F */  lw         $s6, 0x30($sp)
/* 4E310 8005DB10 2C00B58F */  lw         $s5, 0x2C($sp)
/* 4E314 8005DB14 2800B48F */  lw         $s4, 0x28($sp)
/* 4E318 8005DB18 2400B38F */  lw         $s3, 0x24($sp)
/* 4E31C 8005DB1C 2000B28F */  lw         $s2, 0x20($sp)
/* 4E320 8005DB20 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4E324 8005DB24 1800B08F */  lw         $s0, 0x18($sp)
/* 4E328 8005DB28 0800E003 */  jr         $ra
/* 4E32C 8005DB2C 3800BD27 */   addiu     $sp, $sp, 0x38
.size SavePaletteToAdjust, . - SavePaletteToAdjust
