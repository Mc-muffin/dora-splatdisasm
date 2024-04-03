.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel main
/* BD70 8001B570 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* BD74 8001B574 3400BFAF */  sw         $ra, 0x34($sp)
/* BD78 8001B578 3000B4AF */  sw         $s4, 0x30($sp)
/* BD7C 8001B57C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* BD80 8001B580 2800B2AF */  sw         $s2, 0x28($sp)
/* BD84 8001B584 2400B1AF */  sw         $s1, 0x24($sp)
/* BD88 8001B588 19A1010C */  jal        __main
/* BD8C 8001B58C 2000B0AF */   sw        $s0, 0x20($sp)
/* BD90 8001B590 57DA010C */  jal        ResetGraph
/* BD94 8001B594 21200000 */   addu      $a0, $zero, $zero
/* BD98 8001B598 21980000 */  addu       $s3, $zero, $zero
/* BD9C 8001B59C 21900000 */  addu       $s2, $zero, $zero
/* BDA0 8001B5A0 21880000 */  addu       $s1, $zero, $zero
/* BDA4 8001B5A4 21800000 */  addu       $s0, $zero, $zero
/* BDA8 8001B5A8 0300143C */  lui        $s4, %hi(D_30498)
/* BDAC 8001B5AC 98049426 */  addiu      $s4, $s4, %lo(D_30498)
/* BDB0 8001B5B0 40010224 */  addiu      $v0, $zero, 0x140
/* BDB4 8001B5B4 FF010324 */  addiu      $v1, $zero, 0x1FF
/* BDB8 8001B5B8 1800A0A7 */  sh         $zero, 0x18($sp)
/* BDBC 8001B5BC 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* BDC0 8001B5C0 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* BDC4 8001B5C4 1E00A3A7 */  sh         $v1, 0x1E($sp)
.L8001B5C8:
/* BDC8 8001B5C8 EBD6010C */  jal        VSync
/* BDCC 8001B5CC 21200000 */   addu      $a0, $zero, $zero
/* BDD0 8001B5D0 1800A427 */  addiu      $a0, $sp, 0x18
/* BDD4 8001B5D4 FF006532 */  andi       $a1, $s3, 0xFF
/* BDD8 8001B5D8 FF004632 */  andi       $a2, $s2, 0xFF
/* BDDC 8001B5DC 97DB010C */  jal        ClearImage
/* BDE0 8001B5E0 FF002732 */   andi      $a3, $s1, 0xFF
/* BDE4 8001B5E4 01001026 */  addiu      $s0, $s0, 0x1
.L8001B5E8:
/* BDE8 8001B5E8 36DB010C */  jal        DrawSync
/* BDEC 8001B5EC 01000424 */   addiu     $a0, $zero, 0x1
/* BDF0 8001B5F0 FDFF4014 */  bnez       $v0, .L8001B5E8
/* BDF4 8001B5F4 2800022A */   slti      $v0, $s0, 0x28
/* BDF8 8001B5F8 F3FF4014 */  bnez       $v0, .L8001B5C8
/* BDFC 8001B5FC 00000000 */   nop
/* BE00 8001B600 EBD6010C */  jal        VSync
/* BE04 8001B604 21200000 */   addu      $a0, $zero, $zero
/* BE08 8001B608 73FF010C */  jal        SpuInit
/* BE0C 8001B60C 00000000 */   nop
/* BE10 8001B610 21200000 */  addu       $a0, $zero, $zero
/* BE14 8001B614 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
/* BE18 8001B618 0F05020C */  jal        SpuSetKey
/* BE1C 8001B61C FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
/* BE20 8001B620 AF02020C */  jal        SpuQuit
/* BE24 8001B624 00000000 */   nop
/* BE28 8001B628 B4DA010C */  jal        SetGraphDebug
/* BE2C 8001B62C 21200000 */   addu      $a0, $zero, $zero
/* BE30 8001B630 1F80033C */  lui        $v1, (0x801FD000 >> 16)
/* BE34 8001B634 00D06334 */  ori        $v1, $v1, (0x801FD000 & 0xFFFF)
/* BE38 8001B638 0C80023C */  lui        $v0, %hi(D_800C5EF8)
/* BE3C 8001B63C F85E4224 */  addiu      $v0, $v0, %lo(D_800C5EF8)
/* BE40 8001B640 23186200 */  subu       $v1, $v1, $v0
/* BE44 8001B644 821A0300 */  srl        $v1, $v1, 10
/* BE48 8001B648 241383AF */  sw         $v1, %gp_rel(BS)($gp)
/* BE4C 8001B64C FCFF0424 */  addiu      $a0, $zero, -0x4
/* BE50 8001B650 0980023C */  lui        $v0, %hi(DebugPauseMenuLookup)
/* BE54 8001B654 605A4224 */  addiu      $v0, $v0, %lo(DebugPauseMenuLookup)
/* BE58 8001B658 24184400 */  and        $v1, $v0, $a0
/* BE5C 8001B65C 9C6D0008 */  j          .L8001B670
/* BE60 8001B660 21200000 */   addu      $a0, $zero, $zero
.L8001B664:
/* BE64 8001B664 000060AC */  sw         $zero, 0x0($v1)
/* BE68 8001B668 04006324 */  addiu      $v1, $v1, 0x4
/* BE6C 8001B66C 01008424 */  addiu      $a0, $a0, 0x1
.L8001B670:
/* BE70 8001B670 21108002 */  addu       $v0, $s4, $zero
/* BE74 8001B674 04004104 */  bgez       $v0, .L8001B688
/* BE78 8001B678 83100200 */   sra       $v0, $v0, 2
/* BE7C 8001B67C 0300023C */  lui        $v0, %hi(D_30498 + 0x3)
/* BE80 8001B680 9B044224 */  addiu      $v0, $v0, %lo(D_30498 + 0x3)
/* BE84 8001B684 83100200 */  sra        $v0, $v0, 2
.L8001B688:
/* BE88 8001B688 2A108200 */  slt        $v0, $a0, $v0
/* BE8C 8001B68C F5FF4014 */  bnez       $v0, .L8001B664
/* BE90 8001B690 00000000 */   nop
/* BE94 8001B694 2979010C */  jal        InitHSVService
/* BE98 8001B698 0180103C */   lui       $s0, %hi(D_800101B8)
/* BE9C 8001B69C 0980043C */  lui        $a0, %hi(D_800943B4)
/* BEA0 8001B6A0 0980013C */  lui        $at, %hi(gLanguage)
/* BEA4 8001B6A4 7C5620AC */  sw         $zero, %lo(gLanguage)($at)
/* BEA8 8001B6A8 C35C010C */  jal        InitFileSystem
/* BEAC 8001B6AC B4438424 */   addiu     $a0, $a0, %lo(D_800943B4)
/* BEB0 8001B6B0 266E010C */  jal        initVideoSystem
/* BEB4 8001B6B4 B8011026 */   addiu     $s0, $s0, %lo(D_800101B8)
/* BEB8 8001B6B8 0E4F010C */  jal        pxm_init
/* BEBC 8001B6BC 03000424 */   addiu     $a0, $zero, 0x3
/* BEC0 8001B6C0 A66E000C */  jal        InitMemMalloc
/* BEC4 8001B6C4 0B80113C */   lui       $s1, %hi(gDoubleBuffer)
/* BEC8 8001B6C8 74A4000C */  jal        InitMemCard
/* BECC 8001B6CC 78B93126 */   addiu     $s1, $s1, %lo(gDoubleBuffer)
/* BED0 8001B6D0 21200000 */  addu       $a0, $zero, $zero
/* BED4 8001B6D4 21280000 */  addu       $a1, $zero, $zero
/* BED8 8001B6D8 00020624 */  addiu      $a2, $zero, 0x200
/* BEDC 8001B6DC 00020724 */  addiu      $a3, $zero, 0x200
/* BEE0 8001B6E0 08000224 */  addiu      $v0, $zero, 0x8
/* BEE4 8001B6E4 1000A2AF */  sw         $v0, 0x10($sp)
/* BEE8 8001B6E8 8672010C */  jal        InitVRAMManager
/* BEEC 8001B6EC 1400A2AF */   sw        $v0, 0x14($sp)
/* BEF0 8001B6F0 8578010C */  jal        InitCLUTManager
/* BEF4 8001B6F4 40011424 */   addiu     $s4, $zero, 0x140
/* BEF8 8001B6F8 ED78010C */  jal        SaveCLUTManager
/* BEFC 8001B6FC 21200000 */   addu      $a0, $zero, $zero
/* BF00 8001B700 EBD6010C */  jal        VSync
/* BF04 8001B704 FFFF0424 */   addiu     $a0, $zero, -0x1
/* BF08 8001B708 C0180200 */  sll        $v1, $v0, 3
/* BF0C 8001B70C 23186200 */  subu       $v1, $v1, $v0
/* BF10 8001B710 C0180300 */  sll        $v1, $v1, 3
/* BF14 8001B714 23186200 */  subu       $v1, $v1, $v0
/* BF18 8001B718 C0190300 */  sll        $v1, $v1, 7
/* BF1C 8001B71C 21186200 */  addu       $v1, $v1, $v0
/* BF20 8001B720 40210300 */  sll        $a0, $v1, 5
/* BF24 8001B724 23208300 */  subu       $a0, $a0, $v1
/* BF28 8001B728 80200400 */  sll        $a0, $a0, 2
/* BF2C 8001B72C 21208200 */  addu       $a0, $a0, $v0
/* BF30 8001B730 80200400 */  sll        $a0, $a0, 2
/* BF34 8001B734 E440010C */  jal        u32SRandom
/* BF38 8001B738 21208200 */   addu      $a0, $a0, $v0
/* BF3C 8001B73C CC68010C */  jal        SetupVideoMode
/* BF40 8001B740 01000424 */   addiu     $a0, $zero, 0x1
/* BF44 8001B744 9769010C */  jal        updateScreen
/* BF48 8001B748 F0001324 */   addiu     $s3, $zero, 0xF0
/* BF4C 8001B74C C46C010C */  jal        ScreenOn
/* BF50 8001B750 00000000 */   nop
/* BF54 8001B754 B35C010C */  jal        GetSizeOfFile
/* BF58 8001B758 21200002 */   addu      $a0, $s0, $zero
/* BF5C 8001B75C 2B3F010C */  jal        new_malloc
/* BF60 8001B760 21204000 */   addu      $a0, $v0, $zero
/* BF64 8001B764 CC6C010C */  jal        ScreenOff
/* BF68 8001B768 21904000 */   addu      $s2, $v0, $zero
/* BF6C 8001B76C CC68010C */  jal        SetupVideoMode
/* BF70 8001B770 01000424 */   addiu     $a0, $zero, 0x1
/* BF74 8001B774 CC6C010C */  jal        ScreenOff
/* BF78 8001B778 00000000 */   nop
/* BF7C 8001B77C F66D010C */  jal        UpdateScreenOff
/* BF80 8001B780 00000000 */   nop
/* BF84 8001B784 21200002 */  addu       $a0, $s0, $zero
/* BF88 8001B788 21284002 */  addu       $a1, $s2, $zero
/* BF8C 8001B78C 980020A2 */  sb         $zero, 0x98($s1)
/* BF90 8001B790 495C010C */  jal        LoadFile
/* BF94 8001B794 180020A2 */   sb        $zero, 0x18($s1)
/* BF98 8001B798 21200000 */  addu       $a0, $zero, $zero
/* BF9C 8001B79C 1800A0A7 */  sh         $zero, 0x18($sp)
/* BFA0 8001B7A0 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* BFA4 8001B7A4 1C00B4A7 */  sh         $s4, 0x1C($sp)
/* BFA8 8001B7A8 EBD6010C */  jal        VSync
/* BFAC 8001B7AC 1E00B3A7 */   sh        $s3, 0x1E($sp)
/* BFB0 8001B7B0 1800A427 */  addiu      $a0, $sp, 0x18
/* BFB4 8001B7B4 08025026 */  addiu      $s0, $s2, 0x208
/* BFB8 8001B7B8 E1DB010C */  jal        LoadImage
/* BFBC 8001B7BC 21280002 */   addu      $a1, $s0, $zero
/* BFC0 8001B7C0 21200000 */  addu       $a0, $zero, $zero
/* BFC4 8001B7C4 EBD6010C */  jal        VSync
/* BFC8 8001B7C8 1A00B3A7 */   sh        $s3, 0x1A($sp)
/* BFCC 8001B7CC 1800A427 */  addiu      $a0, $sp, 0x18
/* BFD0 8001B7D0 E1DB010C */  jal        LoadImage
/* BFD4 8001B7D4 21280002 */   addu      $a1, $s0, $zero
/* BFD8 8001B7D8 1C40010C */  jal        new_free
/* BFDC 8001B7DC 21204002 */   addu      $a0, $s2, $zero
/* BFE0 8001B7E0 9769010C */  jal        updateScreen
/* BFE4 8001B7E4 0180103C */   lui       $s0, %hi(D_800101D4)
/* BFE8 8001B7E8 EBD6010C */  jal        VSync
/* BFEC 8001B7EC 0F000424 */   addiu     $a0, $zero, 0xF
/* BFF0 8001B7F0 C46C010C */  jal        ScreenOn
/* BFF4 8001B7F4 D4011026 */   addiu     $s0, $s0, %lo(D_800101D4)
/* BFF8 8001B7F8 EBD6010C */  jal        VSync
/* BFFC 8001B7FC FFFF0424 */   addiu     $a0, $zero, -0x1
/* C000 8001B800 EBD6010C */  jal        VSync
/* C004 8001B804 2C010424 */   addiu     $a0, $zero, 0x12C
/* C008 8001B808 B35C010C */  jal        GetSizeOfFile
/* C00C 8001B80C 21200002 */   addu      $a0, $s0, $zero
/* C010 8001B810 2B3F010C */  jal        new_malloc
/* C014 8001B814 21204000 */   addu      $a0, $v0, $zero
/* C018 8001B818 CC6C010C */  jal        ScreenOff
/* C01C 8001B81C 21904000 */   addu      $s2, $v0, $zero
/* C020 8001B820 CC68010C */  jal        SetupVideoMode
/* C024 8001B824 01000424 */   addiu     $a0, $zero, 0x1
/* C028 8001B828 CC6C010C */  jal        ScreenOff
/* C02C 8001B82C 00000000 */   nop
/* C030 8001B830 F66D010C */  jal        UpdateScreenOff
/* C034 8001B834 00000000 */   nop
/* C038 8001B838 21200002 */  addu       $a0, $s0, $zero
/* C03C 8001B83C 21284002 */  addu       $a1, $s2, $zero
/* C040 8001B840 980020A2 */  sb         $zero, 0x98($s1)
/* C044 8001B844 495C010C */  jal        LoadFile
/* C048 8001B848 180020A2 */   sb        $zero, 0x18($s1)
/* C04C 8001B84C 21200000 */  addu       $a0, $zero, $zero
/* C050 8001B850 1800A0A7 */  sh         $zero, 0x18($sp)
/* C054 8001B854 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* C058 8001B858 1C00B4A7 */  sh         $s4, 0x1C($sp)
/* C05C 8001B85C EBD6010C */  jal        VSync
/* C060 8001B860 1E00B3A7 */   sh        $s3, 0x1E($sp)
/* C064 8001B864 1800A427 */  addiu      $a0, $sp, 0x18
/* C068 8001B868 08025026 */  addiu      $s0, $s2, 0x208
/* C06C 8001B86C E1DB010C */  jal        LoadImage
/* C070 8001B870 21280002 */   addu      $a1, $s0, $zero
/* C074 8001B874 21200000 */  addu       $a0, $zero, $zero
/* C078 8001B878 EBD6010C */  jal        VSync
/* C07C 8001B87C 1A00B3A7 */   sh        $s3, 0x1A($sp)
/* C080 8001B880 1800A427 */  addiu      $a0, $sp, 0x18
/* C084 8001B884 E1DB010C */  jal        LoadImage
/* C088 8001B888 21280002 */   addu      $a1, $s0, $zero
/* C08C 8001B88C 1C40010C */  jal        new_free
/* C090 8001B890 21204002 */   addu      $a0, $s2, $zero
/* C094 8001B894 9769010C */  jal        updateScreen
/* C098 8001B898 0180103C */   lui       $s0, %hi(D_800101F0)
/* C09C 8001B89C EBD6010C */  jal        VSync
/* C0A0 8001B8A0 0F000424 */   addiu     $a0, $zero, 0xF
/* C0A4 8001B8A4 C46C010C */  jal        ScreenOn
/* C0A8 8001B8A8 F0011026 */   addiu     $s0, $s0, %lo(D_800101F0)
/* C0AC 8001B8AC EBD6010C */  jal        VSync
/* C0B0 8001B8B0 FFFF0424 */   addiu     $a0, $zero, -0x1
/* C0B4 8001B8B4 EBD6010C */  jal        VSync
/* C0B8 8001B8B8 2C010424 */   addiu     $a0, $zero, 0x12C
/* C0BC 8001B8BC B35C010C */  jal        GetSizeOfFile
/* C0C0 8001B8C0 21200002 */   addu      $a0, $s0, $zero
/* C0C4 8001B8C4 2B3F010C */  jal        new_malloc
/* C0C8 8001B8C8 21204000 */   addu      $a0, $v0, $zero
/* C0CC 8001B8CC CC6C010C */  jal        ScreenOff
/* C0D0 8001B8D0 21904000 */   addu      $s2, $v0, $zero
/* C0D4 8001B8D4 CC68010C */  jal        SetupVideoMode
/* C0D8 8001B8D8 01000424 */   addiu     $a0, $zero, 0x1
/* C0DC 8001B8DC CC6C010C */  jal        ScreenOff
/* C0E0 8001B8E0 00000000 */   nop
/* C0E4 8001B8E4 F66D010C */  jal        UpdateScreenOff
/* C0E8 8001B8E8 00000000 */   nop
/* C0EC 8001B8EC 21200002 */  addu       $a0, $s0, $zero
/* C0F0 8001B8F0 21284002 */  addu       $a1, $s2, $zero
/* C0F4 8001B8F4 980020A2 */  sb         $zero, 0x98($s1)
/* C0F8 8001B8F8 495C010C */  jal        LoadFile
/* C0FC 8001B8FC 180020A2 */   sb        $zero, 0x18($s1)
/* C100 8001B900 21200000 */  addu       $a0, $zero, $zero
/* C104 8001B904 1800A0A7 */  sh         $zero, 0x18($sp)
/* C108 8001B908 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* C10C 8001B90C 1C00B4A7 */  sh         $s4, 0x1C($sp)
/* C110 8001B910 EBD6010C */  jal        VSync
/* C114 8001B914 1E00B3A7 */   sh        $s3, 0x1E($sp)
/* C118 8001B918 1800A427 */  addiu      $a0, $sp, 0x18
/* C11C 8001B91C 08025026 */  addiu      $s0, $s2, 0x208
/* C120 8001B920 E1DB010C */  jal        LoadImage
/* C124 8001B924 21280002 */   addu      $a1, $s0, $zero
/* C128 8001B928 21200000 */  addu       $a0, $zero, $zero
/* C12C 8001B92C EBD6010C */  jal        VSync
/* C130 8001B930 1A00B3A7 */   sh        $s3, 0x1A($sp)
/* C134 8001B934 1800A427 */  addiu      $a0, $sp, 0x18
/* C138 8001B938 E1DB010C */  jal        LoadImage
/* C13C 8001B93C 21280002 */   addu      $a1, $s0, $zero
/* C140 8001B940 1C40010C */  jal        new_free
/* C144 8001B944 21204002 */   addu      $a0, $s2, $zero
/* C148 8001B948 9769010C */  jal        updateScreen
/* C14C 8001B94C 00000000 */   nop
/* C150 8001B950 EBD6010C */  jal        VSync
/* C154 8001B954 0F000424 */   addiu     $a0, $zero, 0xF
/* C158 8001B958 C46C010C */  jal        ScreenOn
/* C15C 8001B95C 00000000 */   nop
/* C160 8001B960 EBD6010C */  jal        VSync
/* C164 8001B964 FFFF0424 */   addiu     $a0, $zero, -0x1
/* C168 8001B968 EBD6010C */  jal        VSync
/* C16C 8001B96C 2C010424 */   addiu     $a0, $zero, 0x12C
/* C170 8001B970 4E3D010C */  jal        StopSound
/* C174 8001B974 00000000 */   nop
/* C178 8001B978 73FF010C */  jal        SpuInit
/* C17C 8001B97C 00000000 */   nop
/* C180 8001B980 393D010C */  jal        InitSound
/* C184 8001B984 00000000 */   nop
/* C188 8001B988 FF000224 */  addiu      $v0, $zero, 0xFF
/* C18C 8001B98C 0980013C */  lui        $at, %hi(movie_volume)
/* C190 8001B990 A85122A0 */  sb         $v0, %lo(movie_volume)($at)
/* C194 8001B994 5A3D010C */  jal        SetMyVolume
/* C198 8001B998 FF000424 */   addiu     $a0, $zero, 0xFF
/* C19C 8001B99C 9B3E010C */  jal        AllocIntroMovieRAM
/* C1A0 8001B9A0 00000000 */   nop
/* C1A4 8001B9A4 01000224 */  addiu      $v0, $zero, 0x1
/* C1A8 8001B9A8 14000324 */  addiu      $v1, $zero, 0x14
/* C1AC 8001B9AC 0980013C */  lui        $at, %hi(MovieNoSkip)
/* C1B0 8001B9B0 C85122AC */  sw         $v0, %lo(MovieNoSkip)($at)
/* C1B4 8001B9B4 0980013C */  lui        $at, %hi(EffectsVolume)
/* C1B8 8001B9B8 A04923AC */  sw         $v1, %lo(EffectsVolume)($at)
/* C1BC 8001B9BC D63E010C */  jal        PlayFullScreenMovie
/* C1C0 8001B9C0 21200000 */   addu      $a0, $zero, $zero
/* C1C4 8001B9C4 9F3C010C */  jal        CheckMovieRequest
/* C1C8 8001B9C8 00000000 */   nop
/* C1CC 8001B9CC 0980043C */  lui        $a0, %hi(LocalStateTable)
/* C1D0 8001B9D0 40000224 */  addiu      $v0, $zero, 0x40
/* C1D4 8001B9D4 0980013C */  lui        $at, %hi(EffectsVolume)
/* C1D8 8001B9D8 A04922AC */  sw         $v0, %lo(EffectsVolume)($at)
/* C1DC 8001B9DC 0980013C */  lui        $at, %hi(MovieNoSkip)
/* C1E0 8001B9E0 C85120AC */  sw         $zero, %lo(MovieNoSkip)($at)
/* C1E4 8001B9E4 233F010C */  jal        InitTasker
/* C1E8 8001B9E8 20808424 */   addiu     $a0, $a0, %lo(LocalStateTable)
.L8001B9EC:
/* C1EC 8001B9EC DB3E010C */  jal        Tasker
/* C1F0 8001B9F0 00000000 */   nop
/* C1F4 8001B9F4 7B6E0008 */  j          .L8001B9EC
/* C1F8 8001B9F8 00000000 */   nop
.size main, . - main
