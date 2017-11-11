.class public final Lcom/avast/a/a/a/b/a$a;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/a/a/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/a/a/b/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/a/a/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcom/avast/a/a/a/b/a$a;


# instance fields
.field b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:J

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field n:I

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/avast/a/a/a/b/a$a$1;

    invoke-direct {v0}, Lcom/avast/a/a/a/b/a$a$1;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/b/a$a;->a:Lcom/google/a/n;

    .line 2444
    new-instance v0, Lcom/avast/a/a/a/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/b/a$a;-><init>(B)V

    .line 2445
    sput-object v0, Lcom/avast/a/a/a/b/a$a;->o:Lcom/avast/a/a/a/b/a$a;

    invoke-direct {v0}, Lcom/avast/a/a/a/b/a$a;->k()V

    .line 2446
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 1028
    iput-byte v1, p0, Lcom/avast/a/a/a/b/a$a;->r:B

    .line 1084
    iput v1, p0, Lcom/avast/a/a/a/b/a$a;->s:I

    .line 348
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 349
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 1028
    iput-byte v0, p0, Lcom/avast/a/a/a/b/a$a;->r:B

    .line 1084
    iput v0, p0, Lcom/avast/a/a/a/b/a$a;->s:I

    .line 349
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;-><init>()V

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

    .line 363
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 1028
    iput-byte v0, p0, Lcom/avast/a/a/a/b/a$a;->r:B

    .line 1084
    iput v0, p0, Lcom/avast/a/a/a/b/a$a;->s:I

    .line 364
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->k()V

    .line 367
    const/4 v0, 0x0

    .line 368
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 369
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 370
    sparse-switch v2, :sswitch_data_0

    .line 3071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 375
    if-nez v2, :cond_0

    move v0, v1

    .line 377
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 373
    goto :goto_0

    .line 382
    :sswitch_1
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 383
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 10057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 454
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :catchall_0
    move-exception v0

    throw v0

    .line 387
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 388
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 455
    :catch_1
    move-exception v0

    .line 456
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    .line 457
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 11057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 457
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 393
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    goto :goto_0

    .line 397
    :sswitch_4
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 3193
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v2

    .line 398
    iput-wide v2, p0, Lcom/avast/a/a/a/b/a$a;->f:J

    goto :goto_0

    .line 402
    :sswitch_5
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 403
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    goto :goto_0

    .line 407
    :sswitch_6
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 408
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a;->p:Ljava/lang/Object;

    goto :goto_0

    .line 412
    :sswitch_7
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 3198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 413
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->h:I

    goto :goto_0

    .line 417
    :sswitch_8
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 4198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 418
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->i:I

    goto/16 :goto_0

    .line 422
    :sswitch_9
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 5198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 423
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->j:I

    goto/16 :goto_0

    .line 427
    :sswitch_a
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 6198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 428
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->k:I

    goto/16 :goto_0

    .line 432
    :sswitch_b
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 7198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 433
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->l:I

    goto/16 :goto_0

    .line 437
    :sswitch_c
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 8198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 438
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->m:I

    goto/16 :goto_0

    .line 442
    :sswitch_d
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 443
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a;->q:Ljava/lang/Object;

    goto/16 :goto_0

    .line 447
    :sswitch_e
    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    .line 9198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 448
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->n:I
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 460
    :cond_1
    return-void

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
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
    .line 341
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/b/a$a;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->h:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/b/a$a;J)J
    .locals 1

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/avast/a/a/a/b/a$a;->f:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/a/a/b/a$a;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/avast/a/a/a/b/a$a;->o:Lcom/avast/a/a/a/b/a$a;

    return-object v0
.end method

