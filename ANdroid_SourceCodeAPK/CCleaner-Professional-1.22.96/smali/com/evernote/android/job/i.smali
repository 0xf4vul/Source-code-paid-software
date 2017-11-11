.class public final Lcom/evernote/android/job/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/i$c;,
        Lcom/evernote/android/job/i$a;,
        Lcom/evernote/android/job/i$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/evernote/android/job/i$a;

.field public static final b:Lcom/evernote/android/job/i$c;

.field public static final c:J

.field public static final d:J

.field private static final l:Ld/a/a/a/c;


# instance fields
.field public final e:Lcom/evernote/android/job/i$b;

.field final f:Lcom/evernote/android/job/a/c;

.field g:I

.field h:J

.field i:Z

.field j:Z

.field k:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    sget-object v0, Lcom/evernote/android/job/i$a;->b:Lcom/evernote/android/job/i$a;

    sput-object v0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/i$a;

    .line 72
    sget-object v0, Lcom/evernote/android/job/i$c;->a:Lcom/evernote/android/job/i$c;

    sput-object v0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/i$c;

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/i;->c:J

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/i;->d:J

    .line 106
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobRequest"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/i;->l:Ld/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/i$b;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->l:Z

    .line 127
    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/i;->f:Lcom/evernote/android/job/a/c;

    .line 128
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v0

    .line 3384
    iget-object v0, v0, Lcom/evernote/android/job/e;->g:Lcom/evernote/android/job/a/c;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/i$b;B)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/evernote/android/job/i;-><init>(Lcom/evernote/android/job/i$b;)V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v0

    .line 1196
    iget-object v0, v0, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 109
    invoke-virtual {v0}, Lcom/evernote/android/job/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/evernote/android/job/i;->c:J

    goto :goto_0
.end method

.method static a(Landroid/database/Cursor;)Lcom/evernote/android/job/i;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    new-instance v0, Lcom/evernote/android/job/i$b;

    invoke-direct {v0, p0, v2}, Lcom/evernote/android/job/i$b;-><init>(Landroid/database/Cursor;B)V

    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v3

    .line 439
    const-string/jumbo v0, "numFailures"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/evernote/android/job/i;->g:I

    .line 440
    const-string/jumbo v0, "scheduledAt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/evernote/android/job/i;->h:J

    .line 441
    const-string/jumbo v0, "isTransient"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/evernote/android/job/i;->i:Z

    .line 442
    const-string/jumbo v0, "flexSupport"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, v3, Lcom/evernote/android/job/i;->j:Z

    .line 443
    const-string/jumbo v0, "lastRun"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/evernote/android/job/i;->k:J

    .line 445
    iget v0, v3, Lcom/evernote/android/job/i;->g:I

    const-string/jumbo v1, "failure count can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/a/e;->a(ILjava/lang/String;)I

    .line 446
    iget-wide v0, v3, Lcom/evernote/android/job/i;->h:J

    const-string/jumbo v2, "scheduled at can\'t be negative"

    .line 19132
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 19133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 441
    goto :goto_0

    :cond_1
    move v1, v2

    .line 442
    goto :goto_1

    .line 448
    :cond_2
    return-object v3
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v0

    .line 2196
    iget-object v0, v0, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 113
    invoke-virtual {v0}, Lcom/evernote/android/job/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/evernote/android/job/i;->d:J

    goto :goto_0
.end method

