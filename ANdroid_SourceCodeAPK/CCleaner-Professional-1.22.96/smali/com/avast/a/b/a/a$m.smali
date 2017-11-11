.class public final Lcom/avast/a/b/a/a$m;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$m$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$m;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/avast/a/b/a/a$m;


# instance fields
.field b:I

.field public c:I

.field public d:Lcom/google/a/c;

.field public e:I

.field public f:I

.field public g:I

.field h:Lcom/avast/a/b/a/a$l;

.field public i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7435
    new-instance v0, Lcom/avast/a/b/a/a$m$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$m$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$m;->a:Lcom/google/a/n;

    .line 8527
    new-instance v0, Lcom/avast/a/b/a/a$m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$m;-><init>(B)V

    .line 8528
    sput-object v0, Lcom/avast/a/b/a/a$m;->j:Lcom/avast/a/b/a/a$m;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$m;->h()V

    .line 8529
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 7717
    iput-byte v1, p0, Lcom/avast/a/b/a/a$m;->l:B

    .line 7755
    iput v1, p0, Lcom/avast/a/b/a/a$m;->m:I

    .line 7347
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7348
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 7717
    iput-byte v0, p0, Lcom/avast/a/b/a/a$m;->l:B

    .line 7755
    iput v0, p0, Lcom/avast/a/b/a/a$m;->m:I

    .line 7348
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 7340
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m;-><init>()V

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

    .line 7362
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 7717
    iput-byte v0, p0, Lcom/avast/a/b/a/a$m;->l:B

    .line 7755
    iput v0, p0, Lcom/avast/a/b/a/a$m;->m:I

    .line 7363
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m;->h()V

    .line 7366
    const/4 v0, 0x0

    .line 7367
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7368
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 7369
    sparse-switch v2, :sswitch_data_0

    .line 9071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 7374
    if-nez v2, :cond_0

    move v0, v1

    .line 7376
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 7372
    goto :goto_0

    .line 7381
    :sswitch_1
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 7382
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7427
    :catch_0
    move-exception v0

    .line 14057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 7427
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7432
    :catchall_0
    move-exception v0

    throw v0

    .line 9343
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 7387
    invoke-static {v2}, Lcom/avast/a/b/a/a$l;->a(I)Lcom/avast/a/b/a/a$l;

    move-result-object v2

    .line 7388
    if-eqz v2, :cond_0

    .line 7389
    iget v3, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 7390
    iput-object v2, p0, Lcom/avast/a/b/a/a$m;->h:Lcom/avast/a/b/a/a$l;
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7428
    :catch_1
    move-exception v0

    .line 7429
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    .line 7430
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 15057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 7430
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7395
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 7396
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    goto :goto_0

    .line 7400
    :sswitch_4
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 10198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 7401
    iput v2, p0, Lcom/avast/a/b/a/a$m;->g:I

    goto :goto_0

    .line 7405
    :sswitch_5
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 11198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 7406
    iput v2, p0, Lcom/avast/a/b/a/a$m;->c:I

    goto :goto_0

    .line 7410
    :sswitch_6
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 12198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 7411
    iput v2, p0, Lcom/avast/a/b/a/a$m;->f:I

    goto :goto_0

    .line 7415
    :sswitch_7
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 13198
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 7416
    iput v2, p0, Lcom/avast/a/b/a/a$m;->e:I

    goto/16 :goto_0

    .line 7420
    :sswitch_8
    iget v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/avast/a/b/a/a$m;->b:I

    .line 7421
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 7433
    :cond_1
    return-void

    .line 7369
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x30 -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
        0x52 -> :sswitch_8
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
    .line 7340
    invoke-direct {p0, p1}, Lcom/avast/a/b/a/a$m;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$m;I)I
    .locals 0

    .prologue
    .line 7340
    iput p1, p0, Lcom/avast/a/b/a/a$m;->c:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$m;Lcom/avast/a/b/a/a$l;)Lcom/avast/a/b/a/a$l;
    .locals 0

    .prologue
    .line 7340
    iput-object p1, p0, Lcom/avast/a/b/a/a$m;->h:Lcom/avast/a/b/a/a$l;

    return-object p1
.end method

.method public static a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 16857
    invoke-static {}, Lcom/avast/a/b/a/a$m$a;->e()Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    .line 7860
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/a/b/a/a$m;
    .locals 1

    .prologue
    .line 7352
    sget-object v0, Lcom/avast/a/b/a/a$m;->j:Lcom/avast/a/b/a/a$m;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$m;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 7340
    iput-object p1, p0, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 7340
    iput-object p1, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$m;I)I
    .locals 0

    .prologue
    .line 7340
    iput p1, p0, Lcom/avast/a/b/a/a$m;->e:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$m;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7340
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 7340
    iput-object p1, p0, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/b/a/a$m;I)I
    .locals 0

    .prologue
    .line 7340
    iput p1, p0, Lcom/avast/a/b/a/a$m;->f:I

    return p1
.end method

