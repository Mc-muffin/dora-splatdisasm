.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EditCamera
/* 2A7B0 80039FB0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2A7B4 80039FB4 1000A427 */  addiu      $a0, $sp, 0x10
/* 2A7B8 80039FB8 1400A527 */  addiu      $a1, $sp, 0x14
/* 2A7BC 80039FBC 1800A627 */  addiu      $a2, $sp, 0x18
/* 2A7C0 80039FC0 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 2A7C4 80039FC4 2800B2AF */  sw         $s2, 0x28($sp)
/* 2A7C8 80039FC8 2400B1AF */  sw         $s1, 0x24($sp)
/* 2A7CC 80039FCC 80ED000C */  jal        GetCamera
/* 2A7D0 80039FD0 2000B0AF */   sw        $s0, 0x20($sp)
/* 2A7D4 80039FD4 D0ED000C */  jal        GetSTBA_Locale
/* 2A7D8 80039FD8 00000000 */   nop
/* 2A7DC 80039FDC 01000424 */  addiu      $a0, $zero, 0x1
/* 2A7E0 80039FE0 59ED000C */  jal        SetCameraLock
/* 2A7E4 80039FE4 21804000 */   addu      $s0, $v0, $zero
/* 2A7E8 80039FE8 51ED000C */  jal        SetTargetLock
/* 2A7EC 80039FEC 01000424 */   addiu     $a0, $zero, 0x1
/* 2A7F0 80039FF0 61ED000C */  jal        SetLocaleLock
/* 2A7F4 80039FF4 01000424 */   addiu     $a0, $zero, 0x1
/* 2A7F8 80039FF8 8A40010C */  jal        s16Sin
/* 2A7FC 80039FFC 21200002 */   addu      $a0, $s0, $zero
/* 2A800 8003A000 21200002 */  addu       $a0, $s0, $zero
/* 2A804 8003A004 00120200 */  sll        $v0, $v0, 8
/* 2A808 8003A008 AD40010C */  jal        s16Cos
/* 2A80C 8003A00C 03940200 */   sra       $s2, $v0, 16
/* 2A810 8003A010 00120200 */  sll        $v0, $v0, 8
/* 2A814 8003A014 0980033C */  lui        $v1, %hi(Pad0)
/* 2A818 8003A018 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 2A81C 8003A01C 00000000 */  nop
/* 2A820 8003A020 00806330 */  andi       $v1, $v1, 0x8000
/* 2A824 8003A024 04006010 */  beqz       $v1, .L8003A038
/* 2A828 8003A028 038C0200 */   sra       $s1, $v0, 16
/* 2A82C 8003A02C 00FF0426 */  addiu      $a0, $s0, -0x100
/* 2A830 8003A030 ADED000C */  jal        SetTargetByAngle
/* 2A834 8003A034 FFFF8430 */   andi      $a0, $a0, 0xFFFF
.L8003A038:
/* 2A838 8003A038 0980023C */  lui        $v0, %hi(Pad0)
/* 2A83C 8003A03C 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 2A840 8003A040 00000000 */  nop
/* 2A844 8003A044 00204230 */  andi       $v0, $v0, 0x2000
/* 2A848 8003A048 04004010 */  beqz       $v0, .L8003A05C
/* 2A84C 8003A04C 00000000 */   nop
/* 2A850 8003A050 00010426 */  addiu      $a0, $s0, 0x100
/* 2A854 8003A054 ADED000C */  jal        SetTargetByAngle
/* 2A858 8003A058 FFFF8430 */   andi      $a0, $a0, 0xFFFF
.L8003A05C:
/* 2A85C 8003A05C 0980023C */  lui        $v0, %hi(Pad0)
/* 2A860 8003A060 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 2A864 8003A064 00000000 */  nop
/* 2A868 8003A068 00104230 */  andi       $v0, $v0, 0x1000
/* 2A86C 8003A06C 07004010 */  beqz       $v0, .L8003A08C
/* 2A870 8003A070 00000000 */   nop
/* 2A874 8003A074 1400A58F */  lw         $a1, 0x14($sp)
/* 2A878 8003A078 1000A48F */  lw         $a0, 0x10($sp)
/* 2A87C 8003A07C 1800A68F */  lw         $a2, 0x18($sp)
/* 2A880 8003A080 23209200 */  subu       $a0, $a0, $s2
/* 2A884 8003A084 C3EC000C */  jal        PutCamera_STBA
/* 2A888 8003A088 2330D100 */   subu      $a2, $a2, $s1
.L8003A08C:
/* 2A88C 8003A08C 0980023C */  lui        $v0, %hi(Pad0)
/* 2A890 8003A090 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 2A894 8003A094 00000000 */  nop
/* 2A898 8003A098 00404230 */  andi       $v0, $v0, 0x4000
/* 2A89C 8003A09C 07004010 */  beqz       $v0, .L8003A0BC
/* 2A8A0 8003A0A0 00000000 */   nop
/* 2A8A4 8003A0A4 1400A58F */  lw         $a1, 0x14($sp)
/* 2A8A8 8003A0A8 1000A48F */  lw         $a0, 0x10($sp)
/* 2A8AC 8003A0AC 1800A68F */  lw         $a2, 0x18($sp)
/* 2A8B0 8003A0B0 21209200 */  addu       $a0, $a0, $s2
/* 2A8B4 8003A0B4 C3EC000C */  jal        PutCamera_STBA
/* 2A8B8 8003A0B8 2130D100 */   addu      $a2, $a2, $s1
.L8003A0BC:
/* 2A8BC 8003A0BC 0980023C */  lui        $v0, %hi(Pad0)
/* 2A8C0 8003A0C0 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 2A8C4 8003A0C4 00000000 */  nop
/* 2A8C8 8003A0C8 000C4230 */  andi       $v0, $v0, 0xC00
/* 2A8CC 8003A0CC 06004010 */  beqz       $v0, .L8003A0E8
/* 2A8D0 8003A0D0 00000000 */   nop
/* 2A8D4 8003A0D4 1000A48F */  lw         $a0, 0x10($sp)
/* 2A8D8 8003A0D8 1400A58F */  lw         $a1, 0x14($sp)
/* 2A8DC 8003A0DC 1800A68F */  lw         $a2, 0x18($sp)
/* 2A8E0 8003A0E0 C3EC000C */  jal        PutCamera_STBA
/* 2A8E4 8003A0E4 E0FFA524 */   addiu     $a1, $a1, -0x20
.L8003A0E8:
/* 2A8E8 8003A0E8 0980023C */  lui        $v0, %hi(Pad0)
/* 2A8EC 8003A0EC 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 2A8F0 8003A0F0 00000000 */  nop
/* 2A8F4 8003A0F4 00034230 */  andi       $v0, $v0, 0x300
/* 2A8F8 8003A0F8 06004010 */  beqz       $v0, .L8003A114
/* 2A8FC 8003A0FC 00000000 */   nop
/* 2A900 8003A100 1000A48F */  lw         $a0, 0x10($sp)
/* 2A904 8003A104 1400A58F */  lw         $a1, 0x14($sp)
/* 2A908 8003A108 1800A68F */  lw         $a2, 0x18($sp)
/* 2A90C 8003A10C C3EC000C */  jal        PutCamera_STBA
/* 2A910 8003A110 2000A524 */   addiu     $a1, $a1, 0x20
.L8003A114:
/* 2A914 8003A114 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 2A918 8003A118 2800B28F */  lw         $s2, 0x28($sp)
/* 2A91C 8003A11C 2400B18F */  lw         $s1, 0x24($sp)
/* 2A920 8003A120 2000B08F */  lw         $s0, 0x20($sp)
/* 2A924 8003A124 0800E003 */  jr         $ra
/* 2A928 8003A128 3000BD27 */   addiu     $sp, $sp, 0x30
.size EditCamera, . - EditCamera
