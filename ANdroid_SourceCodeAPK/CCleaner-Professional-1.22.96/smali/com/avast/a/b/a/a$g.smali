.class public final Lcom/avast/a/b/a/a$g;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$g$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/avast/a/b/a/a$g;


# instance fields
.field b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field e:I

.field public f:Lcom/google/a/c;

.field g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2131
    new-instance v0, Lcom/avast/a/b/a/a$g$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$g$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$g;->a:Lcom/google/a/n;

    .line 3115
    new-instance v0, Lcom/avast/a/b/a/a$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$g;-><init>(B)V

    .line 3116
    sput-object v0, Lcom/avast/a/b/a/a$g;->i:Lcom/avast/a/b/a/a$g;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$g;->g()V

    .line 3117
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2030
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 2181
    iput v1, p0, Lcom/avast/a/b/a/a$g;->j:I

    .line 2345
    iput-byte v1, p0, Lcom/avast/a/b/a/a$g;->k:B

    .line 2381
    iput v1, p0, Lcom/avast/a/b/a/a$g;->l:I

    .line 2032
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2033
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 2181
    iput v0, p0, Lcom/avast/a/b/a/a$g;->j:I

    .line 2345
    iput-byte v0, p0, Lcom/avast/a/b/a/a$g;->k:B

    .line 2381
    iput v0, p0, Lcom/avast/a/b/a/a$g;->l:I

    .line 2033
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 2025
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;Lcom/google/a/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0x20

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2047
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 2181
    iput v1, p0, Lcom/avast/a/b/a/a$g;->j:I

    .line 2345
    iput-byte v1, p0, Lcom/avast/a/b/a/a$g;->k:B

    .line 2381
    iput v1, p0, Lcom/avast/a/b/a/a$g;->l:I

    .line 2048
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g;->g()V

    move v1, v0

    .line 2052
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 2053
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v3

    .line 2054
    sparse-switch v3, :sswitch_data_0

    .line 4071
    invoke-virtual {p1, v3}, Lcom/google/a/d;->b(I)Z

    move-result v3

    .line 2059
    if-nez v3, :cond_0

    move v0, v2

    .line 2061
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 2057
    goto :goto_0

    .line 2066
    :sswitch_1
    and-int/lit8 v3, v1, 0x1

    if-eq v3, v2, :cond_1

    .line 2067
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2068
    or-int/lit8 v1, v1, 0x1

    .line 2070
    :cond_1
    iget-object v3, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/a/d;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2117
    :catch_0
    move-exception v0

    .line 5057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 2117
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2122
    :catchall_0
    move-exception v0

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_2

    .line 2123
    iget-object v2, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2125
    :cond_2
    and-int/lit8 v1, v1, 0x20

    if-ne v1, v10, :cond_3

    .line 2126
    iget-object v1, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    .line 2128
    :cond_3
    throw v0

    .line 2074
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v3

    .line 2075
    invoke-virtual {p1, v3}, Lcom/google/a/d;->c(I)I

    move-result v3

    .line 2076
    and-int/lit8 v4, v1, 0x1

    if-eq v4, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/a/d;->h()I

    move-result v4

    if-lez v4, :cond_4

    .line 2077
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2078
    or-int/lit8 v1, v1, 0x1

    .line 2080
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d;->h()I

    move-result v4

    if-lez v4, :cond_5

    .line 2081
    iget-object v4, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/a/d;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2118
    :catch_1
    move-exception v0

    .line 2119
    :try_start_3
    new-instance v3, Lcom/google/a/i;

    .line 2120
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 6057
    iput-object p0, v3, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 2120
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2083
    :cond_5
    :try_start_4
    invoke-virtual {p1, v3}, Lcom/google/a/d;->d(I)V

    goto/16 :goto_0

    .line 2087
    :sswitch_3
    iget v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    .line 4363
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v4

    .line 4529
    ushr-long v6, v4, v2

    const-wide/16 v8, 0x1

    and-long/2addr v4, v8

    neg-long v4, v4

    xor-long/2addr v4, v6

    .line 2088
    iput-wide v4, p0, Lcom/avast/a/b/a/a$g;->d:J

    goto/16 :goto_0

    .line 2092
    :sswitch_4
    and-int/lit8 v3, v1, 0x20

    if-eq v3, v10, :cond_6

    .line 2093
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    .line 2094
    or-int/lit8 v1, v1, 0x20

    .line 2096
    :cond_6
    iget-object v3, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    sget-object v4, Lcom/avast/a/b/a/a$c;->a:Lcom/google/a/n;

    invoke-virtual {p1, v4, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2100
    :sswitch_5
    iget v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    .line 2101
    invoke-virtual {p1}, Lcom/google/a/d;->e()I

    move-result v3

    iput v3, p0, Lcom/avast/a/b/a/a$g;->e:I

    goto/16 :goto_0

    .line 2105
    :sswitch_6
    iget v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    .line 2106
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v3

    iput-object v3, p0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    goto/16 :goto_0

    .line 2110
    :sswitch_7
    iget v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/avast/a/b/a/a$g;->b:I

    .line 2111
    invoke-virtual {p1}, Lcom/google/a/d;->b()I

    move-result v3

    iput v3, p0, Lcom/avast/a/b/a/a$g;->g:I
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2122
    :cond_7
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v2, :cond_8

    .line 2123
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2125
    :cond_8
    and-int/lit8 v0, v1, 0x20

    if-ne v0, v10, :cond_9

    .line 2126
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    .line 2129
    :cond_9
    return-void

    .line 2054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x28 -> :sswitch_5
        0x5a -> :sswitch_6
        0x60 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/a/d;Lcom/google/a/f;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 2025
    invoke-direct {p0, p1, p2}, Lcom/avast/a/b/a/a$g;-><init>(Lcom/google/a/d;Lcom/google/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$g;I)I
    .locals 0

    .prologue
    .line 2025
    iput p1, p0, Lcom/avast/a/b/a/a$g;->e:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$g;J)J
    .locals 1

    .prologue
    .line 2025
    iput-wide p1, p0, Lcom/avast/a/b/a/a$g;->d:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/b/a/a$g;
    .locals 1

    .prologue
    .line 2037
    sget-object v0, Lcom/avast/a/b/a/a$g;->i:Lcom/avast/a/b/a/a$g;

    return-object v0