.method public static a(Lcom/google/a/c;)Lcom/avast/a/a/a/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 1160
    sget-object v0, Lcom/avast/a/a/a/b/a$a;->a:Lcom/google/a/n;

    invoke-interface {v0, p0}, Lcom/google/a/n;->a(Lcom/google/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/b/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->i:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->j:I

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->k:I

    return p1
.end method

.method public static d()Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 1210
    invoke-static {}, Lcom/avast/a/a/a/b/a$a$a;->e()Lcom/avast/a/a/a/b/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->l:I

    return p1
.end method

.method private e()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    .line 528
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 529
    check-cast v0, Ljava/lang/String;

    .line 530
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 532
    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    .line 535
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method static synthetic e(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/avast/a/a/a/b/a$a;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->m:I

    return p1
.end method

.method private f()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    .line 586
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 587
    check-cast v0, Ljava/lang/String;

    .line 588
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 590
    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    .line 593
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/avast/a/a/a/b/a$a;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->n:I

    return p1
.end method

.method private g()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    .line 641
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 642
    check-cast v0, Ljava/lang/String;

    .line 643
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 645
    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    .line 648
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method static synthetic h(Lcom/avast/a/a/a/b/a$a;I)I
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    return p1
.end method

.method private h()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    .line 723
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 724
    check-cast v0, Ljava/lang/String;

    .line 725
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 727
    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    .line 730
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private i()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->p:Ljava/lang/Object;

    .line 778
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 779
    check-cast v0, Ljava/lang/String;

    .line 780
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 782
    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->p:Ljava/lang/Object;

    .line 785
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private j()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/avast/a/a/a/b/a$a;->q:Ljava/lang/Object;

    .line 977
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 978
    check-cast v0, Ljava/lang/String;

    .line 979
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 981
    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->q:Ljava/lang/Object;

    .line 984
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1013
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    .line 1014
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    .line 1015
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    .line 1016
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/a/a/a/b/a$a;->f:J

    .line 1017
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    .line 1018
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->p:Ljava/lang/Object;

    .line 1019
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->h:I

    .line 1020
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->i:I

    .line 1021
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->j:I

    .line 1022
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->k:I

    .line 1023
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->l:I

    .line 1024
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->m:I

    .line 1025
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a;->q:Ljava/lang/Object;

    .line 1026
    iput v2, p0, Lcom/avast/a/a/a/b/a$a;->n:I

    .line 1027
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1039
    invoke-virtual {p0}, Lcom/avast/a/a/a/b/a$a;->c()I

    .line 1040
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->e()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1043
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1044
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->f()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1046
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1047
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->g()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1049
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1050
    iget-wide v0, p0, Lcom/avast/a/a/a/b/a$a;->f:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/a/e;->a(IJ)V

    .line 1052
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1053
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->h()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1055
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1056
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->i()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1058
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1059
    const/4 v0, 0x7

    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1061
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1062
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->i:I

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(II)V

    .line 1064
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1065
    const/16 v0, 0x9

    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1067
    :cond_8
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1068
    const/16 v0, 0xa

    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1070
    :cond_9
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1071
    const/16 v0, 0xb

    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1073
    :cond_a
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 1074
    const/16 v0, 0xc

    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1076
    :cond_b
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 1077
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->j()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1079
    :cond_c
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 1080
    const/16 v0, 0xe

    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1082
    :cond_d
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1030
    iget-byte v1, p0, Lcom/avast/a/a/a/b/a$a;->r:B

    .line 1031
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1034
    :goto_0
    return v0

    .line 1031
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1033
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/a/a/b/a$a;->r:B

    goto :goto_0
.end method

.method public final c()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1086
    iget v0, p0, Lcom/avast/a/a/a/b/a$a;->s:I

    .line 1087
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1147
    :goto_0
    return v0

    .line 1089
    :cond_0
    const/4 v0, 0x0

    .line 1090
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1092
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->e()Lcom/google/a/c;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1094
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1096
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->f()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1098
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1099
    const/4 v1, 0x3

    .line 1100
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->g()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1102
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 1103
    iget-wide v2, p0, Lcom/avast/a/a/a/b/a$a;->f:J

    .line 1104
    invoke-static {v4, v2, v3}, Lcom/google/a/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1106
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1107
    const/4 v1, 0x5

    .line 1108
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->h()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1111
    const/4 v1, 0x6

    .line 1112
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->i()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1115
    const/4 v1, 0x7

    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->h:I

    .line 1116
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1119
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->i:I

    .line 1120
    invoke-static {v5, v1}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1122
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1123
    const/16 v1, 0x9

    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->j:I

    .line 1124
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1126
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1127
    const/16 v1, 0xa

    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->k:I

    .line 1128
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1130
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1131
    const/16 v1, 0xb

    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->l:I

    .line 1132
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    :cond_b
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1135
    const/16 v1, 0xc

    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->m:I

    .line 1136
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 1139
    const/16 v1, 0xd

    .line 1140
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a;->j()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1142
    :cond_d
    iget v1, p0, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1143
    const/16 v1, 0xe

    iget v2, p0, Lcom/avast/a/a/a/b/a$a;->n:I

    .line 1144
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1146
    :cond_e
    iput v0, p0, Lcom/avast/a/a/a/b/a$a;->s:I

    goto/16 :goto_0
.end method
