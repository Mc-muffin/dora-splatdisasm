.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckSpawnPickups
/* C718 8001BF18 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* C71C 8001BF1C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* C720 8001BF20 21880000 */  addu       $s1, $zero, $zero
/* C724 8001BF24 2000B2AF */  sw         $s2, 0x20($sp)
/* C728 8001BF28 3813928F */  lw         $s2, %gp_rel(MapPickupList)($gp)
/* C72C 8001BF2C 50030224 */  addiu      $v0, $zero, 0x350
/* C730 8001BF30 480282AF */  sw         $v0, %gp_rel(P1)($gp)
/* C734 8001BF34 3C13828F */  lw         $v0, %gp_rel(NumPickupList)($gp)
/* C738 8001BF38 A0040324 */  addiu      $v1, $zero, 0x4A0
/* C73C 8001BF3C 3400B7AF */  sw         $s7, 0x34($sp)
/* C740 8001BF40 21B88000 */  addu       $s7, $a0, $zero
/* C744 8001BF44 3000B6AF */  sw         $s6, 0x30($sp)
/* C748 8001BF48 3C00BFAF */  sw         $ra, 0x3C($sp)
/* C74C 8001BF4C 3800BEAF */  sw         $fp, 0x38($sp)
/* C750 8001BF50 2C00B5AF */  sw         $s5, 0x2C($sp)
/* C754 8001BF54 2800B4AF */  sw         $s4, 0x28($sp)
/* C758 8001BF58 2400B3AF */  sw         $s3, 0x24($sp)
/* C75C 8001BF5C 1800B0AF */  sw         $s0, 0x18($sp)
/* C760 8001BF60 4C0283AF */  sw         $v1, %gp_rel(P2)($gp)
/* C764 8001BF64 74004018 */  blez       $v0, .L8001C138
/* C768 8001BF68 21B0C000 */   addu      $s6, $a2, $zero
/* C76C 8001BF6C 01001324 */  addiu      $s3, $zero, 0x1
/* C770 8001BF70 09801E3C */  lui        $fp, %hi(PickupPool)
.L8001BF74:
/* C774 8001BF74 01003526 */  addiu      $s5, $s1, 0x1
/* C778 8001BF78 0C00438E */  lw         $v1, 0xC($s2)
/* C77C 8001BF7C 02000224 */  addiu      $v0, $zero, 0x2
/* C780 8001BF80 67006210 */  beq        $v1, $v0, .L8001C120
/* C784 8001BF84 14005426 */   addiu     $s4, $s2, 0x14
/* C788 8001BF88 0000448E */  lw         $a0, 0x0($s2)
/* C78C 8001BF8C 0800458E */  lw         $a1, 0x8($s2)
/* C790 8001BF90 23209700 */  subu       $a0, $a0, $s7
/* C794 8001BF94 FEE9000C */  jal        DistApprox_2d
/* C798 8001BF98 2328B600 */   subu      $a1, $a1, $s6
/* C79C 8001BF9C 50035028 */  slti       $s0, $v0, 0x350
/* C7A0 8001BFA0 0000448E */  lw         $a0, 0x0($s2)
/* C7A4 8001BFA4 0800458E */  lw         $a1, 0x8($s2)
/* C7A8 8001BFA8 23209700 */  subu       $a0, $a0, $s7
/* C7AC 8001BFAC FEE9000C */  jal        DistApprox_2d
/* C7B0 8001BFB0 2328B600 */   subu      $a1, $a1, $s6
/* C7B4 8001BFB4 0C00438E */  lw         $v1, 0xC($s2)
/* C7B8 8001BFB8 00000000 */  nop
/* C7BC 8001BFBC 31006014 */  bnez       $v1, .L8001C084
/* C7C0 8001BFC0 A0044228 */   slti      $v0, $v0, 0x4A0
/* C7C4 8001BFC4 2F000016 */  bnez       $s0, .L8001C084
/* C7C8 8001BFC8 00000000 */   nop
/* C7CC 8001BFCC 2D005314 */  bne        $v0, $s3, .L8001C084
/* C7D0 8001BFD0 505DC827 */   addiu     $t0, $fp, %lo(PickupPool)
/* C7D4 8001BFD4 0000458E */  lw         $a1, 0x0($s2)
/* C7D8 8001BFD8 0400468E */  lw         $a2, 0x4($s2)
/* C7DC 8001BFDC 3413848F */  lw         $a0, %gp_rel(gLevelMaxPool)($gp)
/* C7E0 8001BFE0 0800478E */  lw         $a3, 0x8($s2)
/* C7E4 8001BFE4 08008018 */  blez       $a0, .L8001C008
/* C7E8 8001BFE8 21180000 */   addu      $v1, $zero, $zero
.L8001BFEC:
/* C7EC 8001BFEC 0C00028D */  lw         $v0, 0xC($t0)
/* C7F0 8001BFF0 00000000 */  nop
/* C7F4 8001BFF4 10004010 */  beqz       $v0, .L8001C038
/* C7F8 8001BFF8 01006324 */   addiu     $v1, $v1, 0x1
/* C7FC 8001BFFC 2A106400 */  slt        $v0, $v1, $a0
/* C800 8001C000 FAFF4014 */  bnez       $v0, .L8001BFEC
/* C804 8001C004 14000825 */   addiu     $t0, $t0, 0x14
.L8001C008:
/* C808 8001C008 21280000 */  addu       $a1, $zero, $zero
.L8001C00C:
/* C80C 8001C00C 4400A010 */  beqz       $a1, .L8001C120
/* C810 8001C010 80101100 */   sll       $v0, $s1, 2
/* C814 8001C014 21105100 */  addu       $v0, $v0, $s1
/* C818 8001C018 3813838F */  lw         $v1, %gp_rel(MapPickupList)($gp)
/* C81C 8001C01C 80100200 */  sll        $v0, $v0, 2
/* C820 8001C020 0C0053AE */  sw         $s3, 0xC($s2)
/* C824 8001C024 100045AE */  sw         $a1, 0x10($s2)
/* C828 8001C028 4400A48C */  lw         $a0, 0x44($a1)
/* C82C 8001C02C 21186200 */  addu       $v1, $v1, $v0
/* C830 8001C030 48700008 */  j          .L8001C120
/* C834 8001C034 140083AC */   sw        $v1, 0x14($a0)
.L8001C038:
/* C838 8001C038 1000108D */  lw         $s0, 0x10($t0)
/* C83C 8001C03C 0A000224 */  addiu      $v0, $zero, 0xA
/* C840 8001C040 1000A2AF */  sw         $v0, 0x10($sp)
/* C844 8001C044 32000224 */  addiu      $v0, $zero, 0x32
/* C848 8001C048 0C0013AD */  sw         $s3, 0xC($t0)
/* C84C 8001C04C 1400A2AF */  sw         $v0, 0x14($sp)
/* C850 8001C050 B2F9000C */  jal        InitObjectPhysics
/* C854 8001C054 6C000426 */   addiu     $a0, $s0, 0x6C
/* C858 8001C058 1000038E */  lw         $v1, 0x10($s0)
/* C85C 8001C05C 96000224 */  addiu      $v0, $zero, 0x96
/* C860 8001C060 5C0002AE */  sw         $v0, 0x5C($s0)
/* C864 8001C064 3C02828F */  lw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* C868 8001C068 640000AE */  sw         $zero, 0x64($s0)
/* C86C 8001C06C 00016334 */  ori        $v1, $v1, 0x100
/* C870 8001C070 01004224 */  addiu      $v0, $v0, 0x1
/* C874 8001C074 100003AE */  sw         $v1, 0x10($s0)
/* C878 8001C078 3C0282AF */  sw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* C87C 8001C07C 03700008 */  j          .L8001C00C
/* C880 8001C080 21280002 */   addu      $a1, $s0, $zero
.L8001C084:
/* C884 8001C084 01003526 */  addiu      $s5, $s1, 0x1
/* C888 8001C088 1000458E */  lw         $a1, 0x10($s2)
/* C88C 8001C08C 14005426 */  addiu      $s4, $s2, 0x14
/* C890 8001C090 7000A48C */  lw         $a0, 0x70($a1)
/* C894 8001C094 7800A58C */  lw         $a1, 0x78($a1)
/* C898 8001C098 23209700 */  subu       $a0, $a0, $s7
/* C89C 8001C09C FEE9000C */  jal        DistApprox_2d
/* C8A0 8001C0A0 2328B600 */   subu      $a1, $a1, $s6
/* C8A4 8001C0A4 0C00438E */  lw         $v1, 0xC($s2)
/* C8A8 8001C0A8 00000000 */  nop
/* C8AC 8001C0AC 1C007314 */  bne        $v1, $s3, .L8001C120
/* C8B0 8001C0B0 A0044228 */   slti      $v0, $v0, 0x4A0
/* C8B4 8001C0B4 1B004014 */  bnez       $v0, .L8001C124
/* C8B8 8001C0B8 2188A002 */   addu      $s1, $s5, $zero
/* C8BC 8001C0BC 1000508E */  lw         $s0, 0x10($s2)
/* C8C0 8001C0C0 3413918F */  lw         $s1, %gp_rel(gLevelMaxPool)($gp)
/* C8C4 8001C0C4 A972000C */  jal        RestartPickup
/* C8C8 8001C0C8 21200002 */   addu      $a0, $s0, $zero
/* C8CC 8001C0CC 1300201A */  blez       $s1, .L8001C11C
/* C8D0 8001C0D0 0980023C */   lui       $v0, %hi(PickupPool)
/* C8D4 8001C0D4 FFFE0624 */  addiu      $a2, $zero, -0x101
/* C8D8 8001C0D8 3C02858F */  lw         $a1, %gp_rel(NumActivePickupPool)($gp)
/* C8DC 8001C0DC 505D4224 */  addiu      $v0, $v0, %lo(PickupPool)
/* C8E0 8001C0E0 0C004324 */  addiu      $v1, $v0, 0xC
/* C8E4 8001C0E4 21202002 */  addu       $a0, $s1, $zero
.L8001C0E8:
/* C8E8 8001C0E8 0400628C */  lw         $v0, 0x4($v1)
/* C8EC 8001C0EC 00000000 */  nop
/* C8F0 8001C0F0 06005014 */  bne        $v0, $s0, .L8001C10C
/* C8F4 8001C0F4 00000000 */   nop
/* C8F8 8001C0F8 000060AC */  sw         $zero, 0x0($v1)
/* C8FC 8001C0FC 1000028E */  lw         $v0, 0x10($s0)
/* C900 8001C100 FFFFA524 */  addiu      $a1, $a1, -0x1
/* C904 8001C104 24104600 */  and        $v0, $v0, $a2
/* C908 8001C108 100002AE */  sw         $v0, 0x10($s0)
.L8001C10C:
/* C90C 8001C10C FFFF8424 */  addiu      $a0, $a0, -0x1
/* C910 8001C110 F5FF8014 */  bnez       $a0, .L8001C0E8
/* C914 8001C114 14006324 */   addiu     $v1, $v1, 0x14
/* C918 8001C118 3C0285AF */  sw         $a1, %gp_rel(NumActivePickupPool)($gp)
.L8001C11C:
/* C91C 8001C11C 0C0040AE */  sw         $zero, 0xC($s2)
.L8001C120:
/* C920 8001C120 2188A002 */  addu       $s1, $s5, $zero
.L8001C124:
/* C924 8001C124 3C13828F */  lw         $v0, %gp_rel(NumPickupList)($gp)
/* C928 8001C128 00000000 */  nop
/* C92C 8001C12C 2A102202 */  slt        $v0, $s1, $v0
/* C930 8001C130 90FF4014 */  bnez       $v0, .L8001BF74
/* C934 8001C134 21908002 */   addu      $s2, $s4, $zero
.L8001C138:
/* C938 8001C138 3C00BF8F */  lw         $ra, 0x3C($sp)
/* C93C 8001C13C 3800BE8F */  lw         $fp, 0x38($sp)
/* C940 8001C140 3400B78F */  lw         $s7, 0x34($sp)
/* C944 8001C144 3000B68F */  lw         $s6, 0x30($sp)
/* C948 8001C148 2C00B58F */  lw         $s5, 0x2C($sp)
/* C94C 8001C14C 2800B48F */  lw         $s4, 0x28($sp)
/* C950 8001C150 2400B38F */  lw         $s3, 0x24($sp)
/* C954 8001C154 2000B28F */  lw         $s2, 0x20($sp)
/* C958 8001C158 1C00B18F */  lw         $s1, 0x1C($sp)
/* C95C 8001C15C 1800B08F */  lw         $s0, 0x18($sp)
/* C960 8001C160 0800E003 */  jr         $ra
/* C964 8001C164 4000BD27 */   addiu     $sp, $sp, 0x40
.size CheckSpawnPickups, . - CheckSpawnPickups
