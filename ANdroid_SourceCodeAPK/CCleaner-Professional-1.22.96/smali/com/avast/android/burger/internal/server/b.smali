.class public final Lcom/avast/android/burger/internal/server/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/android/burger/internal/server/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Semaphore;

.field private static volatile b:Z


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/avast/android/c/a/c;

.field private final e:Lcom/avast/android/burger/internal/d/f;

.field private final f:Lcom/avast/android/burger/internal/server/ServerInterface;

.field private final g:Lcom/avast/android/burger/internal/config/a;

.field private final h:Lcom/avast/android/burger/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/avast/android/burger/internal/server/b;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/avast/android/c/a/c;Lcom/avast/android/burger/internal/d/f;Lcom/avast/android/burger/internal/server/ServerInterface;Lcom/avast/android/burger/internal/config/a;Lcom/avast/android/burger/b/b;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/avast/android/burger/internal/server/b;->c:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/avast/android/burger/internal/server/b;->d:Lcom/avast/android/c/a/c;

    .line 135
    iput-object p3, p0, Lcom/avast/android/burger/internal/server/b;->e:Lcom/avast/android/burger/internal/d/f;

    .line 136
    iput-object p4, p0, Lcom/avast/android/burger/internal/server/b;->f:Lcom/avast/android/burger/internal/server/ServerInterface;

    .line 137
    iput-object p5, p0, Lcom/avast/android/burger/internal/server/b;->g:Lcom/avast/android/burger/internal/config/a;

    .line 138
    iput-object p6, p0, Lcom/avast/android/burger/internal/server/b;->h:Lcom/avast/android/burger/b/b;

    .line 139
    return-void
.end method

