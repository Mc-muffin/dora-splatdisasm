.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AdjusttoCameraLocale
/* 4E0F0 8005D8F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4E0F4 8005D8F4 1000B0AF */  sw         $s0, 0x10($sp)
/* 4E0F8 8005D8F8 1400BFAF */  sw         $ra, 0x14($sp)
/* 4E0FC 8005D8FC EDEC000C */  jal        GetLocale
/* 4E100 8005D900 FFFF9030 */   andi      $s0, $a0, 0xFFFF
/* 4E104 8005D904 FFFF4330 */  andi       $v1, $v0, 0xFFFF
/* 4E108 8005D908 00E06224 */  addiu      $v0, $v1, -0x2000
/* 4E10C 8005D90C 0040422C */  sltiu      $v0, $v0, 0x4000
/* 4E110 8005D910 0F004010 */  beqz       $v0, .L8005D950
/* 4E114 8005D914 21200000 */   addu      $a0, $zero, $zero
/* 4E118 8005D918 42101000 */  srl        $v0, $s0, 1
/* 4E11C 8005D91C 10000332 */  andi       $v1, $s0, 0x10
/* 4E120 8005D920 03006010 */  beqz       $v1, .L8005D930
/* 4E124 8005D924 10004430 */   andi      $a0, $v0, 0x10
/* 4E128 8005D928 80008234 */  ori        $v0, $a0, 0x80
/* 4E12C 8005D92C FFFF4430 */  andi       $a0, $v0, 0xFFFF
.L8005D930:
/* 4E130 8005D930 80000232 */  andi       $v0, $s0, 0x80
/* 4E134 8005D934 02004010 */  beqz       $v0, .L8005D940
/* 4E138 8005D938 40000232 */   andi      $v0, $s0, 0x40
/* 4E13C 8005D93C 40008434 */  ori        $a0, $a0, 0x40
.L8005D940:
/* 4E140 8005D940 26004010 */  beqz       $v0, .L8005D9DC
/* 4E144 8005D944 00000000 */   nop
/* 4E148 8005D948 77760108 */  j          .L8005D9DC
/* 4E14C 8005D94C 20008434 */   ori       $a0, $a0, 0x20
.L8005D950:
/* 4E150 8005D950 00A06224 */  addiu      $v0, $v1, -0x6000
/* 4E154 8005D954 0040422C */  sltiu      $v0, $v0, 0x4000
/* 4E158 8005D958 03004010 */  beqz       $v0, .L8005D968
/* 4E15C 8005D95C 00606224 */   addiu     $v0, $v1, 0x6000
/* 4E160 8005D960 77760108 */  j          .L8005D9DC
/* 4E164 8005D964 21200002 */   addu      $a0, $s0, $zero
.L8005D968:
/* 4E168 8005D968 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 4E16C 8005D96C 0040422C */  sltiu      $v0, $v0, 0x4000
/* 4E170 8005D970 0E004010 */  beqz       $v0, .L8005D9AC
/* 4E174 8005D974 20000232 */   andi      $v0, $s0, 0x20
/* 4E178 8005D978 02004010 */  beqz       $v0, .L8005D984
/* 4E17C 8005D97C 10000232 */   andi      $v0, $s0, 0x10
/* 4E180 8005D980 40000424 */  addiu      $a0, $zero, 0x40
.L8005D984:
/* 4E184 8005D984 02004010 */  beqz       $v0, .L8005D990
/* 4E188 8005D988 80000232 */   andi      $v0, $s0, 0x80
/* 4E18C 8005D98C 20008434 */  ori        $a0, $a0, 0x20
.L8005D990:
/* 4E190 8005D990 02004010 */  beqz       $v0, .L8005D99C
/* 4E194 8005D994 40000232 */   andi      $v0, $s0, 0x40
/* 4E198 8005D998 10008434 */  ori        $a0, $a0, 0x10
.L8005D99C:
/* 4E19C 8005D99C 0F004010 */  beqz       $v0, .L8005D9DC
/* 4E1A0 8005D9A0 00000000 */   nop
/* 4E1A4 8005D9A4 77760108 */  j          .L8005D9DC
/* 4E1A8 8005D9A8 80008434 */   ori       $a0, $a0, 0x80
.L8005D9AC:
/* 4E1AC 8005D9AC 02004010 */  beqz       $v0, .L8005D9B8
/* 4E1B0 8005D9B0 10000232 */   andi      $v0, $s0, 0x10
/* 4E1B4 8005D9B4 80000424 */  addiu      $a0, $zero, 0x80
.L8005D9B8:
/* 4E1B8 8005D9B8 02004010 */  beqz       $v0, .L8005D9C4
/* 4E1BC 8005D9BC 80000232 */   andi      $v0, $s0, 0x80
/* 4E1C0 8005D9C0 40008434 */  ori        $a0, $a0, 0x40
.L8005D9C4:
/* 4E1C4 8005D9C4 02004010 */  beqz       $v0, .L8005D9D0
/* 4E1C8 8005D9C8 40000232 */   andi      $v0, $s0, 0x40
/* 4E1CC 8005D9CC 20008434 */  ori        $a0, $a0, 0x20
.L8005D9D0:
/* 4E1D0 8005D9D0 02004010 */  beqz       $v0, .L8005D9DC
/* 4E1D4 8005D9D4 00000000 */   nop
/* 4E1D8 8005D9D8 10008434 */  ori        $a0, $a0, 0x10
.L8005D9DC:
/* 4E1DC 8005D9DC 1400BF8F */  lw         $ra, 0x14($sp)
/* 4E1E0 8005D9E0 1000B08F */  lw         $s0, 0x10($sp)
/* 4E1E4 8005D9E4 21108000 */  addu       $v0, $a0, $zero
/* 4E1E8 8005D9E8 0800E003 */  jr         $ra
/* 4E1EC 8005D9EC 1800BD27 */   addiu     $sp, $sp, 0x18
.size AdjusttoCameraLocale, . - AdjusttoCameraLocale
