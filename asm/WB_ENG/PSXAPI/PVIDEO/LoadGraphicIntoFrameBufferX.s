.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadGraphicIntoFrameBufferX
/* 4B7B8 8005AFB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4B7BC 8005AFBC 2000B2AF */  sw         $s2, 0x20($sp)
/* 4B7C0 8005AFC0 2190A000 */  addu       $s2, $a1, $zero
/* 4B7C4 8005AFC4 1800B0AF */  sw         $s0, 0x18($sp)
/* 4B7C8 8005AFC8 21808000 */  addu       $s0, $a0, $zero
/* 4B7CC 8005AFCC 2400B3AF */  sw         $s3, 0x24($sp)
/* 4B7D0 8005AFD0 21984002 */  addu       $s3, $s2, $zero
/* 4B7D4 8005AFD4 2800BFAF */  sw         $ra, 0x28($sp)
/* 4B7D8 8005AFD8 0B00C010 */  beqz       $a2, .L8005B008
/* 4B7DC 8005AFDC 1C00B1AF */   sw        $s1, 0x1C($sp)
/* 4B7E0 8005AFE0 B35C010C */  jal        GetSizeOfFile
/* 4B7E4 8005AFE4 00000000 */   nop
/* 4B7E8 8005AFE8 04004016 */  bnez       $s2, .L8005AFFC
/* 4B7EC 8005AFEC 00000000 */   nop
/* 4B7F0 8005AFF0 2B3F010C */  jal        new_malloc
/* 4B7F4 8005AFF4 21204000 */   addu      $a0, $v0, $zero
/* 4B7F8 8005AFF8 21904000 */  addu       $s2, $v0, $zero
.L8005AFFC:
/* 4B7FC 8005AFFC 21200002 */  addu       $a0, $s0, $zero
/* 4B800 8005B000 495C010C */  jal        LoadFile
/* 4B804 8005B004 21284002 */   addu      $a1, $s2, $zero
.L8005B008:
/* 4B808 8005B008 1000A427 */  addiu      $a0, $sp, 0x10
/* 4B80C 8005B00C 0B80103C */  lui        $s0, %hi(gDoubleBuffer)
/* 4B810 8005B010 78B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer)
/* 4B814 8005B014 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4B818 8005B018 08025126 */  addiu      $s1, $s2, 0x208
/* 4B81C 8005B01C 0100422C */  sltiu      $v0, $v0, 0x1
/* 4B820 8005B020 C0110200 */  sll        $v0, $v0, 7
/* 4B824 8005B024 21105000 */  addu       $v0, $v0, $s0
/* 4B828 8005B028 5C004394 */  lhu        $v1, 0x5C($v0)
/* 4B82C 8005B02C 5E004694 */  lhu        $a2, 0x5E($v0)
/* 4B830 8005B030 60004794 */  lhu        $a3, 0x60($v0)
/* 4B834 8005B034 62004894 */  lhu        $t0, 0x62($v0)
/* 4B838 8005B038 21282002 */  addu       $a1, $s1, $zero
/* 4B83C 8005B03C 1000A3A7 */  sh         $v1, 0x10($sp)
/* 4B840 8005B040 1200A6A7 */  sh         $a2, 0x12($sp)
/* 4B844 8005B044 1400A7A7 */  sh         $a3, 0x14($sp)
/* 4B848 8005B048 E1DB010C */  jal        LoadImage
/* 4B84C 8005B04C 1600A8A7 */   sh        $t0, 0x16($sp)
/* 4B850 8005B050 36DB010C */  jal        DrawSync
/* 4B854 8005B054 21200000 */   addu      $a0, $zero, $zero
/* 4B858 8005B058 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B85C 8005B05C 1000A427 */  addiu      $a0, $sp, 0x10
/* 4B860 8005B060 C0190300 */  sll        $v1, $v1, 7
/* 4B864 8005B064 21187000 */  addu       $v1, $v1, $s0
/* 4B868 8005B068 5C006294 */  lhu        $v0, 0x5C($v1)
/* 4B86C 8005B06C 5E006694 */  lhu        $a2, 0x5E($v1)
/* 4B870 8005B070 60006794 */  lhu        $a3, 0x60($v1)
/* 4B874 8005B074 62006894 */  lhu        $t0, 0x62($v1)
/* 4B878 8005B078 21282002 */  addu       $a1, $s1, $zero
/* 4B87C 8005B07C 1000A2A7 */  sh         $v0, 0x10($sp)
/* 4B880 8005B080 1200A6A7 */  sh         $a2, 0x12($sp)
/* 4B884 8005B084 1400A7A7 */  sh         $a3, 0x14($sp)
/* 4B888 8005B088 E1DB010C */  jal        LoadImage
/* 4B88C 8005B08C 1600A8A7 */   sh        $t0, 0x16($sp)
/* 4B890 8005B090 36DB010C */  jal        DrawSync
/* 4B894 8005B094 21200000 */   addu      $a0, $zero, $zero
/* 4B898 8005B098 03006016 */  bnez       $s3, .L8005B0A8
/* 4B89C 8005B09C 00000000 */   nop
/* 4B8A0 8005B0A0 1C40010C */  jal        new_free
/* 4B8A4 8005B0A4 21204002 */   addu      $a0, $s2, $zero
.L8005B0A8:
/* 4B8A8 8005B0A8 2800BF8F */  lw         $ra, 0x28($sp)
/* 4B8AC 8005B0AC 2400B38F */  lw         $s3, 0x24($sp)
/* 4B8B0 8005B0B0 2000B28F */  lw         $s2, 0x20($sp)
/* 4B8B4 8005B0B4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4B8B8 8005B0B8 1800B08F */  lw         $s0, 0x18($sp)
/* 4B8BC 8005B0BC 0800E003 */  jr         $ra
/* 4B8C0 8005B0C0 3000BD27 */   addiu     $sp, $sp, 0x30
.size LoadGraphicIntoFrameBufferX, . - LoadGraphicIntoFrameBufferX