.method static synthetic f()Ld/a/a/a/c;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/evernote/android/job/i;->l:Ld/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method final a(ZZ)Lcom/evernote/android/job/i;
    .locals 3

    .prologue
    .line 393
    new-instance v0, Lcom/evernote/android/job/i$b;

    iget-object v1, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/evernote/android/job/i$b;-><init>(Lcom/evernote/android/job/i$b;ZB)V

    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    .line 394
    if-eqz p1, :cond_0

    .line 395
    iget v1, p0, Lcom/evernote/android/job/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/evernote/android/job/i;->g:I

    .line 398
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    sget-object v2, Lcom/evernote/android/job/i;->l:Ld/a/a/a/c;

    invoke-virtual {v2, v1}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 186
    .line 4195
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget-wide v0, v0, Lcom/evernote/android/job/i$b;->g:J

    .line 186
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/evernote/android/job/i;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    :goto_0
    return-wide v0

    .line 274
    :cond_0
    sget-object v2, Lcom/evernote/android/job/i$1;->a:[I

    .line 5169
    iget-object v3, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget-object v3, v3, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    .line 274
    invoke-virtual {v3}, Lcom/evernote/android/job/i$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_0
    iget v0, p0, Lcom/evernote/android/job/i;->g:I

    int-to-long v0, v0

    .line 6179
    iget-object v2, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 6474
    iget-wide v2, v2, Lcom/evernote/android/job/i$b;->e:J

    .line 276
    mul-long/2addr v0, v2

    .line 291
    :cond_1
    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 280
    :pswitch_1
    iget v2, p0, Lcom/evernote/android/job/i;->g:I

    if-eqz v2, :cond_1

    .line 7179
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-wide v0, v0, Lcom/evernote/android/job/i$b;->e:J

    .line 283
    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/evernote/android/job/i;->g:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 285
    goto :goto_1

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    .line 366
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v2

    .line 8212
    iget-object v0, v2, Lcom/evernote/android/job/e;->c:Lcom/evernote/android/job/c;

    .line 9052
    iget-object v0, v0, Lcom/evernote/android/job/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 8212
    if-eqz v0, :cond_0

    .line 8213
    sget-object v0, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "you haven\'t registered a JobCreator with addJobCreator(), it\'s likely that your job never will be executed"

    .line 9061
    invoke-virtual {v0, v8, v1, v9}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 9315
    :cond_0
    iget-wide v0, p0, Lcom/evernote/android/job/i;->h:J

    .line 8216
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    .line 10258
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 10474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->q:Z

    .line 8220
    if-eqz v0, :cond_1

    .line 11142
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 11474
    iget-object v0, v0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 12416
    invoke-virtual {v2, v0}, Lcom/evernote/android/job/e;->b(Ljava/lang/String;)I

    .line 8224
    :cond_1
    iget-object v0, v2, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    .line 13134
    iget-object v1, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 13474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 8224
    invoke-static {v0, v1}, Lcom/evernote/android/job/g$a;->a(Landroid/content/Context;I)V

    .line 14295
    iget-object v3, p0, Lcom/evernote/android/job/i;->f:Lcom/evernote/android/job/a/c;

    .line 8227
    invoke-virtual {p0}, Lcom/evernote/android/job/i;->c()Z

    move-result v4

    .line 8228
    if-eqz v4, :cond_4

    .line 15130
    iget-boolean v0, v3, Lcom/evernote/android/job/a/c;->g:Z

    .line 8228
    if-eqz v0, :cond_4

    .line 15205
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 15474
    iget-wide v0, v0, Lcom/evernote/android/job/i$b;->h:J

    .line 16195
    iget-object v5, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 16474
    iget-wide v6, v5, Lcom/evernote/android/job/i$b;->g:J

    .line 8228
    cmp-long v0, v0, v6

    if-gez v0, :cond_4

    const/4 v0, 0x1

    .line 8230
    :goto_0
    sget-object v1, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    if-ne v3, v1, :cond_2

    iget-object v1, v2, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 16553
    iget-boolean v1, v1, Lcom/evernote/android/job/e$a;->a:Z

    .line 8230
    if-nez v1, :cond_2

    .line 8232
    sget-object v1, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    const-string/jumbo v5, "GCM API disabled, but used nonetheless"

    .line 17061
    invoke-virtual {v1, v8, v5, v9}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 8235
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 17299
    iput-wide v6, p0, Lcom/evernote/android/job/i;->h:J

    .line 17346
    iput-boolean v0, p0, Lcom/evernote/android/job/i;->j:Z

    .line 8237
    iget-object v1, v2, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    invoke-virtual {v1, p0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/i;)V

    .line 8240
    :try_start_0
    invoke-virtual {v2, p0, v3, v4, v0}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/i;Lcom/evernote/android/job/a/c;ZZ)V
    :try_end_0
    .catch Lcom/evernote/android/job/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18134
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 18474
    iget v0, v0, Lcom/evernote/android/job/i$b;->a:I

    .line 367
    return v0

    .line 8228
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 8245
    :catch_0
    move-exception v0

    .line 8247
    iget-object v1, v2, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    invoke-virtual {v1, p0}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 8248
    throw v0

    .line 8249
    :catch_1
    move-exception v1

    .line 8253
    :try_start_1
    invoke-virtual {v3}, Lcom/evernote/android/job/a/c;->a()V

    .line 8255
    invoke-virtual {v2, p0, v3, v4, v0}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/i;Lcom/evernote/android/job/a/c;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 8257
    :catch_2
    move-exception v1

    .line 8258
    sget-object v5, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    if-ne v3, v5, :cond_6

    .line 8260
    :cond_5
    iget-object v0, v2, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 8261
    throw v1

    .line 8263
    :cond_6
    sget-object v1, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    iget-object v3, v2, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    .line 8268
    :goto_2
    :try_start_2
    invoke-virtual {v2, p0, v1, v4, v0}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/i;Lcom/evernote/android/job/a/c;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 8269
    :catch_3
    move-exception v0

    .line 8271
    iget-object v1, v2, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    invoke-virtual {v1, p0}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 8272
    throw v0

    .line 8263
    :cond_7
    sget-object v1, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 453
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    .line 454
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    :cond_2
    check-cast p1, Lcom/evernote/android/job/i;

    .line 458
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/i$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20134
    iget-object v1, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 20474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21142
    iget-object v1, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 21474
    iget-object v1, v1, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