.method static synthetic c(Lcom/avast/a/b/a/a$m;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7340
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/a/b/a/a$m;I)I
    .locals 0

    .prologue
    .line 7340
    iput p1, p0, Lcom/avast/a/b/a/a$m;->g:I

    return p1
.end method

.method static synthetic e(Lcom/avast/a/b/a/a$m;I)I
    .locals 0

    .prologue
    .line 7340
    iput p1, p0, Lcom/avast/a/b/a/a$m;->b:I

    return p1
.end method

.method public static e()Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 7857
    invoke-static {}, Lcom/avast/a/b/a/a$m$a;->e()Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 7614
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    .line 7615
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7616
    check-cast v0, Ljava/lang/String;

    .line 7617
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 7619
    iput-object v0, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    .line 7622
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private g()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 7695
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    .line 7696
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7697
    check-cast v0, Ljava/lang/String;

    .line 7698
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 7700
    iput-object v0, p0, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    .line 7703
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7708
    iput v1, p0, Lcom/avast/a/b/a/a$m;->c:I

    .line 7709
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    .line 7710
    iput v1, p0, Lcom/avast/a/b/a/a$m;->e:I

    .line 7711
    iput v1, p0, Lcom/avast/a/b/a/a$m;->f:I

    .line 7712
    iput v1, p0, Lcom/avast/a/b/a/a$m;->g:I

    .line 7713
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    .line 7714
    sget-object v0, Lcom/avast/a/b/a/a$l;->a:Lcom/avast/a/b/a/a$l;

    iput-object v0, p0, Lcom/avast/a/b/a/a$m;->h:Lcom/avast/a/b/a/a$l;

    .line 7715
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    .line 7716
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 7728
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$m;->c()I

    .line 7729
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    .line 7730
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 7732
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 7733
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/a/b/a/a$m;->h:Lcom/avast/a/b/a/a$l;

    .line 15064
    iget v1, v1, Lcom/avast/a/b/a/a$l;->f:I

    .line 7733
    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(II)V

    .line 7735
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    .line 7736
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 7738
    :cond_2
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 7739
    const/4 v0, 0x6

    iget v1, p0, Lcom/avast/a/b/a/a$m;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 7741
    :cond_3
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 7742
    const/4 v0, 0x7

    iget v1, p0, Lcom/avast/a/b/a/a$m;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 7744
    :cond_4
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_5

    .line 7745
    iget v0, p0, Lcom/avast/a/b/a/a$m;->f:I

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(II)V

    .line 7747
    :cond_5
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_6

    .line 7748
    const/16 v0, 0x9

    iget v1, p0, Lcom/avast/a/b/a/a$m;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 7750
    :cond_6
    iget v0, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 7751
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/avast/a/b/a/a$m;->f()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 7753
    :cond_7
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7719
    iget-byte v1, p0, Lcom/avast/a/b/a/a$m;->l:B

    .line 7720
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 7723
    :goto_0
    return v0

    .line 7720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7722
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$m;->l:B

    goto :goto_0
.end method

.method public final c()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 7757
    iget v0, p0, Lcom/avast/a/b/a/a$m;->m:I

    .line 7758
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7794
    :goto_0
    return v0

    .line 7760
    :cond_0
    const/4 v0, 0x0

    .line 7761
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_1

    .line 7762
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    .line 7763
    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7765
    :cond_1
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    .line 7766
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/a/b/a/a$m;->h:Lcom/avast/a/b/a/a$l;

    .line 16064
    iget v2, v2, Lcom/avast/a/b/a/a$l;->f:I

    .line 7767
    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7769
    :cond_2
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    .line 7771
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m;->g()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7773
    :cond_3
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 7774
    const/4 v1, 0x6

    iget v2, p0, Lcom/avast/a/b/a/a$m;->g:I

    .line 7775
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7777
    :cond_4
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 7778
    const/4 v1, 0x7

    iget v2, p0, Lcom/avast/a/b/a/a$m;->c:I

    .line 7779
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7781
    :cond_5
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_6

    .line 7782
    iget v1, p0, Lcom/avast/a/b/a/a$m;->f:I

    .line 7783
    invoke-static {v4, v1}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7785
    :cond_6
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_7

    .line 7786
    const/16 v1, 0x9

    iget v2, p0, Lcom/avast/a/b/a/a$m;->e:I

    .line 7787
    invoke-static {v1, v2}, Lcom/google/a/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7789
    :cond_7
    iget v1, p0, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    .line 7790
    const/16 v1, 0xa

    .line 7791
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m;->f()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7793
    :cond_8
    iput v0, p0, Lcom/avast/a/b/a/a$m;->m:I

    goto/16 :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7592
    iget-object v0, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    .line 7593
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7594
    check-cast v0, Ljava/lang/String;

    .line 7602
    :goto_0
    return-object v0

    .line 7596
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 7598
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 7599
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7600
    iput-object v1, p0, Lcom/avast/a/b/a/a$m;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 7602
    goto :goto_0
.end method
