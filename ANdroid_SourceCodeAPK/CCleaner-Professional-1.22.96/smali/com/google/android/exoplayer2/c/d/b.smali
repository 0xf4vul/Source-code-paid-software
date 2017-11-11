.class final Lcom/google/android/exoplayer2/c/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/d/b$e;,
        Lcom/google/android/exoplayer2/c/d/b$d;,
        Lcom/google/android/exoplayer2/c/d/b$b;,
        Lcom/google/android/exoplayer2/c/d/b$c;,
        Lcom/google/android/exoplayer2/c/d/b$f;,
        Lcom/google/android/exoplayer2/c/d/b$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->a:I

    .line 45
    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->b:I

    .line 46
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->c:I

    .line 47
    const-string/jumbo v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->d:I

    .line 48
    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->e:I

    .line 49
    const-string/jumbo v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->f:I

    .line 50
    const-string/jumbo v0, "cenc"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/b;->g:I

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;)I
    .locals 3

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1105
    and-int/lit8 v0, v1, 0x7f

    .line 1106
    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1108
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    .line 1110
    :cond_0
    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;IILcom/google/android/exoplayer2/c/d/b$c;I)I
    .locals 11

    .prologue
    .line 1012
    .line 21126
    iget v0, p0, Lcom/google/android/exoplayer2/j/k;->b:I

    move v5, v0

    .line 1013
    :goto_0
    sub-int v0, v5, p1

    if-ge v0, p2, :cond_d

    .line 1014
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v6

    .line 1016
    if-lez v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 1018
    sget v1, Lcom/google/android/exoplayer2/c/d/a;->U:I

    if-ne v0, v1, :cond_c

    .line 22034
    add-int/lit8 v3, v5, 0x8

    .line 22036
    const/4 v2, 0x0

    .line 22037
    const/4 v1, 0x0

    .line 22038
    const/4 v0, 0x0

    move v4, v3

    .line 22039
    :goto_2
    sub-int v3, v4, v5

    if-ge v3, v6, :cond_8

    .line 22040
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 22041
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v7

    .line 22042
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v3

    .line 22043
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->aa:I

    if-ne v3, v8, :cond_2

    .line 22044
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 22051
    :cond_0
    :goto_3
    add-int v3, v4, v7

    move v4, v3

    .line 22052
    goto :goto_2

    .line 1016
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 22045
    :cond_2
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->V:I

    if-ne v3, v8, :cond_4

    .line 22046
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 22047
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/c/d/b;->g:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 22048
    :cond_4
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->W:I

    if-ne v3, v8, :cond_0

    .line 22065
    add-int/lit8 v1, v4, 0x8

    .line 22066
    :goto_4
    sub-int v3, v1, v4

    if-ge v3, v7, :cond_7

    .line 22067
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 22068
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v3

    .line 22069
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v8

    .line 22070
    sget v9, Lcom/google/android/exoplayer2/c/d/a;->X:I

    if-ne v8, v9, :cond_6

    .line 22071
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 22072
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    .line 22073
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v8

    .line 22074
    const/16 v3, 0x10

    new-array v9, v3, [B

    .line 22075
    const/4 v3, 0x0

    const/16 v10, 0x10

    invoke-virtual {p0, v9, v3, v10}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 22076
    new-instance v3, Lcom/google/android/exoplayer2/c/d/i;

    invoke-direct {v3, v1, v8, v9}, Lcom/google/android/exoplayer2/c/d/i;-><init>(ZI[B)V

    move-object v1, v3

    goto :goto_3

    .line 22072
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 22078
    :cond_6
    add-int/2addr v1, v3

    .line 22079
    goto :goto_4

    .line 22080
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 22054
    :cond_8
    if-eqz v2, :cond_b

    .line 22055
    if-eqz v0, :cond_9

    const/4 v2, 0x1

    :goto_6
    const-string/jumbo v3, "frma atom is mandatory"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 22056
    if-eqz v1, :cond_a

    const/4 v2, 0x1

    :goto_7
    const-string/jumbo v3, "schi->tenc atom is mandatory"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 22057
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    .line 1021
    :goto_8
    if-eqz v1, :cond_c

    .line 1022
    iget-object v2, p3, Lcom/google/android/exoplayer2/c/d/b$c;->a:[Lcom/google/android/exoplayer2/c/d/i;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/c/d/i;

    aput-object v0, v2, p4

    .line 1023
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1029
    :goto_9
    return v0

    .line 22055
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 22056
    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 22059
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_8

    .line 1026
    :cond_c
    add-int v0, v5, v6

    move v5, v0

    .line 1027
    goto/16 :goto_0

    .line 1029
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a(Lcom/google/android/exoplayer2/c/d/a$a;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/c/d/a$a;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 765
    if-eqz p0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/c/d/a;->P:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 766
    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 786
    :goto_0
    return-object v0

    .line 768
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 769
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 770
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 771
    invoke-static {v0}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v4

    .line 772
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v5

    .line 773
    new-array v6, v5, [J

    .line 774
    new-array v7, v5, [J

    .line 775
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    .line 776
    if-ne v4, v10, :cond_2

    .line 777
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    .line 778
    if-ne v4, v10, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    .line 20230
    iget-object v0, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v1, v3, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v3, Lcom/google/android/exoplayer2/j/k;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v8, v3, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v3, Lcom/google/android/exoplayer2/j/k;->b:I

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 780
    if-eq v0, v10, :cond_4

    .line 782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    goto :goto_2

    .line 778
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 784
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 775
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 786
    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/j/k;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 934
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 936
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 937
    invoke-static {p0}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;)I

    .line 938
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 940
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 941
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 942
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 944
    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 947
    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 948
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 952
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 953
    invoke-static {p0}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;)I

    .line 956
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 958
    sparse-switch v1, :sswitch_data_0

    .line 996
    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 999
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1000
    invoke-static {p0}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;)I

    move-result v1

    .line 1001
    new-array v2, v1, [B

    .line 1002
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1003
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    .line 960
    :sswitch_0
    const-string/jumbo v1, "audio/mpeg"

    .line 961
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 963
    :sswitch_1
    const-string/jumbo v0, "video/mp4v-es"

    goto :goto_0

    .line 966
    :sswitch_2
    const-string/jumbo v0, "video/avc"

    goto :goto_0

    .line 969
    :sswitch_3
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    .line 975
    :sswitch_4
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    .line 978
    :sswitch_5
    const-string/jumbo v0, "audio/ac3"

    goto :goto_0

    .line 981
    :sswitch_6
    const-string/jumbo v0, "audio/eac3"

    goto :goto_0

    .line 985
    :sswitch_7
    const-string/jumbo v1, "audio/vnd.dts"

    .line 986
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 989
    :sswitch_8
    const-string/jumbo v1, "audio/vnd.dts.hd"

    .line 990
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 958
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/c/d/b$c;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 610
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v16

    .line 612
    new-instance v17, Lcom/google/android/exoplayer2/c/d/b$c;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/d/b$c;-><init>(I)V

    .line 613
    const/4 v4, 0x0

    move v15, v4

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3b

    .line 13126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    move/from16 v18, v0

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v19

    .line 616
    if-lez v19, :cond_4

    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v5, "childAtomSize should be positive"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 618
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->b:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->c:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->Y:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->ak:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->d:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->e:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->f:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->aI:I

    if-eq v4, v5, :cond_0

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->aJ:I

    if-ne v4, v5, :cond_18

    .line 13659
    :cond_0
    add-int/lit8 v5, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 13661
    const/16 v5, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 13662
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v7

    .line 13663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v8

    .line 13664
    const/4 v14, 0x0

    .line 13665
    const/high16 v11, 0x3f800000    # 1.0f

    .line 13666
    const/16 v5, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 14126
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 13669
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->Y:I

    if-ne v4, v5, :cond_1

    .line 13670
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v15}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;IILcom/google/android/exoplayer2/c/d/b$c;I)I

    move-result v4

    .line 13671
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    :cond_1
    move v6, v4

    .line 13674
    const/4 v9, 0x0

    .line 13675
    const/4 v5, 0x0

    .line 13676
    const/4 v12, 0x0

    .line 13678
    const/4 v13, -0x1

    move/from16 v24, v10

    move v10, v14

    move/from16 v14, v24

    .line 13679
    :goto_2
    sub-int v4, v14, v18

    move/from16 v0, v19

    if-ge v4, v0, :cond_16

    .line 13680
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 15126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    move/from16 v20, v0

    .line 13682
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v21

    .line 13683
    if-nez v21, :cond_2

    .line 16126
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 13683
    sub-int v4, v4, v18

    move/from16 v0, v19

    if-eq v4, v0, :cond_16

    .line 13687
    :cond_2
    if-lez v21, :cond_5

    const/4 v4, 0x1

    :goto_3
    const-string/jumbo v22, "childAtomSize should be positive"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 13688
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 13689
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->G:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_7

    .line 13690
    if-nez v5, :cond_6

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 13691
    const-string/jumbo v5, "video/avc"

    .line 13692
    add-int/lit8 v4, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 13693
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/k/a;->a(Lcom/google/android/exoplayer2/j/k;)Lcom/google/android/exoplayer2/k/a;

    move-result-object v4

    .line 13694
    iget-object v9, v4, Lcom/google/android/exoplayer2/k/a;->a:Ljava/util/List;

    .line 13695
    iget v0, v4, Lcom/google/android/exoplayer2/k/a;->b:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/google/android/exoplayer2/c/d/b$c;->c:I

    .line 13696
    if-nez v10, :cond_3

    .line 13697
    iget v11, v4, Lcom/google/android/exoplayer2/k/a;->e:F

    :cond_3
    move v4, v10

    .line 13743
    :goto_5
    add-int v10, v14, v21

    move v14, v10

    move v10, v4

    .line 13744
    goto :goto_2

    .line 616
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 13687
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 13690
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 13699
    :cond_7
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->H:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_9

    .line 13700
    if-nez v5, :cond_8

    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 13701
    const-string/jumbo v5, "video/hevc"

    .line 13702
    add-int/lit8 v4, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 13703
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/k/b;->a(Lcom/google/android/exoplayer2/j/k;)Lcom/google/android/exoplayer2/k/b;

    move-result-object v4

    .line 13704
    iget-object v9, v4, Lcom/google/android/exoplayer2/k/b;->a:Ljava/util/List;

    .line 13705
    iget v4, v4, Lcom/google/android/exoplayer2/k/b;->b:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->c:I

    move v4, v10

    .line 13706
    goto :goto_5

    .line 13700
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 13706
    :cond_9
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->aK:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_c

    .line 13707
    if-nez v5, :cond_a

    const/4 v4, 0x1

    :goto_7
    invoke-static {v4}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 13708
    sget v4, Lcom/google/android/exoplayer2/c/d/a;->aI:I

    if-ne v6, v4, :cond_b

    const-string/jumbo v5, "video/x-vnd.on2.vp8"

    :goto_8
    move v4, v10

    goto :goto_5

    .line 13707
    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    .line 13708
    :cond_b
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    goto :goto_8

    .line 13709
    :cond_c
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->g:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_e

    .line 13710
    if-nez v5, :cond_d

    const/4 v4, 0x1

    :goto_9
    invoke-static {v4}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 13711
    const-string/jumbo v5, "video/3gpp"

    move v4, v10

    goto :goto_5

    .line 13710
    :cond_d
    const/4 v4, 0x0

    goto :goto_9

    .line 13712
    :cond_e
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->I:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_10

    .line 13713
    if-nez v5, :cond_f

    const/4 v4, 0x1

    :goto_a
    invoke-static {v4}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 13715
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;I)Landroid/util/Pair;

    move-result-object v5

    .line 13716
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 13717
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v5, v4

    move v4, v10

    .line 13718
    goto :goto_5

    .line 13713
    :cond_f
    const/4 v4, 0x0

    goto :goto_a

    .line 13718
    :cond_10
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->ah:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_11

    .line 16790
    add-int/lit8 v4, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 16791
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    .line 16792
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v10

    .line 16793
    int-to-float v4, v4

    int-to-float v10, v10

    div-float v11, v4, v10

    .line 13720
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 13721
    :cond_11
    sget v22, Lcom/google/android/exoplayer2/c/d/a;->aG:I

    move/from16 v0, v22

    if-ne v4, v0, :cond_14

    .line 17087
    add-int/lit8 v4, v20, 0x8

    .line 17088
    :goto_b
    sub-int v12, v4, v20

    move/from16 v0, v21

    if-ge v12, v0, :cond_13

    .line 17089
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 17090
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v12

    .line 17091
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v22

    .line 17092
    sget v23, Lcom/google/android/exoplayer2/c/d/a;->aH:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 17093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    move-object/from16 v20, v0

    add-int/2addr v12, v4

    move-object/from16 v0, v20

    invoke-static {v0, v4, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    :goto_c
    move v4, v10

    .line 13722
    goto/16 :goto_5

    .line 17095
    :cond_12
    add-int/2addr v4, v12

    .line 17096
    goto :goto_b

    .line 17097
    :cond_13
    const/4 v12, 0x0

    goto :goto_c

    .line 13723
    :cond_14
    sget v20, Lcom/google/android/exoplayer2/c/d/a;->aF:I

    move/from16 v0, v20

    if-ne v4, v0, :cond_15

    .line 13724
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v4

    .line 13725
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 13726
    if-nez v4, :cond_15

    .line 13727
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v4

    .line 13728
    packed-switch v4, :pswitch_data_0

    :cond_15
    move v4, v10

    goto/16 :goto_5

    .line 13730
    :pswitch_0
    const/4 v13, 0x0

    move v4, v10

    .line 13731
    goto/16 :goto_5

    .line 13733
    :pswitch_1
    const/4 v13, 0x1

    move v4, v10

    .line 13734
    goto/16 :goto_5

    .line 13736
    :pswitch_2
    const/4 v13, 0x2

    move v4, v10

    goto/16 :goto_5

    .line 13747
    :cond_16
    if-eqz v5, :cond_17

    .line 13751
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move/from16 v10, p2

    move-object/from16 v14, p4

    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    .line 651
    :cond_17
    :goto_d
    add-int v4, v18, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 613
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto/16 :goto_0

    .line 625
    :cond_18
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->i:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->Z:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->m:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->o:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->q:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->t:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->r:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->s:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->ax:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->ay:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->k:I

    if-eq v4, v5, :cond_19

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->l:I

    if-ne v4, v5, :cond_36

    .line 17799
    :cond_19
    add-int/lit8 v5, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 17801
    const/4 v5, 0x0

    .line 17802
    if-eqz p5, :cond_20

    .line 17803
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 17804
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v5

    .line 17805
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    move v7, v5

    .line 17813
    :goto_e
    if-eqz v7, :cond_1a

    const/4 v5, 0x1

    if-ne v7, v5, :cond_21

    .line 17814
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v6

    .line 17815
    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 18340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 18342
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 17818
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1b

    .line 17819
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 19126
    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 17836
    sget v7, Lcom/google/android/exoplayer2/c/d/a;->Z:I

    if-ne v4, v7, :cond_1c

    .line 17837
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v15}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;IILcom/google/android/exoplayer2/c/d/b$c;I)I

    move-result v4

    .line 17838
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 17842
    :cond_1c
    const/4 v7, 0x0

    .line 17843
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->m:I

    if-ne v4, v8, :cond_22

    .line 17844
    const-string/jumbo v4, "audio/ac3"

    .line 17861
    :goto_10
    const/4 v13, 0x0

    move v9, v5

    move v8, v6

    move-object v5, v4

    .line 17862
    :goto_11
    sub-int v4, v14, v18

    move/from16 v0, v19

    if-ge v4, v0, :cond_33

    .line 17863
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 17864
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v20

    .line 17865
    if-lez v20, :cond_2b

    const/4 v4, 0x1

    :goto_12
    const-string/jumbo v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 17866
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 17867
    sget v6, Lcom/google/android/exoplayer2/c/d/a;->I:I

    if-eq v4, v6, :cond_1d

    if-eqz p5, :cond_30

    sget v6, Lcom/google/android/exoplayer2/c/d/a;->j:I

    if-ne v4, v6, :cond_30

    .line 17868
    :cond_1d
    sget v6, Lcom/google/android/exoplayer2/c/d/a;->I:I

    if-ne v4, v6, :cond_2c

    move v4, v14

    .line 17870
    :goto_13
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3c

    .line 17872
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;I)Landroid/util/Pair;

    move-result-object v6

    .line 17873
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 17874
    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, [B

    .line 17875
    const-string/jumbo v4, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 17879
    invoke-static {v6}, Lcom/google/android/exoplayer2/j/b;->a([B)Landroid/util/Pair;

    move-result-object v7

    .line 17880
    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 17881
    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_1e
    :goto_14
    move-object v13, v6

    .line 17897
    :cond_1f
    :goto_15
    add-int v14, v14, v20

    .line 17898
    goto :goto_11

    .line 17807
    :cond_20
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    move v7, v5

    goto/16 :goto_e

    .line 17821
    :cond_21
    const/4 v5, 0x2

    if-ne v7, v5, :cond_17

    .line 17822
    const/16 v5, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 18413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 17824
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 17825
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v6

    .line 17829
    const/16 v7, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto/16 :goto_f

    .line 17845
    :cond_22
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->o:I

    if-ne v4, v8, :cond_23

    .line 17846
    const-string/jumbo v4, "audio/eac3"

    goto/16 :goto_10

    .line 17847
    :cond_23
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->q:I

    if-ne v4, v8, :cond_24

    .line 17848
    const-string/jumbo v4, "audio/vnd.dts"

    goto/16 :goto_10

    .line 17849
    :cond_24
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->r:I

    if-eq v4, v8, :cond_25

    sget v8, Lcom/google/android/exoplayer2/c/d/a;->s:I

    if-ne v4, v8, :cond_26

    .line 17850
    :cond_25
    const-string/jumbo v4, "audio/vnd.dts.hd"

    goto/16 :goto_10

    .line 17851
    :cond_26
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->t:I

    if-ne v4, v8, :cond_27

    .line 17852
    const-string/jumbo v4, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_10

    .line 17853
    :cond_27
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->ax:I

    if-ne v4, v8, :cond_28

    .line 17854
    const-string/jumbo v4, "audio/3gpp"

    goto/16 :goto_10

    .line 17855
    :cond_28
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->ay:I

    if-ne v4, v8, :cond_29

    .line 17856
    const-string/jumbo v4, "audio/amr-wb"

    goto/16 :goto_10

    .line 17857
    :cond_29
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->k:I

    if-eq v4, v8, :cond_2a

    sget v8, Lcom/google/android/exoplayer2/c/d/a;->l:I

    if-ne v4, v8, :cond_3d

    .line 17858
    :cond_2a
    const-string/jumbo v4, "audio/raw"

    goto/16 :goto_10

    .line 17865
    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 20126
    :cond_2c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 19917
    :goto_16
    sub-int v4, v6, v14

    move/from16 v0, v20

    if-ge v4, v0, :cond_2f

    .line 19918
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 19919
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v7

    .line 19920
    if-lez v7, :cond_2d

    const/4 v4, 0x1

    :goto_17
    const-string/jumbo v10, "childAtomSize should be positive"

    invoke-static {v4, v10}, Lcom/google/android/exoplayer2/j/a;->a(ZLjava/lang/Object;)V

    .line 19921
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 19922
    sget v10, Lcom/google/android/exoplayer2/c/d/a;->I:I

    if-ne v4, v10, :cond_2e

    move v4, v6

    .line 19923
    goto/16 :goto_13

    .line 19920
    :cond_2d
    const/4 v4, 0x0

    goto :goto_17

    .line 19925
    :cond_2e
    add-int/2addr v6, v7

    .line 19926
    goto :goto_16

    .line 19927
    :cond_2f
    const/4 v4, -0x1

    goto/16 :goto_13

    .line 17884
    :cond_30
    sget v6, Lcom/google/android/exoplayer2/c/d/a;->n:I

    if-ne v4, v6, :cond_31

    .line 17885
    add-int/lit8 v4, v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 17886
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/j/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_15

    .line 17888
    :cond_31
    sget v6, Lcom/google/android/exoplayer2/c/d/a;->p:I

    if-ne v4, v6, :cond_32

    .line 17889
    add-int/lit8 v4, v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 17890
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/j/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_15

    .line 17892
    :cond_32
    sget v6, Lcom/google/android/exoplayer2/c/d/a;->u:I

    if-ne v4, v6, :cond_1f

    .line 17893
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v10, 0x0

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    invoke-static/range {v4 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_15

    .line 17900
    :cond_33
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_17

    if-eqz v5, :cond_17

    .line 17902
    const-string/jumbo v4, "audio/raw"

    .line 17903
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v10, 0x2

    .line 17904
    :goto_18
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    if-nez v13, :cond_35

    const/4 v11, 0x0

    .line 17906
    :goto_19
    const/4 v13, 0x0

    move-object/from16 v12, p4

    move-object/from16 v14, p3

    .line 17904
    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_d

    .line 17903
    :cond_34
    const/4 v10, -0x1

    goto :goto_18

    .line 17906
    :cond_35
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_19

    .line 633
    :cond_36
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->ai:I

    if-ne v4, v5, :cond_37

    .line 634
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/ttml+xml"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v4, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_d

    .line 636
    :cond_37
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->at:I

    if-ne v4, v5, :cond_38

    .line 637
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/x-quicktime-tx3g"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v4, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_d

    .line 639
    :cond_38
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->au:I

    if-ne v4, v5, :cond_39

    .line 640
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/x-mp4vtt"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v4, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_d

    .line 642
    :cond_39
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->av:I

    if-ne v4, v5, :cond_3a

    .line 643
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "application/ttml+xml"

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_d

    .line 646
    :cond_3a
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->aw:I

    if-ne v4, v5, :cond_17

    .line 647
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/cea-608"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v4, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    .line 649
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/exoplayer2/c/d/b$c;->d:I

    goto/16 :goto_d

    .line 653
    :cond_3b
    return-object v17

    :cond_3c
    move-object v6, v13

    goto/16 :goto_14

    :cond_3d
    move-object v4, v7

    goto/16 :goto_10

    .line 13728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/google/android/exoplayer2/c/d/a$a;Lcom/google/android/exoplayer2/c/d/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/c/d/h;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 65
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->D:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v8

    .line 66
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->R:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 1562
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1563
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 1564
    sget v3, Lcom/google/android/exoplayer2/c/d/b;->b:I

    if-ne v2, v3, :cond_0

    .line 1565
    const/4 v2, 0x1

    move v14, v2

    .line 67
    :goto_0
    const/4 v2, -0x1

    if-ne v14, v2, :cond_4

    .line 68
    const/4 v9, 0x0

    .line 89
    :goto_1
    return-object v9

    .line 1566
    :cond_0
    sget v3, Lcom/google/android/exoplayer2/c/d/b;->a:I

    if-ne v2, v3, :cond_1

    .line 1567
    const/4 v2, 0x2

    move v14, v2

    goto :goto_0

    .line 1568
    :cond_1
    sget v3, Lcom/google/android/exoplayer2/c/d/b;->c:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/google/android/exoplayer2/c/d/b;->d:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/google/android/exoplayer2/c/d/b;->e:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/google/android/exoplayer2/c/d/b;->f:I

    if-ne v2, v3, :cond_3

    .line 1570
    :cond_2
    const/4 v2, 0x3

    move v14, v2

    goto :goto_0

    .line 1572
    :cond_3
    const/4 v2, -0x1

    move v14, v2

    goto :goto_0

    .line 71
    :cond_4
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->N:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 2502
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 2503
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 2504
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v6

    .line 2506
    if-nez v6, :cond_7

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 2507
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v7

    .line 2509
    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 2510
    const/4 v3, 0x1

    .line 3126
    iget v9, v5, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 2512
    if-nez v6, :cond_8

    const/4 v2, 0x4

    .line 2513
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_5

    .line 2514
    iget-object v10, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int v11, v9, v4

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 2515
    const/4 v3, 0x0

    .line 2520
    :cond_5
    if-eqz v3, :cond_a

    .line 2521
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 2522
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2532
    :cond_6
    :goto_5
    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 2533
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 2534
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v6

    .line 2535
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 2536
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v9

    .line 2537
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v5

    .line 2541
    if-nez v4, :cond_c

    const/high16 v10, 0x10000

    if-ne v6, v10, :cond_c

    const/high16 v10, -0x10000

    if-ne v9, v10, :cond_c

    if-nez v5, :cond_c

    .line 2542
    const/16 v4, 0x5a

    .line 2552
    :goto_6
    new-instance v15, Lcom/google/android/exoplayer2/c/d/b$f;

    invoke-direct {v15, v7, v2, v3, v4}, Lcom/google/android/exoplayer2/c/d/b$f;-><init>(IJI)V

    .line 72
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_14

    .line 3165
    iget-wide v2, v15, Lcom/google/android/exoplayer2/c/d/b$f;->b:J

    .line 75
    :goto_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 3486
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3488
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 3489
    invoke-static {v4}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v4

    .line 3491
    if-nez v4, :cond_f

    const/16 v4, 0x8

    :goto_8
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3493
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v6

    .line 77
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 78
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    :goto_9
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->E:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->F:I

    .line 83
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v3

    .line 85
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->Q:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    iget-object v4, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 3584
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3585
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 3586
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v5

    .line 3587
    if-nez v5, :cond_11

    const/16 v2, 0x8

    :goto_a
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3588
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v8

    .line 3589
    if-nez v5, :cond_12

    const/4 v2, 0x4

    :goto_b
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3590
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v2

    .line 3591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v5, v2, 0xa

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v2, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3594
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 86
    sget v4, Lcom/google/android/exoplayer2/c/d/a;->S:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    iget-object v8, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 4165
    iget v9, v15, Lcom/google/android/exoplayer2/c/d/b$f;->a:I

    .line 5165
    iget v10, v15, Lcom/google/android/exoplayer2/c/d/b$f;->c:I

    .line 87
    iget-object v11, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 86
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/j/k;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/c/d/b$c;

    move-result-object v3

    .line 88
    sget v4, Lcom/google/android/exoplayer2/c/d/a;->O:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/c/d/a$a;)Landroid/util/Pair;

    move-result-object v4

    .line 89
    iget-object v5, v3, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v5, :cond_13

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2506
    :cond_7
    const/16 v2, 0x10

    goto/16 :goto_2

    .line 2512
    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 2513
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 2524
    :cond_a
    if-nez v6, :cond_b

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v2

    .line 2525
    :goto_c
    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-nez v4, :cond_6

    .line 2528
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    .line 2524
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v2

    goto :goto_c

    .line 2543
    :cond_c
    if-nez v4, :cond_d

    const/high16 v10, -0x10000

    if-ne v6, v10, :cond_d

    const/high16 v10, 0x10000

    if-ne v9, v10, :cond_d

    if-nez v5, :cond_d

    .line 2544
    const/16 v4, 0x10e

    goto/16 :goto_6

    .line 2545
    :cond_d
    const/high16 v10, -0x10000

    if-ne v4, v10, :cond_e

    if-nez v6, :cond_e

    if-nez v9, :cond_e

    const/high16 v4, -0x10000

    if-ne v5, v4, :cond_e

    .line 2546
    const/16 v4, 0xb4

    goto/16 :goto_6

    .line 2549
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3491
    :cond_f
    const/16 v4, 0x10

    goto/16 :goto_8

    .line 80
    :cond_10
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v16

    goto/16 :goto_9

    .line 3587
    :cond_11
    const/16 v2, 0x10

    goto/16 :goto_a

    .line 3589
    :cond_12
    const/16 v2, 0x8

    goto/16 :goto_b

    .line 89
    :cond_13
    new-instance v9, Lcom/google/android/exoplayer2/c/d/h;

    .line 6165
    iget v10, v15, Lcom/google/android/exoplayer2/c/d/b$f;->a:I

    .line 90
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v0, v3, Lcom/google/android/exoplayer2/c/d/b$c;->b:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v0

    iget v0, v3, Lcom/google/android/exoplayer2/c/d/b$c;->d:I

    move/from16 v19, v0

    iget-object v0, v3, Lcom/google/android/exoplayer2/c/d/b$c;->a:[Lcom/google/android/exoplayer2/c/d/i;

    move-object/from16 v20, v0

    iget v0, v3, Lcom/google/android/exoplayer2/c/d/b$c;->c:I

    move/from16 v21, v0

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [J

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [J

    move v11, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/c/d/h;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/c/d/i;I[J[J)V

    goto/16 :goto_1

    :cond_14
    move-wide/from16 v2, p2

    goto/16 :goto_7
.end method

.method public static a(Lcom/google/android/exoplayer2/c/d/h;Lcom/google/android/exoplayer2/c/d/a$a;Lcom/google/android/exoplayer2/c/j;)Lcom/google/android/exoplayer2/c/d/k;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 107
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->ap:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_0

    .line 109
    new-instance v2, Lcom/google/android/exoplayer2/c/d/b$d;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/c/d/b$d;-><init>(Lcom/google/android/exoplayer2/c/d/a$b;)V

    .line 118
    :goto_0
    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/d/b$b;->a()I

    move-result v28

    .line 119
    if-nez v28, :cond_2

    .line 120
    new-instance v2, Lcom/google/android/exoplayer2/c/d/k;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/d/k;-><init>([J[II[J[I)V

    .line 394
    :goto_1
    return-object v2

    .line 111
    :cond_0
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->aq:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    .line 112
    if-nez v3, :cond_1

    .line 113
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/c/d/b$e;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/c/d/b$e;-><init>(Lcom/google/android/exoplayer2/c/d/a$b;)V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v4, 0x0

    .line 125
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ar:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    .line 126
    if-nez v3, :cond_3

    .line 127
    const/4 v4, 0x1

    .line 128
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->as:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    .line 130
    :cond_3
    iget-object v6, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 132
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ao:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    iget-object v7, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 134
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->al:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v29, v0

    .line 136
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->am:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 139
    :goto_2
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->an:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v5

    .line 140
    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 143
    :goto_3
    new-instance v30, Lcom/google/android/exoplayer2/c/d/b$a;

    move-object/from16 v0, v30

    invoke-direct {v0, v7, v6, v4}, Lcom/google/android/exoplayer2/c/d/b$a;-><init>(Lcom/google/android/exoplayer2/j/k;Lcom/google/android/exoplayer2/j/k;Z)V

    .line 146
    const/16 v4, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 147
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    add-int/lit8 v23, v4, -0x1

    .line 148
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v22

    .line 149
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v19

    .line 152
    const/16 v18, 0x0

    .line 153
    const/4 v13, 0x0

    .line 154
    const/4 v12, 0x0

    .line 155
    if-eqz v5, :cond_4

    .line 156
    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 157
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v13

    .line 160
    :cond_4
    const/4 v6, -0x1

    .line 161
    const/4 v4, 0x0

    .line 162
    if-eqz v3, :cond_2f

    .line 163
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 164
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    .line 165
    if-lez v4, :cond_7

    .line 166
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v31, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v31

    .line 174
    :goto_4
    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/d/b$b;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "audio/raw"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/c/d/h;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v23, :cond_8

    if-nez v13, :cond_8

    if-nez v3, :cond_8

    const/4 v7, 0x1

    .line 181
    :goto_5
    const/4 v11, 0x0

    .line 184
    const-wide/16 v8, 0x0

    .line 186
    if-nez v7, :cond_16

    .line 187
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 188
    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 189
    move/from16 v0, v28

    new-array v15, v0, [J

    .line 190
    move/from16 v0, v28

    new-array v14, v0, [I

    .line 191
    const-wide/16 v20, 0x0

    .line 192
    const/4 v10, 0x0

    .line 194
    const/4 v7, 0x0

    move/from16 v24, v7

    move/from16 v25, v22

    move/from16 v7, v18

    move/from16 v18, v3

    move v3, v12

    move/from16 v31, v4

    move v4, v13

    move-wide v12, v8

    move v8, v11

    move v9, v10

    move/from16 v10, v19

    move/from16 v11, v23

    move/from16 v19, v31

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    move-wide/from16 v22, v20

    move/from16 v20, v9

    .line 196
    :goto_7
    if-nez v20, :cond_9

    .line 197
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/c/d/b$a;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 198
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/d/b$a;->d:J

    move-wide/from16 v20, v0

    .line 199
    move-object/from16 v0, v30

    iget v9, v0, Lcom/google/android/exoplayer2/c/d/b$a;->c:I

    move-wide/from16 v22, v20

    move/from16 v20, v9

    goto :goto_7

    .line 137
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 140
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 169
    :cond_7
    const/4 v3, 0x0

    move/from16 v31, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v31

    goto :goto_4

    .line 175
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    .line 203
    :cond_9
    if-eqz v5, :cond_b

    .line 204
    :goto_8
    if-nez v7, :cond_a

    if-lez v4, :cond_a

    .line 205
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v7

    .line 211
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v3

    .line 212
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 214
    :cond_a
    add-int/lit8 v7, v7, -0x1

    .line 217
    :cond_b
    aput-wide v22, v17, v24

    .line 218
    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/d/b$b;->b()I

    move-result v9

    aput v9, v16, v24

    .line 219
    aget v9, v16, v24

    if-le v9, v8, :cond_c

    .line 220
    aget v8, v16, v24

    .line 222
    :cond_c
    int-to-long v0, v3

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    aput-wide v26, v15, v24

    .line 225
    if-nez v6, :cond_e

    const/4 v9, 0x1

    :goto_9
    aput v9, v14, v24

    .line 226
    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 227
    const/4 v9, 0x1

    aput v9, v14, v24

    .line 228
    add-int/lit8 v9, v18, -0x1

    .line 229
    if-lez v9, :cond_2e

    .line 230
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    move/from16 v18, v9

    .line 235
    :cond_d
    :goto_a
    int-to-long v0, v10

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    .line 236
    add-int/lit8 v9, v25, -0x1

    .line 237
    if-nez v9, :cond_2d

    if-lez v11, :cond_2d

    .line 238
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v10

    .line 239
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v9

    .line 240
    add-int/lit8 v11, v11, -0x1

    .line 243
    :goto_b
    aget v12, v16, v24

    int-to-long v12, v12

    add-long v22, v22, v12

    .line 244
    add-int/lit8 v13, v20, -0x1

    .line 194
    add-int/lit8 v12, v24, 0x1

    move/from16 v24, v12

    move-wide/from16 v20, v22

    move/from16 v25, v10

    move v10, v9

    move v9, v13

    move-wide/from16 v12, v26

    goto/16 :goto_6

    .line 225
    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 247
    :cond_f
    if-nez v7, :cond_10

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 249
    :goto_d
    if-lez v4, :cond_12

    .line 250
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 251
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    .line 252
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 247
    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    .line 250
    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    .line 257
    :cond_12
    if-nez v18, :cond_13

    if-nez v25, :cond_13

    if-nez v9, :cond_13

    if-eqz v11, :cond_14

    .line 259
    :cond_13
    const-string/jumbo v2, "AtomParsers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Inconsistent stbl box for track "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/h;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingSamplesInChunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object v7, v14

    move-object v6, v15

    move v5, v8

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-wide v14, v12

    .line 282
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    if-eqz v2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/c/j;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 285
    :cond_15
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    invoke-static {v6, v8, v9}, Lcom/google/android/exoplayer2/j/r;->a([JJ)V

    .line 286
    new-instance v2, Lcom/google/android/exoplayer2/c/d/k;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/d/k;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 266
    :cond_16
    move-object/from16 v0, v30

    iget v3, v0, Lcom/google/android/exoplayer2/c/d/b$a;->a:I

    new-array v3, v3, [J

    .line 267
    move-object/from16 v0, v30

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/b$a;->a:I

    new-array v4, v4, [I

    .line 268
    :goto_10
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/c/d/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 269
    move-object/from16 v0, v30

    iget v5, v0, Lcom/google/android/exoplayer2/c/d/b$a;->b:I

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/d/b$a;->d:J

    aput-wide v6, v3, v5

    .line 270
    move-object/from16 v0, v30

    iget v5, v0, Lcom/google/android/exoplayer2/c/d/b$a;->b:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/exoplayer2/c/d/b$a;->c:I

    aput v6, v4, v5

    goto :goto_10

    .line 272
    :cond_17
    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/d/b$b;->b()I

    move-result v2

    .line 273
    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/google/android/exoplayer2/c/d/d;->a(I[J[IJ)Lcom/google/android/exoplayer2/c/d/d$a;

    move-result-object v2

    .line 275
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/d$a;->a:[J

    .line 276
    iget-object v4, v2, Lcom/google/android/exoplayer2/c/d/d$a;->b:[I

    .line 277
    iget v5, v2, Lcom/google/android/exoplayer2/c/d/d$a;->c:I

    .line 278
    iget-object v6, v2, Lcom/google/android/exoplayer2/c/d/d$a;->d:[J

    .line 279
    iget-object v7, v2, Lcom/google/android/exoplayer2/c/d/d$a;->e:[I

    move-wide v14, v8

    goto :goto_f

    .line 295
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/h;->b:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    array-length v2, v6

    const/4 v8, 0x2

    if-lt v2, v8, :cond_1a

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->j:[J

    const/4 v8, 0x0

    aget-wide v16, v2, v8

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    .line 304
    const/4 v2, 0x0

    aget-wide v10, v6, v2

    cmp-long v2, v10, v16

    if-gtz v2, :cond_1a

    const/4 v2, 0x1

    aget-wide v10, v6, v2

    cmp-long v2, v16, v10

    if-gez v2, :cond_1a

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget-wide v10, v6, v2

    cmp-long v2, v10, v8

    if-gez v2, :cond_1a

    cmp-long v2, v8, v14

    if-gtz v2, :cond_1a

    .line 306
    sub-long/2addr v14, v8

    .line 307
    const/4 v2, 0x0

    aget-wide v8, v6, v2

    sub-long v8, v16, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->f:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->q:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v16

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->f:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->q:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    move-wide v8, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v8

    .line 311
    const-wide/16 v10, 0x0

    cmp-long v2, v16, v10

    if-nez v2, :cond_19

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    :cond_19
    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v16, v10

    if-gtz v2, :cond_1a

    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1a

    .line 313
    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/exoplayer2/c/j;->a:I

    .line 314
    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/exoplayer2/c/j;->b:I

    .line 315
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    invoke-static {v6, v8, v9}, Lcom/google/android/exoplayer2/j/r;->a([JJ)V

    .line 316
    new-instance v2, Lcom/google/android/exoplayer2/c/d/k;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/d/k;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 321
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_1c

    .line 325
    const/4 v2, 0x0

    :goto_11
    array-length v8, v6

    if-ge v2, v8, :cond_1b

    .line 326
    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/d/h;->j:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 329
    :cond_1b
    new-instance v2, Lcom/google/android/exoplayer2/c/d/k;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/d/k;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 333
    :cond_1c
    const/4 v10, 0x0

    .line 334
    const/4 v9, 0x0

    .line 335
    const/4 v8, 0x0

    .line 336
    const/4 v2, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    :goto_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1e

    .line 337
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/c/d/h;->j:[J

    aget-wide v18, v8, v2

    .line 338
    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_2c

    .line 339
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v8

    .line 341
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/j/r;->a([JJZZ)I

    move-result v11

    .line 342
    add-long v8, v8, v18

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v8, v9, v10, v12}, Lcom/google/android/exoplayer2/j/r;->a([JJZZ)I

    move-result v9

    .line 343
    sub-int v8, v9, v11

    add-int v10, v16, v8

    .line 344
    if-eq v15, v11, :cond_1d

    const/4 v8, 0x1

    :goto_13
    or-int/2addr v8, v14

    .line 336
    :goto_14
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    goto :goto_12

    .line 344
    :cond_1d
    const/4 v8, 0x0

    goto :goto_13

    .line 348
    :cond_1e
    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_21

    const/4 v2, 0x1

    :goto_15
    or-int v21, v14, v2

    .line 351
    if-eqz v21, :cond_22

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v20, v2

    .line 352
    :goto_16
    if-eqz v21, :cond_23

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v19, v2

    .line 353
    :goto_17
    if-eqz v21, :cond_24

    const/4 v10, 0x0

    .line 354
    :goto_18
    if-eqz v21, :cond_25

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v17, v2

    .line 355
    :goto_19
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 356
    const-wide/16 v8, 0x0

    .line 357
    const/4 v5, 0x0

    .line 358
    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v5

    move v5, v10

    :goto_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    array-length v10, v10

    move/from16 v0, v16

    if-ge v0, v10, :cond_28

    .line 359
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/d/h;->j:[J

    aget-wide v24, v10, v16

    .line 360
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    aget-wide v26, v10, v16

    .line 361
    const-wide/16 v10, -0x1

    cmp-long v10, v24, v10

    if-eqz v10, :cond_27

    .line 362
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/c/d/h;->d:J

    move-wide/from16 v10, v26

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v10

    add-long v12, v24, v10

    .line 364
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/j/r;->a([JJZZ)I

    move-result v10

    .line 365
    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-static {v6, v12, v13, v11, v14}, Lcom/google/android/exoplayer2/j/r;->a([JJZZ)I

    move-result v23

    .line 366
    if-eqz v21, :cond_1f

    .line 367
    sub-int v11, v23, v10

    .line 368
    move-object/from16 v0, v20

    invoke-static {v3, v10, v0, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    move-object/from16 v0, v19

    invoke-static {v4, v10, v0, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move-object/from16 v0, v17

    invoke-static {v7, v10, v0, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    move/from16 v18, v10

    move/from16 v31, v5

    move v5, v2

    move/from16 v2, v31

    .line 372
    :goto_1b
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_26

    .line 373
    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/d/h;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v28

    .line 374
    aget-wide v10, v6, v18

    sub-long v10, v10, v24

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v10

    .line 376
    add-long v10, v10, v28

    aput-wide v10, v22, v5

    .line 377
    if-eqz v21, :cond_20

    aget v10, v19, v5

    if-le v10, v2, :cond_20

    .line 378
    aget v2, v4, v18

    .line 380
    :cond_20
    add-int/lit8 v5, v5, 0x1

    .line 372
    add-int/lit8 v10, v18, 0x1

    move/from16 v18, v10

    goto :goto_1b

    .line 348
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_22
    move-object/from16 v20, v3

    .line 351
    goto/16 :goto_16

    :cond_23
    move-object/from16 v19, v4

    .line 352
    goto/16 :goto_17

    :cond_24
    move v10, v5

    .line 353
    goto/16 :goto_18

    :cond_25
    move-object/from16 v17, v7

    .line 354
    goto/16 :goto_19

    :cond_26
    move/from16 v31, v5

    move v5, v2

    move/from16 v2, v31

    .line 383
    :cond_27
    add-long v10, v8, v26

    .line 358
    add-int/lit8 v8, v16, 0x1

    move/from16 v16, v8

    move-wide v8, v10

    goto/16 :goto_1a

    .line 386
    :cond_28
    const/4 v3, 0x0

    .line 387
    const/4 v2, 0x0

    :goto_1c
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v2, v4, :cond_2a

    if-nez v3, :cond_2a

    .line 388
    aget v4, v17, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    :goto_1d
    or-int/2addr v3, v4

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 388
    :cond_29
    const/4 v4, 0x0

    goto :goto_1d

    .line 390
    :cond_2a
    if-nez v3, :cond_2b

    .line 391
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_2b
    new-instance v2, Lcom/google/android/exoplayer2/c/d/k;

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move-object/from16 v6, v22

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/d/k;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2c
    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto/16 :goto_14

    :cond_2d
    move/from16 v31, v10

    move v10, v9

    move/from16 v9, v31

    goto/16 :goto_b

    :cond_2e
    move/from16 v18, v9

    goto/16 :goto_a

    :cond_2f
    move/from16 v31, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v31

    goto/16 :goto_4
.end method

.method public static a(Lcom/google/android/exoplayer2/c/d/a$b;ZLcom/google/android/exoplayer2/c/j;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v1, 0x0

    const/16 v11, 0x8

    .line 406
    if-eqz p1, :cond_1

    .line 424
    :cond_0
    return-void

    .line 411
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 412
    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 413
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lt v0, v11, :cond_0

    .line 414
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 415
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 416
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->aA:I

    if-ne v2, v3, :cond_a

    .line 7126
    iget v2, v4, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 417
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 8126
    iget v2, v4, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 418
    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 8427
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 8428
    new-instance v5, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    .line 8429
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lt v0, v11, :cond_0

    .line 8430
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    add-int/lit8 v6, v0, -0x8

    .line 8431
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 8432
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->aB:I

    if-ne v0, v2, :cond_8

    .line 8433
    iget-object v0, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 9126
    iget v2, v4, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 8433
    add-int/2addr v2, v6

    invoke-virtual {v5, v0, v2}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 10126
    iget v0, v4, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 8434
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 10445
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 11126
    iget v0, v5, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 10447
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    add-int v7, v0, v2

    .line 10448
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 10449
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->aL:I

    if-ne v0, v2, :cond_9

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    .line 12126
    :goto_3
    iget v8, v5, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 10453
    if-ge v8, v7, :cond_6

    .line 10454
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    .line 10455
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v9

    .line 10456
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 10457
    sget v10, Lcom/google/android/exoplayer2/c/d/a;->aC:I

    if-ne v9, v10, :cond_3

    .line 10458
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/j/k;->e(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 10459
    :cond_3
    sget v10, Lcom/google/android/exoplayer2/c/d/a;->aD:I

    if-ne v9, v10, :cond_4

    .line 10460
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/j/k;->e(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 10461
    :cond_4
    sget v10, Lcom/google/android/exoplayer2/c/d/a;->aE:I

    if-ne v9, v10, :cond_5

    .line 10462
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 10463
    add-int/lit8 v0, v8, -0x4

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/j/k;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 10465
    :cond_5
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto :goto_3

    .line 10468
    :cond_6
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v7, "com.apple.iTunes"

    .line 10469
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10470
    invoke-virtual {p2, v2, v0}, Lcom/google/android/exoplayer2/c/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8436
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8440
    :cond_8
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto/16 :goto_1

    .line 10474
    :cond_9
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto :goto_2

    .line 422
    :cond_a
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto/16 :goto_0
.end method
