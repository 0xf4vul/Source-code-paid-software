.class public final Lcom/avast/a/b/a/a$i;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$i$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$i;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/avast/a/b/a/a$i;


# instance fields
.field b:I

.field public c:J

.field public d:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:B

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4451
    new-instance v0, Lcom/avast/a/b/a/a$i$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$i$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$i;->a:Lcom/google/a/n;

    .line 7155
    new-instance v0, Lcom/avast/a/b/a/a$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$i;-><init>(B)V

    .line 7156
    sput-object v0, Lcom/avast/a/b/a/a$i;->e:Lcom/avast/a/b/a/a$i;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$i;->H()V

    .line 7157
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 5281
    iput-byte v1, p0, Lcom/avast/a/b/a/a$i;->s:B

    .line 5340
    iput v1, p0, Lcom/avast/a/b/a/a$i;->t:I

    .line 4332
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4333
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 5281
    iput-byte v0, p0, Lcom/avast/a/b/a/a$i;->s:B

    .line 5340
    iput v0, p0, Lcom/avast/a/b/a/a$i;->t:I

    .line 4333
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 4325
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 4347
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 5281
    iput-byte v0, p0, Lcom/avast/a/b/a/a$i;->s:B

    .line 5340
    iput v0, p0, Lcom/avast/a/b/a/a$i;->t:I

    .line 4348
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->H()V

    .line 4351
    const/4 v0, 0x0

    .line 4352
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4353
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 4354
    sparse-switch v2, :sswitch_data_0

    .line 8071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 4359
    if-nez v2, :cond_0

    move v0, v1

    .line 4361
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 4357
    goto :goto_0

    .line 4366
    :sswitch_1
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4367
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4443
    :catch_0
    move-exception v0

    .line 9057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 4443
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4448
    :catchall_0
    move-exception v0

    throw v0

    .line 4371
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4372
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4444
    :catch_1
    move-exception v0

    .line 4445
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    .line 4446
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 10057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 4446
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4376
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4377
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    goto :goto_0

    .line 4381
    :sswitch_4
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 8193
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v2

    .line 4382
    iput-wide v2, p0, Lcom/avast/a/b/a/a$i;->c:J

    goto :goto_0

    .line 4386
    :sswitch_5
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4387
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    goto :goto_0

    .line 4391
    :sswitch_6
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4392
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    goto :goto_0

    .line 4396
    :sswitch_7
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4397
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    goto :goto_0

    .line 4401
    :sswitch_8
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4402
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4406
    :sswitch_9
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4407
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->l:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4411
    :sswitch_a
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4412
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->m:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4416
    :sswitch_b
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4417
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4421
    :sswitch_c
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4422
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4426
    :sswitch_d
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4427
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4431
    :sswitch_e
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4432
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4436
    :sswitch_f
    iget v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/avast/a/b/a/a$i;->b:I

    .line 4437
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4449
    :cond_1
    return-void

    .line 4354
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x5a -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/a/d;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 4325
    invoke-direct {p0, p1}, Lcom/avast/a/b/a/a$i;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method private A()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4922
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->l:Ljava/lang/Object;

    .line 4923
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4924
    check-cast v0, Ljava/lang/String;

    .line 4925
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4927
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->l:Ljava/lang/Object;

    .line 4930
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private B()Lcom/google/a/c;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4977
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->m:Ljava/lang/Object;

    .line 4978
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4979
    check-cast v0, Ljava/lang/String;

    .line 4980
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4982
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->m:Ljava/lang/Object;

    .line 4985
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private C()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5032
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    .line 5033
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5034
    check-cast v0, Ljava/lang/String;

    .line 5035
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5037
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    .line 5040
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private D()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    .line 5088
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5089
    check-cast v0, Ljava/lang/String;

    .line 5090
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5092
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    .line 5095
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private E()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5142
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    .line 5143
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5144
    check-cast v0, Ljava/lang/String;

    .line 5145
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5147
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    .line 5150
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private F()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5197
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    .line 5198
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5199
    check-cast v0, Ljava/lang/String;

    .line 5200
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5202
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    .line 5205
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private G()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5252
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    .line 5253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5254
    check-cast v0, Ljava/lang/String;

    .line 5255
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5257
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    .line 5260
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private H()V
    .locals 2

    .prologue
    .line 5265
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    .line 5266
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    .line 5267
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    .line 5268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/a/b/a/a$i;->c:J

    .line 5269
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    .line 5270
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    .line 5271
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    .line 5272
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    .line 5273
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->l:Ljava/lang/Object;

    .line 5274
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->m:Ljava/lang/Object;

    .line 5275
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    .line 5276
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    .line 5277
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    .line 5278
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    .line 5279
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    .line 5280
    return-void
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$i;I)I
    .locals 0

    .prologue
    .line 4325
    iput p1, p0, Lcom/avast/a/b/a/a$i;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$i;J)J
    .locals 1

    .prologue
    .line 4325
    iput-wide p1, p0, Lcom/avast/a/b/a/a$i;->c:J

    return-wide p1
