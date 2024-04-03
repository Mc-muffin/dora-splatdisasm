.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadLevel
/* 127E0 80021FE0 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 127E4 80021FE4 14000224 */  addiu      $v0, $zero, 0x14
/* 127E8 80021FE8 07000324 */  addiu      $v1, $zero, 0x7
/* 127EC 80021FEC 0980013C */  lui        $at, %hi(ScrollXSize)
/* 127F0 80021FF0 D45922AC */  sw         $v0, %lo(ScrollXSize)($at)
/* 127F4 80021FF4 20000224 */  addiu      $v0, $zero, 0x20
/* 127F8 80021FF8 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 127FC 80021FFC 7800B6AF */  sw         $s6, 0x78($sp)
/* 12800 80022000 7400B5AF */  sw         $s5, 0x74($sp)
/* 12804 80022004 7000B4AF */  sw         $s4, 0x70($sp)
/* 12808 80022008 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 1280C 8002200C 6800B2AF */  sw         $s2, 0x68($sp)
/* 12810 80022010 6400B1AF */  sw         $s1, 0x64($sp)
/* 12814 80022014 6000B0AF */  sw         $s0, 0x60($sp)
/* 12818 80022018 0980013C */  lui        $at, %hi(ScrollYSize)
/* 1281C 8002201C D85923AC */  sw         $v1, %lo(ScrollYSize)($at)
/* 12820 80022020 0980013C */  lui        $at, %hi(ScrollZSize)
/* 12824 80022024 DC5922AC */  sw         $v0, %lo(ScrollZSize)($at)
/* 12828 80022028 D99F000C */  jal        GenerateWorldName
/* 1282C 8002202C 1000A427 */   addiu     $a0, $sp, 0x10
/* 12830 80022030 6F41010C */  jal        chunk_LoadHeader
/* 12834 80022034 1000A427 */   addiu     $a0, $sp, 0x10
/* 12838 80022038 0980043C */  lui        $a0, %hi(D_8009486C)
/* 1283C 8002203C 21A84000 */  addu       $s5, $v0, $zero
/* 12840 80022040 0C00B48E */  lw         $s4, 0xC($s5)
/* 12844 80022044 2F42010C */  jal        genchunkID
/* 12848 80022048 6C488424 */   addiu     $a0, $a0, %lo(D_8009486C)
/* 1284C 8002204C 21284000 */  addu       $a1, $v0, $zero
/* 12850 80022050 21300000 */  addu       $a2, $zero, $zero
/* 12854 80022054 E841010C */  jal        chunk_ChunkOfType
/* 12858 80022058 21208002 */   addu      $a0, $s4, $zero
/* 1285C 8002205C 21208002 */  addu       $a0, $s4, $zero
/* 12860 80022060 9B41010C */  jal        chunk_GetChunkOffset
/* 12864 80022064 21284000 */   addu      $a1, $v0, $zero
/* 12868 80022068 2120A002 */  addu       $a0, $s5, $zero
/* 1286C 8002206C F040010C */  jal        chunk_LoadSubHeader
/* 12870 80022070 21284000 */   addu      $a1, $v0, $zero
/* 12874 80022074 0980043C */  lui        $a0, %hi(D_80094874)
/* 12878 80022078 74488424 */  addiu      $a0, $a0, %lo(D_80094874)
/* 1287C 8002207C 2F42010C */  jal        genchunkID
/* 12880 80022080 21984000 */   addu      $s3, $v0, $zero
/* 12884 80022084 21206002 */  addu       $a0, $s3, $zero
/* 12888 80022088 21284000 */  addu       $a1, $v0, $zero
/* 1288C 8002208C E841010C */  jal        chunk_ChunkOfType
/* 12890 80022090 21300000 */   addu      $a2, $zero, $zero
/* 12894 80022094 21804000 */  addu       $s0, $v0, $zero
/* 12898 80022098 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1289C 8002209C 08000216 */  bne        $s0, $v0, .L800220C0
/* 128A0 800220A0 0980043C */   lui       $a0, %hi(D_8009487C)
/* 128A4 800220A4 2F42010C */  jal        genchunkID
/* 128A8 800220A8 7C488424 */   addiu     $a0, $a0, %lo(D_8009487C)
/* 128AC 800220AC 21206002 */  addu       $a0, $s3, $zero
/* 128B0 800220B0 21284000 */  addu       $a1, $v0, $zero
/* 128B4 800220B4 E841010C */  jal        chunk_ChunkOfType
/* 128B8 800220B8 21300000 */   addu      $a2, $zero, $zero
/* 128BC 800220BC 21804000 */  addu       $s0, $v0, $zero
.L800220C0:
/* 128C0 800220C0 21206002 */  addu       $a0, $s3, $zero
/* 128C4 800220C4 AC41010C */  jal        chunk_LoadChunk
/* 128C8 800220C8 21280002 */   addu      $a1, $s0, $zero
/* 128CC 800220CC 21884000 */  addu       $s1, $v0, $zero
/* 128D0 800220D0 21206002 */  addu       $a0, $s3, $zero
/* 128D4 800220D4 9F42010C */  jal        chunk_GetChunkSize
/* 128D8 800220D8 21280002 */   addu      $a1, $s0, $zero
/* 128DC 800220DC 04002426 */  addiu      $a0, $s1, 0x4
/* 128E0 800220E0 21800000 */  addu       $s0, $zero, $zero
/* 128E4 800220E4 0880033C */  lui        $v1, %hi(TestWorld)
/* 128E8 800220E8 0980013C */  lui        $at, %hi(gdebug_celsize)
/* 128EC 800220EC C04A22AC */  sw         $v0, %lo(gdebug_celsize)($at)
/* 128F0 800220F0 8C656224 */  addiu      $v0, $v1, %lo(TestWorld)
/* 128F4 800220F4 0000328E */  lw         $s2, 0x0($s1)
/* 128F8 800220F8 21B06000 */  addu       $s6, $v1, $zero
/* 128FC 800220FC 180044AC */  sw         $a0, 0x18($v0)
/* 12900 80022100 0A004012 */  beqz       $s2, .L8002212C
/* 12904 80022104 0C0052AC */   sw        $s2, 0xC($v0)
.L80022108:
/* 12908 80022108 0000828C */  lw         $v0, 0x0($a0)
/* 1290C 8002210C 00000000 */  nop
/* 12910 80022110 02004010 */  beqz       $v0, .L8002211C
/* 12914 80022114 21105100 */   addu      $v0, $v0, $s1
/* 12918 80022118 000082AC */  sw         $v0, 0x0($a0)
.L8002211C:
/* 1291C 8002211C 01001026 */  addiu      $s0, $s0, 0x1
/* 12920 80022120 2B101202 */  sltu       $v0, $s0, $s2
/* 12924 80022124 F8FF4014 */  bnez       $v0, .L80022108
/* 12928 80022128 04008424 */   addiu     $a0, $a0, 0x4
.L8002212C:
/* 1292C 8002212C 10004012 */  beqz       $s2, .L80022170
/* 12930 80022130 21800000 */   addu      $s0, $zero, $zero
/* 12934 80022134 0880023C */  lui        $v0, %hi(TestWorld)
/* 12938 80022138 8C655124 */  addiu      $s1, $v0, %lo(TestWorld)
.L8002213C:
/* 1293C 8002213C 1800238E */  lw         $v1, 0x18($s1)
/* 12940 80022140 80101000 */  sll        $v0, $s0, 2
/* 12944 80022144 21104300 */  addu       $v0, $v0, $v1
/* 12948 80022148 0000448C */  lw         $a0, 0x0($v0)
/* 1294C 8002214C 00000000 */  nop
/* 12950 80022150 03008010 */  beqz       $a0, .L80022160
/* 12954 80022154 00000000 */   nop
/* 12958 80022158 BD35010C */  jal        InitCel
/* 1295C 8002215C 00000000 */   nop
.L80022160:
/* 12960 80022160 01001026 */  addiu      $s0, $s0, 0x1
/* 12964 80022164 2B101202 */  sltu       $v0, $s0, $s2
/* 12968 80022168 F4FF4014 */  bnez       $v0, .L8002213C
/* 1296C 8002216C 00000000 */   nop
.L80022170:
/* 12970 80022170 0980043C */  lui        $a0, %hi(D_80094884)
/* 12974 80022174 2F42010C */  jal        genchunkID
/* 12978 80022178 84488424 */   addiu     $a0, $a0, %lo(D_80094884)
/* 1297C 8002217C 21206002 */  addu       $a0, $s3, $zero
/* 12980 80022180 21284000 */  addu       $a1, $v0, $zero
/* 12984 80022184 E841010C */  jal        chunk_ChunkOfType
/* 12988 80022188 21300000 */   addu      $a2, $zero, $zero
/* 1298C 8002218C 21804000 */  addu       $s0, $v0, $zero
/* 12990 80022190 21206002 */  addu       $a0, $s3, $zero
/* 12994 80022194 AC41010C */  jal        chunk_LoadChunk
/* 12998 80022198 21280002 */   addu      $a1, $s0, $zero
/* 1299C 8002219C 21884000 */  addu       $s1, $v0, $zero
/* 129A0 800221A0 21206002 */  addu       $a0, $s3, $zero
/* 129A4 800221A4 A441010C */  jal        chunk_GetChunkLength
/* 129A8 800221A8 21280002 */   addu      $a1, $s0, $zero
/* 129AC 800221AC 21202002 */  addu       $a0, $s1, $zero
/* 129B0 800221B0 0035010C */  jal        InitCelTextures
/* 129B4 800221B4 21284000 */   addu      $a1, $v0, $zero
/* 129B8 800221B8 1C40010C */  jal        new_free
/* 129BC 800221BC 21202002 */   addu      $a0, $s1, $zero
/* 129C0 800221C0 8C65C326 */  addiu      $v1, $s6, %lo(TestWorld)
/* 129C4 800221C4 0C00708C */  lw         $s0, 0xC($v1)
/* 129C8 800221C8 00000000 */  nop
/* 129CC 800221CC 80201000 */  sll        $a0, $s0, 2
/* 129D0 800221D0 21209000 */  addu       $a0, $a0, $s0
/* 129D4 800221D4 2B3F010C */  jal        new_malloc
/* 129D8 800221D8 C0200400 */   sll       $a0, $a0, 3
/* 129DC 800221DC 0980013C */  lui        $at, %hi(CellAttributesPtr)
/* 129E0 800221E0 6C5022AC */  sw         $v0, %lo(CellAttributesPtr)($at)
/* 129E4 800221E4 1F00001A */  blez       $s0, .L80022264
/* 129E8 800221E8 21280000 */   addu      $a1, $zero, $zero
/* 129EC 800221EC 34030B24 */  addiu      $t3, $zero, 0x334
/* 129F0 800221F0 70020A24 */  addiu      $t2, $zero, 0x270
/* 129F4 800221F4 50000924 */  addiu      $t1, $zero, 0x50
/* 129F8 800221F8 0F000824 */  addiu      $t0, $zero, 0xF
/* 129FC 800221FC FFFF0724 */  addiu      $a3, $zero, -0x1
/* 12A00 80022200 FFFF0624 */  addiu      $a2, $zero, -0x1
.L80022204:
/* 12A04 80022204 FF03A430 */  andi       $a0, $a1, 0x3FF
/* 12A08 80022208 0100A524 */  addiu      $a1, $a1, 0x1
/* 12A0C 8002220C 80180400 */  sll        $v1, $a0, 2
/* 12A10 80022210 21186400 */  addu       $v1, $v1, $a0
/* 12A14 80022214 0980023C */  lui        $v0, %hi(CellAttributesPtr)
/* 12A18 80022218 6C50428C */  lw         $v0, %lo(CellAttributesPtr)($v0)
/* 12A1C 8002221C C0180300 */  sll        $v1, $v1, 3
/* 12A20 80022220 21104300 */  addu       $v0, $v0, $v1
/* 12A24 80022224 2A18B000 */  slt        $v1, $a1, $s0
/* 12A28 80022228 04004BAC */  sw         $t3, 0x4($v0)
/* 12A2C 8002222C 140040A4 */  sh         $zero, 0x14($v0)
/* 12A30 80022230 160040A4 */  sh         $zero, 0x16($v0)
/* 12A34 80022234 180040A4 */  sh         $zero, 0x18($v0)
/* 12A38 80022238 1A0040A4 */  sh         $zero, 0x1A($v0)
/* 12A3C 8002223C 1C004AA4 */  sh         $t2, 0x1C($v0)
/* 12A40 80022240 1E0049A4 */  sh         $t1, 0x1E($v0)
/* 12A44 80022244 080048AC */  sw         $t0, 0x8($v0)
/* 12A48 80022248 0C0040A4 */  sh         $zero, 0xC($v0)
/* 12A4C 8002224C 0E0040A4 */  sh         $zero, 0xE($v0)
/* 12A50 80022250 100040A4 */  sh         $zero, 0x10($v0)
/* 12A54 80022254 200040A4 */  sh         $zero, 0x20($v0)
/* 12A58 80022258 240047A0 */  sb         $a3, 0x24($v0)
/* 12A5C 8002225C E9FF6014 */  bnez       $v1, .L80022204
/* 12A60 80022260 220046A4 */   sh        $a2, 0x22($v0)
.L80022264:
/* 12A64 80022264 0980043C */  lui        $a0, %hi(D_8009488C)
/* 12A68 80022268 2F42010C */  jal        genchunkID
/* 12A6C 8002226C 8C488424 */   addiu     $a0, $a0, %lo(D_8009488C)
/* 12A70 80022270 21206002 */  addu       $a0, $s3, $zero
/* 12A74 80022274 21284000 */  addu       $a1, $v0, $zero
/* 12A78 80022278 E841010C */  jal        chunk_ChunkOfType
/* 12A7C 8002227C 21300000 */   addu      $a2, $zero, $zero
/* 12A80 80022280 21804000 */  addu       $s0, $v0, $zero
/* 12A84 80022284 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 12A88 80022288 0E000212 */  beq        $s0, $v0, .L800222C4
/* 12A8C 8002228C 0980043C */   lui       $a0, %hi(D_80094894)
/* 12A90 80022290 21206002 */  addu       $a0, $s3, $zero
/* 12A94 80022294 AC41010C */  jal        chunk_LoadChunk
/* 12A98 80022298 21280002 */   addu      $a1, $s0, $zero
/* 12A9C 8002229C 21884000 */  addu       $s1, $v0, $zero
/* 12AA0 800222A0 0000258E */  lw         $a1, 0x0($s1)
/* 12AA4 800222A4 00000000 */  nop
/* 12AA8 800222A8 0300A010 */  beqz       $a1, .L800222B8
/* 12AAC 800222AC 00000000 */   nop
/* 12AB0 800222B0 717E000C */  jal        parse_attrib_cellattrib
/* 12AB4 800222B4 04002426 */   addiu     $a0, $s1, 0x4
.L800222B8:
/* 12AB8 800222B8 1C40010C */  jal        new_free
/* 12ABC 800222BC 21202002 */   addu      $a0, $s1, $zero
/* 12AC0 800222C0 0980043C */  lui        $a0, %hi(D_80094894)
.L800222C4:
/* 12AC4 800222C4 2F42010C */  jal        genchunkID
/* 12AC8 800222C8 94488424 */   addiu     $a0, $a0, %lo(D_80094894)
/* 12ACC 800222CC 21206002 */  addu       $a0, $s3, $zero
/* 12AD0 800222D0 21284000 */  addu       $a1, $v0, $zero
/* 12AD4 800222D4 E841010C */  jal        chunk_ChunkOfType
/* 12AD8 800222D8 21300000 */   addu      $a2, $zero, $zero
/* 12ADC 800222DC CC94010C */  jal        InitAnimateWorldCells
/* 12AE0 800222E0 21804000 */   addu      $s0, $v0, $zero
/* 12AE4 800222E4 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 12AE8 800222E8 0C000312 */  beq        $s0, $v1, .L8002231C
/* 12AEC 800222EC 0980043C */   lui       $a0, %hi(D_8009489C)
/* 12AF0 800222F0 21206002 */  addu       $a0, $s3, $zero
/* 12AF4 800222F4 AC41010C */  jal        chunk_LoadChunk
/* 12AF8 800222F8 21280002 */   addu      $a1, $s0, $zero
/* 12AFC 800222FC 21884000 */  addu       $s1, $v0, $zero
/* 12B00 80022300 0000258E */  lw         $a1, 0x0($s1)
/* 12B04 80022304 00000000 */  nop
/* 12B08 80022308 0300A010 */  beqz       $a1, .L80022318
/* 12B0C 8002230C 00000000 */   nop
/* 12B10 80022310 6F80000C */  jal        parse_attrib_cellanim
/* 12B14 80022314 04002426 */   addiu     $a0, $s1, 0x4
.L80022318:
/* 12B18 80022318 0980043C */  lui        $a0, %hi(D_8009489C)
.L8002231C:
/* 12B1C 8002231C 2F42010C */  jal        genchunkID
/* 12B20 80022320 9C488424 */   addiu     $a0, $a0, %lo(D_8009489C)
/* 12B24 80022324 21208002 */  addu       $a0, $s4, $zero
/* 12B28 80022328 21284000 */  addu       $a1, $v0, $zero
/* 12B2C 8002232C E841010C */  jal        chunk_ChunkOfType
/* 12B30 80022330 21300000 */   addu      $a2, $zero, $zero
/* 12B34 80022334 21208002 */  addu       $a0, $s4, $zero
/* 12B38 80022338 9B41010C */  jal        chunk_GetChunkOffset
/* 12B3C 8002233C 21284000 */   addu      $a1, $v0, $zero
/* 12B40 80022340 2120A002 */  addu       $a0, $s5, $zero
/* 12B44 80022344 F040010C */  jal        chunk_LoadSubHeader
/* 12B48 80022348 21284000 */   addu      $a1, $v0, $zero
/* 12B4C 8002234C 0980043C */  lui        $a0, %hi(D_800948A4)
/* 12B50 80022350 A4488424 */  addiu      $a0, $a0, %lo(D_800948A4)
/* 12B54 80022354 2F42010C */  jal        genchunkID
/* 12B58 80022358 21984000 */   addu      $s3, $v0, $zero
/* 12B5C 8002235C 21206002 */  addu       $a0, $s3, $zero
/* 12B60 80022360 21284000 */  addu       $a1, $v0, $zero
/* 12B64 80022364 E841010C */  jal        chunk_ChunkOfType
/* 12B68 80022368 21300000 */   addu      $a2, $zero, $zero
/* 12B6C 8002236C 21206002 */  addu       $a0, $s3, $zero
/* 12B70 80022370 AC41010C */  jal        chunk_LoadChunk
/* 12B74 80022374 21284000 */   addu      $a1, $v0, $zero
/* 12B78 80022378 21884000 */  addu       $s1, $v0, $zero
/* 12B7C 8002237C 0980043C */  lui        $a0, %hi(D_800948AC)
/* 12B80 80022380 2F42010C */  jal        genchunkID
/* 12B84 80022384 AC488424 */   addiu     $a0, $a0, %lo(D_800948AC)
/* 12B88 80022388 21206002 */  addu       $a0, $s3, $zero
/* 12B8C 8002238C 21284000 */  addu       $a1, $v0, $zero
/* 12B90 80022390 E841010C */  jal        chunk_ChunkOfType
/* 12B94 80022394 21300000 */   addu      $a2, $zero, $zero
/* 12B98 80022398 0000238E */  lw         $v1, 0x0($s1)
/* 12B9C 8002239C 0400248E */  lw         $a0, 0x4($s1)
/* 12BA0 800223A0 00000000 */  nop
/* 12BA4 800223A4 18006400 */  mult       $v1, $a0
/* 12BA8 800223A8 12180000 */  mflo       $v1
/* 12BAC 800223AC 0800258E */  lw         $a1, 0x8($s1)
/* 12BB0 800223B0 00000000 */  nop
/* 12BB4 800223B4 18006500 */  mult       $v1, $a1
/* 12BB8 800223B8 21804000 */  addu       $s0, $v0, $zero
/* 12BBC 800223BC 12900000 */  mflo       $s2
/* 12BC0 800223C0 2B3F010C */  jal        new_malloc
/* 12BC4 800223C4 40201200 */   sll       $a0, $s2, 1
/* 12BC8 800223C8 21206002 */  addu       $a0, $s3, $zero
/* 12BCC 800223CC 21280002 */  addu       $a1, $s0, $zero
/* 12BD0 800223D0 AC41010C */  jal        chunk_LoadChunk
/* 12BD4 800223D4 21A04000 */   addu      $s4, $v0, $zero
/* 12BD8 800223D8 21206002 */  addu       $a0, $s3, $zero
/* 12BDC 800223DC 21280002 */  addu       $a1, $s0, $zero
/* 12BE0 800223E0 9F42010C */  jal        chunk_GetChunkSize
/* 12BE4 800223E4 21804000 */   addu      $s0, $v0, $zero
/* 12BE8 800223E8 21288002 */  addu       $a1, $s4, $zero
/* 12BEC 800223EC 21200002 */  addu       $a0, $s0, $zero
/* 12BF0 800223F0 0980013C */  lui        $at, %hi(gdebug_mapsize)
/* 12BF4 800223F4 C44A22AC */  sw         $v0, %lo(gdebug_mapsize)($at)
/* 12BF8 800223F8 08004012 */  beqz       $s2, .L8002241C
/* 12BFC 800223FC 21180000 */   addu      $v1, $zero, $zero
.L80022400:
/* 12C00 80022400 00008294 */  lhu        $v0, 0x0($a0)
/* 12C04 80022404 04008424 */  addiu      $a0, $a0, 0x4
/* 12C08 80022408 01006324 */  addiu      $v1, $v1, 0x1
/* 12C0C 8002240C 0000A2A4 */  sh         $v0, 0x0($a1)
/* 12C10 80022410 2B107200 */  sltu       $v0, $v1, $s2
/* 12C14 80022414 FAFF4014 */  bnez       $v0, .L80022400
/* 12C18 80022418 0200A524 */   addiu     $a1, $a1, 0x2
.L8002241C:
/* 12C1C 8002241C 0000228E */  lw         $v0, 0x0($s1)
/* 12C20 80022420 04003126 */  addiu      $s1, $s1, 0x4
/* 12C24 80022424 8C65C2AE */  sw         $v0, %lo(TestWorld)($s6)
/* 12C28 80022428 0000238E */  lw         $v1, 0x0($s1)
/* 12C2C 8002242C 8C65D226 */  addiu      $s2, $s6, %lo(TestWorld)
/* 12C30 80022430 040043AE */  sw         $v1, 0x4($s2)
/* 12C34 80022434 0400228E */  lw         $v0, 0x4($s1)
/* 12C38 80022438 21200002 */  addu       $a0, $s0, $zero
/* 12C3C 8002243C 140054AE */  sw         $s4, 0x14($s2)
/* 12C40 80022440 1C40010C */  jal        new_free
/* 12C44 80022444 080042AE */   sw        $v0, 0x8($s2)
/* 12C48 80022448 FC81000C */  jal        CountSpecialCells
/* 12C4C 8002244C 00000000 */   nop
/* 12C50 80022450 7501010C */  jal        InitWorldTriggers
/* 12C54 80022454 00000000 */   nop
/* 12C58 80022458 3568000C */  jal        InitETStartPoint
/* 12C5C 8002245C 00000000 */   nop
/* 12C60 80022460 0980043C */  lui        $a0, %hi(D_800948B4)
/* 12C64 80022464 2F42010C */  jal        genchunkID
/* 12C68 80022468 B4488424 */   addiu     $a0, $a0, %lo(D_800948B4)
/* 12C6C 8002246C 21206002 */  addu       $a0, $s3, $zero
/* 12C70 80022470 21284000 */  addu       $a1, $v0, $zero
/* 12C74 80022474 E841010C */  jal        chunk_ChunkOfType
/* 12C78 80022478 21300000 */   addu      $a2, $zero, $zero
/* 12C7C 8002247C 21284000 */  addu       $a1, $v0, $zero
/* 12C80 80022480 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 12C84 80022484 0800A210 */  beq        $a1, $v0, .L800224A8
/* 12C88 80022488 00000000 */   nop
/* 12C8C 8002248C AC41010C */  jal        chunk_LoadChunk
/* 12C90 80022490 21206002 */   addu      $a0, $s3, $zero
/* 12C94 80022494 0000458C */  lw         $a1, 0x0($v0)
/* 12C98 80022498 717B000C */  jal        parse_attrib_path
/* 12C9C 8002249C 04004424 */   addiu     $a0, $v0, 0x4
/* 12CA0 800224A0 0C14010C */  jal        SetWorldPaths
/* 12CA4 800224A4 21204000 */   addu      $a0, $v0, $zero
.L800224A8:
/* 12CA8 800224A8 0980043C */  lui        $a0, %hi(D_800948BC)
/* 12CAC 800224AC 2F42010C */  jal        genchunkID
/* 12CB0 800224B0 BC488424 */   addiu     $a0, $a0, %lo(D_800948BC)
/* 12CB4 800224B4 21206002 */  addu       $a0, $s3, $zero
/* 12CB8 800224B8 21284000 */  addu       $a1, $v0, $zero
/* 12CBC 800224BC E841010C */  jal        chunk_ChunkOfType
/* 12CC0 800224C0 21300000 */   addu      $a2, $zero, $zero
/* 12CC4 800224C4 21206002 */  addu       $a0, $s3, $zero
/* 12CC8 800224C8 AC41010C */  jal        chunk_LoadChunk
/* 12CCC 800224CC 21284000 */   addu      $a1, $v0, $zero
/* 12CD0 800224D0 21804000 */  addu       $s0, $v0, $zero
/* 12CD4 800224D4 0980043C */  lui        $a0, %hi(gWorld)
/* 12CD8 800224D8 3C56848C */  lw         $a0, %lo(gWorld)($a0)
/* 12CDC 800224DC 0000118E */  lw         $s1, 0x0($s0)
/* 12CE0 800224E0 9CDD000C */  jal        ReSetActorinPoolActive
/* 12CE4 800224E4 00000000 */   nop
/* 12CE8 800224E8 04000426 */  addiu      $a0, $s0, 0x4
/* 12CEC 800224EC 977A000C */  jal        parse_attrib_actor
/* 12CF0 800224F0 21282002 */   addu      $a1, $s1, $zero
/* 12CF4 800224F4 8C65C38E */  lw         $v1, %lo(TestWorld)($s6)
/* 12CF8 800224F8 0980023C */  lui        $v0, %hi(ScrollXSize)
/* 12CFC 800224FC D459428C */  lw         $v0, %lo(ScrollXSize)($v0)
/* 12D00 80022500 00000000 */  nop
/* 12D04 80022504 2A106200 */  slt        $v0, $v1, $v0
/* 12D08 80022508 03004010 */  beqz       $v0, .L80022518
/* 12D0C 8002250C 00000000 */   nop
/* 12D10 80022510 0980013C */  lui        $at, %hi(ScrollXSize)
/* 12D14 80022514 D45923AC */  sw         $v1, %lo(ScrollXSize)($at)
.L80022518:
/* 12D18 80022518 0400438E */  lw         $v1, 0x4($s2)
/* 12D1C 8002251C 0980023C */  lui        $v0, %hi(ScrollYSize)
/* 12D20 80022520 D859428C */  lw         $v0, %lo(ScrollYSize)($v0)
/* 12D24 80022524 00000000 */  nop
/* 12D28 80022528 2A106200 */  slt        $v0, $v1, $v0
/* 12D2C 8002252C 03004010 */  beqz       $v0, .L8002253C
/* 12D30 80022530 00000000 */   nop
/* 12D34 80022534 0980013C */  lui        $at, %hi(ScrollYSize)
/* 12D38 80022538 D85923AC */  sw         $v1, %lo(ScrollYSize)($at)
.L8002253C:
/* 12D3C 8002253C 0800438E */  lw         $v1, 0x8($s2)
/* 12D40 80022540 0980023C */  lui        $v0, %hi(ScrollZSize)
/* 12D44 80022544 DC59428C */  lw         $v0, %lo(ScrollZSize)($v0)
/* 12D48 80022548 00000000 */  nop
/* 12D4C 8002254C 2A106200 */  slt        $v0, $v1, $v0
/* 12D50 80022550 03004010 */  beqz       $v0, .L80022560
/* 12D54 80022554 00000000 */   nop
/* 12D58 80022558 0980013C */  lui        $at, %hi(ScrollZSize)
/* 12D5C 8002255C DC5923AC */  sw         $v1, %lo(ScrollZSize)($at)
.L80022560:
/* 12D60 80022560 9D82000C */  jal        FillInSpecialCells
/* 12D64 80022564 00000000 */   nop
/* 12D68 80022568 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 12D6C 8002256C 7800B68F */  lw         $s6, 0x78($sp)
/* 12D70 80022570 7400B58F */  lw         $s5, 0x74($sp)
/* 12D74 80022574 7000B48F */  lw         $s4, 0x70($sp)
/* 12D78 80022578 6C00B38F */  lw         $s3, 0x6C($sp)
/* 12D7C 8002257C 6800B28F */  lw         $s2, 0x68($sp)
/* 12D80 80022580 6400B18F */  lw         $s1, 0x64($sp)
/* 12D84 80022584 6000B08F */  lw         $s0, 0x60($sp)
/* 12D88 80022588 0800E003 */  jr         $ra
/* 12D8C 8002258C 8000BD27 */   addiu     $sp, $sp, 0x80
.size LoadLevel, . - LoadLevel
