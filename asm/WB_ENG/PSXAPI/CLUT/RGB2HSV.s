.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RGB2HSV
/* 4DD88 8005D588 01018228 */  slti       $v0, $a0, 0x101
/* 4DD8C 8005D58C 1000AB8F */  lw         $t3, 0x10($sp)
/* 4DD90 8005D590 1400A38F */  lw         $v1, 0x14($sp)
/* 4DD94 8005D594 02004014 */  bnez       $v0, .L8005D5A0
/* 4DD98 8005D598 00000000 */   nop
/* 4DD9C 8005D59C 00010424 */  addiu      $a0, $zero, 0x100
.L8005D5A0:
/* 4DDA0 8005D5A0 02008104 */  bgez       $a0, .L8005D5AC
/* 4DDA4 8005D5A4 0101A228 */   slti      $v0, $a1, 0x101
/* 4DDA8 8005D5A8 21200000 */  addu       $a0, $zero, $zero
.L8005D5AC:
/* 4DDAC 8005D5AC 02004014 */  bnez       $v0, .L8005D5B8
/* 4DDB0 8005D5B0 00000000 */   nop
/* 4DDB4 8005D5B4 00010524 */  addiu      $a1, $zero, 0x100
.L8005D5B8:
/* 4DDB8 8005D5B8 0200A104 */  bgez       $a1, .L8005D5C4
/* 4DDBC 8005D5BC 0101C228 */   slti      $v0, $a2, 0x101
/* 4DDC0 8005D5C0 21280000 */  addu       $a1, $zero, $zero
.L8005D5C4:
/* 4DDC4 8005D5C4 02004014 */  bnez       $v0, .L8005D5D0
/* 4DDC8 8005D5C8 00000000 */   nop
/* 4DDCC 8005D5CC 00010624 */  addiu      $a2, $zero, 0x100
.L8005D5D0:
/* 4DDD0 8005D5D0 0200C104 */  bgez       $a2, .L8005D5DC
/* 4DDD4 8005D5D4 2140A000 */   addu      $t0, $a1, $zero
/* 4DDD8 8005D5D8 21300000 */  addu       $a2, $zero, $zero
.L8005D5DC:
/* 4DDDC 8005D5DC 2A100401 */  slt        $v0, $t0, $a0
/* 4DDE0 8005D5E0 03004010 */  beqz       $v0, .L8005D5F0
/* 4DDE4 8005D5E4 2A100601 */   slt       $v0, $t0, $a2
/* 4DDE8 8005D5E8 21408000 */  addu       $t0, $a0, $zero
/* 4DDEC 8005D5EC 2A100601 */  slt        $v0, $t0, $a2
.L8005D5F0:
/* 4DDF0 8005D5F0 03004010 */  beqz       $v0, .L8005D600
/* 4DDF4 8005D5F4 01010229 */   slti      $v0, $t0, 0x101
/* 4DDF8 8005D5F8 2140C000 */  addu       $t0, $a2, $zero
/* 4DDFC 8005D5FC 01010229 */  slti       $v0, $t0, 0x101
.L8005D600:
/* 4DE00 8005D600 04004014 */  bnez       $v0, .L8005D614
/* 4DE04 8005D604 000068AC */   sw        $t0, 0x0($v1)
/* 4DE08 8005D608 00010224 */  addiu      $v0, $zero, 0x100
/* 4DE0C 8005D60C 88750108 */  j          .L8005D620
/* 4DE10 8005D610 000062AC */   sw        $v0, 0x0($v1)
.L8005D614:
/* 4DE14 8005D614 02000105 */  bgez       $t0, .L8005D620
/* 4DE18 8005D618 00000000 */   nop
/* 4DE1C 8005D61C 000060AC */  sw         $zero, 0x0($v1)
.L8005D620:
/* 4DE20 8005D620 53000019 */  blez       $t0, .L8005D770
/* 4DE24 8005D624 2148A000 */   addu      $t1, $a1, $zero
/* 4DE28 8005D628 2A108900 */  slt        $v0, $a0, $t1
/* 4DE2C 8005D62C 03004010 */  beqz       $v0, .L8005D63C
/* 4DE30 8005D630 2A10C900 */   slt       $v0, $a2, $t1
/* 4DE34 8005D634 21488000 */  addu       $t1, $a0, $zero
/* 4DE38 8005D638 2A10C900 */  slt        $v0, $a2, $t1
.L8005D63C:
/* 4DE3C 8005D63C 03004010 */  beqz       $v0, .L8005D64C
/* 4DE40 8005D640 00120900 */   sll       $v0, $t1, 8
/* 4DE44 8005D644 2148C000 */  addu       $t1, $a2, $zero
/* 4DE48 8005D648 00120900 */  sll        $v0, $t1, 8
.L8005D64C:
/* 4DE4C 8005D64C 1A004800 */  div        $zero, $v0, $t0
/* 4DE50 8005D650 12100000 */  mflo       $v0
/* 4DE54 8005D654 02000015 */  bnez       $t0, .L8005D660
/* 4DE58 8005D658 00000000 */   nop
/* 4DE5C 8005D65C CD010000 */  break      0, 7
.L8005D660:
/* 4DE60 8005D660 00010A24 */  addiu      $t2, $zero, 0x100
/* 4DE64 8005D664 23184201 */  subu       $v1, $t2, $v0
/* 4DE68 8005D668 01016228 */  slti       $v0, $v1, 0x101
/* 4DE6C 8005D66C 03004014 */  bnez       $v0, .L8005D67C
/* 4DE70 8005D670 000063AD */   sw        $v1, 0x0($t3)
/* 4DE74 8005D674 A2750108 */  j          .L8005D688
/* 4DE78 8005D678 00006AAD */   sw        $t2, 0x0($t3)
.L8005D67C:
/* 4DE7C 8005D67C 03006104 */  bgez       $v1, .L8005D68C
/* 4DE80 8005D680 2A102801 */   slt       $v0, $t1, $t0
/* 4DE84 8005D684 000060AD */  sw         $zero, 0x0($t3)
.L8005D688:
/* 4DE88 8005D688 2A102801 */  slt        $v0, $t1, $t0
.L8005D68C:
/* 4DE8C 8005D68C 38004010 */  beqz       $v0, .L8005D770
/* 4DE90 8005D690 00000000 */   nop
/* 4DE94 8005D694 0F000415 */  bne        $t0, $a0, .L8005D6D4
/* 4DE98 8005D698 2310A600 */   subu      $v0, $a1, $a2
/* 4DE9C 8005D69C 00190200 */  sll        $v1, $v0, 4
/* 4DEA0 8005D6A0 23186200 */  subu       $v1, $v1, $v0
/* 4DEA4 8005D6A4 801A0300 */  sll        $v1, $v1, 10
/* 4DEA8 8005D6A8 23100901 */  subu       $v0, $t0, $t1
/* 4DEAC 8005D6AC 1A006200 */  div        $zero, $v1, $v0
/* 4DEB0 8005D6B0 12180000 */  mflo       $v1
/* 4DEB4 8005D6B4 02004014 */  bnez       $v0, .L8005D6C0
/* 4DEB8 8005D6B8 00000000 */   nop
/* 4DEBC 8005D6BC CD010000 */  break      0, 7
.L8005D6C0:
/* 4DEC0 8005D6C0 03120300 */  sra        $v0, $v1, 8
/* 4DEC4 8005D6C4 18004104 */  bgez       $v0, .L8005D728
/* 4DEC8 8005D6C8 21200000 */   addu      $a0, $zero, $zero
/* 4DECC 8005D6CC CA750108 */  j          .L8005D728
/* 4DED0 8005D6D0 68014224 */   addiu     $v0, $v0, 0x168
.L8005D6D4:
/* 4DED4 8005D6D4 09000515 */  bne        $t0, $a1, .L8005D6FC
/* 4DED8 8005D6D8 23108500 */   subu      $v0, $a0, $a1
/* 4DEDC 8005D6DC 2310C400 */  subu       $v0, $a2, $a0
/* 4DEE0 8005D6E0 00190200 */  sll        $v1, $v0, 4
/* 4DEE4 8005D6E4 23186200 */  subu       $v1, $v1, $v0
/* 4DEE8 8005D6E8 801A0300 */  sll        $v1, $v1, 10
/* 4DEEC 8005D6EC 23100901 */  subu       $v0, $t0, $t1
/* 4DEF0 8005D6F0 1A006200 */  div        $zero, $v1, $v0
/* 4DEF4 8005D6F4 C5750108 */  j          .L8005D714
/* 4DEF8 8005D6F8 78000424 */   addiu     $a0, $zero, 0x78
.L8005D6FC:
/* 4DEFC 8005D6FC 00190200 */  sll        $v1, $v0, 4
/* 4DF00 8005D700 23186200 */  subu       $v1, $v1, $v0
/* 4DF04 8005D704 801A0300 */  sll        $v1, $v1, 10
/* 4DF08 8005D708 23100901 */  subu       $v0, $t0, $t1
/* 4DF0C 8005D70C 1A006200 */  div        $zero, $v1, $v0
/* 4DF10 8005D710 F0000424 */  addiu      $a0, $zero, 0xF0
.L8005D714:
/* 4DF14 8005D714 12180000 */  mflo       $v1
/* 4DF18 8005D718 02004014 */  bnez       $v0, .L8005D724
/* 4DF1C 8005D71C 00000000 */   nop
/* 4DF20 8005D720 CD010000 */  break      0, 7
.L8005D724:
/* 4DF24 8005D724 03120300 */  sra        $v0, $v1, 8
.L8005D728:
/* 4DF28 8005D728 21188200 */  addu       $v1, $a0, $v0
/* 4DF2C 8005D72C 69016228 */  slti       $v0, $v1, 0x169
/* 4DF30 8005D730 07004014 */  bnez       $v0, .L8005D750
/* 4DF34 8005D734 0000E3AC */   sw        $v1, 0x0($a3)
/* 4DF38 8005D738 98FE6324 */  addiu      $v1, $v1, -0x168
.L8005D73C:
/* 4DF3C 8005D73C 69016228 */  slti       $v0, $v1, 0x169
/* 4DF40 8005D740 FEFF4010 */  beqz       $v0, .L8005D73C
/* 4DF44 8005D744 98FE6324 */   addiu     $v1, $v1, -0x168
/* 4DF48 8005D748 68016324 */  addiu      $v1, $v1, 0x168
/* 4DF4C 8005D74C 0000E3AC */  sw         $v1, 0x0($a3)
.L8005D750:
/* 4DF50 8005D750 0000E38C */  lw         $v1, 0x0($a3)
/* 4DF54 8005D754 00000000 */  nop
/* 4DF58 8005D758 05006104 */  bgez       $v1, .L8005D770
/* 4DF5C 8005D75C 00000000 */   nop
.L8005D760:
/* 4DF60 8005D760 68016224 */  addiu      $v0, $v1, 0x168
/* 4DF64 8005D764 FEFF4004 */  bltz       $v0, .L8005D760
/* 4DF68 8005D768 21184000 */   addu      $v1, $v0, $zero
/* 4DF6C 8005D76C 0000E2AC */  sw         $v0, 0x0($a3)
.L8005D770:
/* 4DF70 8005D770 0800E003 */  jr         $ra
/* 4DF74 8005D774 00000000 */   nop
.size RGB2HSV, . - RGB2HSV
