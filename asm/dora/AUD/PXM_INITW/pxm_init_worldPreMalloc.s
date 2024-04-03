.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init_worldPreMalloc
/* 243F4 80033BF4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 243F8 80033BF8 1000B0AF */  sw         $s0, 0x10($sp)
/* 243FC 80033BFC 0180103C */  lui        $s0, %hi(D_800125FC)
/* 24400 80033C00 0980033C */  lui        $v1, %hi(gWorld)
/* 24404 80033C04 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 24408 80033C08 FC251026 */  addiu      $s0, $s0, %lo(D_800125FC)
/* 2440C 80033C0C 3000BEAF */  sw         $fp, 0x30($sp)
/* 24410 80033C10 09801E3C */  lui        $fp, %hi(gLevel)
/* 24414 80033C14 3456DE8F */  lw         $fp, %lo(gLevel)($fp)
/* 24418 80033C18 21200002 */  addu       $a0, $s0, $zero
/* 2441C 80033C1C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 24420 80033C20 3814938F */  lw         $s3, %gp_rel(MenuPreMallocVB)($gp)
/* 24424 80033C24 0880053C */  lui        $a1, %hi(WorldList)
/* 24428 80033C28 1400B1AF */  sw         $s1, 0x14($sp)
/* 2442C 80033C2C 2414918F */  lw         $s1, %gp_rel(MenuPreMallocPXV)($gp)
/* 24430 80033C30 6C64A524 */  addiu      $a1, $a1, %lo(WorldList)
/* 24434 80033C34 3400BFAF */  sw         $ra, 0x34($sp)
/* 24438 80033C38 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 2443C 80033C3C 2800B6AF */  sw         $s6, 0x28($sp)
/* 24440 80033C40 2400B5AF */  sw         $s5, 0x24($sp)
/* 24444 80033C44 2000B4AF */  sw         $s4, 0x20($sp)
/* 24448 80033C48 1800B2AF */  sw         $s2, 0x18($sp)
/* 2444C 80033C4C 0980013C */  lui        $at, %hi(pxm_framecount_last)
/* 24450 80033C50 AC5820AC */  sw         $zero, %lo(pxm_framecount_last)($at)
/* 24454 80033C54 80100300 */  sll        $v0, $v1, 2
/* 24458 80033C58 21104300 */  addu       $v0, $v0, $v1
/* 2445C 80033C5C 80100200 */  sll        $v0, $v0, 2
/* 24460 80033C60 21104500 */  addu       $v0, $v0, $a1
/* 24464 80033C64 0180033C */  lui        $v1, %hi(D_80012610)
/* 24468 80033C68 1000578C */  lw         $s7, 0x10($v0)
/* 2446C 80033C6C B35C010C */  jal        GetSizeOfFile
/* 24470 80033C70 10267424 */   addiu     $s4, $v1, %lo(D_80012610)
/* 24474 80033C74 21200002 */  addu       $a0, $s0, $zero
/* 24478 80033C78 21286002 */  addu       $a1, $s3, $zero
/* 2447C 80033C7C 495C010C */  jal        LoadFile
/* 24480 80033C80 21904000 */   addu      $s2, $v0, $zero
/* 24484 80033C84 AF05020C */  jal        SpuSetTransferMode
/* 24488 80033C88 01000424 */   addiu     $a0, $zero, 0x1
/* 2448C 80033C8C EB02020C */  jal        SpuMalloc
/* 24490 80033C90 21204002 */   addu      $a0, $s2, $zero
/* 24494 80033C94 0B80103C */  lui        $s0, %hi(pxm_sndfiles)
/* 24498 80033C98 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 2449C 80033C9C 02004310 */  beq        $v0, $v1, .L80033CA8
/* 244A0 80033CA0 E0861526 */   addiu     $s5, $s0, %lo(pxm_sndfiles)
/* 244A4 80033CA4 E08602AE */  sw         $v0, %lo(pxm_sndfiles)($s0)
.L80033CA8:
/* 244A8 80033CA8 E086048E */  lw         $a0, %lo(pxm_sndfiles)($s0)
/* 244AC 80033CAC 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 244B0 80033CB0 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 244B4 80033CB4 0400B2AE */  sw         $s2, 0x4($s5)
/* 244B8 80033CB8 23105200 */  subu       $v0, $v0, $s2
/* 244BC 80033CBC 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 244C0 80033CC0 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 244C4 80033CC4 9705020C */  jal        SpuSetTransferStartAddr
/* 244C8 80033CC8 0180103C */   lui       $s0, %hi(D_80012628)
/* 244CC 80033CCC 21206002 */  addu       $a0, $s3, $zero
/* 244D0 80033CD0 7F05020C */  jal        SpuWrite
/* 244D4 80033CD4 21284002 */   addu      $a1, $s2, $zero
/* 244D8 80033CD8 B35C010C */  jal        GetSizeOfFile
/* 244DC 80033CDC 21208002 */   addu      $a0, $s4, $zero
/* 244E0 80033CE0 21208002 */  addu       $a0, $s4, $zero
/* 244E4 80033CE4 495C010C */  jal        LoadFile
/* 244E8 80033CE8 21282002 */   addu      $a1, $s1, $zero
/* 244EC 80033CEC 28261026 */  addiu      $s0, $s0, %lo(D_80012628)
/* 244F0 80033CF0 21200002 */  addu       $a0, $s0, $zero
/* 244F4 80033CF4 1800B1AE */  sw         $s1, 0x18($s5)
/* 244F8 80033CF8 0000228E */  lw         $v0, 0x0($s1)
/* 244FC 80033CFC 3014948F */  lw         $s4, %gp_rel(GenericPreMallocVB)($gp)
/* 24500 80033D00 3414928F */  lw         $s2, %gp_rel(GenericPreMallocPXV)($gp)
/* 24504 80033D04 C0180200 */  sll        $v1, $v0, 3
/* 24508 80033D08 10006324 */  addiu      $v1, $v1, 0x10
/* 2450C 80033D0C 0800A2AE */  sw         $v0, 0x8($s5)
/* 24510 80033D10 0400258E */  lw         $a1, 0x4($s1)
/* 24514 80033D14 21402302 */  addu       $t0, $s1, $v1
/* 24518 80033D18 40100500 */  sll        $v0, $a1, 1
/* 2451C 80033D1C 21104500 */  addu       $v0, $v0, $a1
/* 24520 80033D20 80100200 */  sll        $v0, $v0, 2
/* 24524 80033D24 21186200 */  addu       $v1, $v1, $v0
/* 24528 80033D28 0C00A5AE */  sw         $a1, 0xC($s5)
/* 2452C 80033D2C 0800268E */  lw         $a2, 0x8($s1)
/* 24530 80033D30 21382302 */  addu       $a3, $s1, $v1
/* 24534 80033D34 80100600 */  sll        $v0, $a2, 2
/* 24538 80033D38 21186200 */  addu       $v1, $v1, $v0
/* 2453C 80033D3C 10002226 */  addiu      $v0, $s1, 0x10
/* 24540 80033D40 1000A6AE */  sw         $a2, 0x10($s5)
/* 24544 80033D44 0C00258E */  lw         $a1, 0xC($s1)
/* 24548 80033D48 21182302 */  addu       $v1, $s1, $v1
/* 2454C 80033D4C 2000A2AE */  sw         $v0, 0x20($s5)
/* 24550 80033D50 0180023C */  lui        $v0, %hi(D_80012640)
/* 24554 80033D54 40265624 */  addiu      $s6, $v0, %lo(D_80012640)
/* 24558 80033D58 2400A8AE */  sw         $t0, 0x24($s5)
/* 2455C 80033D5C 2800A7AE */  sw         $a3, 0x28($s5)
/* 24560 80033D60 1C00A3AE */  sw         $v1, 0x1C($s5)
/* 24564 80033D64 B35C010C */  jal        GetSizeOfFile
/* 24568 80033D68 1400A5AE */   sw        $a1, 0x14($s5)
/* 2456C 80033D6C 21200002 */  addu       $a0, $s0, $zero
/* 24570 80033D70 21288002 */  addu       $a1, $s4, $zero
/* 24574 80033D74 495C010C */  jal        LoadFile
/* 24578 80033D78 21804000 */   addu      $s0, $v0, $zero
/* 2457C 80033D7C AF05020C */  jal        SpuSetTransferMode
/* 24580 80033D80 01000424 */   addiu     $a0, $zero, 0x1
/* 24584 80033D84 EB02020C */  jal        SpuMalloc
/* 24588 80033D88 21200002 */   addu      $a0, $s0, $zero
/* 2458C 80033D8C FFFF0324 */  addiu      $v1, $zero, -0x1
/* 24590 80033D90 02004310 */  beq        $v0, $v1, .L80033D9C
/* 24594 80033D94 2C00B326 */   addiu     $s3, $s5, 0x2C
/* 24598 80033D98 2C00A2AE */  sw         $v0, 0x2C($s5)
.L80033D9C:
/* 2459C 80033D9C 2C00A48E */  lw         $a0, 0x2C($s5)
/* 245A0 80033DA0 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 245A4 80033DA4 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 245A8 80033DA8 040070AE */  sw         $s0, 0x4($s3)
/* 245AC 80033DAC 23105000 */  subu       $v0, $v0, $s0
/* 245B0 80033DB0 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 245B4 80033DB4 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 245B8 80033DB8 9705020C */  jal        SpuSetTransferStartAddr
/* 245BC 80033DBC 0100D127 */   addiu     $s1, $fp, 0x1
/* 245C0 80033DC0 21208002 */  addu       $a0, $s4, $zero
/* 245C4 80033DC4 7F05020C */  jal        SpuWrite
/* 245C8 80033DC8 21280002 */   addu      $a1, $s0, $zero
/* 245CC 80033DCC B35C010C */  jal        GetSizeOfFile
/* 245D0 80033DD0 2120C002 */   addu      $a0, $s6, $zero
/* 245D4 80033DD4 2120C002 */  addu       $a0, $s6, $zero
/* 245D8 80033DD8 495C010C */  jal        LoadFile
/* 245DC 80033DDC 21284002 */   addu      $a1, $s2, $zero
/* 245E0 80033DE0 0A80043C */  lui        $a0, %hi(vbfilename)
/* 245E4 80033DE4 988B8424 */  addiu      $a0, $a0, %lo(vbfilename)
/* 245E8 80033DE8 0180053C */  lui        $a1, %hi(D_80012658)
/* 245EC 80033DEC 5826A524 */  addiu      $a1, $a1, %lo(D_80012658)
/* 245F0 80033DF0 2130E002 */  addu       $a2, $s7, $zero
/* 245F4 80033DF4 180072AE */  sw         $s2, 0x18($s3)
/* 245F8 80033DF8 0000428E */  lw         $v0, 0x0($s2)
/* 245FC 80033DFC 21382002 */  addu       $a3, $s1, $zero
/* 24600 80033E00 C0180200 */  sll        $v1, $v0, 3
/* 24604 80033E04 10006324 */  addiu      $v1, $v1, 0x10
/* 24608 80033E08 080062AE */  sw         $v0, 0x8($s3)
/* 2460C 80033E0C 0400488E */  lw         $t0, 0x4($s2)
/* 24610 80033E10 21584302 */  addu       $t3, $s2, $v1
/* 24614 80033E14 40100800 */  sll        $v0, $t0, 1
/* 24618 80033E18 21104800 */  addu       $v0, $v0, $t0
/* 2461C 80033E1C 80100200 */  sll        $v0, $v0, 2
/* 24620 80033E20 21186200 */  addu       $v1, $v1, $v0
/* 24624 80033E24 0C0068AE */  sw         $t0, 0xC($s3)
/* 24628 80033E28 0800498E */  lw         $t1, 0x8($s2)
/* 2462C 80033E2C 21504302 */  addu       $t2, $s2, $v1
/* 24630 80033E30 80100900 */  sll        $v0, $t1, 2
/* 24634 80033E34 21186200 */  addu       $v1, $v1, $v0
/* 24638 80033E38 10004226 */  addiu      $v0, $s2, 0x10
/* 2463C 80033E3C 100069AE */  sw         $t1, 0x10($s3)
/* 24640 80033E40 0C00488E */  lw         $t0, 0xC($s2)
/* 24644 80033E44 21184302 */  addu       $v1, $s2, $v1
/* 24648 80033E48 200062AE */  sw         $v0, 0x20($s3)
/* 2464C 80033E4C 24006BAE */  sw         $t3, 0x24($s3)
/* 24650 80033E50 28006AAE */  sw         $t2, 0x28($s3)
/* 24654 80033E54 1C0063AE */  sw         $v1, 0x1C($s3)
/* 24658 80033E58 53C5010C */  jal        sprintf
/* 2465C 80033E5C 140068AE */   sw        $t0, 0x14($s3)
/* 24660 80033E60 0A80103C */  lui        $s0, %hi(vbfilename1)
/* 24664 80033E64 188C1026 */  addiu      $s0, $s0, %lo(vbfilename1)
/* 24668 80033E68 21200002 */  addu       $a0, $s0, $zero
/* 2466C 80033E6C 0180053C */  lui        $a1, %hi(D_80012688)
/* 24670 80033E70 8826A524 */  addiu      $a1, $a1, %lo(D_80012688)
/* 24674 80033E74 2130E002 */  addu       $a2, $s7, $zero
/* 24678 80033E78 53C5010C */  jal        sprintf
/* 2467C 80033E7C 21382002 */   addu      $a3, $s1, $zero
/* 24680 80033E80 0A80033C */  lui        $v1, %hi(vbfilename2)
/* 24684 80033E84 988C7E24 */  addiu      $fp, $v1, %lo(vbfilename2)
/* 24688 80033E88 2120C003 */  addu       $a0, $fp, $zero
/* 2468C 80033E8C 0180053C */  lui        $a1, %hi(D_800126A0)
/* 24690 80033E90 A026A524 */  addiu      $a1, $a1, %lo(D_800126A0)
/* 24694 80033E94 2130E002 */  addu       $a2, $s7, $zero
/* 24698 80033E98 53C5010C */  jal        sprintf
/* 2469C 80033E9C 21382002 */   addu      $a3, $s1, $zero
/* 246A0 80033EA0 0A80033C */  lui        $v1, %hi(pxvfilename)
/* 246A4 80033EA4 188D7624 */  addiu      $s6, $v1, %lo(pxvfilename)
/* 246A8 80033EA8 2120C002 */  addu       $a0, $s6, $zero
/* 246AC 80033EAC 0180053C */  lui        $a1, %hi(D_80012670)
/* 246B0 80033EB0 7026A524 */  addiu      $a1, $a1, %lo(D_80012670)
/* 246B4 80033EB4 2130E002 */  addu       $a2, $s7, $zero
/* 246B8 80033EB8 53C5010C */  jal        sprintf
/* 246BC 80033EBC 21382002 */   addu      $a3, $s1, $zero
/* 246C0 80033EC0 2814948F */  lw         $s4, %gp_rel(WorldPreMallocVB)($gp)
/* 246C4 80033EC4 2C14928F */  lw         $s2, %gp_rel(WorldPreMallocPXV)($gp)
/* 246C8 80033EC8 B35C010C */  jal        GetSizeOfFile
/* 246CC 80033ECC 21200002 */   addu      $a0, $s0, $zero
/* 246D0 80033ED0 21884000 */  addu       $s1, $v0, $zero
/* 246D4 80033ED4 21200002 */  addu       $a0, $s0, $zero
/* 246D8 80033ED8 40881100 */  sll        $s1, $s1, 1
/* 246DC 80033EDC 495C010C */  jal        LoadFile
/* 246E0 80033EE0 21288002 */   addu      $a1, $s4, $zero
/* 246E4 80033EE4 AF05020C */  jal        SpuSetTransferMode
/* 246E8 80033EE8 01000424 */   addiu     $a0, $zero, 0x1
/* 246EC 80033EEC EB02020C */  jal        SpuMalloc
/* 246F0 80033EF0 21202002 */   addu      $a0, $s1, $zero
/* 246F4 80033EF4 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 246F8 80033EF8 02004310 */  beq        $v0, $v1, .L80033F04
/* 246FC 80033EFC 5800B326 */   addiu     $s3, $s5, 0x58
/* 24700 80033F00 5800A2AE */  sw         $v0, 0x58($s5)
.L80033F04:
/* 24704 80033F04 5800A48E */  lw         $a0, 0x58($s5)
/* 24708 80033F08 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 2470C 80033F0C 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 24710 80033F10 040071AE */  sw         $s1, 0x4($s3)
/* 24714 80033F14 23105100 */  subu       $v0, $v0, $s1
/* 24718 80033F18 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 2471C 80033F1C 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 24720 80033F20 9705020C */  jal        SpuSetTransferStartAddr
/* 24724 80033F24 42801100 */   srl       $s0, $s1, 1
/* 24728 80033F28 21208002 */  addu       $a0, $s4, $zero
/* 2472C 80033F2C 7F05020C */  jal        SpuWrite
/* 24730 80033F30 21280002 */   addu      $a1, $s0, $zero
/* 24734 80033F34 2120C003 */  addu       $a0, $fp, $zero
/* 24738 80033F38 495C010C */  jal        LoadFile
/* 2473C 80033F3C 21288002 */   addu      $a1, $s4, $zero
/* 24740 80033F40 5800A48E */  lw         $a0, 0x58($s5)
/* 24744 80033F44 9705020C */  jal        SpuSetTransferStartAddr
/* 24748 80033F48 21209000 */   addu      $a0, $a0, $s0
/* 2474C 80033F4C 21208002 */  addu       $a0, $s4, $zero
/* 24750 80033F50 7F05020C */  jal        SpuWrite
/* 24754 80033F54 21280002 */   addu      $a1, $s0, $zero
/* 24758 80033F58 B35C010C */  jal        GetSizeOfFile
/* 2475C 80033F5C 2120C002 */   addu      $a0, $s6, $zero
/* 24760 80033F60 2120C002 */  addu       $a0, $s6, $zero
/* 24764 80033F64 495C010C */  jal        LoadFile
/* 24768 80033F68 21284002 */   addu      $a1, $s2, $zero
/* 2476C 80033F6C 180072AE */  sw         $s2, 0x18($s3)
/* 24770 80033F70 0000428E */  lw         $v0, 0x0($s2)
/* 24774 80033F74 3400BF8F */  lw         $ra, 0x34($sp)
/* 24778 80033F78 3000BE8F */  lw         $fp, 0x30($sp)
/* 2477C 80033F7C 2C00B78F */  lw         $s7, 0x2C($sp)
/* 24780 80033F80 2800B68F */  lw         $s6, 0x28($sp)
/* 24784 80033F84 2400B58F */  lw         $s5, 0x24($sp)
/* 24788 80033F88 2000B48F */  lw         $s4, 0x20($sp)
/* 2478C 80033F8C 1400B18F */  lw         $s1, 0x14($sp)
/* 24790 80033F90 1000B08F */  lw         $s0, 0x10($sp)
/* 24794 80033F94 C0180200 */  sll        $v1, $v0, 3
/* 24798 80033F98 10006324 */  addiu      $v1, $v1, 0x10
/* 2479C 80033F9C 080062AE */  sw         $v0, 0x8($s3)
/* 247A0 80033FA0 0400448E */  lw         $a0, 0x4($s2)
/* 247A4 80033FA4 21384302 */  addu       $a3, $s2, $v1
/* 247A8 80033FA8 40100400 */  sll        $v0, $a0, 1
/* 247AC 80033FAC 21104400 */  addu       $v0, $v0, $a0
/* 247B0 80033FB0 80100200 */  sll        $v0, $v0, 2
/* 247B4 80033FB4 21186200 */  addu       $v1, $v1, $v0
/* 247B8 80033FB8 0C0064AE */  sw         $a0, 0xC($s3)
/* 247BC 80033FBC 0800458E */  lw         $a1, 0x8($s2)
/* 247C0 80033FC0 21304302 */  addu       $a2, $s2, $v1
/* 247C4 80033FC4 80100500 */  sll        $v0, $a1, 2
/* 247C8 80033FC8 21186200 */  addu       $v1, $v1, $v0
/* 247CC 80033FCC 10004226 */  addiu      $v0, $s2, 0x10
/* 247D0 80033FD0 21184302 */  addu       $v1, $s2, $v1
/* 247D4 80033FD4 100065AE */  sw         $a1, 0x10($s3)
/* 247D8 80033FD8 0C00448E */  lw         $a0, 0xC($s2)
/* 247DC 80033FDC 1800B28F */  lw         $s2, 0x18($sp)
/* 247E0 80033FE0 200062AE */  sw         $v0, 0x20($s3)
/* 247E4 80033FE4 240067AE */  sw         $a3, 0x24($s3)
/* 247E8 80033FE8 280066AE */  sw         $a2, 0x28($s3)
/* 247EC 80033FEC 1C0063AE */  sw         $v1, 0x1C($s3)
/* 247F0 80033FF0 140064AE */  sw         $a0, 0x14($s3)
/* 247F4 80033FF4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 247F8 80033FF8 0800E003 */  jr         $ra
/* 247FC 80033FFC 3800BD27 */   addiu     $sp, $sp, 0x38
.size pxm_init_worldPreMalloc, . - pxm_init_worldPreMalloc
