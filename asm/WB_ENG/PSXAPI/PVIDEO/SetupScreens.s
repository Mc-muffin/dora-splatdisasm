.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupScreens
/* 4A7E0 80059FE0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4A7E4 80059FE4 2000B2AF */  sw         $s2, 0x20($sp)
/* 4A7E8 80059FE8 21908000 */  addu       $s2, $a0, $zero
/* 4A7EC 80059FEC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4A7F0 80059FF0 0B80113C */  lui        $s1, %hi(gDoubleBuffer)
/* 4A7F4 80059FF4 78B93126 */  addiu      $s1, $s1, %lo(gDoubleBuffer)
/* 4A7F8 80059FF8 21202002 */  addu       $a0, $s1, $zero
/* 4A7FC 80059FFC 1800B0AF */  sw         $s0, 0x18($sp)
/* 4A800 8005A000 2180A000 */  addu       $s0, $a1, $zero
/* 4A804 8005A004 2800B4AF */  sw         $s4, 0x28($sp)
/* 4A808 8005A008 21A0C000 */  addu       $s4, $a2, $zero
/* 4A80C 8005A00C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 4A810 8005A010 FFFFF530 */  andi       $s5, $a3, 0xFFFF
/* 4A814 8005A014 3000BFAF */  sw         $ra, 0x30($sp)
/* 4A818 8005A018 2400B3AF */  sw         $s3, 0x24($sp)
/* 4A81C 8005A01C 00004286 */  lh         $v0, 0x0($s2)
/* 4A820 8005A020 02004386 */  lh         $v1, 0x2($s2)
/* 4A824 8005A024 04004786 */  lh         $a3, 0x4($s2)
/* 4A828 8005A028 21284000 */  addu       $a1, $v0, $zero
/* 4A82C 8005A02C 06004286 */  lh         $v0, 0x6($s2)
/* 4A830 8005A030 21306000 */  addu       $a2, $v1, $zero
/* 4A834 8005A034 53E6010C */  jal        SetDefDrawEnv
/* 4A838 8005A038 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A83C 8005A03C 00000586 */  lh         $a1, 0x0($s0)
/* 4A840 8005A040 02000686 */  lh         $a2, 0x2($s0)
/* 4A844 8005A044 04000786 */  lh         $a3, 0x4($s0)
/* 4A848 8005A048 06000286 */  lh         $v0, 0x6($s0)
/* 4A84C 8005A04C 5C002426 */  addiu      $a0, $s1, 0x5C
/* 4A850 8005A050 83E6010C */  jal        SetDefDispEnv
/* 4A854 8005A054 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A858 8005A058 80003326 */  addiu      $s3, $s1, 0x80
/* 4A85C 8005A05C 00000586 */  lh         $a1, 0x0($s0)
/* 4A860 8005A060 02000686 */  lh         $a2, 0x2($s0)
/* 4A864 8005A064 04000786 */  lh         $a3, 0x4($s0)
/* 4A868 8005A068 06000286 */  lh         $v0, 0x6($s0)
/* 4A86C 8005A06C 21206002 */  addu       $a0, $s3, $zero
/* 4A870 8005A070 53E6010C */  jal        SetDefDrawEnv
/* 4A874 8005A074 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A878 8005A078 00004586 */  lh         $a1, 0x0($s2)
/* 4A87C 8005A07C 02004686 */  lh         $a2, 0x2($s2)
/* 4A880 8005A080 04004786 */  lh         $a3, 0x4($s2)
/* 4A884 8005A084 06004286 */  lh         $v0, 0x6($s2)
/* 4A888 8005A088 DC002426 */  addiu      $a0, $s1, 0xDC
/* 4A88C 8005A08C 83E6010C */  jal        SetDefDispEnv
/* 4A890 8005A090 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A894 8005A094 980035A2 */  sb         $s5, 0x98($s1)
/* 4A898 8005A098 180035A2 */  sb         $s5, 0x18($s1)
/* 4A89C 8005A09C 00008292 */  lbu        $v0, 0x0($s4)
/* 4A8A0 8005A0A0 3000BF8F */  lw         $ra, 0x30($sp)
/* 4A8A4 8005A0A4 2C00B58F */  lw         $s5, 0x2C($sp)
/* 4A8A8 8005A0A8 2000B28F */  lw         $s2, 0x20($sp)
/* 4A8AC 8005A0AC 1800B08F */  lw         $s0, 0x18($sp)
/* 4A8B0 8005A0B0 190022A2 */  sb         $v0, 0x19($s1)
/* 4A8B4 8005A0B4 01008392 */  lbu        $v1, 0x1($s4)
/* 4A8B8 8005A0B8 00000000 */  nop
/* 4A8BC 8005A0BC 1A0023A2 */  sb         $v1, 0x1A($s1)
/* 4A8C0 8005A0C0 02008292 */  lbu        $v0, 0x2($s4)
/* 4A8C4 8005A0C4 00000000 */  nop
/* 4A8C8 8005A0C8 1B0022A2 */  sb         $v0, 0x1B($s1)
/* 4A8CC 8005A0CC 00008392 */  lbu        $v1, 0x0($s4)
/* 4A8D0 8005A0D0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4A8D4 8005A0D4 190063A2 */  sb         $v1, 0x19($s3)
/* 4A8D8 8005A0D8 01008292 */  lbu        $v0, 0x1($s4)
/* 4A8DC 8005A0DC 00000000 */  nop
/* 4A8E0 8005A0E0 1A0062A2 */  sb         $v0, 0x1A($s3)
/* 4A8E4 8005A0E4 02008392 */  lbu        $v1, 0x2($s4)
/* 4A8E8 8005A0E8 2800B48F */  lw         $s4, 0x28($sp)
/* 4A8EC 8005A0EC 1B0063A2 */  sb         $v1, 0x1B($s3)
/* 4A8F0 8005A0F0 2400B38F */  lw         $s3, 0x24($sp)
/* 4A8F4 8005A0F4 0800E003 */  jr         $ra
/* 4A8F8 8005A0F8 3800BD27 */   addiu     $sp, $sp, 0x38
.size SetupScreens, . - SetupScreens
