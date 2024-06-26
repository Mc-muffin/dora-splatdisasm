.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadBackGroundTexture
/* 157A8 80024FA8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 157AC 80024FAC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 157B0 80024FB0 21880000 */  addu       $s1, $zero, $zero
/* 157B4 80024FB4 1800B0AF */  sw         $s0, 0x18($sp)
/* 157B8 80024FB8 21808000 */  addu       $s0, $a0, $zero
/* 157BC 80024FBC 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 157C0 80024FC0 3800BEAF */  sw         $fp, 0x38($sp)
/* 157C4 80024FC4 3400B7AF */  sw         $s7, 0x34($sp)
/* 157C8 80024FC8 3000B6AF */  sw         $s6, 0x30($sp)
/* 157CC 80024FCC 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 157D0 80024FD0 2800B4AF */  sw         $s4, 0x28($sp)
/* 157D4 80024FD4 2400B3AF */  sw         $s3, 0x24($sp)
/* 157D8 80024FD8 B35C010C */  jal        GetSizeOfFile
/* 157DC 80024FDC 2000B2AF */   sw        $s2, 0x20($sp)
/* 157E0 80024FE0 2B3F010C */  jal        new_malloc
/* 157E4 80024FE4 21204000 */   addu      $a0, $v0, $zero
/* 157E8 80024FE8 21B04000 */  addu       $s6, $v0, $zero
/* 157EC 80024FEC 6400C012 */  beqz       $s6, .L80025180
/* 157F0 80024FF0 21200002 */   addu      $a0, $s0, $zero
/* 157F4 80024FF4 495C010C */  jal        LoadFile
/* 157F8 80024FF8 2128C002 */   addu      $a1, $s6, $zero
/* 157FC 80024FFC 21900000 */  addu       $s2, $zero, $zero
/* 15800 80025000 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 15804 80025004 38AD5E24 */  addiu      $fp, $v0, %lo(VRAMItems)
/* 15808 80025008 82101100 */  srl        $v0, $s1, 2
.L8002500C:
/* 1580C 8002500C 80100200 */  sll        $v0, $v0, 2
/* 15810 80025010 2180C202 */  addu       $s0, $s6, $v0
/* 15814 80025014 0E5F010C */  jal        TextureToVRAM
/* 15818 80025018 21200002 */   addu      $a0, $s0, $zero
/* 1581C 8002501C 21984000 */  addu       $s3, $v0, $zero
/* 15820 80025020 08000326 */  addiu      $v1, $s0, 0x8
/* 15824 80025024 08003126 */  addiu      $s1, $s1, 0x8
/* 15828 80025028 80A81300 */  sll        $s5, $s3, 2
/* 1582C 8002502C 40A01200 */  sll        $s4, $s2, 1
/* 15830 80025030 01005726 */  addiu      $s7, $s2, 0x1
/* 15834 80025034 007C0624 */  addiu      $a2, $zero, 0x7C00
/* 15838 80025038 00FC0534 */  ori        $a1, $zero, 0xFC00
/* 1583C 8002503C FF000424 */  addiu      $a0, $zero, 0xFF
.L80025040:
/* 15840 80025040 00006294 */  lhu        $v0, 0x0($v1)
/* 15844 80025044 00000000 */  nop
/* 15848 80025048 02004014 */  bnez       $v0, .L80025054
/* 1584C 8002504C 00000000 */   nop
/* 15850 80025050 01000224 */  addiu      $v0, $zero, 0x1
.L80025054:
/* 15854 80025054 03004610 */  beq        $v0, $a2, .L80025064
/* 15858 80025058 00000000 */   nop
/* 1585C 8002505C 02004514 */  bne        $v0, $a1, .L80025068
/* 15860 80025060 00000000 */   nop
.L80025064:
/* 15864 80025064 21100000 */  addu       $v0, $zero, $zero
.L80025068:
/* 15868 80025068 000062A4 */  sh         $v0, 0x0($v1)
/* 1586C 8002506C FFFF8424 */  addiu      $a0, $a0, -0x1
/* 15870 80025070 F3FF8104 */  bgez       $a0, .L80025040
/* 15874 80025074 02006324 */   addiu     $v1, $v1, 0x2
/* 15878 80025078 F75E010C */  jal        PaletteToVRAM
/* 1587C 8002507C 21200002 */   addu      $a0, $s0, $zero
/* 15880 80025080 00023126 */  addiu      $s1, $s1, 0x200
/* 15884 80025084 00000392 */  lbu        $v1, 0x0($s0)
/* 15888 80025088 00000000 */  nop
/* 1588C 8002508C 05006014 */  bnez       $v1, .L800250A4
/* 15890 80025090 21584000 */   addu      $t3, $v0, $zero
/* 15894 80025094 04000296 */  lhu        $v0, 0x4($s0)
/* 15898 80025098 06000396 */  lhu        $v1, 0x6($s0)
/* 1589C 8002509C 2B940008 */  j          .L800250AC
/* 158A0 800250A0 42100200 */   srl       $v0, $v0, 1
.L800250A4:
/* 158A4 800250A4 04000296 */  lhu        $v0, 0x4($s0)
/* 158A8 800250A8 06000396 */  lhu        $v1, 0x6($s0)
.L800250AC:
/* 158AC 800250AC 00000000 */  nop
/* 158B0 800250B0 18004300 */  mult       $v0, $v1
/* 158B4 800250B4 12100000 */  mflo       $v0
/* 158B8 800250B8 21882202 */  addu       $s1, $s1, $v0
/* 158BC 800250BC 80000924 */  addiu      $t1, $zero, 0x80
/* 158C0 800250C0 21109202 */  addu       $v0, $s4, $s2
/* 158C4 800250C4 C0100200 */  sll        $v0, $v0, 3
/* 158C8 800250C8 23105200 */  subu       $v0, $v0, $s2
/* 158CC 800250CC 80100200 */  sll        $v0, $v0, 2
/* 158D0 800250D0 0980033C */  lui        $v1, %hi(BackGroundSprite)
/* 158D4 800250D4 38686324 */  addiu      $v1, $v1, %lo(BackGroundSprite)
/* 158D8 800250D8 21306200 */  addu       $a2, $v1, $v0
/* 158DC 800250DC 09000D24 */  addiu      $t5, $zero, 0x9
/* 158E0 800250E0 2C000C24 */  addiu      $t4, $zero, 0x2C
/* 158E4 800250E4 01000824 */  addiu      $t0, $zero, 0x1
/* 158E8 800250E8 2118B302 */  addu       $v1, $s5, $s3
/* 158EC 800250EC 80180300 */  sll        $v1, $v1, 2
/* 158F0 800250F0 21287E00 */  addu       $a1, $v1, $fp
/* 158F4 800250F4 0C80073C */  lui        $a3, %hi(VRAMItems + 0x8)
/* 158F8 800250F8 40ADE724 */  addiu      $a3, $a3, %lo(VRAMItems + 0x8)
/* 158FC 800250FC 21106700 */  addu       $v0, $v1, $a3
/* 15900 80025100 2118C303 */  addu       $v1, $fp, $v1
/* 15904 80025104 1100A480 */  lb         $a0, 0x11($a1)
/* 15908 80025108 00004A94 */  lhu        $t2, 0x0($v0)
/* 1590C 8002510C 0E00A790 */  lbu        $a3, 0xE($a1)
/* 15910 80025110 12006284 */  lh         $v0, 0x12($v1)
/* 15914 80025114 0F00A590 */  lbu        $a1, 0xF($a1)
/* 15918 80025118 40200400 */  sll        $a0, $a0, 1
/* 1591C 8002511C 2120E400 */  addu       $a0, $a3, $a0
/* 15920 80025120 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 15924 80025124 2110A200 */  addu       $v0, $a1, $v0
/* 15928 80025128 FFFF4224 */  addiu      $v0, $v0, -0x1
.L8002512C:
/* 1592C 8002512C 0300CDA0 */  sb         $t5, 0x3($a2)
/* 15930 80025130 0400C9A0 */  sb         $t1, 0x4($a2)
/* 15934 80025134 0500C9A0 */  sb         $t1, 0x5($a2)
/* 15938 80025138 0600C9A0 */  sb         $t1, 0x6($a2)
/* 1593C 8002513C 1600CAA4 */  sh         $t2, 0x16($a2)
/* 15940 80025140 0E00CBA4 */  sh         $t3, 0xE($a2)
/* 15944 80025144 0C00C4A0 */  sb         $a0, 0xC($a2)
/* 15948 80025148 0D00C5A0 */  sb         $a1, 0xD($a2)
/* 1594C 8002514C 1400C4A0 */  sb         $a0, 0x14($a2)
/* 15950 80025150 1500C2A0 */  sb         $v0, 0x15($a2)
/* 15954 80025154 1C00C7A0 */  sb         $a3, 0x1C($a2)
/* 15958 80025158 1D00C5A0 */  sb         $a1, 0x1D($a2)
/* 1595C 8002515C 2400C7A0 */  sb         $a3, 0x24($a2)
/* 15960 80025160 2500C2A0 */  sb         $v0, 0x25($a2)
/* 15964 80025164 0700CCA0 */  sb         $t4, 0x7($a2)
/* 15968 80025168 FFFF0825 */  addiu      $t0, $t0, -0x1
/* 1596C 8002516C EFFF0105 */  bgez       $t0, .L8002512C
/* 15970 80025170 2800C624 */   addiu     $a2, $a2, 0x28
/* 15974 80025174 2190E002 */  addu       $s2, $s7, $zero
/* 15978 80025178 A4FF401A */  blez       $s2, .L8002500C
/* 1597C 8002517C 82101100 */   srl       $v0, $s1, 2
.L80025180:
/* 15980 80025180 1C40010C */  jal        new_free
/* 15984 80025184 2120C002 */   addu      $a0, $s6, $zero
/* 15988 80025188 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 1598C 8002518C 3800BE8F */  lw         $fp, 0x38($sp)
/* 15990 80025190 3400B78F */  lw         $s7, 0x34($sp)
/* 15994 80025194 3000B68F */  lw         $s6, 0x30($sp)
/* 15998 80025198 2C00B58F */  lw         $s5, 0x2C($sp)
/* 1599C 8002519C 2800B48F */  lw         $s4, 0x28($sp)
/* 159A0 800251A0 2400B38F */  lw         $s3, 0x24($sp)
/* 159A4 800251A4 2000B28F */  lw         $s2, 0x20($sp)
/* 159A8 800251A8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 159AC 800251AC 1800B08F */  lw         $s0, 0x18($sp)
/* 159B0 800251B0 0800E003 */  jr         $ra
/* 159B4 800251B4 4000BD27 */   addiu     $sp, $sp, 0x40
.size LoadBackGroundTexture, . - LoadBackGroundTexture
