.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FadeOutScreenGrabSprites
/* 1516C 8002496C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 15170 80024970 0980023C */  lui        $v0, %hi(ot_ndx)
/* 15174 80024974 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 15178 80024978 21280000 */  addu       $a1, $zero, $zero
/* 1517C 8002497C 1000B0AF */  sw         $s0, 0x10($sp)
/* 15180 80024980 0980103C */  lui        $s0, %hi(ScreenRGBSprite)
/* 15184 80024984 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 15188 80024988 C806938F */  lw         $s3, %gp_rel(ScreenGrabFade)($gp)
/* 1518C 8002498C D87D1026 */  addiu      $s0, $s0, %lo(ScreenRGBSprite)
/* 15190 80024990 2000BFAF */  sw         $ra, 0x20($sp)
/* 15194 80024994 1800B2AF */  sw         $s2, 0x18($sp)
/* 15198 80024998 1400B1AF */  sw         $s1, 0x14($sp)
/* 1519C 8002499C 80880200 */  sll        $s1, $v0, 2
/* 151A0 800249A0 21882202 */  addu       $s1, $s1, $v0
/* 151A4 800249A4 C0881100 */  sll        $s1, $s1, 3
/* 151A8 800249A8 21903002 */  addu       $s2, $s1, $s0
/* 151AC 800249AC 21204002 */  addu       $a0, $s2, $zero
/* 151B0 800249B0 040053A2 */  sb         $s3, 0x4($s2)
/* 151B4 800249B4 050053A2 */  sb         $s3, 0x5($s2)
/* 151B8 800249B8 BBE6010C */  jal        SetSemiTrans
/* 151BC 800249BC 060053A2 */   sb        $s3, 0x6($s2)
/* 151C0 800249C0 21280000 */  addu       $a1, $zero, $zero
/* 151C4 800249C4 16004396 */  lhu        $v1, 0x16($s2)
/* 151C8 800249C8 10078297 */  lhu        $v0, %gp_rel(FADETYPE)($gp)
/* 151CC 800249CC 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 151D0 800249D0 03004230 */  andi       $v0, $v0, 0x3
/* 151D4 800249D4 40110200 */  sll        $v0, $v0, 5
/* 151D8 800249D8 25186200 */  or         $v1, $v1, $v0
/* 151DC 800249DC 5C000226 */  addiu      $v0, $s0, 0x5C
/* 151E0 800249E0 160043A6 */  sh         $v1, 0x16($s2)
/* 151E4 800249E4 21902202 */  addu       $s2, $s1, $v0
/* 151E8 800249E8 21204002 */  addu       $a0, $s2, $zero
/* 151EC 800249EC 040053A2 */  sb         $s3, 0x4($s2)
/* 151F0 800249F0 050053A2 */  sb         $s3, 0x5($s2)
/* 151F4 800249F4 BBE6010C */  jal        SetSemiTrans
/* 151F8 800249F8 060053A2 */   sb        $s3, 0x6($s2)
/* 151FC 800249FC 21280000 */  addu       $a1, $zero, $zero
/* 15200 80024A00 B8001026 */  addiu      $s0, $s0, 0xB8
/* 15204 80024A04 16004396 */  lhu        $v1, 0x16($s2)
/* 15208 80024A08 10078297 */  lhu        $v0, %gp_rel(FADETYPE)($gp)
/* 1520C 80024A0C 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 15210 80024A10 03004230 */  andi       $v0, $v0, 0x3
/* 15214 80024A14 40110200 */  sll        $v0, $v0, 5
/* 15218 80024A18 25186200 */  or         $v1, $v1, $v0
/* 1521C 80024A1C 160043A6 */  sh         $v1, 0x16($s2)
/* 15220 80024A20 21903002 */  addu       $s2, $s1, $s0
/* 15224 80024A24 21204002 */  addu       $a0, $s2, $zero
/* 15228 80024A28 040053A2 */  sb         $s3, 0x4($s2)
/* 1522C 80024A2C 050053A2 */  sb         $s3, 0x5($s2)
/* 15230 80024A30 BBE6010C */  jal        SetSemiTrans
/* 15234 80024A34 060053A2 */   sb        $s3, 0x6($s2)
/* 15238 80024A38 16004396 */  lhu        $v1, 0x16($s2)
/* 1523C 80024A3C 10078297 */  lhu        $v0, %gp_rel(FADETYPE)($gp)
/* 15240 80024A40 1407848F */  lw         $a0, %gp_rel(waitforsemitrans)($gp)
/* 15244 80024A44 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 15248 80024A48 03004230 */  andi       $v0, $v0, 0x3
/* 1524C 80024A4C 40110200 */  sll        $v0, $v0, 5
/* 15250 80024A50 160043A6 */  sh         $v1, 0x16($s2)
/* 15254 80024A54 25186200 */  or         $v1, $v1, $v0
/* 15258 80024A58 0700801C */  bgtz       $a0, .L80024A78
/* 1525C 80024A5C 160043A6 */   sh        $v1, 0x16($s2)
/* 15260 80024A60 1C07828F */  lw         $v0, %gp_rel(FADE_SPEED)($gp)
/* 15264 80024A64 00000000 */  nop
/* 15268 80024A68 23986202 */  subu       $s3, $s3, $v0
/* 1526C 80024A6C 02006106 */  bgez       $s3, .L80024A78
/* 15270 80024A70 00000000 */   nop
/* 15274 80024A74 21980000 */  addu       $s3, $zero, $zero
.L80024A78:
/* 15278 80024A78 2000BF8F */  lw         $ra, 0x20($sp)
/* 1527C 80024A7C C80693AF */  sw         $s3, %gp_rel(ScreenGrabFade)($gp)
/* 15280 80024A80 1C00B38F */  lw         $s3, 0x1C($sp)
/* 15284 80024A84 1800B28F */  lw         $s2, 0x18($sp)
/* 15288 80024A88 1400B18F */  lw         $s1, 0x14($sp)
/* 1528C 80024A8C 1000B08F */  lw         $s0, 0x10($sp)
/* 15290 80024A90 0800E003 */  jr         $ra
/* 15294 80024A94 2800BD27 */   addiu     $sp, $sp, 0x28
.size FadeOutScreenGrabSprites, . - FadeOutScreenGrabSprites
