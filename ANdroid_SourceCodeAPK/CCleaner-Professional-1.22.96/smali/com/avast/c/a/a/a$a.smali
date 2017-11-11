.class public final Lcom/avast/c/a/a/a$a;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/c/a/a/a$a$b;,
        Lcom/avast/c/a/a/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/c/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/avast/c/a/a/a$a;


# instance fields
.field b:I

.field c:Lcom/google/a/c;

.field d:Lcom/google/a/c;

.field e:Lcom/google/a/c;

.field f:Lcom/google/a/c;

.field g:Lcom/avast/c/a/a/a$a$a;

.field h:I

.field i:Lcom/google/a/c;

.field j:Lcom/google/a/c;

.field k:Lcom/google/a/c;

.field l:Lcom/google/a/c;

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/avast/c/a/a/a$a$1;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$a$1;-><init>()V

    sput-object v0, Lcom/avast/c/a/a/a$a;->a:Lcom/google/a/n;

    .line 1496
    new-instance v0, Lcom/avast/c/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/c/a/a/a$a;-><init>(B)V

    .line 1497
    sput-object v0, Lcom/avast/c/a/a/a$a;->m:Lcom/avast/c/a/a/a$a;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$a;->d()V

    .line 1498
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 660
    iput-byte v1, p0, Lcom/avast/c/a/a/a$a;->n:B

    .line 704
    iput v1, p0, Lcom/avast/c/a/a/a$a;->o:I

    .line 201
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 202
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 660
    iput-byte v0, p0, Lcom/avast/c/a/a/a$a;->n:B

    .line 704
    iput v0, p0, Lcom/avast/c/a/a/a$a;->o:I

    .line 202
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/avast/c/a/a/a$a;-><init>()V

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

    .line 216
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 660
    iput-byte v0, p0, Lcom/avast/c/a/a/a$a;->n:B

    .line 704
    iput v0, p0, Lcom/avast/c/a/a/a$a;->o:I

    .line 217
    invoke-direct {p0}, Lcom/avast/c/a/a/a$a;->d()V

    .line 220
    const/4 v0, 0x0

    .line 221
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 222
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 223
    sparse-switch v2, :sswitch_data_0

    .line 2071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 228
    if-nez v2, :cond_0

    move v0, v1

    .line 230
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 226
    goto :goto_0

    .line 235
    :sswitch_1
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 236
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->c:Lcom/google/a/c;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 3057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 291
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :catchall_0
    move-exception v0

    throw v0

    .line 240
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 241
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->d:Lcom/google/a/c;
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 292
    :catch_1
    move-exception v0

    .line 293
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 4057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 293
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 246
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->e:Lcom/google/a/c;

    goto :goto_0

    .line 250
    :sswitch_4
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 251
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->f:Lcom/google/a/c;

    goto :goto_0

    .line 2343
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 256
    invoke-static {v2}, Lcom/avast/c/a/a/a$a$a;->a(I)Lcom/avast/c/a/a/a$a$a;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_0

    .line 258
    iget v3, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 259
    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->g:Lcom/avast/c/a/a/a$a$a;

    goto :goto_0

    .line 264
    :sswitch_6
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 265
    invoke-virtual {p1}, Lcom/google/a/d;->e()I

    move-result v2

    iput v2, p0, Lcom/avast/c/a/a/a$a;->h:I

    goto :goto_0

    .line 269
    :sswitch_7
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 270
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->i:Lcom/google/a/c;

    goto/16 :goto_0

    .line 274
    :sswitch_8
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 275
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->j:Lcom/google/a/c;

    goto/16 :goto_0

    .line 279
    :sswitch_9
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 280
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->k:Lcom/google/a/c;

    goto/16 :goto_0

    .line 284
    :sswitch_a
    iget v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/avast/c/a/a/a$a;->b:I

    .line 285
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$a;->l:Lcom/google/a/c;
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 297
    :cond_1
    return-void

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 194
    invoke-direct {p0, p1}, Lcom/avast/c/a/a/a$a;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$a;I)I
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/avast/c/a/a/a$a;->h:I

    return p1
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$a;Lcom/avast/c/a/a/a$a$a;)Lcom/avast/c/a/a/a$a$a;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->g:Lcom/avast/c/a/a/a$a$a;

    return-object p1
.end method

