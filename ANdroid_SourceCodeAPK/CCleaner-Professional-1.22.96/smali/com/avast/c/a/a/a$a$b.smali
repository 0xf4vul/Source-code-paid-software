.class public final Lcom/avast/c/a/a/a$a$b;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/c/a/a/a$a;",
        "Lcom/avast/c/a/a/a$a$b;",
        ">;",
        "Lcom/avast/c/a/a/a$b;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:Lcom/google/a/c;

.field private d:Lcom/google/a/c;

.field private e:Lcom/google/a/c;

.field private f:Lcom/avast/c/a/a/a$a$a;

.field private g:I

.field private h:Lcom/google/a/c;

.field private i:Lcom/google/a/c;

.field private j:Lcom/google/a/c;

.field private k:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 992
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->b:Lcom/google/a/c;

    .line 1044
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->c:Lcom/google/a/c;

    .line 1096
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->d:Lcom/google/a/c;

    .line 1148
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->e:Lcom/google/a/c;

    .line 1200
    sget-object v0, Lcom/avast/c/a/a/a$a$a;->a:Lcom/avast/c/a/a/a$a$a;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->f:Lcom/avast/c/a/a/a$a$a;

    .line 1285
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->h:Lcom/google/a/c;

    .line 1337
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->i:Lcom/google/a/c;

    .line 1389
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->j:Lcom/google/a/c;

    .line 1441
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a$b;->k:Lcom/google/a/c;

    .line 836
    return-void
.end method

.method static synthetic e()Lcom/avast/c/a/a/a$a$b;
    .locals 1

    .prologue
    .line 9841
    new-instance v0, Lcom/avast/c/a/a/a$a$b;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$a$b;-><init>()V

    .line 829
    return-object v0
.end method