.end method

.method public static a([B)Lcom/avast/a/b/a/a$g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 2445
    sget-object v0, Lcom/avast/a/b/a/a$g;->a:Lcom/google/a/n;

    invoke-interface {v0, p0}, Lcom/google/a/n;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$g;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$g;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$g;I)I
    .locals 0

    .prologue
    .line 2025
    iput p1, p0, Lcom/avast/a/b/a/a$g;->g:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/b/a/a$g;I)I
    .locals 0

    .prologue
    .line 2025
    iput p1, p0, Lcom/avast/a/b/a/a$g;->b:I

    return p1
.end method

.method public static e()Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 2485
    invoke-static {}, Lcom/avast/a/b/a/a$g$a;->e()Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/a/b/a/a$g;->d:J

    .line 2340
    iput v2, p0, Lcom/avast/a/b/a/a$g;->e:I

    .line 2341
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    .line 2342
    iput v2, p0, Lcom/avast/a/b/a/a$g;->g:I

    .line 2343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    .line 2344
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
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2356
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$g;->c()I

    .line 6159
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2358
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/a/e;->d(I)V

    .line 2359
    iget v0, p0, Lcom/avast/a/b/a/a$g;->j:I

    invoke-virtual {p1, v0}, Lcom/google/a/e;->d(I)V

    :cond_0
    move v1, v2

    .line 2361
    :goto_0
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/a/e;->a(I)V

    .line 2361
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2364
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2365
    iget-wide v0, p0, Lcom/avast/a/b/a/a$g;->d:J

    .line 6273
    invoke-virtual {p1, v3, v2}, Lcom/google/a/e;->g(II)V

    .line 6419
    invoke-static {v0, v1}, Lcom/google/a/e;->c(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(J)V

    .line 2367
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 2368
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 2367
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2370
    :cond_3
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_4

    .line 2371
    const/4 v0, 0x5

    iget v1, p0, Lcom/avast/a/b/a/a$g;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 2373
    :cond_4
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 2374
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2376
    :cond_5
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 2377
    const/16 v0, 0xc

    iget v1, p0, Lcom/avast/a/b/a/a$g;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 2379
    :cond_6
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2347
    iget-byte v1, p0, Lcom/avast/a/b/a/a$g;->k:B

    .line 2348
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2351
    :goto_0
    return v0

    .line 2348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2350
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$g;->k:B

    goto :goto_0
.end method

.method public final c()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 2383
    iget v1, p0, Lcom/avast/a/b/a/a$g;->l:I

    .line 2384
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 2422
    :goto_0
    return v1

    :cond_0
    move v1, v2

    move v3, v2

    .line 2389
    :goto_1
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 2390
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2391
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->b(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 2389
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2393
    :cond_1
    add-int/lit8 v0, v1, 0x0

    .line 7159
    iget-object v3, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 2394
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2395
    add-int/lit8 v0, v0, 0x1

    .line 2397
    invoke-static {v1}, Lcom/google/a/e;->b(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 2399
    :cond_2
    iput v1, p0, Lcom/avast/a/b/a/a$g;->j:I

    .line 2401
    iget v1, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 2402
    iget-wide v4, p0, Lcom/avast/a/b/a/a$g;->d:J

    .line 7599
    invoke-static {v6}, Lcom/google/a/e;->c(I)I

    move-result v1

    .line 7816
    invoke-static {v4, v5}, Lcom/google/a/e;->c(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/a/e;->b(J)I

    move-result v3

    .line 7599
    add-int/2addr v1, v3

    .line 2403
    add-int/2addr v0, v1

    :cond_3
    move v1, v0

    .line 2405
    :goto_2
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 2406
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    .line 2407
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-static {v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/2addr v0, v1

    .line 2405
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    .line 2409
    :cond_4
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_5

    .line 2410
    const/4 v0, 0x5

    iget v2, p0, Lcom/avast/a/b/a/a$g;->e:I

    .line 2411
    invoke-static {v0, v2}, Lcom/google/a/e;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 2413
    :cond_5
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 2414
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    .line 2415
    invoke-static {v0, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2417
    :cond_6
    iget v0, p0, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    .line 2418
    const/16 v0, 0xc

    iget v2, p0, Lcom/avast/a/b/a/a$g;->g:I

    .line 2419
    invoke-static {v0, v2}, Lcom/google/a/e;->d(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 2421
    :cond_7
    iput v1, p0, Lcom/avast/a/b/a/a$g;->l:I

    goto/16 :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 2490
    .line 9485
    invoke-static {}, Lcom/avast/a/b/a/a$g$a;->e()Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    .line 8488
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$g$a;->a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    .line 2490
    return-object v0
.end method