.method public static a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;
    .locals 1

    .prologue
    .line 5814
    invoke-static {}, Lcom/avast/c/a/a/a$a$b;->e()Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    .line 817
    invoke-virtual {v0, p0}, Lcom/avast/c/a/a/a$a$b;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/c/a/a/a$a;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/avast/c/a/a/a$a;->m:Lcom/avast/c/a/a/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/c/a/a/a$a;I)I
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/avast/c/a/a/a$a;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->d:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->e:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->f:Lcom/google/a/c;

    return-object p1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 649
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->c:Lcom/google/a/c;

    .line 650
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->d:Lcom/google/a/c;

    .line 651
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->e:Lcom/google/a/c;

    .line 652
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->f:Lcom/google/a/c;

    .line 653
    sget-object v0, Lcom/avast/c/a/a/a$a$a;->a:Lcom/avast/c/a/a/a$a$a;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->g:Lcom/avast/c/a/a/a$a$a;

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/c/a/a/a$a;->h:I

    .line 655
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->i:Lcom/google/a/c;

    .line 656
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->j:Lcom/google/a/c;

    .line 657
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->k:Lcom/google/a/c;

    .line 658
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$a;->l:Lcom/google/a/c;

    .line 659
    return-void
.end method

.method static synthetic e(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->i:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->j:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->k:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic h(Lcom/avast/c/a/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/avast/c/a/a/a$a;->l:Lcom/google/a/c;

    return-object p1
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

    .line 671
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$a;->c()I

    .line 672
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/avast/c/a/a/a$a;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 675
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 676
    iget-object v0, p0, Lcom/avast/c/a/a/a$a;->d:Lcom/google/a/c;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 678
    :cond_1
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 679
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->e:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 681
    :cond_2
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 682
    iget-object v0, p0, Lcom/avast/c/a/a/a$a;->f:Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 684
    :cond_3
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 685
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->g:Lcom/avast/c/a/a/a$a$a;

    .line 4379
    iget v1, v1, Lcom/avast/c/a/a/a$a$a;->h:I

    .line 685
    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(II)V

    .line 687
    :cond_4
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 688
    const/4 v0, 0x6

    iget v1, p0, Lcom/avast/c/a/a/a$a;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 690
    :cond_5
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 691
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->i:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 693
    :cond_6
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 694
    iget-object v0, p0, Lcom/avast/c/a/a/a$a;->j:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 696
    :cond_7
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 697
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->k:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 699
    :cond_8
    iget v0, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 700
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->l:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 702
    :cond_9
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 662
    iget-byte v1, p0, Lcom/avast/c/a/a/a$a;->n:B

    .line 663
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 666
    :goto_0
    return v0

    .line 663
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    :cond_1
    iput-byte v0, p0, Lcom/avast/c/a/a/a$a;->n:B

    goto :goto_0
.end method

.method public final c()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 706
    iget v0, p0, Lcom/avast/c/a/a/a$a;->o:I

    .line 707
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 751
    :goto_0
    return v0

    .line 709
    :cond_0
    const/4 v0, 0x0

    .line 710
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 711
    iget-object v0, p0, Lcom/avast/c/a/a/a$a;->c:Lcom/google/a/c;

    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 714
    :cond_1
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 715
    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->d:Lcom/google/a/c;

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 718
    :cond_2
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 719
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/c/a/a/a$a;->e:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    :cond_3
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 723
    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->f:Lcom/google/a/c;

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_4
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 727
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/avast/c/a/a/a$a;->g:Lcom/avast/c/a/a/a$a$a;

    .line 5379
    iget v2, v2, Lcom/avast/c/a/a/a$a$a;->h:I

    .line 727
    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_5
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 731
    const/4 v1, 0x6

    iget v2, p0, Lcom/avast/c/a/a/a$a;->h:I

    invoke-static {v1, v2}, Lcom/google/a/e;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_6
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 735
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/c/a/a/a$a;->i:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_7
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 739
    iget-object v1, p0, Lcom/avast/c/a/a/a$a;->j:Lcom/google/a/c;

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_8
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 743
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/avast/c/a/a/a$a;->k:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_9
    iget v1, p0, Lcom/avast/c/a/a/a$a;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 747
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/avast/c/a/a/a$a;->l:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_a
    iput v0, p0, Lcom/avast/c/a/a/a$a;->o:I

    goto/16 :goto_0
.end method