.end method

.method public static a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;
    .locals 1

    .prologue
    .line 10470
    invoke-static {}, Lcom/avast/a/b/a/a$i$a;->e()Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    .line 5473
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$i$a;->a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/a/b/a/a$i;
    .locals 1

    .prologue
    .line 4337
    sget-object v0, Lcom/avast/a/b/a/a$i;->e:Lcom/avast/a/b/a/a$i;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic j(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic l(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic m(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic n(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic n(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic o(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public static r()Lcom/avast/a/b/a/a$i$a;
    .locals 1

    .prologue
    .line 5470
    invoke-static {}, Lcom/avast/a/b/a/a$i$a;->e()Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    .line 4514
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4515
    check-cast v0, Ljava/lang/String;

    .line 4516
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4518
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    .line 4521
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private u()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    .line 4569
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4570
    check-cast v0, Ljava/lang/String;

    .line 4571
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4573
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    .line 4576
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private v()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    .line 4624
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4625
    check-cast v0, Ljava/lang/String;

    .line 4626
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4628
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    .line 4631
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private w()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4702
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    .line 4703
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4704
    check-cast v0, Ljava/lang/String;

    .line 4705
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4707
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    .line 4710
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private x()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4757
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    .line 4758
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4759
    check-cast v0, Ljava/lang/String;

    .line 4760
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4762
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    .line 4765
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private y()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    .line 4813
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4814
    check-cast v0, Ljava/lang/String;

    .line 4815
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4817
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    .line 4820
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private z()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4867
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    .line 4868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4869
    check-cast v0, Ljava/lang/String;

    .line 4870
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4872
    iput-object v0, p0, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    .line 4875
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 5292
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$i;->c()I

    .line 5293
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5294
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->t()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5296
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5297
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->u()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5299
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5300
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->v()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5302
    :cond_2
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 5303
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/avast/a/b/a/a$i;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/a/e;->a(IJ)V

    .line 5305
    :cond_3
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 5306
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->w()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5308
    :cond_4
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 5309
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->x()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5311
    :cond_5
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5312
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->y()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5314
    :cond_6
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 5315
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->z()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5317
    :cond_7
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 5318
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->A()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5320
    :cond_8
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 5321
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->B()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5323
    :cond_9
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 5324
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->C()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5326
    :cond_a
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 5327
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->D()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5329
    :cond_b
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 5330
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->E()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5332
    :cond_c
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 5333
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->F()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5335
    :cond_d
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 5336
    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->G()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5338
    :cond_e
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5283
    iget-byte v1, p0, Lcom/avast/a/b/a/a$i;->s:B

    .line 5284
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 5287
    :goto_0
    return v0

    .line 5284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5286
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$i;->s:B

    goto :goto_0
.end method

.method public final c()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 5342
    iget v0, p0, Lcom/avast/a/b/a/a$i;->t:I

    .line 5343
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5407
    :goto_0
    return v0

    .line 5345
    :cond_0
    const/4 v0, 0x0

    .line 5346
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5348
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->t()Lcom/google/a/c;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5350
    :cond_1
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5351
    const/4 v1, 0x3

    .line 5352
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->u()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5354
    :cond_2
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 5356
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->v()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5358
    :cond_3
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 5359
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/avast/a/b/a/a$i;->c:J

    .line 5360
    invoke-static {v1, v2, v3}, Lcom/google/a/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5362
    :cond_4
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 5363
    const/4 v1, 0x6

    .line 5364
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->w()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5366
    :cond_5
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 5367
    const/4 v1, 0x7

    .line 5368
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->x()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5370
    :cond_6
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 5372
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->y()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5374
    :cond_7
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 5375
    const/16 v1, 0x9

    .line 5376
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->z()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5378
    :cond_8
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 5379
    const/16 v1, 0xb

    .line 5380
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->A()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5382
    :cond_9
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 5383
    const/16 v1, 0xc

    .line 5384
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->B()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5386
    :cond_a
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 5387
    const/16 v1, 0xd

    .line 5388
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->C()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5390
    :cond_b
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 5391
    const/16 v1, 0xe

    .line 5392
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->D()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5394
    :cond_c
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 5395
    const/16 v1, 0xf

    .line 5396
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->E()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5398
    :cond_d
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 5400
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->F()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_e
    iget v1, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 5403
    const/16 v1, 0x11

    .line 5404
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i;->G()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5406
    :cond_f
    iput v0, p0, Lcom/avast/a/b/a/a$i;->t:I

    goto/16 :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4490
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    .line 4491
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4492
    check-cast v0, Ljava/lang/String;

    .line 4500
    :goto_0
    return-object v0

    .line 4494
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4496
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 4497
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4498
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4500
    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4546
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    .line 4547
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4548
    check-cast v0, Ljava/lang/String;

    .line 4556
    :goto_0
    return-object v0

    .line 4550
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4552
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 4553
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4554
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4556
    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    .line 4602
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4603
    check-cast v0, Ljava/lang/String;

    .line 4611
    :goto_0
    return-object v0

    .line 4605
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4607
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 4608
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4609
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4611
    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4680
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    .line 4681
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4682
    check-cast v0, Ljava/lang/String;

    .line 4690
    :goto_0
    return-object v0

    .line 4684
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4686
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 4687
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4688
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4690
    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4735
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    .line 4736
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4737
    check-cast v0, Ljava/lang/String;

    .line 4745
    :goto_0
    return-object v0

    .line 4739
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4741
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 4742
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4743
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4745
    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    .line 4791
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4792
    check-cast v0, Ljava/lang/String;

    .line 4800
    :goto_0
    return-object v0

    .line 4794
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4796
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 4797
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4798
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4800
    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5010
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    .line 5011
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5012
    check-cast v0, Ljava/lang/String;

    .line 5020
    :goto_0
    return-object v0

    .line 5014
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5016
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 5017
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5018
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5020
    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5065
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    .line 5066
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5067
    check-cast v0, Ljava/lang/String;

    .line 5075
    :goto_0
    return-object v0

    .line 5069
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5071
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 5072
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5073
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->o:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5075
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5110
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5120
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    .line 5121
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5122
    check-cast v0, Ljava/lang/String;

    .line 5130
    :goto_0
    return-object v0

    .line 5124
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5126
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 5127
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5128
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->p:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5130
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 5165
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    .line 5176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5177
    check-cast v0, Ljava/lang/String;

    .line 5185
    :goto_0
    return-object v0

    .line 5179
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5181
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 5182
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5183
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->q:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5185
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 5220
    iget v0, p0, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5230
    iget-object v0, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    .line 5231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5232
    check-cast v0, Ljava/lang/String;

    .line 5240
    :goto_0
    return-object v0

    .line 5234
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5236
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 5237
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5238
    iput-object v1, p0, Lcom/avast/a/b/a/a$i;->r:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5240
    goto :goto_0
.end method
