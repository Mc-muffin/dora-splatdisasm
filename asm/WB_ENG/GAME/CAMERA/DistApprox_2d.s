.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DistApprox_2d
/* 2AFF8 8003A7F8 0200A104 */  bgez       $a1, .L8003A804
/* 2AFFC 8003A7FC 00000000 */   nop
/* 2B000 8003A800 23280500 */  negu       $a1, $a1
.L8003A804:
/* 2B004 8003A804 02008104 */  bgez       $a0, .L8003A810
/* 2B008 8003A808 00000000 */   nop
/* 2B00C 8003A80C 23200400 */  negu       $a0, $a0
.L8003A810:
/* 2B010 8003A810 2A10A400 */  slt        $v0, $a1, $a0
/* 2B014 8003A814 02004010 */  beqz       $v0, .L8003A820
/* 2B018 8003A818 2118A000 */   addu      $v1, $a1, $zero
/* 2B01C 8003A81C 21288000 */  addu       $a1, $a0, $zero
.L8003A820:
/* 2B020 8003A820 2A108300 */  slt        $v0, $a0, $v1
/* 2B024 8003A824 02004010 */  beqz       $v0, .L8003A830
/* 2B028 8003A828 00000000 */   nop
/* 2B02C 8003A82C 21188000 */  addu       $v1, $a0, $zero
.L8003A830:
/* 2B030 8003A830 40100300 */  sll        $v0, $v1, 1
/* 2B034 8003A834 21104300 */  addu       $v0, $v0, $v1
/* 2B038 8003A838 C3100200 */  sra        $v0, $v0, 3
/* 2B03C 8003A83C 0800E003 */  jr         $ra
/* 2B040 8003A840 2110A200 */   addu      $v0, $a1, $v0
.size DistApprox_2d, . - DistApprox_2d
