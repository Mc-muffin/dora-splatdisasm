.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PrepMemcard
/* 19208 80028A08 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1920C 80028A0C 1800B2AF */  sw         $s2, 0x18($sp)
/* 19210 80028A10 21908000 */  addu       $s2, $a0, $zero
/* 19214 80028A14 2000B4AF */  sw         $s4, 0x20($sp)
/* 19218 80028A18 21A00000 */  addu       $s4, $zero, $zero
/* 1921C 80028A1C 0A80023C */  lui        $v0, %hi(TempMemcard)
/* 19220 80028A20 1400B1AF */  sw         $s1, 0x14($sp)
/* 19224 80028A24 58835124 */  addiu      $s1, $v0, %lo(TempMemcard)
/* 19228 80028A28 21202002 */  addu       $a0, $s1, $zero
/* 1922C 80028A2C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 19230 80028A30 2198A000 */  addu       $s3, $a1, $zero
/* 19234 80028A34 0180053C */  lui        $a1, %hi(D_800117E4)
/* 19238 80028A38 E417A524 */  addiu      $a1, $a1, %lo(D_800117E4)
/* 1923C 80028A3C 2400BFAF */  sw         $ra, 0x24($sp)
/* 19240 80028A40 53C5010C */  jal        sprintf
/* 19244 80028A44 1000B0AF */   sw        $s0, 0x10($sp)
/* 19248 80028A48 B35C010C */  jal        GetSizeOfFile
/* 1924C 80028A4C 21202002 */   addu      $a0, $s1, $zero
/* 19250 80028A50 0D004016 */  bnez       $s2, .L80028A88
/* 19254 80028A54 21804000 */   addu      $s0, $v0, $zero
/* 19258 80028A58 2B3F010C */  jal        new_malloc
/* 1925C 80028A5C 20620424 */   addiu     $a0, $zero, 0x6220
/* 19260 80028A60 21904000 */  addu       $s2, $v0, $zero
/* 19264 80028A64 2B3F010C */  jal        new_malloc
/* 19268 80028A68 21200002 */   addu      $a0, $s0, $zero
/* 1926C 80028A6C A41382AF */  sw         $v0, %gp_rel(mcbackgroundTIMBuffer)($gp)
/* 19270 80028A70 00204226 */  addiu      $v0, $s2, 0x2000
/* 19274 80028A74 B01392AF */  sw         $s2, %gp_rel(gamedata)($gp)
/* 19278 80028A78 B41382AF */  sw         $v0, %gp_rel(mcguiTIMBuffer)($gp)
/* 1927C 80028A7C A81392AF */  sw         $s2, %gp_rel(gprepbuffer)($gp)
/* 19280 80028A80 A9A20008 */  j          .L80028AA4
/* 19284 80028A84 00000000 */   nop
.L80028A88:
/* 19288 80028A88 00204326 */  addiu      $v1, $s2, 0x2000
/* 1928C 80028A8C 00200226 */  addiu      $v0, $s0, 0x2000
/* 19290 80028A90 21104202 */  addu       $v0, $s2, $v0
/* 19294 80028A94 A81380AF */  sw         $zero, %gp_rel(gprepbuffer)($gp)
/* 19298 80028A98 B01392AF */  sw         $s2, %gp_rel(gamedata)($gp)
/* 1929C 80028A9C A41383AF */  sw         $v1, %gp_rel(mcbackgroundTIMBuffer)($gp)
/* 192A0 80028AA0 B41382AF */  sw         $v0, %gp_rel(mcguiTIMBuffer)($gp)
.L80028AA4:
/* 192A4 80028AA4 A413858F */  lw         $a1, %gp_rel(mcbackgroundTIMBuffer)($gp)
/* 192A8 80028AA8 495C010C */  jal        LoadFile
/* 192AC 80028AAC 21202002 */   addu      $a0, $s1, $zero
/* 192B0 80028AB0 0180043C */  lui        $a0, %hi(D_80011800)
/* 192B4 80028AB4 B413858F */  lw         $a1, %gp_rel(mcguiTIMBuffer)($gp)
/* 192B8 80028AB8 495C010C */  jal        LoadFile
/* 192BC 80028ABC 00188424 */   addiu     $a0, $a0, %lo(D_80011800)
/* 192C0 80028AC0 0A80033C */  lui        $v1, %hi(ETMcGuiEnv)
/* 192C4 80028AC4 D8837124 */  addiu      $s1, $v1, %lo(ETMcGuiEnv)
/* 192C8 80028AC8 F8A2000C */  jal        SetMcGuiEnv
/* 192CC 80028ACC 21202002 */   addu      $a0, $s1, $zero
/* 192D0 80028AD0 B013908F */  lw         $s0, %gp_rel(gamedata)($gp)
/* 192D4 80028AD4 23006016 */  bnez       $s3, .L80028B64
/* 192D8 80028AD8 21202002 */   addu      $a0, $s1, $zero
/* 192DC 80028ADC 23BE010C */  jal        McGuiLoad
/* 192E0 80028AE0 21202002 */   addu      $a0, $s1, $zero
/* 192E4 80028AE4 2C004010 */  beqz       $v0, .L80028B98
/* 192E8 80028AE8 ADBA023C */   lui       $v0, (0xBAADF00D >> 16)
/* 192EC 80028AEC 0000038E */  lw         $v1, 0x0($s0)
/* 192F0 80028AF0 0DF04234 */  ori        $v0, $v0, (0xBAADF00D & 0xFFFF)
/* 192F4 80028AF4 0F006214 */  bne        $v1, $v0, .L80028B34
/* 192F8 80028AF8 EFBE023C */   lui       $v0, (0xBEEFB00B >> 16)
/* 192FC 80028AFC 0400038E */  lw         $v1, 0x4($s0)
/* 19300 80028B00 0BB04234 */  ori        $v0, $v0, (0xBEEFB00B & 0xFFFF)
/* 19304 80028B04 0B006214 */  bne        $v1, $v0, .L80028B34
/* 19308 80028B08 EDFE023C */   lui       $v0, (0xFEEDBEEF >> 16)
/* 1930C 80028B0C 0800038E */  lw         $v1, 0x8($s0)
/* 19310 80028B10 EFBE4234 */  ori        $v0, $v0, (0xFEEDBEEF & 0xFFFF)
/* 19314 80028B14 07006214 */  bne        $v1, $v0, .L80028B34
/* 19318 80028B18 0FD0023C */   lui       $v0, (0xD00FC0DE >> 16)
/* 1931C 80028B1C 0C00038E */  lw         $v1, 0xC($s0)
/* 19320 80028B20 DEC04234 */  ori        $v0, $v0, (0xD00FC0DE & 0xFFFF)
/* 19324 80028B24 03006214 */  bne        $v1, $v0, .L80028B34
/* 19328 80028B28 10000226 */   addiu     $v0, $s0, 0x10
/* 1932C 80028B2C 09F84000 */  jalr       $v0
/* 19330 80028B30 00000000 */   nop
.L80028B34:
/* 19334 80028B34 0800048E */  lw         $a0, 0x8($s0)
/* 19338 80028B38 0C00058E */  lw         $a1, 0xC($s0)
/* 1933C 80028B3C 0000028E */  lw         $v0, 0x0($s0)
/* 19340 80028B40 0400038E */  lw         $v1, 0x4($s0)
/* 19344 80028B44 0980013C */  lui        $at, %hi(Game_Lives)
/* 19348 80028B48 904222AC */  sw         $v0, %lo(Game_Lives)($at)
/* 1934C 80028B4C 0980013C */  lui        $at, %hi(Game_Health)
/* 19350 80028B50 8C4223AC */  sw         $v1, %lo(Game_Health)($at)
/* 19354 80028B54 7B9F000C */  jal        SetLevelWorld
/* 19358 80028B58 01001424 */   addiu     $s4, $zero, 0x1
/* 1935C 80028B5C E6A20008 */  j          .L80028B98
/* 19360 80028B60 00000000 */   nop
.L80028B64:
/* 19364 80028B64 0980023C */  lui        $v0, %hi(Game_Lives)
/* 19368 80028B68 9042428C */  lw         $v0, %lo(Game_Lives)($v0)
/* 1936C 80028B6C 0980033C */  lui        $v1, %hi(Game_Health)
/* 19370 80028B70 8C42638C */  lw         $v1, %lo(Game_Health)($v1)
/* 19374 80028B74 0980053C */  lui        $a1, %hi(gmenuworld)
/* 19378 80028B78 E849A58C */  lw         $a1, %lo(gmenuworld)($a1)
/* 1937C 80028B7C 0980063C */  lui        $a2, %hi(gLevel)
/* 19380 80028B80 3456C68C */  lw         $a2, %lo(gLevel)($a2)
/* 19384 80028B84 000002AE */  sw         $v0, 0x0($s0)
/* 19388 80028B88 040003AE */  sw         $v1, 0x4($s0)
/* 1938C 80028B8C 080005AE */  sw         $a1, 0x8($s0)
/* 19390 80028B90 2EBB010C */  jal        McGuiSave
/* 19394 80028B94 0C0006AE */   sw        $a2, 0xC($s0)
.L80028B98:
/* 19398 80028B98 A813828F */  lw         $v0, %gp_rel(gprepbuffer)($gp)
/* 1939C 80028B9C 00000000 */  nop
/* 193A0 80028BA0 07004010 */  beqz       $v0, .L80028BC0
/* 193A4 80028BA4 21108002 */   addu      $v0, $s4, $zero
/* 193A8 80028BA8 A413848F */  lw         $a0, %gp_rel(mcbackgroundTIMBuffer)($gp)
/* 193AC 80028BAC 1C40010C */  jal        new_free
/* 193B0 80028BB0 00000000 */   nop
/* 193B4 80028BB4 1C40010C */  jal        new_free
/* 193B8 80028BB8 21204002 */   addu      $a0, $s2, $zero
/* 193BC 80028BBC 21108002 */  addu       $v0, $s4, $zero
.L80028BC0:
/* 193C0 80028BC0 2400BF8F */  lw         $ra, 0x24($sp)
/* 193C4 80028BC4 2000B48F */  lw         $s4, 0x20($sp)
/* 193C8 80028BC8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 193CC 80028BCC 1800B28F */  lw         $s2, 0x18($sp)
/* 193D0 80028BD0 1400B18F */  lw         $s1, 0x14($sp)
/* 193D4 80028BD4 1000B08F */  lw         $s0, 0x10($sp)
/* 193D8 80028BD8 0800E003 */  jr         $ra
/* 193DC 80028BDC 2800BD27 */   addiu     $sp, $sp, 0x28
.size PrepMemcard, . - PrepMemcard
