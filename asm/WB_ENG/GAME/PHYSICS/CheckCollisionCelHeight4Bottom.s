.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionCelHeight4Bottom
/* 2CE84 8003C684 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 2CE88 8003C688 2000B0AF */  sw         $s0, 0x20($sp)
/* 2CE8C 8003C68C 5800B08F */  lw         $s0, 0x58($sp)
/* 2CE90 8003C690 3400B5AF */  sw         $s5, 0x34($sp)
/* 2CE94 8003C694 5C00B58F */  lw         $s5, 0x5C($sp)
/* 2CE98 8003C698 3000B4AF */  sw         $s4, 0x30($sp)
/* 2CE9C 8003C69C 4C00A5AF */  sw         $a1, 0x4C($sp)
/* 2CEA0 8003C6A0 21A0A000 */  addu       $s4, $a1, $zero
/* 2CEA4 8003C6A4 5400A7AF */  sw         $a3, 0x54($sp)
/* 2CEA8 8003C6A8 9C148727 */  addiu      $a3, $gp, %gp_rel(yheight1)
/* 2CEAC 8003C6AC 3800B6AF */  sw         $s6, 0x38($sp)
/* 2CEB0 8003C6B0 21B08000 */  addu       $s6, $a0, $zero
/* 2CEB4 8003C6B4 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 2CEB8 8003C6B8 21B8C000 */  addu       $s7, $a2, $zero
/* 2CEBC 8003C6BC 4400BFAF */  sw         $ra, 0x44($sp)
/* 2CEC0 8003C6C0 4000BEAF */  sw         $fp, 0x40($sp)
/* 2CEC4 8003C6C4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 2CEC8 8003C6C8 2800B2AF */  sw         $s2, 0x28($sp)
/* 2CECC 8003C6CC 2400B1AF */  sw         $s1, 0x24($sp)
/* 2CED0 8003C6D0 2398D002 */  subu       $s3, $s6, $s0
/* 2CED4 8003C6D4 21206002 */  addu       $a0, $s3, $zero
/* 2CED8 8003C6D8 2390F002 */  subu       $s2, $s7, $s0
/* 2CEDC 8003C6DC 27F0000C */  jal        CheckCollisionCelHeight
/* 2CEE0 8003C6E0 21304002 */   addu      $a2, $s2, $zero
/* 2CEE4 8003C6E4 2188D002 */  addu       $s1, $s6, $s0
/* 2CEE8 8003C6E8 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 2CEEC 8003C6EC 21202002 */  addu       $a0, $s1, $zero
/* 2CEF0 8003C6F0 21288002 */  addu       $a1, $s4, $zero
/* 2CEF4 8003C6F4 21304002 */  addu       $a2, $s2, $zero
/* 2CEF8 8003C6F8 A0148727 */  addiu      $a3, $gp, %gp_rel(yheight2)
/* 2CEFC 8003C6FC 27F0000C */  jal        CheckCollisionCelHeight
/* 2CF00 8003C700 1000A2AF */   sw        $v0, 0x10($sp)
/* 2CF04 8003C704 21206002 */  addu       $a0, $s3, $zero
/* 2CF08 8003C708 21288002 */  addu       $a1, $s4, $zero
/* 2CF0C 8003C70C 2180F002 */  addu       $s0, $s7, $s0
/* 2CF10 8003C710 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 2CF14 8003C714 21300002 */  addu       $a2, $s0, $zero
/* 2CF18 8003C718 A4148727 */  addiu      $a3, $gp, %gp_rel(yheight3)
/* 2CF1C 8003C71C 27F0000C */  jal        CheckCollisionCelHeight
/* 2CF20 8003C720 1400A2AF */   sw        $v0, 0x14($sp)
/* 2CF24 8003C724 21F04000 */  addu       $fp, $v0, $zero
/* 2CF28 8003C728 21202002 */  addu       $a0, $s1, $zero
/* 2CF2C 8003C72C 21288002 */  addu       $a1, $s4, $zero
/* 2CF30 8003C730 A8148727 */  addiu      $a3, $gp, %gp_rel(yheight4)
/* 2CF34 8003C734 27F0000C */  jal        CheckCollisionCelHeight
/* 2CF38 8003C738 21300002 */   addu      $a2, $s0, $zero
/* 2CF3C 8003C73C 2120C002 */  addu       $a0, $s6, $zero
/* 2CF40 8003C740 21288002 */  addu       $a1, $s4, $zero
/* 2CF44 8003C744 2130E002 */  addu       $a2, $s7, $zero
/* 2CF48 8003C748 AC148727 */  addiu      $a3, $gp, %gp_rel(yheight5)
/* 2CF4C 8003C74C 27F0000C */  jal        CheckCollisionCelHeight
/* 2CF50 8003C750 1800A2AF */   sw        $v0, 0x18($sp)
/* 2CF54 8003C754 2120A002 */  addu       $a0, $s5, $zero
/* 2CF58 8003C758 21308002 */  addu       $a2, $s4, $zero
/* 2CF5C 8003C75C 8400A38E */  lw         $v1, 0x84($s5)
/* 2CF60 8003C760 0100C726 */  addiu      $a3, $s6, 0x1
/* 2CF64 8003C764 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 2CF68 8003C768 C22F0300 */  srl        $a1, $v1, 31
/* 2CF6C 8003C76C 21186500 */  addu       $v1, $v1, $a1
/* 2CF70 8003C770 43800300 */  sra        $s0, $v1, 1
/* 2CF74 8003C774 2398F000 */  subu       $s3, $a3, $s0
/* 2CF78 8003C778 21286002 */  addu       $a1, $s3, $zero
/* 2CF7C 8003C77C 0100E326 */  addiu      $v1, $s7, 0x1
/* 2CF80 8003C780 23907000 */  subu       $s2, $v1, $s0
/* 2CF84 8003C784 7BF0000C */  jal        CheckDoor
/* 2CF88 8003C788 21384002 */   addu      $a3, $s2, $zero
/* 2CF8C 8003C78C E9004014 */  bnez       $v0, .L8003CB34
/* 2CF90 8003C790 21100000 */   addu      $v0, $zero, $zero
/* 2CF94 8003C794 2120A002 */  addu       $a0, $s5, $zero
/* 2CF98 8003C798 FFFFC226 */  addiu      $v0, $s6, -0x1
/* 2CF9C 8003C79C 21885000 */  addu       $s1, $v0, $s0
/* 2CFA0 8003C7A0 21282002 */  addu       $a1, $s1, $zero
/* 2CFA4 8003C7A4 21308002 */  addu       $a2, $s4, $zero
/* 2CFA8 8003C7A8 7BF0000C */  jal        CheckDoor
/* 2CFAC 8003C7AC 21384002 */   addu      $a3, $s2, $zero
/* 2CFB0 8003C7B0 E0004014 */  bnez       $v0, .L8003CB34
/* 2CFB4 8003C7B4 21100000 */   addu      $v0, $zero, $zero
/* 2CFB8 8003C7B8 2120A002 */  addu       $a0, $s5, $zero
/* 2CFBC 8003C7BC 21286002 */  addu       $a1, $s3, $zero
/* 2CFC0 8003C7C0 21308002 */  addu       $a2, $s4, $zero
/* 2CFC4 8003C7C4 FFFFE226 */  addiu      $v0, $s7, -0x1
/* 2CFC8 8003C7C8 21805000 */  addu       $s0, $v0, $s0
/* 2CFCC 8003C7CC 7BF0000C */  jal        CheckDoor
/* 2CFD0 8003C7D0 21380002 */   addu      $a3, $s0, $zero
/* 2CFD4 8003C7D4 D7004014 */  bnez       $v0, .L8003CB34
/* 2CFD8 8003C7D8 21100000 */   addu      $v0, $zero, $zero
/* 2CFDC 8003C7DC 2120A002 */  addu       $a0, $s5, $zero
/* 2CFE0 8003C7E0 21282002 */  addu       $a1, $s1, $zero
/* 2CFE4 8003C7E4 21308002 */  addu       $a2, $s4, $zero
/* 2CFE8 8003C7E8 7BF0000C */  jal        CheckDoor
/* 2CFEC 8003C7EC 21380002 */   addu      $a3, $s0, $zero
/* 2CFF0 8003C7F0 D0004014 */  bnez       $v0, .L8003CB34
/* 2CFF4 8003C7F4 21100000 */   addu      $v0, $zero, $zero
/* 2CFF8 8003C7F8 1C00A38F */  lw         $v1, 0x1C($sp)
/* 2CFFC 8003C7FC FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D000 8003C800 FF036530 */  andi       $a1, $v1, 0x3FF
/* 2D004 8003C804 0700A210 */  beq        $a1, $v0, .L8003C824
/* 2D008 8003C808 80100500 */   sll       $v0, $a1, 2
/* 2D00C 8003C80C 21104500 */  addu       $v0, $v0, $a1
/* 2D010 8003C810 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D014 8003C814 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D018 8003C818 C0100200 */  sll        $v0, $v0, 3
/* 2D01C 8003C81C 0AF20008 */  j          .L8003C828
/* 2D020 8003C820 21186200 */   addu      $v1, $v1, $v0
.L8003C824:
/* 2D024 8003C824 21180000 */  addu       $v1, $zero, $zero
.L8003C828:
/* 2D028 8003C828 0800628C */  lw         $v0, 0x8($v1)
/* 2D02C 8003C82C 0006033C */  lui        $v1, (0x6000000 >> 16)
/* 2D030 8003C830 24104300 */  and        $v0, $v0, $v1
/* 2D034 8003C834 07004010 */  beqz       $v0, .L8003C854
/* 2D038 8003C838 0100143C */   lui       $s4, (0x10000 >> 16)
/* 2D03C 8003C83C 8000A28E */  lw         $v0, 0x80($s5)
/* 2D040 8003C840 00000000 */  nop
/* 2D044 8003C844 02004230 */  andi       $v0, $v0, 0x2
/* 2D048 8003C848 BA004014 */  bnez       $v0, .L8003CB34
/* 2D04C 8003C84C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2D050 8003C850 0100143C */  lui        $s4, (0x10000 >> 16)
.L8003C854:
/* 2D054 8003C854 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D058 8003C858 9C148A8F */  lw         $t2, %gp_rel(yheight1)($gp)
/* 2D05C 8003C85C A0148B8F */  lw         $t3, %gp_rel(yheight2)($gp)
/* 2D060 8003C860 A4148C8F */  lw         $t4, %gp_rel(yheight3)($gp)
/* 2D064 8003C864 A8148D8F */  lw         $t5, %gp_rel(yheight4)($gp)
/* 2D068 8003C868 AC14838F */  lw         $v1, %gp_rel(yheight5)($gp)
/* 2D06C 8003C86C 1A00A210 */  beq        $a1, $v0, .L8003C8D8
/* 2D070 8003C870 FFFF0924 */   addiu     $t1, $zero, -0x1
/* 2D074 8003C874 21A06000 */  addu       $s4, $v1, $zero
/* 2D078 8003C878 80100500 */  sll        $v0, $a1, 2
/* 2D07C 8003C87C 21104500 */  addu       $v0, $v0, $a1
/* 2D080 8003C880 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* 2D084 8003C884 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* 2D088 8003C888 C0100200 */  sll        $v0, $v0, 3
/* 2D08C 8003C88C 21104400 */  addu       $v0, $v0, $a0
/* 2D090 8003C890 0800438C */  lw         $v1, 0x8($v0)
/* 2D094 8003C894 1C00A98F */  lw         $t1, 0x1C($sp)
/* 2D098 8003C898 00016330 */  andi       $v1, $v1, 0x100
/* 2D09C 8003C89C A2006010 */  beqz       $v1, .L8003CB28
/* 2D0A0 8003C8A0 00000000 */   nop
/* 2D0A4 8003C8A4 A80B848F */  lw         $a0, %gp_rel(ACTUALCURRENTY)($gp)
/* 2D0A8 8003C8A8 4C00A28F */  lw         $v0, 0x4C($sp)
/* 2D0AC 8003C8AC 00000000 */  nop
/* 2D0B0 8003C8B0 80FF4524 */  addiu      $a1, $v0, -0x80
/* 2D0B4 8003C8B4 C3110500 */  sra        $v0, $a1, 7
/* 2D0B8 8003C8B8 80FF0224 */  addiu      $v0, $zero, -0x80
/* 2D0BC 8003C8BC 2410A200 */  and        $v0, $a1, $v0
/* 2D0C0 8003C8C0 21108202 */  addu       $v0, $s4, $v0
/* 2D0C4 8003C8C4 2A108200 */  slt        $v0, $a0, $v0
/* 2D0C8 8003C8C8 97004010 */  beqz       $v0, .L8003CB28
/* 2D0CC 8003C8CC C3190400 */   sra       $v1, $a0, 7
.L8003C8D0:
/* 2D0D0 8003C8D0 CDF20008 */  j          .L8003CB34
/* 2D0D4 8003C8D4 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8003C8D8:
/* 2D0D8 8003C8D8 8000A28E */  lw         $v0, 0x80($s5)
/* 2D0DC 8003C8DC 00000000 */  nop
/* 2D0E0 8003C8E0 01004330 */  andi       $v1, $v0, 0x1
/* 2D0E4 8003C8E4 FAFF6014 */  bnez       $v1, .L8003C8D0
/* 2D0E8 8003C8E8 21204000 */   addu      $a0, $v0, $zero
/* 2D0EC 8003C8EC 1000A28F */  lw         $v0, 0x10($sp)
/* 2D0F0 8003C8F0 00000000 */  nop
/* 2D0F4 8003C8F4 FF034330 */  andi       $v1, $v0, 0x3FF
/* 2D0F8 8003C8F8 07006510 */  beq        $v1, $a1, .L8003C918
/* 2D0FC 8003C8FC 80100300 */   sll       $v0, $v1, 2
/* 2D100 8003C900 21104300 */  addu       $v0, $v0, $v1
/* 2D104 8003C904 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D108 8003C908 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D10C 8003C90C C0100200 */  sll        $v0, $v0, 3
/* 2D110 8003C910 47F20008 */  j          .L8003C91C
/* 2D114 8003C914 21406200 */   addu      $t0, $v1, $v0
.L8003C918:
/* 2D118 8003C918 21400000 */  addu       $t0, $zero, $zero
.L8003C91C:
/* 2D11C 8003C91C 1400A28F */  lw         $v0, 0x14($sp)
/* 2D120 8003C920 00000000 */  nop
/* 2D124 8003C924 FF034330 */  andi       $v1, $v0, 0x3FF
/* 2D128 8003C928 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D12C 8003C92C 07006210 */  beq        $v1, $v0, .L8003C94C
/* 2D130 8003C930 80100300 */   sll       $v0, $v1, 2
/* 2D134 8003C934 21104300 */  addu       $v0, $v0, $v1
/* 2D138 8003C938 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D13C 8003C93C 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D140 8003C940 C0100200 */  sll        $v0, $v0, 3
/* 2D144 8003C944 54F20008 */  j          .L8003C950
/* 2D148 8003C948 21386200 */   addu      $a3, $v1, $v0
.L8003C94C:
/* 2D14C 8003C94C 21380000 */  addu       $a3, $zero, $zero
.L8003C950:
/* 2D150 8003C950 FF03C333 */  andi       $v1, $fp, 0x3FF
/* 2D154 8003C954 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D158 8003C958 07006210 */  beq        $v1, $v0, .L8003C978
/* 2D15C 8003C95C 80100300 */   sll       $v0, $v1, 2
/* 2D160 8003C960 21104300 */  addu       $v0, $v0, $v1
/* 2D164 8003C964 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D168 8003C968 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D16C 8003C96C C0100200 */  sll        $v0, $v0, 3
/* 2D170 8003C970 5FF20008 */  j          .L8003C97C
/* 2D174 8003C974 21306200 */   addu      $a2, $v1, $v0
.L8003C978:
/* 2D178 8003C978 21300000 */  addu       $a2, $zero, $zero
.L8003C97C:
/* 2D17C 8003C97C 1800A28F */  lw         $v0, 0x18($sp)
/* 2D180 8003C980 00000000 */  nop
/* 2D184 8003C984 FF034330 */  andi       $v1, $v0, 0x3FF
/* 2D188 8003C988 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D18C 8003C98C 07006210 */  beq        $v1, $v0, .L8003C9AC
/* 2D190 8003C990 80100300 */   sll       $v0, $v1, 2
/* 2D194 8003C994 21104300 */  addu       $v0, $v0, $v1
/* 2D198 8003C998 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D19C 8003C99C 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D1A0 8003C9A0 C0100200 */  sll        $v0, $v0, 3
/* 2D1A4 8003C9A4 6CF20008 */  j          .L8003C9B0
/* 2D1A8 8003C9A8 21286200 */   addu      $a1, $v1, $v0
.L8003C9AC:
/* 2D1AC 8003C9AC 21280000 */  addu       $a1, $zero, $zero
.L8003C9B0:
/* 2D1B0 8003C9B0 0800028D */  lw         $v0, 0x8($t0)
/* 2D1B4 8003C9B4 0006033C */  lui        $v1, (0x6000000 >> 16)
/* 2D1B8 8003C9B8 24104300 */  and        $v0, $v0, $v1
/* 2D1BC 8003C9BC 05004010 */  beqz       $v0, .L8003C9D4
/* 2D1C0 8003C9C0 02008230 */   andi      $v0, $a0, 0x2
/* 2D1C4 8003C9C4 03004010 */  beqz       $v0, .L8003C9D4
/* 2D1C8 8003C9C8 FF030324 */   addiu     $v1, $zero, 0x3FF
/* 2D1CC 8003C9CC 21400000 */  addu       $t0, $zero, $zero
/* 2D1D0 8003C9D0 1000A3AF */  sw         $v1, 0x10($sp)
.L8003C9D4:
/* 2D1D4 8003C9D4 0800E28C */  lw         $v0, 0x8($a3)
/* 2D1D8 8003C9D8 0006033C */  lui        $v1, (0x6000000 >> 16)
/* 2D1DC 8003C9DC 24104300 */  and        $v0, $v0, $v1
/* 2D1E0 8003C9E0 05004010 */  beqz       $v0, .L8003C9F8
/* 2D1E4 8003C9E4 02008230 */   andi      $v0, $a0, 0x2
/* 2D1E8 8003C9E8 03004010 */  beqz       $v0, .L8003C9F8
/* 2D1EC 8003C9EC FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2D1F0 8003C9F0 21380000 */  addu       $a3, $zero, $zero
/* 2D1F4 8003C9F4 1400A2AF */  sw         $v0, 0x14($sp)
.L8003C9F8:
/* 2D1F8 8003C9F8 0800C28C */  lw         $v0, 0x8($a2)
/* 2D1FC 8003C9FC 0006033C */  lui        $v1, (0x6000000 >> 16)
/* 2D200 8003CA00 24104300 */  and        $v0, $v0, $v1
/* 2D204 8003CA04 05004010 */  beqz       $v0, .L8003CA1C
/* 2D208 8003CA08 02008230 */   andi      $v0, $a0, 0x2
/* 2D20C 8003CA0C 03004010 */  beqz       $v0, .L8003CA1C
/* 2D210 8003CA10 00000000 */   nop
/* 2D214 8003CA14 21300000 */  addu       $a2, $zero, $zero
/* 2D218 8003CA18 FF031E24 */  addiu      $fp, $zero, 0x3FF
.L8003CA1C:
/* 2D21C 8003CA1C 0800A28C */  lw         $v0, 0x8($a1)
/* 2D220 8003CA20 0006033C */  lui        $v1, (0x6000000 >> 16)
/* 2D224 8003CA24 24104300 */  and        $v0, $v0, $v1
/* 2D228 8003CA28 05004010 */  beqz       $v0, .L8003CA40
/* 2D22C 8003CA2C 02008230 */   andi      $v0, $a0, 0x2
/* 2D230 8003CA30 03004010 */  beqz       $v0, .L8003CA40
/* 2D234 8003CA34 FF030324 */   addiu     $v1, $zero, 0x3FF
/* 2D238 8003CA38 21280000 */  addu       $a1, $zero, $zero
/* 2D23C 8003CA3C 1800A3AF */  sw         $v1, 0x18($sp)
.L8003CA40:
/* 2D240 8003CA40 0800028D */  lw         $v0, 0x8($t0)
/* 2D244 8003CA44 00000000 */  nop
/* 2D248 8003CA48 00014230 */  andi       $v0, $v0, 0x100
/* 2D24C 8003CA4C 36004014 */  bnez       $v0, .L8003CB28
/* 2D250 8003CA50 00000000 */   nop
/* 2D254 8003CA54 0800E28C */  lw         $v0, 0x8($a3)
/* 2D258 8003CA58 00000000 */  nop
/* 2D25C 8003CA5C 00014230 */  andi       $v0, $v0, 0x100
/* 2D260 8003CA60 31004014 */  bnez       $v0, .L8003CB28
/* 2D264 8003CA64 00000000 */   nop
/* 2D268 8003CA68 0800C28C */  lw         $v0, 0x8($a2)
/* 2D26C 8003CA6C 00000000 */  nop
/* 2D270 8003CA70 00014230 */  andi       $v0, $v0, 0x100
/* 2D274 8003CA74 2C004014 */  bnez       $v0, .L8003CB28
/* 2D278 8003CA78 00000000 */   nop
/* 2D27C 8003CA7C 0800A28C */  lw         $v0, 0x8($a1)
/* 2D280 8003CA80 00000000 */  nop
/* 2D284 8003CA84 00014230 */  andi       $v0, $v0, 0x100
/* 2D288 8003CA88 27004014 */  bnez       $v0, .L8003CB28
/* 2D28C 8003CA8C 00000000 */   nop
/* 2D290 8003CA90 1000A28F */  lw         $v0, 0x10($sp)
/* 2D294 8003CA94 00000000 */  nop
/* 2D298 8003CA98 FF034330 */  andi       $v1, $v0, 0x3FF
/* 2D29C 8003CA9C FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D2A0 8003CAA0 05006210 */  beq        $v1, $v0, .L8003CAB8
/* 2D2A4 8003CAA4 2A108A02 */   slt       $v0, $s4, $t2
/* 2D2A8 8003CAA8 03004014 */  bnez       $v0, .L8003CAB8
/* 2D2AC 8003CAAC 00000000 */   nop
/* 2D2B0 8003CAB0 21A04001 */  addu       $s4, $t2, $zero
/* 2D2B4 8003CAB4 1000A98F */  lw         $t1, 0x10($sp)
.L8003CAB8:
/* 2D2B8 8003CAB8 1400A28F */  lw         $v0, 0x14($sp)
/* 2D2BC 8003CABC 00000000 */  nop
/* 2D2C0 8003CAC0 FF034330 */  andi       $v1, $v0, 0x3FF
/* 2D2C4 8003CAC4 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D2C8 8003CAC8 05006210 */  beq        $v1, $v0, .L8003CAE0
/* 2D2CC 8003CACC 2A108B02 */   slt       $v0, $s4, $t3
/* 2D2D0 8003CAD0 04004014 */  bnez       $v0, .L8003CAE4
/* 2D2D4 8003CAD4 FF03C333 */   andi      $v1, $fp, 0x3FF
/* 2D2D8 8003CAD8 21A06001 */  addu       $s4, $t3, $zero
/* 2D2DC 8003CADC 1400A98F */  lw         $t1, 0x14($sp)
.L8003CAE0:
/* 2D2E0 8003CAE0 FF03C333 */  andi       $v1, $fp, 0x3FF
.L8003CAE4:
/* 2D2E4 8003CAE4 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D2E8 8003CAE8 05006210 */  beq        $v1, $v0, .L8003CB00
/* 2D2EC 8003CAEC 2A108C02 */   slt       $v0, $s4, $t4
/* 2D2F0 8003CAF0 03004014 */  bnez       $v0, .L8003CB00
/* 2D2F4 8003CAF4 00000000 */   nop
/* 2D2F8 8003CAF8 21A08001 */  addu       $s4, $t4, $zero
/* 2D2FC 8003CAFC 2148C003 */  addu       $t1, $fp, $zero
.L8003CB00:
/* 2D300 8003CB00 1800A28F */  lw         $v0, 0x18($sp)
/* 2D304 8003CB04 00000000 */  nop
/* 2D308 8003CB08 FF034330 */  andi       $v1, $v0, 0x3FF
/* 2D30C 8003CB0C FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D310 8003CB10 05006210 */  beq        $v1, $v0, .L8003CB28
/* 2D314 8003CB14 2A108D02 */   slt       $v0, $s4, $t5
/* 2D318 8003CB18 03004014 */  bnez       $v0, .L8003CB28
/* 2D31C 8003CB1C 00000000 */   nop
/* 2D320 8003CB20 21A0A001 */  addu       $s4, $t5, $zero
/* 2D324 8003CB24 1800A98F */  lw         $t1, 0x18($sp)
.L8003CB28:
/* 2D328 8003CB28 5400A38F */  lw         $v1, 0x54($sp)
/* 2D32C 8003CB2C 21102001 */  addu       $v0, $t1, $zero
/* 2D330 8003CB30 000074AC */  sw         $s4, 0x0($v1)
.L8003CB34:
/* 2D334 8003CB34 4400BF8F */  lw         $ra, 0x44($sp)
/* 2D338 8003CB38 4000BE8F */  lw         $fp, 0x40($sp)
/* 2D33C 8003CB3C 3C00B78F */  lw         $s7, 0x3C($sp)
/* 2D340 8003CB40 3800B68F */  lw         $s6, 0x38($sp)
/* 2D344 8003CB44 3400B58F */  lw         $s5, 0x34($sp)
/* 2D348 8003CB48 3000B48F */  lw         $s4, 0x30($sp)
/* 2D34C 8003CB4C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 2D350 8003CB50 2800B28F */  lw         $s2, 0x28($sp)
/* 2D354 8003CB54 2400B18F */  lw         $s1, 0x24($sp)
/* 2D358 8003CB58 2000B08F */  lw         $s0, 0x20($sp)
/* 2D35C 8003CB5C 0800E003 */  jr         $ra
/* 2D360 8003CB60 4800BD27 */   addiu     $sp, $sp, 0x48
.size CheckCollisionCelHeight4Bottom, . - CheckCollisionCelHeight4Bottom
