.class public final Lcom/avast/a/a/a/a/a$a;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/a/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/a/a/a/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/a/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/avast/a/a/a/a/a$a;


# instance fields
.field b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Lcom/avast/a/a/a/a/a$a$1;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/a$a$1;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/a/a$a;->a:Lcom/google/a/n;

    .line 964
    new-instance v0, Lcom/avast/a/a/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/a$a;-><init>(B)V

    .line 965
    sput-object v0, Lcom/avast/a/a/a/a/a$a;->f:Lcom/avast/a/a/a/a/a$a;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/a$a;->d()V

    .line 966
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 599
    iput-byte v1, p0, Lcom/avast/a/a/a/a/a$a;->g:B

    .line 622
    iput v1, p0, Lcom/avast/a/a/a/a/a$a;->h:I

    .line 447
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 448
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 599
    iput-byte v0, p0, Lcom/avast/a/a/a/a/a$a;->g:B

    .line 622
    iput v0, p0, Lcom/avast/a/a/a/a/a$a;->h:I

    .line 448
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 462
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 599
    iput-byte v0, p0, Lcom/avast/a/a/a/a/a$a;->g:B

    .line 622
    iput v0, p0, Lcom/avast/a/a/a/a/a$a;->h:I

    .line 463
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$a;->d()V

    .line 466
    const/4 v0, 0x0

    .line 467
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 468
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 469
    sparse-switch v2, :sswitch_data_0

    .line 1071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 474
    if-nez v2, :cond_0

    move v0, v1

    .line 476
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 472
    goto :goto_0

    .line 481
    :sswitch_1
    iget v2, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    .line 482
    invoke-virtual {p1}, Lcom/google/a/d;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avast/a/a/a/a/a$a;->c:Z
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 2057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 498
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :catchall_0
    move-exception v0

    throw v0

    .line 486
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    .line 487
    invoke-virtual {p1}, Lcom/google/a/d;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avast/a/a/a/a/a$a;->d:Z
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 499
    :catch_1
    move-exception v0

    .line 500
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    .line 501
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 3057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 501
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    .line 492
    invoke-virtual {p1}, Lcom/google/a/d;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avast/a/a/a/a/a$a;->e:Z
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 504
    :cond_1
    return-void

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 440
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/a/a$a;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/a$a;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    return p1
.end method

.method public static a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;
    .locals 1

    .prologue
    .line 5704
    invoke-static {}, Lcom/avast/a/a/a/a/a$a$a;->e()Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    .line 707
    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/a/a$a$a;->a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/a/a/a/a/a$a;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/avast/a/a/a/a/a$a;->f:Lcom/avast/a/a/a/a/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/a$a;Z)Z
    .locals 0

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/a$a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/a$a;Z)Z
    .locals 0

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/a$a;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/a$a;Z)Z
    .locals 0

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/a$a;->e:Z

    return p1
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/avast/a/a/a/a/a$a;->c:Z

    .line 596
    iput-boolean v0, p0, Lcom/avast/a/a/a/a/a$a;->d:Z

    .line 597
    iput-boolean v0, p0, Lcom/avast/a/a/a/a/a$a;->e:Z

    .line 598
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 610
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/a$a;->c()I

    .line 611
    iget v0, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 612
    iget-boolean v0, p0, Lcom/avast/a/a/a/a/a$a;->c:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(IZ)V

    .line 614
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 615
    iget-boolean v0, p0, Lcom/avast/a/a/a/a/a$a;->d:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(IZ)V

    .line 617
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 618
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/avast/a/a/a/a/a$a;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 620
    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 601
    iget-byte v1, p0, Lcom/avast/a/a/a/a/a$a;->g:B

    .line 602
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 605
    :goto_0
    return v0

    .line 602
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 604
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/a/a/a/a$a;->g:B

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 624
    iget v0, p0, Lcom/avast/a/a/a/a/a$a;->h:I

    .line 625
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 641
    :goto_0
    return v0

    .line 627
    :cond_0
    const/4 v0, 0x0

    .line 628
    iget v1, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3489
    invoke-static {v2}, Lcom/google/a/e;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 630
    add-int/lit8 v0, v0, 0x0

    .line 632
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4489
    invoke-static {v3}, Lcom/google/a/e;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 634
    add-int/2addr v0, v1

    .line 636
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 637
    const/4 v1, 0x3

    .line 5489
    invoke-static {v1}, Lcom/google/a/e;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 638
    add-int/2addr v0, v1

    .line 640
    :cond_3
    iput v0, p0, Lcom/avast/a/a/a/a/a$a;->h:I

    goto :goto_0
.end method
