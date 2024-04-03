.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocVRAMTPageAlign
/* 4C5FC 8005BDFC 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4C600 8005BE00 00240400 */  sll        $a0, $a0, 16
/* 4C604 8005BE04 03240400 */  sra        $a0, $a0, 16
/* 4C608 8005BE08 003C0700 */  sll        $a3, $a3, 16
/* 4C60C 8005BE0C 033C0700 */  sra        $a3, $a3, 16
/* 4C610 8005BE10 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4C614 8005BE14 1400A4AF */  sw         $a0, 0x14($sp)
/* 4C618 8005BE18 38AD4424 */  addiu      $a0, $v0, %lo(VRAMItems)
/* 4C61C 8005BE1C 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 4C620 8005BE20 6800BEAF */  sw         $fp, 0x68($sp)
/* 4C624 8005BE24 6400B7AF */  sw         $s7, 0x64($sp)
/* 4C628 8005BE28 6000B6AF */  sw         $s6, 0x60($sp)
/* 4C62C 8005BE2C 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 4C630 8005BE30 5800B4AF */  sw         $s4, 0x58($sp)
/* 4C634 8005BE34 5400B3AF */  sw         $s3, 0x54($sp)
/* 4C638 8005BE38 5000B2AF */  sw         $s2, 0x50($sp)
/* 4C63C 8005BE3C 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 4C640 8005BE40 4800B0AF */  sw         $s0, 0x48($sp)
/* 4C644 8005BE44 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 4C648 8005BE48 7400A5AF */  sw         $a1, 0x74($sp)
/* 4C64C 8005BE4C 7800A6AF */  sw         $a2, 0x78($sp)
/* 4C650 8005BE50 1800A7AF */  sw         $a3, 0x18($sp)
/* 4C654 8005BE54 10008390 */  lbu        $v1, 0x10($a0)
/* 4C658 8005BE58 00000000 */  nop
/* 4C65C 8005BE5C 0E006010 */  beqz       $v1, .L8005BE98
/* 4C660 8005BE60 10008524 */   addiu     $a1, $a0, 0x10
/* 4C664 8005BE64 0100043C */  lui        $a0, (0x10000 >> 16)
/* 4C668 8005BE68 0100063C */  lui        $a2, (0x10000 >> 16)
/* 4C66C 8005BE6C 1400A524 */  addiu      $a1, $a1, 0x14
.L8005BE70:
/* 4C670 8005BE70 21188000 */  addu       $v1, $a0, $zero
/* 4C674 8005BE74 21208600 */  addu       $a0, $a0, $a2
/* 4C678 8005BE78 031C0300 */  sra        $v1, $v1, 16
/* 4C67C 8005BE7C 2C016228 */  slti       $v0, $v1, 0x12C
/* 4C680 8005BE80 05004010 */  beqz       $v0, .L8005BE98
/* 4C684 8005BE84 1C00A3AF */   sw        $v1, 0x1C($sp)
/* 4C688 8005BE88 0000A290 */  lbu        $v0, 0x0($a1)
/* 4C68C 8005BE8C 00000000 */  nop
/* 4C690 8005BE90 F7FF4014 */  bnez       $v0, .L8005BE70
/* 4C694 8005BE94 1400A524 */   addiu     $a1, $a1, 0x14
.L8005BE98:
/* 4C698 8005BE98 7400A38F */  lw         $v1, 0x74($sp)
/* 4C69C 8005BE9C 01000424 */  addiu      $a0, $zero, 0x1
/* 4C6A0 8005BEA0 04006294 */  lhu        $v0, 0x4($v1)
/* 4C6A4 8005BEA4 1400A58F */  lw         $a1, 0x14($sp)
/* 4C6A8 8005BEA8 00140200 */  sll        $v0, $v0, 16
/* 4C6AC 8005BEAC 1500A410 */  beq        $a1, $a0, .L8005BF04
/* 4C6B0 8005BEB0 031C0200 */   sra       $v1, $v0, 16
/* 4C6B4 8005BEB4 0200A228 */  slti       $v0, $a1, 0x2
/* 4C6B8 8005BEB8 05004010 */  beqz       $v0, .L8005BED0
/* 4C6BC 8005BEBC 00000000 */   nop
/* 4C6C0 8005BEC0 0900A010 */  beqz       $a1, .L8005BEE8
/* 4C6C4 8005BEC4 00000000 */   nop
/* 4C6C8 8005BEC8 CA6F0108 */  j          .L8005BF28
/* 4C6CC 8005BECC 00000000 */   nop
.L8005BED0:
/* 4C6D0 8005BED0 1400A68F */  lw         $a2, 0x14($sp)
/* 4C6D4 8005BED4 02000224 */  addiu      $v0, $zero, 0x2
/* 4C6D8 8005BED8 1100C210 */  beq        $a2, $v0, .L8005BF20
/* 4C6DC 8005BEDC 04000224 */   addiu     $v0, $zero, 0x4
/* 4C6E0 8005BEE0 CA6F0108 */  j          .L8005BF28
/* 4C6E4 8005BEE4 00000000 */   nop
.L8005BEE8:
/* 4C6E8 8005BEE8 02006104 */  bgez       $v1, .L8005BEF4
/* 4C6EC 8005BEEC 21106000 */   addu      $v0, $v1, $zero
/* 4C6F0 8005BEF0 03006224 */  addiu      $v0, $v1, 0x3
.L8005BEF4:
/* 4C6F4 8005BEF4 83100200 */  sra        $v0, $v0, 2
/* 4C6F8 8005BEF8 1000A2A7 */  sh         $v0, 0x10($sp)
/* 4C6FC 8005BEFC CA6F0108 */  j          .L8005BF28
/* 4C700 8005BF00 1200A4A3 */   sb        $a0, 0x12($sp)
.L8005BF04:
/* 4C704 8005BF04 C2170200 */  srl        $v0, $v0, 31
/* 4C708 8005BF08 21106200 */  addu       $v0, $v1, $v0
/* 4C70C 8005BF0C 43100200 */  sra        $v0, $v0, 1
/* 4C710 8005BF10 02000324 */  addiu      $v1, $zero, 0x2
/* 4C714 8005BF14 1000A2A7 */  sh         $v0, 0x10($sp)
/* 4C718 8005BF18 CA6F0108 */  j          .L8005BF28
/* 4C71C 8005BF1C 1200A3A3 */   sb        $v1, 0x12($sp)
.L8005BF20:
/* 4C720 8005BF20 1000A3A7 */  sh         $v1, 0x10($sp)
/* 4C724 8005BF24 1200A2A3 */  sb         $v0, 0x12($sp)
.L8005BF28:
/* 4C728 8005BF28 1000A287 */  lh         $v0, 0x10($sp)
/* 4C72C 8005BF2C 2417858F */  lw         $a1, %gp_rel(CellW)($gp)
/* 4C730 8005BF30 00000000 */  nop
/* 4C734 8005BF34 21104500 */  addu       $v0, $v0, $a1
/* 4C738 8005BF38 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4C73C 8005BF3C 1A004500 */  div        $zero, $v0, $a1
/* 4C740 8005BF40 7400A38F */  lw         $v1, 0x74($sp)
/* 4C744 8005BF44 00000000 */  nop
/* 4C748 8005BF48 06006384 */  lh         $v1, 0x6($v1)
/* 4C74C 8005BF4C 00000000 */  nop
/* 4C750 8005BF50 2000A3AF */  sw         $v1, 0x20($sp)
/* 4C754 8005BF54 12100000 */  mflo       $v0
/* 4C758 8005BF58 0200A014 */  bnez       $a1, .L8005BF64
/* 4C75C 8005BF5C 00000000 */   nop
/* 4C760 8005BF60 CD010000 */  break      0, 7
.L8005BF64:
/* 4C764 8005BF64 2017848F */  lw         $a0, %gp_rel(CellH)($gp)
/* 4C768 8005BF68 00000000 */  nop
/* 4C76C 8005BF6C 21186400 */  addu       $v1, $v1, $a0
/* 4C770 8005BF70 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4C774 8005BF74 1A006400 */  div        $zero, $v1, $a0
/* 4C778 8005BF78 FF005630 */  andi       $s6, $v0, 0xFF
/* 4C77C 8005BF7C 12180000 */  mflo       $v1
/* 4C780 8005BF80 02008014 */  bnez       $a0, .L8005BF8C
/* 4C784 8005BF84 00000000 */   nop
/* 4C788 8005BF88 CD010000 */  break      0, 7
.L8005BF8C:
/* 4C78C 8005BF8C 8000AB8F */  lw         $t3, 0x80($sp)
/* 4C790 8005BF90 1817828F */  lw         $v0, %gp_rel(XCnt)($gp)
/* 4C794 8005BF94 FF007330 */  andi       $s3, $v1, 0xFF
/* 4C798 8005BF98 3800A5AF */  sw         $a1, 0x38($sp)
/* 4C79C 8005BF9C 3C00A4AF */  sw         $a0, 0x3C($sp)
/* 4C7A0 8005BFA0 23305600 */  subu       $a2, $v0, $s6
/* 4C7A4 8005BFA4 2A186601 */  slt        $v1, $t3, $a2
/* 4C7A8 8005BFA8 9B006010 */  beqz       $v1, .L8005C218
/* 4C7AC 8005BFAC 21884000 */   addu      $s1, $v0, $zero
/* 4C7B0 8005BFB0 1C17828F */  lw         $v0, %gp_rel(YCnt)($gp)
/* 4C7B4 8005BFB4 21C87601 */  addu       $t9, $t3, $s6
/* 4C7B8 8005BFB8 2400A6AF */  sw         $a2, 0x24($sp)
/* 4C7BC 8005BFBC 3000A2AF */  sw         $v0, 0x30($sp)
/* 4C7C0 8005BFC0 FFFF6225 */  addiu      $v0, $t3, -0x1
/* 4C7C4 8005BFC4 3000A38F */  lw         $v1, 0x30($sp)
/* 4C7C8 8005BFC8 21105600 */  addu       $v0, $v0, $s6
/* 4C7CC 8005BFCC 4000A2AF */  sw         $v0, 0x40($sp)
/* 4C7D0 8005BFD0 23187300 */  subu       $v1, $v1, $s3
/* 4C7D4 8005BFD4 3400A3AF */  sw         $v1, 0x34($sp)
.L8005BFD8:
/* 4C7D8 8005BFD8 8400AA8F */  lw         $t2, 0x84($sp)
/* 4C7DC 8005BFDC 3400A48F */  lw         $a0, 0x34($sp)
/* 4C7E0 8005BFE0 00000000 */  nop
/* 4C7E4 8005BFE4 2A104401 */  slt        $v0, $t2, $a0
/* 4C7E8 8005BFE8 83004010 */  beqz       $v0, .L8005C1F8
/* 4C7EC 8005BFEC FFFF4325 */   addiu     $v1, $t2, -0x1
/* 4C7F0 8005BFF0 3C00A78F */  lw         $a3, 0x3C($sp)
/* 4C7F4 8005BFF4 00000000 */  nop
/* 4C7F8 8005BFF8 18004701 */  mult       $t2, $a3
/* 4C7FC 8005BFFC 12200000 */  mflo       $a0
/* 4C800 8005C000 21187300 */  addu       $v1, $v1, $s3
/* 4C804 8005C004 00000000 */  nop
/* 4C808 8005C008 18006700 */  mult       $v1, $a3
/* 4C80C 8005C00C 3800BE8F */  lw         $fp, 0x38($sp)
/* 4C810 8005C010 12180000 */  mflo       $v1
/* 4C814 8005C014 4000A58F */  lw         $a1, 0x40($sp)
/* 4C818 8005C018 00000000 */  nop
/* 4C81C 8005C01C 1800BE00 */  mult       $a1, $fp
/* 4C820 8005C020 21785301 */  addu       $t7, $t2, $s3
/* 4C824 8005C024 3000A28F */  lw         $v0, 0x30($sp)
/* 4C828 8005C028 0817948F */  lw         $s4, %gp_rel(OrginX)($gp)
/* 4C82C 8005C02C 23105300 */  subu       $v0, $v0, $s3
/* 4C830 8005C030 2800A2AF */  sw         $v0, 0x28($sp)
/* 4C834 8005C034 0C17828F */  lw         $v0, %gp_rel(OrginY)($gp)
/* 4C838 8005C038 12280000 */  mflo       $a1
/* 4C83C 8005C03C 2C00A5AF */  sw         $a1, 0x2C($sp)
/* 4C840 8005C040 21288200 */  addu       $a1, $a0, $v0
/* 4C844 8005C044 21206200 */  addu       $a0, $v1, $v0
.L8005C048:
/* 4C848 8005C048 18007E01 */  mult       $t3, $fp
/* 4C84C 8005C04C 12100000 */  mflo       $v0
/* 4C850 8005C050 21105400 */  addu       $v0, $v0, $s4
/* 4C854 8005C054 02004104 */  bgez       $v0, .L8005C060
/* 4C858 8005C058 00000000 */   nop
/* 4C85C 8005C05C 3F004224 */  addiu      $v0, $v0, 0x3F
.L8005C060:
/* 4C860 8005C060 2C00A68F */  lw         $a2, 0x2C($sp)
/* 4C864 8005C064 83490200 */  sra        $t1, $v0, 6
/* 4C868 8005C068 2118D400 */  addu       $v1, $a2, $s4
/* 4C86C 8005C06C 02006104 */  bgez       $v1, .L8005C078
/* 4C870 8005C070 21C02003 */   addu      $t8, $t9, $zero
/* 4C874 8005C074 3F006324 */  addiu      $v1, $v1, 0x3F
.L8005C078:
/* 4C878 8005C078 83110300 */  sra        $v0, $v1, 6
/* 4C87C 8005C07C 03420500 */  sra        $t0, $a1, 8
/* 4C880 8005C080 1200A393 */  lbu        $v1, 0x12($sp)
/* 4C884 8005C084 23104900 */  subu       $v0, $v0, $t1
/* 4C888 8005C088 2A104300 */  slt        $v0, $v0, $v1
/* 4C88C 8005C08C 53004010 */  beqz       $v0, .L8005C1DC
/* 4C890 8005C090 03320400 */   sra       $a2, $a0, 8
/* 4C894 8005C094 5100C814 */  bne        $a2, $t0, .L8005C1DC
/* 4C898 8005C098 00140A00 */   sll       $v0, $t2, 16
/* 4C89C 8005C09C 03BC0200 */  sra        $s7, $v0, 16
/* 4C8A0 8005C0A0 001C0B00 */  sll        $v1, $t3, 16
/* 4C8A4 8005C0A4 1800A28F */  lw         $v0, 0x18($sp)
/* 4C8A8 8005C0A8 00000000 */  nop
/* 4C8AC 8005C0AC 2D004010 */  beqz       $v0, .L8005C164
/* 4C8B0 8005C0B0 03AC0300 */   sra       $s5, $v1, 16
/* 4C8B4 8005C0B4 1A007601 */  div        $zero, $t3, $s6
/* 4C8B8 8005C0B8 10100000 */  mfhi       $v0
/* 4C8BC 8005C0BC 0200C016 */  bnez       $s6, .L8005C0C8
/* 4C8C0 8005C0C0 00000000 */   nop
/* 4C8C4 8005C0C4 CD010000 */  break      0, 7
.L8005C0C8:
/* 4C8C8 8005C0C8 44004014 */  bnez       $v0, .L8005C1DC
/* 4C8CC 8005C0CC 00000000 */   nop
/* 4C8D0 8005C0D0 1A005301 */  div        $zero, $t2, $s3
/* 4C8D4 8005C0D4 10100000 */  mfhi       $v0
/* 4C8D8 8005C0D8 02006016 */  bnez       $s3, .L8005C0E4
/* 4C8DC 8005C0DC 00000000 */   nop
/* 4C8E0 8005C0E0 CD010000 */  break      0, 7
.L8005C0E4:
/* 4C8E4 8005C0E4 3D004014 */  bnez       $v0, .L8005C1DC
/* 4C8E8 8005C0E8 2A104F01 */   slt       $v0, $t2, $t7
/* 4C8EC 8005C0EC 38004010 */  beqz       $v0, .L8005C1D0
/* 4C8F0 8005C0F0 21604001 */   addu      $t4, $t2, $zero
/* 4C8F4 8005C0F4 18005101 */  mult       $t2, $s1
/* 4C8F8 8005C0F8 2A907901 */  slt        $s2, $t3, $t9
/* 4C8FC 8005C0FC 2180E001 */  addu       $s0, $t7, $zero
/* 4C900 8005C100 21702002 */  addu       $t6, $s1, $zero
/* 4C904 8005C104 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4C908 8005C108 38974224 */  addiu      $v0, $v0, %lo(VRAMGrid)
/* 4C90C 8005C10C 12180000 */  mflo       $v1
/* 4C910 8005C110 21186200 */  addu       $v1, $v1, $v0
.L8005C114:
/* 4C914 8005C114 0B004012 */  beqz       $s2, .L8005C144
/* 4C918 8005C118 21406001 */   addu      $t0, $t3, $zero
/* 4C91C 8005C11C 01000D24 */  addiu      $t5, $zero, 0x1
/* 4C920 8005C120 21480003 */  addu       $t1, $t8, $zero
/* 4C924 8005C124 21306301 */  addu       $a2, $t3, $v1
.L8005C128:
/* 4C928 8005C128 0000C290 */  lbu        $v0, 0x0($a2)
/* 4C92C 8005C12C 00000000 */  nop
/* 4C930 8005C130 0A004D10 */  beq        $v0, $t5, .L8005C15C
/* 4C934 8005C134 01000825 */   addiu     $t0, $t0, 0x1
/* 4C938 8005C138 2A100901 */  slt        $v0, $t0, $t1
/* 4C93C 8005C13C FAFF4014 */  bnez       $v0, .L8005C128
/* 4C940 8005C140 0100C624 */   addiu     $a2, $a2, 0x1
.L8005C144:
/* 4C944 8005C144 01008C25 */  addiu      $t4, $t4, 0x1
/* 4C948 8005C148 2A109001 */  slt        $v0, $t4, $s0
/* 4C94C 8005C14C F1FF4014 */  bnez       $v0, .L8005C114
/* 4C950 8005C150 21186E00 */   addu      $v1, $v1, $t6
/* 4C954 8005C154 75700108 */  j          .L8005C1D4
/* 4C958 8005C158 21100000 */   addu      $v0, $zero, $zero
.L8005C15C:
/* 4C95C 8005C15C 75700108 */  j          .L8005C1D4
/* 4C960 8005C160 01000224 */   addiu     $v0, $zero, 0x1
.L8005C164:
/* 4C964 8005C164 2A104F01 */  slt        $v0, $t2, $t7
/* 4C968 8005C168 19004010 */  beqz       $v0, .L8005C1D0
/* 4C96C 8005C16C 21604001 */   addu      $t4, $t2, $zero
/* 4C970 8005C170 21702002 */  addu       $t6, $s1, $zero
/* 4C974 8005C174 18004E01 */  mult       $t2, $t6
/* 4C978 8005C178 2A907901 */  slt        $s2, $t3, $t9
/* 4C97C 8005C17C 2180E001 */  addu       $s0, $t7, $zero
/* 4C980 8005C180 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4C984 8005C184 38974224 */  addiu      $v0, $v0, %lo(VRAMGrid)
/* 4C988 8005C188 12180000 */  mflo       $v1
/* 4C98C 8005C18C 21186200 */  addu       $v1, $v1, $v0
.L8005C190:
/* 4C990 8005C190 0B004012 */  beqz       $s2, .L8005C1C0
/* 4C994 8005C194 21406001 */   addu      $t0, $t3, $zero
/* 4C998 8005C198 01000D24 */  addiu      $t5, $zero, 0x1
/* 4C99C 8005C19C 21480003 */  addu       $t1, $t8, $zero
/* 4C9A0 8005C1A0 21306301 */  addu       $a2, $t3, $v1
.L8005C1A4:
/* 4C9A4 8005C1A4 0000C290 */  lbu        $v0, 0x0($a2)
/* 4C9A8 8005C1A8 00000000 */  nop
/* 4C9AC 8005C1AC EBFF4D10 */  beq        $v0, $t5, .L8005C15C
/* 4C9B0 8005C1B0 01000825 */   addiu     $t0, $t0, 0x1
/* 4C9B4 8005C1B4 2A100901 */  slt        $v0, $t0, $t1
/* 4C9B8 8005C1B8 FAFF4014 */  bnez       $v0, .L8005C1A4
/* 4C9BC 8005C1BC 0100C624 */   addiu     $a2, $a2, 0x1
.L8005C1C0:
/* 4C9C0 8005C1C0 01008C25 */  addiu      $t4, $t4, 0x1
/* 4C9C4 8005C1C4 2A109001 */  slt        $v0, $t4, $s0
/* 4C9C8 8005C1C8 F1FF4014 */  bnez       $v0, .L8005C190
/* 4C9CC 8005C1CC 21186E00 */   addu      $v1, $v1, $t6
.L8005C1D0:
/* 4C9D0 8005C1D0 21100000 */  addu       $v0, $zero, $zero
.L8005C1D4:
/* 4C9D4 8005C1D4 12004010 */  beqz       $v0, .L8005C220
/* 4C9D8 8005C1D8 2118F302 */   addu      $v1, $s7, $s3
.L8005C1DC:
/* 4C9DC 8005C1DC 0100EF25 */  addiu      $t7, $t7, 0x1
/* 4C9E0 8005C1E0 21208700 */  addu       $a0, $a0, $a3
/* 4C9E4 8005C1E4 2800A38F */  lw         $v1, 0x28($sp)
/* 4C9E8 8005C1E8 01004A25 */  addiu      $t2, $t2, 0x1
/* 4C9EC 8005C1EC 2A104301 */  slt        $v0, $t2, $v1
/* 4C9F0 8005C1F0 95FF4014 */  bnez       $v0, .L8005C048
/* 4C9F4 8005C1F4 2128A700 */   addu      $a1, $a1, $a3
.L8005C1F8:
/* 4C9F8 8005C1F8 01003927 */  addiu      $t9, $t9, 0x1
/* 4C9FC 8005C1FC 01006B25 */  addiu      $t3, $t3, 0x1
/* 4CA00 8005C200 4000A48F */  lw         $a0, 0x40($sp)
/* 4CA04 8005C204 2400A58F */  lw         $a1, 0x24($sp)
/* 4CA08 8005C208 01008424 */  addiu      $a0, $a0, 0x1
/* 4CA0C 8005C20C 2A106501 */  slt        $v0, $t3, $a1
/* 4CA10 8005C210 71FF4014 */  bnez       $v0, .L8005BFD8
/* 4CA14 8005C214 4000A4AF */   sw        $a0, 0x40($sp)
.L8005C218:
/* 4CA18 8005C218 FB700108 */  j          .L8005C3EC
/* 4CA1C 8005C21C FFFF0224 */   addiu     $v0, $zero, -0x1
.L8005C220:
/* 4CA20 8005C220 2150E002 */  addu       $t2, $s7, $zero
/* 4CA24 8005C224 1C00A68F */  lw         $a2, 0x1C($sp)
/* 4CA28 8005C228 2A10E302 */  slt        $v0, $s7, $v1
/* 4CA2C 8005C22C 17004010 */  beqz       $v0, .L8005C28C
/* 4CA30 8005C230 80800600 */   sll       $s0, $a2, 2
/* 4CA34 8005C234 2128B602 */  addu       $a1, $s5, $s6
/* 4CA38 8005C238 2A40A502 */  slt        $t0, $s5, $a1
/* 4CA3C 8005C23C 21386000 */  addu       $a3, $v1, $zero
/* 4CA40 8005C240 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4CA44 8005C244 38974924 */  addiu      $t1, $v0, %lo(VRAMGrid)
/* 4CA48 8005C248 1817868F */  lw         $a2, %gp_rel(XCnt)($gp)
.L8005C24C:
/* 4CA4C 8005C24C 0B000011 */  beqz       $t0, .L8005C27C
/* 4CA50 8005C250 01004325 */   addiu     $v1, $t2, 0x1
/* 4CA54 8005C254 18004601 */  mult       $t2, $a2
/* 4CA58 8005C258 01000424 */  addiu      $a0, $zero, 0x1
/* 4CA5C 8005C25C 2358B500 */  subu       $t3, $a1, $s5
/* 4CA60 8005C260 12100000 */  mflo       $v0
/* 4CA64 8005C264 21104900 */  addu       $v0, $v0, $t1
/* 4CA68 8005C268 2110A202 */  addu       $v0, $s5, $v0
.L8005C26C:
/* 4CA6C 8005C26C 000044A0 */  sb         $a0, 0x0($v0)
/* 4CA70 8005C270 FFFF6B25 */  addiu      $t3, $t3, -0x1
/* 4CA74 8005C274 FDFF6015 */  bnez       $t3, .L8005C26C
/* 4CA78 8005C278 01004224 */   addiu     $v0, $v0, 0x1
.L8005C27C:
/* 4CA7C 8005C27C 21506000 */  addu       $t2, $v1, $zero
/* 4CA80 8005C280 2A104701 */  slt        $v0, $t2, $a3
/* 4CA84 8005C284 F1FF4014 */  bnez       $v0, .L8005C24C
/* 4CA88 8005C288 00000000 */   nop
.L8005C28C:
/* 4CA8C 8005C28C 2417838F */  lw         $v1, %gp_rel(CellW)($gp)
/* 4CA90 8005C290 00000000 */  nop
/* 4CA94 8005C294 1800A302 */  mult       $s5, $v1
/* 4CA98 8005C298 12180000 */  mflo       $v1
/* 4CA9C 8005C29C 2017858F */  lw         $a1, %gp_rel(CellH)($gp)
/* 4CAA0 8005C2A0 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4CAA4 8005C2A4 1800E502 */  mult       $s7, $a1
/* 4CAA8 8005C2A8 38AD4624 */  addiu      $a2, $v0, %lo(VRAMItems)
/* 4CAAC 8005C2AC 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4CAB0 8005C2B0 0200C724 */  addiu      $a3, $a2, 0x2
/* 4CAB4 8005C2B4 21200202 */  addu       $a0, $s0, $v0
/* 4CAB8 8005C2B8 80200400 */  sll        $a0, $a0, 2
/* 4CABC 8005C2BC 21408600 */  addu       $t0, $a0, $a2
/* 4CAC0 8005C2C0 08178297 */  lhu        $v0, %gp_rel(OrginX)($gp)
/* 4CAC4 8005C2C4 21388700 */  addu       $a3, $a0, $a3
/* 4CAC8 8005C2C8 21104300 */  addu       $v0, $v0, $v1
/* 4CACC 8005C2CC 000002A5 */  sh         $v0, 0x0($t0)
/* 4CAD0 8005C2D0 0C178297 */  lhu        $v0, %gp_rel(OrginY)($gp)
/* 4CAD4 8005C2D4 12280000 */  mflo       $a1
/* 4CAD8 8005C2D8 21104500 */  addu       $v0, $v0, $a1
/* 4CADC 8005C2DC 0000E2A4 */  sh         $v0, 0x0($a3)
/* 4CAE0 8005C2E0 1000A597 */  lhu        $a1, 0x10($sp)
/* 4CAE4 8005C2E4 2110C400 */  addu       $v0, $a2, $a0
/* 4CAE8 8005C2E8 040045A4 */  sh         $a1, 0x4($v0)
/* 4CAEC 8005C2EC 2000A58F */  lw         $a1, 0x20($sp)
/* 4CAF0 8005C2F0 21184000 */  addu       $v1, $v0, $zero
/* 4CAF4 8005C2F4 060065A4 */  sh         $a1, 0x6($v1)
/* 4CAF8 8005C2F8 7400A38F */  lw         $v1, 0x74($sp)
/* 4CAFC 8005C2FC 00000000 */  nop
/* 4CB00 8005C300 04006294 */  lhu        $v0, 0x4($v1)
/* 4CB04 8005C304 00000000 */  nop
/* 4CB08 8005C308 00140200 */  sll        $v0, $v0, 16
/* 4CB0C 8005C30C 031C0200 */  sra        $v1, $v0, 16
/* 4CB10 8005C310 C2170200 */  srl        $v0, $v0, 31
/* 4CB14 8005C314 21186200 */  addu       $v1, $v1, $v0
/* 4CB18 8005C318 43180300 */  sra        $v1, $v1, 1
/* 4CB1C 8005C31C 110003A1 */  sb         $v1, 0x11($t0)
/* 4CB20 8005C320 7400A28F */  lw         $v0, 0x74($sp)
/* 4CB24 8005C324 00000000 */  nop
/* 4CB28 8005C328 06004594 */  lhu        $a1, 0x6($v0)
/* 4CB2C 8005C32C 2130C400 */  addu       $a2, $a2, $a0
/* 4CB30 8005C330 1200C5A4 */  sh         $a1, 0x12($a2)
/* 4CB34 8005C334 00000291 */  lbu        $v0, 0x0($t0)
/* 4CB38 8005C338 00000000 */  nop
/* 4CB3C 8005C33C 3F004430 */  andi       $a0, $v0, 0x3F
/* 4CB40 8005C340 0E0004A1 */  sb         $a0, 0xE($t0)
/* 4CB44 8005C344 0000E290 */  lbu        $v0, 0x0($a3)
/* 4CB48 8005C348 00000000 */  nop
/* 4CB4C 8005C34C 0F0002A1 */  sb         $v0, 0xF($t0)
/* 4CB50 8005C350 1400A58F */  lw         $a1, 0x14($sp)
/* 4CB54 8005C354 01000324 */  addiu      $v1, $zero, 0x1
/* 4CB58 8005C358 0700A310 */  beq        $a1, $v1, .L8005C378
/* 4CB5C 8005C35C 0200A228 */   slti      $v0, $a1, 0x2
/* 4CB60 8005C360 08004010 */  beqz       $v0, .L8005C384
/* 4CB64 8005C364 0C80063C */   lui       $a2, %hi(VRAMItems)
/* 4CB68 8005C368 0700A014 */  bnez       $a1, .L8005C388
/* 4CB6C 8005C36C 38ADD124 */   addiu     $s1, $a2, %lo(VRAMItems)
/* 4CB70 8005C370 DF700108 */  j          .L8005C37C
/* 4CB74 8005C374 80100400 */   sll       $v0, $a0, 2
.L8005C378:
/* 4CB78 8005C378 40100400 */  sll        $v0, $a0, 1
.L8005C37C:
/* 4CB7C 8005C37C 0E0002A1 */  sb         $v0, 0xE($t0)
/* 4CB80 8005C380 0C80063C */  lui        $a2, %hi(VRAMItems)
.L8005C384:
/* 4CB84 8005C384 38ADD124 */  addiu      $s1, $a2, %lo(VRAMItems)
.L8005C388:
/* 4CB88 8005C388 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4CB8C 8005C38C 1400A48F */  lw         $a0, 0x14($sp)
/* 4CB90 8005C390 7800A58F */  lw         $a1, 0x78($sp)
/* 4CB94 8005C394 21800202 */  addu       $s0, $s0, $v0
/* 4CB98 8005C398 80801000 */  sll        $s0, $s0, 2
/* 4CB9C 8005C39C 21901102 */  addu       $s2, $s0, $s1
/* 4CBA0 8005C3A0 21103002 */  addu       $v0, $s1, $s0
/* 4CBA4 8005C3A4 00004696 */  lhu        $a2, 0x0($s2)
/* 4CBA8 8005C3A8 02004794 */  lhu        $a3, 0x2($v0)
/* 4CBAC 8005C3AC C0FFC630 */  andi       $a2, $a2, 0xFFC0
/* 4CBB0 8005C3B0 00340600 */  sll        $a2, $a2, 16
/* 4CBB4 8005C3B4 00FFE730 */  andi       $a3, $a3, 0xFF00
/* 4CBB8 8005C3B8 003C0700 */  sll        $a3, $a3, 16
/* 4CBBC 8005C3BC 03340600 */  sra        $a2, $a2, 16
/* 4CBC0 8005C3C0 93E6010C */  jal        GetTPage
/* 4CBC4 8005C3C4 033C0700 */   sra       $a3, $a3, 16
/* 4CBC8 8005C3C8 21883002 */  addu       $s1, $s1, $s0
/* 4CBCC 8005C3CC 080022A6 */  sh         $v0, 0x8($s1)
/* 4CBD0 8005C3D0 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4CBD4 8005C3D4 01000324 */  addiu      $v1, $zero, 0x1
/* 4CBD8 8005C3D8 100043A2 */  sb         $v1, 0x10($s2)
/* 4CBDC 8005C3DC 0A0055A2 */  sb         $s5, 0xA($s2)
/* 4CBE0 8005C3E0 0B0057A2 */  sb         $s7, 0xB($s2)
/* 4CBE4 8005C3E4 0C0056A2 */  sb         $s6, 0xC($s2)
/* 4CBE8 8005C3E8 0D0053A2 */  sb         $s3, 0xD($s2)
.L8005C3EC:
/* 4CBEC 8005C3EC 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 4CBF0 8005C3F0 6800BE8F */  lw         $fp, 0x68($sp)
/* 4CBF4 8005C3F4 6400B78F */  lw         $s7, 0x64($sp)
/* 4CBF8 8005C3F8 6000B68F */  lw         $s6, 0x60($sp)
/* 4CBFC 8005C3FC 5C00B58F */  lw         $s5, 0x5C($sp)
/* 4CC00 8005C400 5800B48F */  lw         $s4, 0x58($sp)
/* 4CC04 8005C404 5400B38F */  lw         $s3, 0x54($sp)
/* 4CC08 8005C408 5000B28F */  lw         $s2, 0x50($sp)
/* 4CC0C 8005C40C 4C00B18F */  lw         $s1, 0x4C($sp)
/* 4CC10 8005C410 4800B08F */  lw         $s0, 0x48($sp)
/* 4CC14 8005C414 0800E003 */  jr         $ra
/* 4CC18 8005C418 7000BD27 */   addiu     $sp, $sp, 0x70
.size AllocVRAMTPageAlign, . - AllocVRAMTPageAlign
