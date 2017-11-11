.class final Lcom/google/android/exoplayer2/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/e/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/e/a$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Lcom/google/android/exoplayer2/c/e/h;

.field d:J

.field volatile e:J

.field private final f:Lcom/google/android/exoplayer2/c/e/e;

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/c/e/h;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/c/e/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/e/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    .line 64
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 65
    iput-object p5, p0, Lcom/google/android/exoplayer2/c/e/a;->c:Lcom/google/android/exoplayer2/c/e/h;

    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/e/a;->a:J

    .line 67
    iput-wide p3, p0, Lcom/google/android/exoplayer2/c/e/a;->b:J

    .line 68
    iput v1, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    .line 69
    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/c/g;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer2/c/e/e;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/e/e;->c:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/e;->h:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v1, v1, Lcom/google/android/exoplayer2/c/e/e;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide p4, v0, Lcom/google/android/exoplayer2/c/e/e;->c:J

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer2/c/e/e;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 331
    return-wide p4
.end method

.method private a(Lcom/google/android/exoplayer2/c/g;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x800

    const/16 v10, 0x67

    const/4 v1, 0x0

    .line 259
    const-wide/16 v2, 0x3

    add-long/2addr v2, p2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/a;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 260
    new-array v3, v0, [B

    .line 263
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    .line 265
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    sub-long v6, v4, v6

    long-to-int v0, v6

    .line 266
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 277
    :goto_1
    return v0

    .line 271
    :cond_0
    invoke-interface {p1, v3, v1, v0, v1}, Lcom/google/android/exoplayer2/c/g;->b([BIIZ)Z

    move v2, v1

    .line 272
    :goto_2
    add-int/lit8 v6, v0, -0x3

    if-ge v2, v6, :cond_2

    .line 273
    aget-byte v6, v3, v2

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    if-ne v6, v10, :cond_1

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    if-ne v6, v10, :cond_1

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v3, v6

    const/16 v7, 0x53

    if-ne v6, v7, :cond_1

    .line 276
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 277
    const/4 v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 281
    :cond_2
    add-int/lit8 v2, v0, -0x3

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v0, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x2

    const-wide/16 v2, 0x0

    .line 73
    iget v1, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    packed-switch v1, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    const-wide/16 v0, -0x1

    .line 101
    :cond_0
    :goto_0
    return-wide v0

    .line 77
    :pswitch_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/e/a;->h:J

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    .line 80
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->b:J

    const-wide/32 v2, 0xff1b

    sub-long/2addr v0, v2

    .line 81
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/a;->h:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2241
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->b:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/c/e/a;->a(Lcom/google/android/exoplayer2/c/g;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2243
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/e/e;->a()V

    .line 1299
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/e;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/a;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1300
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v0, p1, v12}, Lcom/google/android/exoplayer2/c/e/e;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    .line 1301
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/e;->h:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v1, v1, Lcom/google/android/exoplayer2/c/e/e;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    goto :goto_1

    .line 1303
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/e/e;->c:J

    .line 86
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->d:J

    .line 87
    iput v13, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    .line 88
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->h:J

    goto :goto_0

    .line 91
    :pswitch_3
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/a;->i:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    move-wide v0, v2

    .line 100
    :goto_2
    iput v13, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    .line 101
    add-long/2addr v0, v10

    neg-long v0, v0

    goto :goto_0

    .line 94
    :cond_3
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/a;->i:J

    .line 3147
    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    .line 3148
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->l:J

    add-long/2addr v0, v10

    neg-long v0, v0

    .line 95
    :goto_3
    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 98
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/a;->i:J

    add-long/2addr v0, v10

    neg-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/e/a;->a(Lcom/google/android/exoplayer2/c/g;JJ)J

    move-result-wide v0

    goto :goto_2

    .line 3151
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    .line 3152
    iget-wide v8, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/exoplayer2/c/e/a;->a(Lcom/google/android/exoplayer2/c/g;J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_5

    .line 3154
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3156
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    goto :goto_3

    .line 3159
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v1, p1, v12}, Lcom/google/android/exoplayer2/c/e/e;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    .line 3160
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 3162
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/c/e/e;->c:J

    sub-long/2addr v4, v8

    .line 3163
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v1, v1, Lcom/google/android/exoplayer2/c/e/e;->h:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget v8, v8, Lcom/google/android/exoplayer2/c/e/e;->i:I

    add-int/2addr v1, v8

    .line 3164
    cmp-long v8, v4, v2

    if-ltz v8, :cond_7

    const-wide/32 v8, 0x11940

    cmp-long v8, v4, v8

    if-lez v8, :cond_c

    .line 3165
    :cond_7
    cmp-long v8, v4, v2

    if-gez v8, :cond_9

    .line 3166
    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    .line 3167
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/c/e/e;->c:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->m:J

    .line 3177
    :cond_8
    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x186a0

    cmp-long v6, v6, v8

    if-gez v6, :cond_a

    .line 3178
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    .line 3179
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    goto :goto_3

    .line 3169
    :cond_9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    .line 3170
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/c/e/e;->c:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->l:J

    .line 3171
    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    sub-long/2addr v6, v8

    int-to-long v8, v1

    add-long/2addr v6, v8

    const-wide/32 v8, 0x186a0

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    .line 3172
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 3173
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->l:J

    add-long/2addr v0, v10

    neg-long v0, v0

    goto/16 :goto_3

    .line 3182
    :cond_a
    cmp-long v6, v4, v2

    if-gtz v6, :cond_b

    const/4 v0, 0x2

    :cond_b
    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 3183
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    sub-long v0, v6, v0

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/e/a;->m:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/c/e/a;->l:J

    sub-long/2addr v6, v8

    div-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 3186
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3187
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto/16 :goto_3

    .line 3192
    :cond_c
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 3193
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a;->f:Lcom/google/android/exoplayer2/c/e/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/e/e;->c:J

    add-long/2addr v0, v10

    neg-long v0, v0

    goto/16 :goto_3

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b()Lcom/google/android/exoplayer2/c/m;
    .locals 4

    .prologue
    .line 28
    .line 5119
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/c/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/c/e/a$a;-><init>(Lcom/google/android/exoplayer2/c/e/a;B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_0
.end method

.method public final d_()J
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 111
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->i:J

    .line 112
    iput v2, p0, Lcom/google/android/exoplayer2/c/e/a;->g:I

    .line 4124
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->a:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->j:J

    .line 4125
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->k:J

    .line 4126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->l:J

    .line 4127
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->m:J

    .line 114
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/a;->i:J

    return-wide v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