.method private f()Lcom/avast/c/a/a/a$a$b;
    .locals 2

    .prologue
    .line 1841
    new-instance v0, Lcom/avast/c/a/a/a$a$b;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$a$b;-><init>()V

    .line 870
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$a$b;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/c/a/a/a$a$b;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 934
    invoke-static {}, Lcom/avast/c/a/a/a$a;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-object p0

    .line 2427
    :cond_1
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_3

    move v2, v0

    .line 935
    :goto_1
    if-eqz v2, :cond_2

    .line 2437
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->c:Lcom/google/a/c;

    .line 936
    invoke-virtual {p0, v2}, Lcom/avast/c/a/a/a$a$b;->a(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;

    .line 2451
    :cond_2
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    move v2, v0

    .line 938
    :goto_2
    if-eqz v2, :cond_6

    .line 2461
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->d:Lcom/google/a/c;

    .line 3073
    if-nez v2, :cond_5

    .line 3074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    move v2, v1

    .line 2427
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2451
    goto :goto_2

    .line 3076
    :cond_5
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 3077
    iput-object v2, p0, Lcom/avast/c/a/a/a$a$b;->c:Lcom/google/a/c;

    .line 3475
    :cond_6
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    move v2, v0

    .line 941
    :goto_3
    if-eqz v2, :cond_9

    .line 3485
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->e:Lcom/google/a/c;

    .line 4125
    if-nez v2, :cond_8

    .line 4126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    move v2, v1

    .line 3475
    goto :goto_3

    .line 4128
    :cond_8
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 4129
    iput-object v2, p0, Lcom/avast/c/a/a/a$a$b;->d:Lcom/google/a/c;

    .line 4499
    :cond_9
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    move v2, v0

    .line 944
    :goto_4
    if-eqz v2, :cond_c

    .line 4509
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->f:Lcom/google/a/c;

    .line 5177
    if-nez v2, :cond_b

    .line 5178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_a
    move v2, v1

    .line 4499
    goto :goto_4

    .line 5180
    :cond_b
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 5181
    iput-object v2, p0, Lcom/avast/c/a/a/a$a$b;->e:Lcom/google/a/c;

    .line 5519
    :cond_c
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d

    move v2, v0

    .line 947
    :goto_5
    if-eqz v2, :cond_f

    .line 5525
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->g:Lcom/avast/c/a/a/a$a$a;

    .line 6217
    if-nez v2, :cond_e

    .line 6218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    move v2, v1

    .line 5519
    goto :goto_5

    .line 6220
    :cond_e
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 6221
    iput-object v2, p0, Lcom/avast/c/a/a/a$a$b;->f:Lcom/avast/c/a/a/a$a$a;

    .line 6539
    :cond_f
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_11

    move v2, v0

    .line 950
    :goto_6
    if-eqz v2, :cond_10

    .line 6549
    iget v2, p1, Lcom/avast/c/a/a/a$a;->h:I

    .line 7265
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 7266
    iput v2, p0, Lcom/avast/c/a/a/a$a$b;->g:I

    .line 7563
    :cond_10
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_12

    move v2, v0

    .line 953
    :goto_7
    if-eqz v2, :cond_14

    .line 7573
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->i:Lcom/google/a/c;

    .line 8314
    if-nez v2, :cond_13

    .line 8315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_11
    move v2, v1

    .line 6539
    goto :goto_6

    :cond_12
    move v2, v1

    .line 7563
    goto :goto_7

    .line 8317
    :cond_13
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 8318
    iput-object v2, p0, Lcom/avast/c/a/a/a$a$b;->h:Lcom/google/a/c;

    .line 8587
    :cond_14
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_15

    move v2, v0

    .line 956
    :goto_8
    if-eqz v2, :cond_17

    .line 8597
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->j:Lcom/google/a/c;

    .line 9366
    if-nez v2, :cond_16

    .line 9367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_15
    move v2, v1

    .line 8587
    goto :goto_8

    .line 9369
    :cond_16
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 9370
    iput-object v2, p0, Lcom/avast/c/a/a/a$a$b;->i:Lcom/google/a/c;

    .line 9611
    :cond_17
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_19

    move v2, v0

    .line 959
    :goto_9
    if-eqz v2, :cond_18

    .line 9621
    iget-object v2, p1, Lcom/avast/c/a/a/a$a;->k:Lcom/google/a/c;

    .line 960
    invoke-virtual {p0, v2}, Lcom/avast/c/a/a/a$a$b;->b(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;

    .line 9635
    :cond_18
    iget v2, p1, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_1a

    .line 962
    :goto_a
    if-eqz v0, :cond_0

    .line 9645
    iget-object v0, p1, Lcom/avast/c/a/a/a$a;->l:Lcom/google/a/c;

    .line 963
    invoke-virtual {p0, v0}, Lcom/avast/c/a/a/a$a$b;->c(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;

    goto/16 :goto_0

    :cond_19
    move v2, v1

    .line 9611
    goto :goto_9

    :cond_1a
    move v0, v1

    .line 9635
    goto :goto_a
.end method

.method public final a(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;
    .locals 1

    .prologue
    .line 1021
    if-nez p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1024
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 1025
    iput-object p1, p0, Lcom/avast/c/a/a/a$a$b;->b:Lcom/google/a/c;

    .line 1027
    return-object p0
.end method

.method public final a()Lcom/avast/c/a/a/a$a;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 886
    new-instance v2, Lcom/avast/c/a/a/a$a;

    invoke-direct {v2, v1}, Lcom/avast/c/a/a/a$a;-><init>(C)V

    .line 887
    iget v3, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 889
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    .line 892
    :goto_0
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->a(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 893
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 894
    or-int/lit8 v0, v0, 0x2

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->b(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 897
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 898
    or-int/lit8 v0, v0, 0x4

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->d:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->c(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 901
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 902
    or-int/lit8 v0, v0, 0x8

    .line 904
    :cond_2
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->d(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 905
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 906
    or-int/lit8 v0, v0, 0x10

    .line 908
    :cond_3
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->f:Lcom/avast/c/a/a/a$a$a;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->a(Lcom/avast/c/a/a/a$a;Lcom/avast/c/a/a/a$a$a;)Lcom/avast/c/a/a/a$a$a;

    .line 909
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 910
    or-int/lit8 v0, v0, 0x20

    .line 912
    :cond_4
    iget v1, p0, Lcom/avast/c/a/a/a$a$b;->g:I

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->a(Lcom/avast/c/a/a/a$a;I)I

    .line 913
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 914
    or-int/lit8 v0, v0, 0x40

    .line 916
    :cond_5
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->h:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->e(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 917
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 918
    or-int/lit16 v0, v0, 0x80

    .line 920
    :cond_6
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->i:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->f(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 921
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 922
    or-int/lit16 v0, v0, 0x100

    .line 924
    :cond_7
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->j:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->g(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 925
    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8

    .line 926
    or-int/lit16 v0, v0, 0x200

    .line 928
    :cond_8
    iget-object v1, p0, Lcom/avast/c/a/a/a$a$b;->k:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$a;->h(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 929
    invoke-static {v2, v0}, Lcom/avast/c/a/a/a$a;->b(Lcom/avast/c/a/a/a$a;I)I

    .line 930
    return-object v2

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;
    .locals 1

    .prologue
    .line 1418
    if-nez p1, :cond_0

    .line 1419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1421
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 1422
    iput-object p1, p0, Lcom/avast/c/a/a/a$a$b;->j:Lcom/google/a/c;

    .line 1424
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;
    .locals 1

    .prologue
    .line 1470
    if-nez p1, :cond_0

    .line 1471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1473
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/c/a/a/a$a$b;->a:I

    .line 1474
    iput-object p1, p0, Lcom/avast/c/a/a/a$a$b;->k:Lcom/google/a/c;

    .line 1476
    return-object p0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/avast/c/a/a/a$a$b;->f()Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/avast/c/a/a/a$a$b;->f()Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/avast/c/a/a/a$a$b;->f()Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    return-object v0
.end method
