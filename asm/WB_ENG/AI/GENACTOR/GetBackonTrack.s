.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetBackonTrack
/* 3A594 80049D94 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 3A598 80049D98 5800B6AF */  sw         $s6, 0x58($sp)
/* 3A59C 80049D9C 21B00000 */  addu       $s6, $zero, $zero
/* 3A5A0 80049DA0 6000BEAF */  sw         $fp, 0x60($sp)
/* 3A5A4 80049DA4 21F00000 */  addu       $fp, $zero, $zero
/* 3A5A8 80049DA8 5000B4AF */  sw         $s4, 0x50($sp)
/* 3A5AC 80049DAC 0F00143C */  lui        $s4, (0xF4240 >> 16)
/* 3A5B0 80049DB0 0A80033C */  lui        $v1, %hi(PlayerTrack)
/* 3A5B4 80049DB4 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 3A5B8 80049DB8 21988000 */  addu       $s3, $a0, $zero
/* 3A5BC 80049DBC 2015828F */  lw         $v0, %gp_rel(current_track_index)($gp)
/* 3A5C0 80049DC0 F04E6324 */  addiu      $v1, $v1, %lo(PlayerTrack)
/* 3A5C4 80049DC4 6400BFAF */  sw         $ra, 0x64($sp)
/* 3A5C8 80049DC8 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 3A5CC 80049DCC 5400B5AF */  sw         $s5, 0x54($sp)
/* 3A5D0 80049DD0 4800B2AF */  sw         $s2, 0x48($sp)
/* 3A5D4 80049DD4 4400B1AF */  sw         $s1, 0x44($sp)
/* 3A5D8 80049DD8 4000B0AF */  sw         $s0, 0x40($sp)
/* 3A5DC 80049DDC 0000648E */  lw         $a0, 0x0($s3)
/* 3A5E0 80049DE0 01004224 */  addiu      $v0, $v0, 0x1
/* 3A5E4 80049DE4 0F004230 */  andi       $v0, $v0, 0xF
/* 3A5E8 80049DE8 00110200 */  sll        $v0, $v0, 4
/* 3A5EC 80049DEC 21804300 */  addu       $s0, $v0, $v1
/* 3A5F0 80049DF0 C3210400 */  sra        $a0, $a0, 7
/* 3A5F4 80049DF4 3000A4AF */  sw         $a0, 0x30($sp)
/* 3A5F8 80049DF8 0400628E */  lw         $v0, 0x4($s3)
/* 3A5FC 80049DFC 0800638E */  lw         $v1, 0x8($s3)
/* 3A600 80049E00 C3110200 */  sra        $v0, $v0, 7
/* 3A604 80049E04 C3190300 */  sra        $v1, $v1, 7
/* 3A608 80049E08 3400A2AF */  sw         $v0, 0x34($sp)
/* 3A60C 80049E0C 3800A3AF */  sw         $v1, 0x38($sp)
/* 3A610 80049E10 0000028E */  lw         $v0, 0x0($s0)
/* 3A614 80049E14 40429436 */  ori        $s4, $s4, (0xF4240 & 0xFFFF)
/* 3A618 80049E18 C3110200 */  sra        $v0, $v0, 7
/* 3A61C 80049E1C 23208200 */  subu       $a0, $a0, $v0
/* 3A620 80049E20 1000A4AF */  sw         $a0, 0x10($sp)
/* 3A624 80049E24 0800028E */  lw         $v0, 0x8($s0)
/* 3A628 80049E28 21900000 */  addu       $s2, $zero, $zero
/* 3A62C 80049E2C C3110200 */  sra        $v0, $v0, 7
/* 3A630 80049E30 23186200 */  subu       $v1, $v1, $v0
/* 3A634 80049E34 21286000 */  addu       $a1, $v1, $zero
/* 3A638 80049E38 FEE9000C */  jal        DistApprox_2d
/* 3A63C 80049E3C 1800A3AF */   sw        $v1, 0x18($sp)
/* 3A640 80049E40 0000638E */  lw         $v1, 0x0($s3)
/* 3A644 80049E44 0A80023C */  lui        $v0, %hi(FollowTrack)
/* 3A648 80049E48 F04F43AC */  sw         $v1, %lo(FollowTrack)($v0)
/* 3A64C 80049E4C 0400648E */  lw         $a0, 0x4($s3)
/* 3A650 80049E50 F04F5124 */  addiu      $s1, $v0, %lo(FollowTrack)
/* 3A654 80049E54 040024AE */  sw         $a0, 0x4($s1)
/* 3A658 80049E58 0800638E */  lw         $v1, 0x8($s3)
/* 3A65C 80049E5C 0A80173C */  lui        $s7, %hi(FollowTrackPathData)
/* 3A660 80049E60 080023AE */  sw         $v1, 0x8($s1)
/* 3A664 80049E64 10003126 */  addiu      $s1, $s1, 0x10
/* 3A668 80049E68 0A80033C */  lui        $v1, %hi(PlayerTrack)
.L80049E6C:
/* 3A66C 80049E6C 2015828F */  lw         $v0, %gp_rel(current_track_index)($gp)
/* 3A670 80049E70 F04E7524 */  addiu      $s5, $v1, %lo(PlayerTrack)
/* 3A674 80049E74 23105200 */  subu       $v0, $v0, $s2
/* 3A678 80049E78 0F004230 */  andi       $v0, $v0, 0xF
/* 3A67C 80049E7C 00110200 */  sll        $v0, $v0, 4
/* 3A680 80049E80 21805500 */  addu       $s0, $v0, $s5
/* 3A684 80049E84 0000038E */  lw         $v1, 0x0($s0)
/* 3A688 80049E88 3000A58F */  lw         $a1, 0x30($sp)
/* 3A68C 80049E8C C3190300 */  sra        $v1, $v1, 7
/* 3A690 80049E90 2328A300 */  subu       $a1, $a1, $v1
/* 3A694 80049E94 2120A000 */  addu       $a0, $a1, $zero
/* 3A698 80049E98 1000A5AF */  sw         $a1, 0x10($sp)
/* 3A69C 80049E9C 0800028E */  lw         $v0, 0x8($s0)
/* 3A6A0 80049EA0 3800A38F */  lw         $v1, 0x38($sp)
/* 3A6A4 80049EA4 C3110200 */  sra        $v0, $v0, 7
/* 3A6A8 80049EA8 23186200 */  subu       $v1, $v1, $v0
/* 3A6AC 80049EAC 21286000 */  addu       $a1, $v1, $zero
/* 3A6B0 80049EB0 FEE9000C */  jal        DistApprox_2d
/* 3A6B4 80049EB4 1800A3AF */   sw        $v1, 0x18($sp)
/* 3A6B8 80049EB8 0000648E */  lw         $a0, 0x0($s3)
/* 3A6BC 80049EBC 0000038E */  lw         $v1, 0x0($s0)
/* 3A6C0 80049EC0 00000000 */  nop
/* 3A6C4 80049EC4 23208300 */  subu       $a0, $a0, $v1
/* 3A6C8 80049EC8 1000A4AF */  sw         $a0, 0x10($sp)
/* 3A6CC 80049ECC 0800638E */  lw         $v1, 0x8($s3)
/* 3A6D0 80049ED0 0800058E */  lw         $a1, 0x8($s0)
/* 3A6D4 80049ED4 21804000 */  addu       $s0, $v0, $zero
/* 3A6D8 80049ED8 23186500 */  subu       $v1, $v1, $a1
/* 3A6DC 80049EDC 21286000 */  addu       $a1, $v1, $zero
/* 3A6E0 80049EE0 FEE9000C */  jal        DistApprox_2d
/* 3A6E4 80049EE4 1800A3AF */   sw        $v1, 0x18($sp)
/* 3A6E8 80049EE8 21184000 */  addu       $v1, $v0, $zero
/* 3A6EC 80049EEC 2B107400 */  sltu       $v0, $v1, $s4
/* 3A6F0 80049EF0 03004010 */  beqz       $v0, .L80049F00
/* 3A6F4 80049EF4 00000000 */   nop
/* 3A6F8 80049EF8 21A06000 */  addu       $s4, $v1, $zero
/* 3A6FC 80049EFC 21B04002 */  addu       $s6, $s2, $zero
.L80049F00:
/* 3A700 80049F00 1B000016 */  bnez       $s0, .L80049F70
/* 3A704 80049F04 0A80023C */   lui       $v0, %hi(FollowTrackPathData)
/* 3A708 80049F08 005152AC */  sw         $s2, %lo(FollowTrackPathData)($v0)
/* 3A70C 80049F0C 01000424 */  addiu      $a0, $zero, 0x1
/* 3A710 80049F10 2B109200 */  sltu       $v0, $a0, $s2
/* 3A714 80049F14 1A004010 */  beqz       $v0, .L80049F80
/* 3A718 80049F18 01001E24 */   addiu     $fp, $zero, 0x1
/* 3A71C 80049F1C 2138A002 */  addu       $a3, $s5, $zero
/* 3A720 80049F20 2015828F */  lw         $v0, %gp_rel(current_track_index)($gp)
/* 3A724 80049F24 0051E68E */  lw         $a2, %lo(FollowTrackPathData)($s7)
/* 3A728 80049F28 23285200 */  subu       $a1, $v0, $s2
.L80049F2C:
/* 3A72C 80049F2C 2110A400 */  addu       $v0, $a1, $a0
/* 3A730 80049F30 0F004230 */  andi       $v0, $v0, 0xF
/* 3A734 80049F34 00110200 */  sll        $v0, $v0, 4
/* 3A738 80049F38 21804700 */  addu       $s0, $v0, $a3
/* 3A73C 80049F3C 0000038E */  lw         $v1, 0x0($s0)
/* 3A740 80049F40 00000000 */  nop
/* 3A744 80049F44 000023AE */  sw         $v1, 0x0($s1)
/* 3A748 80049F48 0400028E */  lw         $v0, 0x4($s0)
/* 3A74C 80049F4C 01008424 */  addiu      $a0, $a0, 0x1
/* 3A750 80049F50 040022AE */  sw         $v0, 0x4($s1)
/* 3A754 80049F54 0800038E */  lw         $v1, 0x8($s0)
/* 3A758 80049F58 2B108600 */  sltu       $v0, $a0, $a2
/* 3A75C 80049F5C 080023AE */  sw         $v1, 0x8($s1)
/* 3A760 80049F60 F2FF4014 */  bnez       $v0, .L80049F2C
/* 3A764 80049F64 10003126 */   addiu     $s1, $s1, 0x10
/* 3A768 80049F68 E0270108 */  j          .L80049F80
/* 3A76C 80049F6C 00000000 */   nop
.L80049F70:
/* 3A770 80049F70 01005226 */  addiu      $s2, $s2, 0x1
/* 3A774 80049F74 1000422A */  slti       $v0, $s2, 0x10
/* 3A778 80049F78 BCFF4014 */  bnez       $v0, .L80049E6C
/* 3A77C 80049F7C 0A80033C */   lui       $v1, %hi(PlayerTrack)
.L80049F80:
/* 3A780 80049F80 1B00C017 */  bnez       $fp, .L80049FF0
/* 3A784 80049F84 0051E426 */   addiu     $a0, $s7, %lo(FollowTrackPathData)
/* 3A788 80049F88 0200C226 */  addiu      $v0, $s6, 0x2
/* 3A78C 80049F8C 0051E2AE */  sw         $v0, %lo(FollowTrackPathData)($s7)
/* 3A790 80049F90 0100C226 */  addiu      $v0, $s6, 0x1
/* 3A794 80049F94 15004010 */  beqz       $v0, .L80049FEC
/* 3A798 80049F98 21200000 */   addu      $a0, $zero, $zero
/* 3A79C 80049F9C 0A80023C */  lui        $v0, %hi(PlayerTrack)
/* 3A7A0 80049FA0 F04E4724 */  addiu      $a3, $v0, %lo(PlayerTrack)
/* 3A7A4 80049FA4 2015838F */  lw         $v1, %gp_rel(current_track_index)($gp)
/* 3A7A8 80049FA8 0100C626 */  addiu      $a2, $s6, 0x1
/* 3A7AC 80049FAC 23287600 */  subu       $a1, $v1, $s6
.L80049FB0:
/* 3A7B0 80049FB0 2110A400 */  addu       $v0, $a1, $a0
/* 3A7B4 80049FB4 0F004230 */  andi       $v0, $v0, 0xF
/* 3A7B8 80049FB8 00110200 */  sll        $v0, $v0, 4
/* 3A7BC 80049FBC 21804700 */  addu       $s0, $v0, $a3
/* 3A7C0 80049FC0 0000038E */  lw         $v1, 0x0($s0)
/* 3A7C4 80049FC4 00000000 */  nop
/* 3A7C8 80049FC8 000023AE */  sw         $v1, 0x0($s1)
/* 3A7CC 80049FCC 0400028E */  lw         $v0, 0x4($s0)
/* 3A7D0 80049FD0 01008424 */  addiu      $a0, $a0, 0x1
/* 3A7D4 80049FD4 040022AE */  sw         $v0, 0x4($s1)
/* 3A7D8 80049FD8 0800038E */  lw         $v1, 0x8($s0)
/* 3A7DC 80049FDC 2B108600 */  sltu       $v0, $a0, $a2
/* 3A7E0 80049FE0 080023AE */  sw         $v1, 0x8($s1)
/* 3A7E4 80049FE4 F2FF4014 */  bnez       $v0, .L80049FB0
/* 3A7E8 80049FE8 10003126 */   addiu     $s1, $s1, 0x10
.L80049FEC:
/* 3A7EC 80049FEC 0051E426 */  addiu      $a0, $s7, %lo(FollowTrackPathData)
.L80049FF0:
/* 3A7F0 80049FF0 0A80033C */  lui        $v1, %hi(FollowTrack)
/* 3A7F4 80049FF4 F04F6224 */  addiu      $v0, $v1, %lo(FollowTrack)
/* 3A7F8 80049FF8 080082AC */  sw         $v0, 0x8($a0)
/* 3A7FC 80049FFC 0A80023C */  lui        $v0, %hi(FollowTrackPath)
/* 3A800 8004A000 C84E44AC */  sw         $a0, %lo(FollowTrackPath)($v0)
/* 3A804 8004A004 4400638E */  lw         $v1, 0x44($s3)
/* 3A808 8004A008 21206002 */  addu       $a0, $s3, $zero
/* 3A80C 8004A00C 0000628C */  lw         $v0, 0x0($v1)
/* 3A810 8004A010 00180624 */  addiu      $a2, $zero, 0x1800
/* 3A814 8004A014 2000A2AF */  sw         $v0, 0x20($sp)
/* 3A818 8004A018 0400658C */  lw         $a1, 0x4($v1)
/* 3A81C 8004A01C 21380000 */  addu       $a3, $zero, $zero
/* 3A820 8004A020 2400A5AF */  sw         $a1, 0x24($sp)
/* 3A824 8004A024 0800628C */  lw         $v0, 0x8($v1)
/* 3A828 8004A028 0A80033C */  lui        $v1, %hi(FollowTrackPath)
/* 3A82C 8004A02C C84E6524 */  addiu      $a1, $v1, %lo(FollowTrackPath)
/* 3A830 8004A030 9C13010C */  jal        InitPath
/* 3A834 8004A034 2800A2AF */   sw        $v0, 0x28($sp)
/* 3A838 8004A038 4400638E */  lw         $v1, 0x44($s3)
/* 3A83C 8004A03C 2000A28F */  lw         $v0, 0x20($sp)
/* 3A840 8004A040 6400BF8F */  lw         $ra, 0x64($sp)
/* 3A844 8004A044 6000BE8F */  lw         $fp, 0x60($sp)
/* 3A848 8004A048 5C00B78F */  lw         $s7, 0x5C($sp)
/* 3A84C 8004A04C 5800B68F */  lw         $s6, 0x58($sp)
/* 3A850 8004A050 5400B58F */  lw         $s5, 0x54($sp)
/* 3A854 8004A054 5000B48F */  lw         $s4, 0x50($sp)
/* 3A858 8004A058 4800B28F */  lw         $s2, 0x48($sp)
/* 3A85C 8004A05C 4400B18F */  lw         $s1, 0x44($sp)
/* 3A860 8004A060 4000B08F */  lw         $s0, 0x40($sp)
/* 3A864 8004A064 000062AC */  sw         $v0, 0x0($v1)
/* 3A868 8004A068 4400648E */  lw         $a0, 0x44($s3)
/* 3A86C 8004A06C 2400A28F */  lw         $v0, 0x24($sp)
/* 3A870 8004A070 00000000 */  nop
/* 3A874 8004A074 040082AC */  sw         $v0, 0x4($a0)
/* 3A878 8004A078 4400638E */  lw         $v1, 0x44($s3)
/* 3A87C 8004A07C 2800A28F */  lw         $v0, 0x28($sp)
/* 3A880 8004A080 4C00B38F */  lw         $s3, 0x4C($sp)
/* 3A884 8004A084 080062AC */  sw         $v0, 0x8($v1)
/* 3A888 8004A088 0800E003 */  jr         $ra
/* 3A88C 8004A08C 6800BD27 */   addiu     $sp, $sp, 0x68
.size GetBackonTrack, . - GetBackonTrack