.method private static a(ILretrofit/client/Response;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    .line 9353
    invoke-static {p1}, Lcom/avast/android/burger/internal/server/b;->a(Lretrofit/client/Response;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Receiver-Ack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 282
    if-nez v0, :cond_0

    .line 283
    const/4 p0, 0x7

    .line 298
    :goto_0
    return p0

    .line 286
    :cond_0
    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 296
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Required payload is present, but undefined status code"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :sswitch_0
    const/4 p0, 0x3

    goto :goto_0

    .line 290
    :sswitch_1
    const/4 p0, 0x4

    goto :goto_0

    .line 292
    :sswitch_2
    const/4 p0, 0x5

    goto :goto_0

    .line 294
    :sswitch_3
    const/4 p0, 0x6

    goto :goto_0

    .line 286
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x1ba -> :sswitch_2
        0x1f4 -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Lcom/avast/android/burger/internal/server/b$a;Ljava/util/List;IILcom/avast/a/b/a/a$o;)Lcom/avast/a/b/a/a$o;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/server/b$a;",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$o;",
            ">;II",
            "Lcom/avast/a/b/a/a$o;",
            ")",
            "Lcom/avast/a/b/a/a$o;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, -0x1

    .line 442
    .line 11017
    iget-object v5, p4, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 443
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 444
    const/4 v2, 0x0

    move v3, v4

    .line 445
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 446
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$g;

    .line 448
    iget-object v1, p0, Lcom/avast/android/burger/internal/server/b$a;->d:Lcom/avast/android/burger/a/f;

    .line 11149
    if-eqz v0, :cond_1

    iget-object v1, v1, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 11159
    iget-object v1, v1, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 12159
    iget-object v6, v0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 11149
    invoke-interface {v1, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 448
    :goto_1
    if-eqz v1, :cond_0

    .line 12204
    iget-wide v6, v0, Lcom/avast/a/b/a/a$g;->d:J

    .line 452
    iget-wide v8, p0, Lcom/avast/android/burger/internal/server/b$a;->a:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    .line 454
    if-nez v2, :cond_8

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 445
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v4

    .line 11149
    goto :goto_1

    .line 461
    :cond_2
    iget v1, p0, Lcom/avast/android/burger/internal/server/b$a;->b:I

    if-eq v1, v10, :cond_3

    iget v1, p0, Lcom/avast/android/burger/internal/server/b$a;->c:I

    if-eq v1, v10, :cond_3

    .line 463
    iget v1, p0, Lcom/avast/android/burger/internal/server/b$a;->b:I

    if-le p2, v1, :cond_4

    .line 464
    iget v1, p0, Lcom/avast/android/burger/internal/server/b$a;->b:I

    sub-int v6, v1, p3

    .line 466
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/a/b/a/a$o;

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    iget v7, p0, Lcom/avast/android/burger/internal/server/b$a;->c:I

    .line 467
    invoke-virtual {v1, v7}, Lcom/avast/a/b/a/a$o$a;->b(I)Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v1

    .line 465
    invoke-interface {p1, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13204
    :cond_3
    :goto_4
    iget-wide v0, v0, Lcom/avast/a/b/a/a$g;->d:J

    .line 479
    iput-wide v0, p0, Lcom/avast/android/burger/internal/server/b$a;->a:J

    .line 480
    iput p2, p0, Lcom/avast/android/burger/internal/server/b$a;->b:I

    .line 481
    iput v3, p0, Lcom/avast/android/burger/internal/server/b$a;->c:I

    goto :goto_3

    .line 472
    :cond_4
    if-nez v2, :cond_5

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    :cond_5
    iget v1, p0, Lcom/avast/android/burger/internal/server/b$a;->c:I

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 485
    :cond_6
    if-eqz v2, :cond_7

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 488
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 489
    invoke-virtual {p4}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o$a;->e()Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/a/b/a/a$o$a;->a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object p4

    .line 493
    :cond_7
    return-object p4

    :cond_8
    move-object v1, v2

    goto :goto_2
.end method

.method private static a(Lretrofit/client/Response;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    const-string/jumbo v0, ""

    .line 375
    :goto_0
    return-object v0

    .line 369
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    .line 370
    if-nez v0, :cond_1

    .line 371
    const-string/jumbo v0, ""

    goto :goto_0

    .line 373
    :cond_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/avast/android/f/d/c;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/RetrofitError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    iget v0, v0, Lcom/avast/android/burger/c/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8321
    iget-object v0, p1, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$o;

    .line 228
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->d()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 231
    goto :goto_0

    .line 232
    :cond_0
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending queue. Envelope size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/avast/a/b/a/a$e;->c()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/avast/android/f/e/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", records:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    invoke-virtual {p1}, Lcom/avast/a/b/a/a$e;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", total events:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", envelope:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 232
    invoke-virtual {v0, v1, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    invoke-static {p1}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$e;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9269
    :cond_1
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/b;->f:Lcom/avast/android/burger/internal/server/ServerInterface;

    invoke-interface {v0, p1}, Lcom/avast/android/burger/internal/server/ServerInterface;->sendData(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;

    move-result-object v0

    .line 238
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 10343
    :goto_0
    return-void

    .line 311
    :pswitch_0
    sput-boolean v3, Lcom/avast/android/burger/internal/server/b;->b:Z

    .line 312
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/b;->e:Lcom/avast/android/burger/internal/d/f;

    iget-object v1, p0, Lcom/avast/android/burger/internal/server/b;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/avast/android/burger/internal/d/f;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 10334
    :pswitch_1
    sget-boolean v0, Lcom/avast/android/burger/internal/server/b;->b:Z

    if-eqz v0, :cond_0

    .line 10335
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "FFL Key repeatedly expired."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10337
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/burger/internal/server/b;->b:Z

    .line 10339
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/b;->d:Lcom/avast/android/c/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avast/android/c/a/c;->a(Lcom/avast/android/c/a/a;)V

    .line 10340
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "FFL Key Expired reported by backend."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10341
    :catch_0
    move-exception v0

    .line 10342
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Error deleting FFL Key."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/avast/android/burger/c/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/RetrofitError;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/avast/android/burger/internal/e/c;->a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;

    move-result-object v1

    .line 253
    const/4 v0, 0x0

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$e;

    .line 255
    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/server/b;->a(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 15

    .prologue
    const/4 v0, 0x1

    const/16 v14, 0x1f4

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 151
    sget-object v1, Lcom/avast/android/burger/internal/server/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 2386
    :cond_1
    invoke-static {}, Lcom/avast/a/b/a/a$e;->e()Lcom/avast/a/b/a/a$e$a;

    move-result-object v7

    .line 2387
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/b;->e:Lcom/avast/android/burger/internal/d/f;

    iget-object v1, p0, Lcom/avast/android/burger/internal/server/b;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/avast/android/burger/internal/d/f;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 2388
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 156
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e;->d()I

    move-result v1

    if-gtz v1, :cond_8

    .line 157
    :cond_2
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Nothing to send"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/avast/android/burger/internal/server/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move v0, v6

    .line 159
    goto :goto_0

    .line 2391
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    .line 2505
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/b;->h:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2506
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/b;->g:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v0}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v0

    .line 2507
    if-eqz v0, :cond_4

    .line 3417
    iget v1, v0, Lcom/avast/android/burger/b;->h:I

    .line 2509
    if-eqz v1, :cond_4

    .line 2510
    new-instance v0, Lcom/avast/android/burger/internal/server/b$a;

    invoke-direct {v0, v1, v10, v11}, Lcom/avast/android/burger/internal/server/b$a;-><init>(IJ)V

    move-object v1, v0

    .line 2397
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v4

    move v5, v4

    .line 2398
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 2399
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$o;

    .line 2401
    if-nez v0, :cond_5

    .line 2402
    add-int/lit8 v0, v3, 0x1

    .line 2398
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_3

    :cond_4
    move-object v1, v2

    .line 2514
    goto :goto_2

    .line 2406
    :cond_5
    if-eqz v1, :cond_6

    .line 2407
    invoke-static {v1, v9, v5, v3, v0}, Lcom/avast/android/burger/internal/server/b;->a(Lcom/avast/android/burger/internal/server/b$a;Ljava/util/List;IILcom/avast/a/b/a/a$o;)Lcom/avast/a/b/a/a$o;

    move-result-object v0

    .line 3418
    :cond_6
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    .line 3812
    iget-object v12, v0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 3419
    invoke-virtual {v12}, Lcom/avast/a/b/a/a$a;->e()Lcom/avast/a/b/a/a$a$a;

    move-result-object v12

    .line 3420
    sget-object v13, Lcom/avast/a/b/a/a$k;->a:Lcom/avast/a/b/a/a$k;

    invoke-virtual {v12, v13}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$k;)Lcom/avast/a/b/a/a$a$a;

    .line 3421
    invoke-virtual {v12, v10, v11}, Lcom/avast/a/b/a/a$a$a;->a(J)Lcom/avast/a/b/a/a$a$a;

    .line 3839
    invoke-virtual {v12}, Lcom/avast/a/b/a/a$a$a;->a()Lcom/avast/a/b/a/a$a;

    move-result-object v12

    iput-object v12, v0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 3841
    iget v12, v0, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 3423
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    .line 2410
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_4

    .line 2412
    :cond_7
    invoke-virtual {v7, v9}, Lcom/avast/a/b/a/a$e$a;->a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$e$a;

    .line 2413
    invoke-virtual {v7}, Lcom/avast/a/b/a/a$e$a;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    goto/16 :goto_1

    .line 164
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e;->c()I

    move-result v1

    .line 165
    const v3, 0xe7ef0

    if-le v1, v3, :cond_b

    .line 166
    sget-object v3, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Going to split envelope:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v8, v1

    invoke-static {v8, v9}, Lcom/avast/android/f/e/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/server/b;->b(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 202
    :goto_5
    if-eqz v0, :cond_9

    .line 203
    invoke-static {v4, v0}, Lcom/avast/android/burger/internal/server/b;->a(ILretrofit/client/Response;)I

    move-result v4

    .line 204
    invoke-direct {p0, v4}, Lcom/avast/android/burger/internal/server/b;->a(I)V

    .line 206
    :cond_9
    sget-object v0, Lcom/avast/android/burger/internal/server/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move v0, v4

    .line 208
    :goto_6
    const/4 v1, 0x3

    if-eq v1, v0, :cond_a

    const/4 v1, 0x4

    if-eq v1, v0, :cond_a

    if-ne v6, v0, :cond_0

    .line 209
    :cond_a
    iget-object v1, p0, Lcom/avast/android/burger/internal/server/b;->h:Lcom/avast/android/burger/b/b;

    invoke-interface {v1}, Lcom/avast/android/burger/b/b;->k()V

    goto/16 :goto_0

    .line 169
    :cond_b
    :try_start_1
    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/server/b;->a(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_5

    .line 171
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 172
    :try_start_2
    sget-object v0, Lcom/avast/android/burger/internal/server/b$1;->a:[I

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    packed-switch v0, :pswitch_data_0

    :cond_c
    move-object v3, v2

    move v0, v4

    .line 198
    :goto_7
    if-nez v3, :cond_14

    .line 199
    :try_start_3
    invoke-static {}, Lcom/avast/android/e/a;->a()Lcom/avast/android/e/a;

    move-result-object v4

    const-string/jumbo v5, "BurgerJob"

    .line 4083
    iget-object v7, v4, Lcom/avast/android/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 4084
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "There is no callback for this tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :catchall_0
    move-exception v1

    move-object v2, v3

    move v4, v0

    move-object v0, v1

    :goto_8
    if-eqz v2, :cond_d

    .line 203
    invoke-static {v4, v2}, Lcom/avast/android/burger/internal/server/b;->a(ILretrofit/client/Response;)I

    move-result v1

    .line 204
    invoke-direct {p0, v1}, Lcom/avast/android/burger/internal/server/b;->a(I)V

    .line 206
    :cond_d
    sget-object v1, Lcom/avast/android/burger/internal/server/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    .line 174
    :pswitch_0
    :try_start_4
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_c

    .line 176
    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    if-ge v0, v14, :cond_e

    move v0, v4

    .line 177
    goto :goto_7

    .line 179
    :cond_e
    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    if-lt v0, v14, :cond_c

    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    const/16 v3, 0x258

    if-ge v0, v3, :cond_c

    .line 180
    const/4 v4, 0x6

    move-object v3, v2

    move v0, v4

    goto :goto_7

    .line 186
    :pswitch_1
    const/16 v4, 0x8

    move-object v3, v2

    move v0, v4

    .line 187
    goto :goto_7

    .line 189
    :pswitch_2
    const/16 v4, 0x9

    move-object v3, v2

    move v0, v4

    .line 190
    goto :goto_7

    .line 192
    :pswitch_3
    const/16 v4, 0xa

    move-object v3, v2

    move v0, v4

    goto :goto_7

    .line 4086
    :cond_f
    :try_start_5
    iget-object v4, v4, Lcom/avast/android/e/a;->a:Lcom/avast/android/e/b/c;

    .line 5039
    iget-object v7, v4, Lcom/avast/android/e/b/c;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/avast/android/e/a/a;->a(Landroid/content/Context;)Lcom/avast/android/e/a/a;

    move-result-object v7

    .line 6036
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "attempts-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6048
    iget-object v7, v7, Lcom/avast/android/e/a/a;->a:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 5040
    if-ge v7, v6, :cond_17

    .line 6081
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v8

    .line 6082
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lretrofit/client/Response;->getStatus()I

    move-result v9

    if-ge v9, v14, :cond_11

    .line 6083
    :cond_10
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v9

    sget-object v10, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-ne v9, v10, :cond_13

    .line 6084
    :cond_11
    invoke-static {v8}, Lcom/avast/android/e/b/c;->a(Lretrofit/client/Response;)Ljava/lang/Integer;

    move-result-object v2

    .line 6085
    if-nez v2, :cond_12

    .line 6086
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6088
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    mul-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5042
    :cond_13
    if-eqz v2, :cond_16

    .line 5043
    iget-object v1, v4, Lcom/avast/android/e/b/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/e/a/a;->a(Landroid/content/Context;)Lcom/avast/android/e/a/a;

    move-result-object v1

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/avast/android/e/a/a;->a(Ljava/lang/String;I)V

    .line 5044
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7059
    new-instance v4, Lcom/evernote/android/job/i$b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "retry-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/evernote/android/job/i$b;-><init>(Ljava/lang/String;)V

    int-to-long v8, v1

    .line 7060
    invoke-static {v8, v9}, Lcom/avast/android/e/b/c;->a(J)J

    move-result-wide v8

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v10, v1

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/evernote/android/job/i$b;->a(JJ)Lcom/evernote/android/job/i$b;

    move-result-object v1

    sget-object v4, Lcom/evernote/android/job/i$c;->b:Lcom/evernote/android/job/i$c;

    .line 7732
    iput-object v4, v1, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 7061
    const/4 v4, 0x1

    .line 7062
    invoke-virtual {v1, v4}, Lcom/evernote/android/job/i$b;->a(Z)Lcom/evernote/android/job/i$b;

    move-result-object v1

    .line 7751
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/evernote/android/job/i$b;->j:Z

    .line 7064
    invoke-virtual {v1}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v1

    .line 7065
    invoke-virtual {v1}, Lcom/evernote/android/job/i;->e()I

    .line 5045
    sget-object v1, Lcom/avast/android/e/c/a;->a:Lcom/avast/android/d/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Retry request scheduled in min "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Lcom/avast/android/e/b/c;->a(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " seconds, max "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " seconds."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/avast/android/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    :cond_14
    :goto_9
    if-eqz v3, :cond_15

    .line 203
    invoke-static {v0, v3}, Lcom/avast/android/burger/internal/server/b;->a(ILretrofit/client/Response;)I

    move-result v0

    .line 204
    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/server/b;->a(I)V

    .line 206
    :cond_15
    sget-object v1, Lcom/avast/android/burger/internal/server/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_6

    .line 5048
    :cond_16
    :try_start_6
    sget-object v2, Lcom/avast/android/e/c/a;->a:Lcom/avast/android/d/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to set retry for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Lcom/avast/android/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 5051
    :cond_17
    sget-object v1, Lcom/avast/android/e/c/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v2, "Maximum attempts (2) reached, not rescheduling."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/avast/android/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    .line 202
    :catchall_1
    move-exception v0

    goto/16 :goto_8

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
