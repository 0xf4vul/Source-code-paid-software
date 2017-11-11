.class public final Lcom/avast/a/a/a/b/a$a$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/a/a/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/a/a/b/a$a;",
        "Lcom/avast/a/a/a/b/a$a$a;",
        ">;",
        "Lcom/avast/a/a/a/b/a$b;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 1437
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a$a;->b:Ljava/lang/Object;

    .line 1547
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a$a;->c:Ljava/lang/Object;

    .line 1651
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a$a;->d:Ljava/lang/Object;

    .line 1798
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a$a;->e:Ljava/lang/Object;

    .line 1902
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a$a;->g:Ljava/lang/Object;

    .line 2294
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/b/a$a$a;->n:Ljava/lang/Object;

    .line 1233
    return-void
.end method

.method static synthetic e()Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 5238
    new-instance v0, Lcom/avast/a/a/a/b/a$a$a;

    invoke-direct {v0}, Lcom/avast/a/a/a/b/a$a$a;-><init>()V

    .line 1226
    return-object v0
.end method

.method private f()Lcom/avast/a/a/a/b/a$a$a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3238
    new-instance v3, Lcom/avast/a/a/a/b/a$a$a;

    invoke-direct {v3}, Lcom/avast/a/a/a/b/a$a$a;-><init>()V

    .line 1275
    invoke-virtual {p0}, Lcom/avast/a/a/a/b/a$a$a;->a()Lcom/avast/a/a/a/b/a$a;

    move-result-object v4

    .line 3355
    invoke-static {}, Lcom/avast/a/a/a/b/a$a;->a()Lcom/avast/a/a/a/b/a$a;

    move-result-object v2

    if-eq v4, v2, :cond_d

    .line 3491
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_e

    move v2, v0

    .line 3356
    :goto_0
    if-eqz v2, :cond_0

    .line 3357
    iget v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 3358
    invoke-static {v4}, Lcom/avast/a/a/a/b/a$a;->a(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/a/a/b/a$a$a;->b:Ljava/lang/Object;

    .line 3551
    :cond_0
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_f

    move v2, v0

    .line 3361
    :goto_1
    if-eqz v2, :cond_1

    .line 3362
    iget v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 3363
    invoke-static {v4}, Lcom/avast/a/a/a/b/a$a;->b(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/a/a/b/a$a$a;->c:Ljava/lang/Object;

    .line 3608
    :cond_1
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_10

    move v2, v0

    .line 3366
    :goto_2
    if-eqz v2, :cond_2

    .line 3367
    iget v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 3368
    invoke-static {v4}, Lcom/avast/a/a/a/b/a$a;->c(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/a/a/b/a$a$a;->d:Ljava/lang/Object;

    .line 3663
    :cond_2
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_11

    move v2, v0

    .line 3371
    :goto_3
    if-eqz v2, :cond_3

    .line 3673
    iget-wide v6, v4, Lcom/avast/a/a/a/b/a$a;->f:J

    .line 3372
    invoke-virtual {v3, v6, v7}, Lcom/avast/a/a/a/b/a$a$a;->a(J)Lcom/avast/a/a/a/b/a$a$a;

    .line 3688
    :cond_3
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v5, 0x10

    if-ne v2, v5, :cond_12

    move v2, v0

    .line 3374
    :goto_4
    if-eqz v2, :cond_4

    .line 3375
    iget v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 3376
    invoke-static {v4}, Lcom/avast/a/a/a/b/a$a;->d(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/a/a/b/a$a$a;->e:Ljava/lang/Object;

    .line 3745
    :cond_4
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    if-ne v2, v5, :cond_13

    move v2, v0

    .line 3379
    :goto_5
    if-eqz v2, :cond_5

    .line 3380
    iget v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 3381
    invoke-static {v4}, Lcom/avast/a/a/a/b/a$a;->e(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/a/a/b/a$a$a;->g:Ljava/lang/Object;

    .line 3800
    :cond_5
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit8 v2, v2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_14

    move v2, v0

    .line 3384
    :goto_6
    if-eqz v2, :cond_6

    .line 3810
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->h:I

    .line 3385
    invoke-virtual {v3, v2}, Lcom/avast/a/a/a/b/a$a$a;->a(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 3824
    :cond_6
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_15

    move v2, v0

    .line 3387
    :goto_7
    if-eqz v2, :cond_7

    .line 3834
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->i:I

    .line 3388
    invoke-virtual {v3, v2}, Lcom/avast/a/a/a/b/a$a$a;->b(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 3848
    :cond_7
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x100

    const/16 v5, 0x100

    if-ne v2, v5, :cond_16

    move v2, v0

    .line 3390
    :goto_8
    if-eqz v2, :cond_8

    .line 3858
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->j:I

    .line 3391
    invoke-virtual {v3, v2}, Lcom/avast/a/a/a/b/a$a$a;->c(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 3872
    :cond_8
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x200

    const/16 v5, 0x200

    if-ne v2, v5, :cond_17

    move v2, v0

    .line 3393
    :goto_9
    if-eqz v2, :cond_9

    .line 3882
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->k:I

    .line 3394
    invoke-virtual {v3, v2}, Lcom/avast/a/a/a/b/a$a$a;->d(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 3896
    :cond_9
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x400

    const/16 v5, 0x400

    if-ne v2, v5, :cond_18

    move v2, v0

    .line 3396
    :goto_a
    if-eqz v2, :cond_a

    .line 3906
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->l:I

    .line 3397
    invoke-virtual {v3, v2}, Lcom/avast/a/a/a/b/a$a$a;->e(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 3920
    :cond_a
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x800

    const/16 v5, 0x800

    if-ne v2, v5, :cond_19

    move v2, v0

    .line 3399
    :goto_b
    if-eqz v2, :cond_b

    .line 3930
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->m:I

    .line 3400
    invoke-virtual {v3, v2}, Lcom/avast/a/a/a/b/a$a$a;->f(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 3944
    :cond_b
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v5, 0x1000

    if-ne v2, v5, :cond_1a

    move v2, v0

    .line 3402
    :goto_c
    if-eqz v2, :cond_c

    .line 3403
    iget v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 3404
    invoke-static {v4}, Lcom/avast/a/a/a/b/a$a;->f(Lcom/avast/a/a/a/b/a$a;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/a/a/b/a$a$a;->n:Ljava/lang/Object;

    .line 3999
    :cond_c
    iget v2, v4, Lcom/avast/a/a/a/b/a$a;->b:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v5, 0x2000

    if-ne v2, v5, :cond_1b

    .line 3407
    :goto_d
    if-eqz v0, :cond_d

    .line 4009
    iget v0, v4, Lcom/avast/a/a/a/b/a$a;->n:I

    .line 4421
    iget v1, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v3, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 4422
    iput v0, v3, Lcom/avast/a/a/a/b/a$a$a;->o:I

    .line 1275
    :cond_d
    return-object v3

    :cond_e
    move v2, v1

    .line 3491
    goto/16 :goto_0

    :cond_f
    move v2, v1

    .line 3551
    goto/16 :goto_1

    :cond_10
    move v2, v1

    .line 3608
    goto/16 :goto_2

    :cond_11
    move v2, v1

    .line 3663
    goto/16 :goto_3

    :cond_12
    move v2, v1

    .line 3688
    goto/16 :goto_4

    :cond_13
    move v2, v1

    .line 3745
    goto/16 :goto_5

    :cond_14
    move v2, v1

    .line 3800
    goto/16 :goto_6

    :cond_15
    move v2, v1

    .line 3824
    goto/16 :goto_7

    :cond_16
    move v2, v1

    .line 3848
    goto :goto_8

    :cond_17
    move v2, v1

    .line 3872
    goto :goto_9

    :cond_18
    move v2, v1

    .line 3896
    goto :goto_a

    :cond_19
    move v2, v1

    .line 3920
    goto :goto_b

    :cond_1a
    move v2, v1

    .line 3944
    goto :goto_c

    :cond_1b
    move v0, v1

    .line 3999
    goto :goto_d
.end method


# virtual methods
.method public final a(I)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 2029
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2030
    iput p1, p0, Lcom/avast/a/a/a/b/a$a$a;->h:I

    .line 2032
    return-object p0
.end method

.method public final a(J)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 1778
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 1779
    iput-wide p1, p0, Lcom/avast/a/a/a/b/a$a$a;->f:J

    .line 1781
    return-object p0
.end method

.method public final a()Lcom/avast/a/a/a/b/a$a;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1291
    new-instance v2, Lcom/avast/a/a/a/b/a$a;

    invoke-direct {v2, v1}, Lcom/avast/a/a/a/b/a$a;-><init>(C)V

    .line 1292
    iget v3, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 1294
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    .line 1297
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/b/a$a$a;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->a(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1299
    or-int/lit8 v0, v0, 0x2

    .line 1301
    :cond_0
    iget-object v1, p0, Lcom/avast/a/a/a/b/a$a$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->b(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1303
    or-int/lit8 v0, v0, 0x4

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/avast/a/a/a/b/a$a$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->c(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 1307
    or-int/lit8 v0, v0, 0x8

    .line 1309
    :cond_2
    iget-wide v4, p0, Lcom/avast/a/a/a/b/a$a$a;->f:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/b/a$a;->a(Lcom/avast/a/a/a/b/a$a;J)J

    .line 1310
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 1311
    or-int/lit8 v0, v0, 0x10

    .line 1313
    :cond_3
    iget-object v1, p0, Lcom/avast/a/a/a/b/a$a$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->d(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1315
    or-int/lit8 v0, v0, 0x20

    .line 1317
    :cond_4
    iget-object v1, p0, Lcom/avast/a/a/a/b/a$a$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->e(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 1319
    or-int/lit8 v0, v0, 0x40

    .line 1321
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->h:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->a(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1322
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 1323
    or-int/lit16 v0, v0, 0x80

    .line 1325
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->i:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->b(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1326
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 1327
    or-int/lit16 v0, v0, 0x100

    .line 1329
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->j:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->c(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1330
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 1331
    or-int/lit16 v0, v0, 0x200

    .line 1333
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->k:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->d(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1334
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 1335
    or-int/lit16 v0, v0, 0x400

    .line 1337
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->l:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->e(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1338
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 1339
    or-int/lit16 v0, v0, 0x800

    .line 1341
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->m:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->f(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1342
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 1343
    or-int/lit16 v0, v0, 0x1000

    .line 1345
    :cond_b
    iget-object v1, p0, Lcom/avast/a/a/a/b/a$a$a;->n:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->f(Lcom/avast/a/a/a/b/a$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    .line 1347
    or-int/lit16 v0, v0, 0x2000

    .line 1349
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/b/a$a$a;->o:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/b/a$a;->g(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1350
    invoke-static {v2, v0}, Lcom/avast/a/a/a/b/a$a;->h(Lcom/avast/a/a/a/b/a$a;I)I

    .line 1351
    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(I)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 2078
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2079
    iput p1, p0, Lcom/avast/a/a/a/b/a$a$a;->i:I

    .line 2081
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1414
    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 2127
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2128
    iput p1, p0, Lcom/avast/a/a/a/b/a$a$a;->j:I

    .line 2130
    return-object p0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a$a;->f()Lcom/avast/a/a/a/b/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a$a;->f()Lcom/avast/a/a/a/b/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 2176
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2177
    iput p1, p0, Lcom/avast/a/a/a/b/a$a$a;->k:I

    .line 2179
    return-object p0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/avast/a/a/a/b/a$a$a;->f()Lcom/avast/a/a/a/b/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 2225
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2226
    iput p1, p0, Lcom/avast/a/a/a/b/a$a$a;->l:I

    .line 2228
    return-object p0
.end method

.method public final f(I)Lcom/avast/a/a/a/b/a$a$a;
    .locals 1

    .prologue
    .line 2274
    iget v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2275
    iput p1, p0, Lcom/avast/a/a/a/b/a$a$a;->m:I

    .line 2277
    return-object p0
.end method
