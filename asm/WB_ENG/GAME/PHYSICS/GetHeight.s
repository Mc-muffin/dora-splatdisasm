.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHeight
/* 2C734 8003BF34 0880023C */  lui        $v0, %hi(TestWorld)
/* 2C738 8003BF38 8C65488C */  lw         $t0, %lo(TestWorld)($v0)
/* 2C73C 8003BF3C C3190600 */  sra        $v1, $a2, 7
/* 2C740 8003BF40 18006800 */  mult       $v1, $t0
/* 2C744 8003BF44 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 2C748 8003BF48 12180000 */  mflo       $v1
/* 2C74C 8003BF4C 04004B8C */  lw         $t3, 0x4($v0)
/* 2C750 8003BF50 00000000 */  nop
/* 2C754 8003BF54 18006B00 */  mult       $v1, $t3
/* 2C758 8003BF58 1400478C */  lw         $a3, 0x14($v0)
/* 2C75C 8003BF5C C3110400 */  sra        $v0, $a0, 7
/* 2C760 8003BF60 12180000 */  mflo       $v1
/* 2C764 8003BF64 21104300 */  addu       $v0, $v0, $v1
/* 2C768 8003BF68 40100200 */  sll        $v0, $v0, 1
/* 2C76C 8003BF6C 0200A104 */  bgez       $a1, .L8003BF78
/* 2C770 8003BF70 2138E200 */   addu      $a3, $a3, $v0
/* 2C774 8003BF74 21280000 */  addu       $a1, $zero, $zero
.L8003BF78:
/* 2C778 8003BF78 C3290500 */  sra        $a1, $a1, 7
/* 2C77C 8003BF7C 2A10AB00 */  slt        $v0, $a1, $t3
/* 2C780 8003BF80 44004010 */  beqz       $v0, .L8003C094
/* 2C784 8003BF84 40180500 */   sll       $v1, $a1, 1
/* 2C788 8003BF88 18006800 */  mult       $v1, $t0
/* 2C78C 8003BF8C 7F008A30 */  andi       $t2, $a0, 0x7F
/* 2C790 8003BF90 7F00CC30 */  andi       $t4, $a2, 0x7F
/* 2C794 8003BF94 C0110500 */  sll        $v0, $a1, 7
/* 2C798 8003BF98 80FF4924 */  addiu      $t1, $v0, -0x80
/* 2C79C 8003BF9C 40400800 */  sll        $t0, $t0, 1
/* 2C7A0 8003BFA0 12180000 */  mflo       $v1
/* 2C7A4 8003BFA4 21386700 */  addu       $a3, $v1, $a3
.L8003BFA8:
/* 2C7A8 8003BFA8 0000E284 */  lh         $v0, 0x0($a3)
/* 2C7AC 8003BFAC FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2C7B0 8003BFB0 FF034430 */  andi       $a0, $v0, 0x3FF
/* 2C7B4 8003BFB4 32008310 */  beq        $a0, $v1, .L8003C080
/* 2C7B8 8003BFB8 80100400 */   sll       $v0, $a0, 2
/* 2C7BC 8003BFBC 21104400 */  addu       $v0, $v0, $a0
/* 2C7C0 8003BFC0 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2C7C4 8003BFC4 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2C7C8 8003BFC8 C0100200 */  sll        $v0, $v0, 3
/* 2C7CC 8003BFCC 21306200 */  addu       $a2, $v1, $v0
/* 2C7D0 8003BFD0 0800C38C */  lw         $v1, 0x8($a2)
/* 2C7D4 8003BFD4 1000023C */  lui        $v0, (0x100000 >> 16)
/* 2C7D8 8003BFD8 24106200 */  and        $v0, $v1, $v0
/* 2C7DC 8003BFDC 28004014 */  bnez       $v0, .L8003C080
/* 2C7E0 8003BFE0 00016230 */   andi      $v0, $v1, 0x100
/* 2C7E4 8003BFE4 09004014 */  bnez       $v0, .L8003C00C
/* 2C7E8 8003BFE8 00000000 */   nop
/* 2C7EC 8003BFEC 1400C28C */  lw         $v0, 0x14($a2)
/* 2C7F0 8003BFF0 00000000 */  nop
/* 2C7F4 8003BFF4 05004014 */  bnez       $v0, .L8003C00C
/* 2C7F8 8003BFF8 00000000 */   nop
/* 2C7FC 8003BFFC 1800C28C */  lw         $v0, 0x18($a2)
/* 2C800 8003C000 00000000 */  nop
/* 2C804 8003C004 1B004010 */  beqz       $v0, .L8003C074
/* 2C808 8003C008 00000000 */   nop
.L8003C00C:
/* 2C80C 8003C00C 1800C584 */  lh         $a1, 0x18($a2)
/* 2C810 8003C010 1A00C384 */  lh         $v1, 0x1A($a2)
/* 2C814 8003C014 00000000 */  nop
/* 2C818 8003C018 23186500 */  subu       $v1, $v1, $a1
/* 2C81C 8003C01C 18006A00 */  mult       $v1, $t2
/* 2C820 8003C020 1400C484 */  lh         $a0, 0x14($a2)
/* 2C824 8003C024 1600C284 */  lh         $v0, 0x16($a2)
/* 2C828 8003C028 12180000 */  mflo       $v1
/* 2C82C 8003C02C 23104400 */  subu       $v0, $v0, $a0
/* 2C830 8003C030 00000000 */  nop
/* 2C834 8003C034 18004A00 */  mult       $v0, $t2
/* 2C838 8003C038 C3190300 */  sra        $v1, $v1, 7
/* 2C83C 8003C03C 2128A300 */  addu       $a1, $a1, $v1
/* 2C840 8003C040 12100000 */  mflo       $v0
/* 2C844 8003C044 C3110200 */  sra        $v0, $v0, 7
/* 2C848 8003C048 21208200 */  addu       $a0, $a0, $v0
/* 2C84C 8003C04C 23208500 */  subu       $a0, $a0, $a1
/* 2C850 8003C050 18008C00 */  mult       $a0, $t4
/* 2C854 8003C054 0800C28C */  lw         $v0, 0x8($a2)
/* 2C858 8003C058 00000000 */  nop
/* 2C85C 8003C05C 00014234 */  ori        $v0, $v0, 0x100
/* 2C860 8003C060 0800C2AC */  sw         $v0, 0x8($a2)
/* 2C864 8003C064 12200000 */  mflo       $a0
/* 2C868 8003C068 C3210400 */  sra        $a0, $a0, 7
/* 2C86C 8003C06C 1EF00008 */  j          .L8003C078
/* 2C870 8003C070 2110A400 */   addu      $v0, $a1, $a0
.L8003C074:
/* 2C874 8003C074 1400C284 */  lh         $v0, 0x14($a2)
.L8003C078:
/* 2C878 8003C078 0800E003 */  jr         $ra
/* 2C87C 8003C07C 21102201 */   addu      $v0, $t1, $v0
.L8003C080:
/* 2C880 8003C080 80002925 */  addiu      $t1, $t1, 0x80
/* 2C884 8003C084 0100A524 */  addiu      $a1, $a1, 0x1
/* 2C888 8003C088 2A10AB00 */  slt        $v0, $a1, $t3
/* 2C88C 8003C08C C6FF4014 */  bnez       $v0, .L8003BFA8
/* 2C890 8003C090 2138E800 */   addu      $a3, $a3, $t0
.L8003C094:
/* 2C894 8003C094 0800E003 */  jr         $ra
/* 2C898 8003C098 C0110500 */   sll       $v0, $a1, 7
.size GetHeight, . - GetHeight
