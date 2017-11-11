.class public final Lcom/avast/a/b/a/a$e;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$e$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/avast/a/b/a/a$e;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$o;",
            ">;"
        }
    .end annotation
.end field

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/avast/a/b/a/a$e$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$e$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$e;->a:Lcom/google/a/n;

    .line 743
    new-instance v0, Lcom/avast/a/b/a/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$e;-><init>(B)V

    .line 744
    sput-object v0, Lcom/avast/a/b/a/a$e;->c:Lcom/avast/a/b/a/a$e;

    .line 6367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 745
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 369
    iput-byte v1, p0, Lcom/avast/a/b/a/a$e;->d:B

    .line 386
    iput v1, p0, Lcom/avast/a/b/a/a$e;->e:I

    .line 240
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 241
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 369
    iput-byte v0, p0, Lcom/avast/a/b/a/a$e;->d:B

    .line 386
    iput v0, p0, Lcom/avast/a/b/a/a$e;->e:I

    .line 241
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/avast/a/b/a/a$e;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;Lcom/google/a/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 255
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 369
    iput-byte v1, p0, Lcom/avast/a/b/a/a$e;->d:B

    .line 386
    iput v1, p0, Lcom/avast/a/b/a/a$e;->e:I

    .line 1367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    move v1, v0

    .line 260
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 261
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v3

    .line 262
    sparse-switch v3, :sswitch_data_0

    .line 2071
    invoke-virtual {p1, v3}, Lcom/google/a/d;->b(I)Z

    move-result v3

    .line 267
    if-nez v3, :cond_0

    move v1, v2

    .line 269
    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 265
    goto :goto_0

    .line 274
    :sswitch_1
    and-int/lit8 v3, v0, 0x1

    if-eq v3, v2, :cond_1

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 276
    or-int/lit8 v0, v0, 0x1

    .line 278
    :cond_1
    iget-object v3, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    sget-object v4, Lcom/avast/a/b/a/a$o;->a:Lcom/google/a/n;

    invoke-virtual {p1, v4, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 3057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 284
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :catchall_0
    move-exception v0

    :goto_1
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    .line 290
    iget-object v1, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 292
    :cond_2
    throw v0

    .line 289
    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    .line 290
    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 293
    :cond_4
    return-void

    .line 285
    :catch_1
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 286
    :try_start_2
    new-instance v3, Lcom/google/a/i;

    .line 287
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 4057
    iput-object p0, v3, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 287
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :catchall_1
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_1

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/avast/a/b/a/a$e;-><init>(Lcom/google/a/d;Lcom/google/a/f;)V

    return-void
.end method

.method public static a()Lcom/avast/a/b/a/a$e;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/avast/a/b/a/a$e;->c:Lcom/avast/a/b/a/a$e;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    return-object p1
.end method

.method public static e()Lcom/avast/a/b/a/a$e$a;
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/avast/a/b/a/a$e$a;->g()Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    return-object v0
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
    .line 380
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$e;->c()I

    .line 381
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 382
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 381
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 371
    iget-byte v1, p0, Lcom/avast/a/b/a/a$e;->d:B

    .line 372
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 375
    :goto_0
    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$e;->d:B

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 388
    iget v2, p0, Lcom/avast/a/b/a/a$e;->e:I

    .line 389
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 397
    :goto_0
    return v2

    :cond_0
    move v1, v0

    move v2, v0

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 393
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-static {v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/2addr v2, v0

    .line 392
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 396
    :cond_1
    iput v2, p0, Lcom/avast/a/b/a/a$e;->e:I

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/avast/a/b/a/a$e$a;
    .locals 1

    .prologue
    .line 465
    .line 5460
    invoke-static {}, Lcom/avast/a/b/a/a$e$a;->g()Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    .line 4463
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$e$a;->a(Lcom/avast/a/b/a/a$e;)Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    .line 465
    return-object v0
.end method
