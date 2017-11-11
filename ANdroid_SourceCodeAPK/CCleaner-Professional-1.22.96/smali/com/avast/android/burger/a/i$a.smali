.class public final Lcom/avast/android/burger/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/android/burger/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/avast/android/burger/b;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:I

.field private h:[B


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object v4, p0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/burger/a/i$a;->f:J

    .line 221
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iget-wide v2, p0, Lcom/avast/android/burger/a/i$a;->f:J

    .line 1243
    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 221
    iput v0, p0, Lcom/avast/android/burger/a/i$a;->g:I

    .line 227
    iput-object v4, p0, Lcom/avast/android/burger/a/i$a;->h:[B

    .line 185
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/a/i$a;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Init was not completed! Event will be valid for only internal library use!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/avast/android/burger/a/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/avast/a/b/a/a$g;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 385
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    .line 386
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Event type is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Event type cannot contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    invoke-static {}, Lcom/avast/a/b/a/a$g;->e()Lcom/avast/a/b/a/a$g$a;

    move-result-object v6

    .line 393
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->b:Lcom/avast/android/burger/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/avast/android/burger/a/i$a;->b:Lcom/avast/android/burger/b;

    .line 2417
    iget v2, v2, Lcom/avast/android/burger/b;->h:I

    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/avast/a/b/a/a$g$a;->a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$g$a;

    .line 400
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 404
    if-nez v2, :cond_7

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 418
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 419
    invoke-virtual {v6, v2}, Lcom/avast/a/b/a/a$g$a;->b(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$g$a;

    .line 422
    :cond_5
    iget v0, p0, Lcom/avast/android/burger/a/i$a;->g:I

    invoke-virtual {v6, v0}, Lcom/avast/a/b/a/a$g$a;->b(I)Lcom/avast/a/b/a/a$g$a;

    .line 423
    iget-wide v0, p0, Lcom/avast/android/burger/a/i$a;->f:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Lcom/avast/a/b/a/a$g$a;->a(J)Lcom/avast/a/b/a/a$g$a;

    .line 424
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->h:[B

    if-eqz v0, :cond_6

    .line 425
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->h:[B

    invoke-static {v0}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/avast/a/b/a/a$g$a;->a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$g$a;

    .line 426
    iget v0, p0, Lcom/avast/android/burger/a/i$a;->d:I

    invoke-virtual {v6, v0}, Lcom/avast/a/b/a/a$g$a;->c(I)Lcom/avast/a/b/a/a$g$a;

    .line 428
    :cond_6
    invoke-virtual {v6}, Lcom/avast/a/b/a/a$g$a;->a()Lcom/avast/a/b/a/a$g;

    move-result-object v0

    return-object v0

    :cond_7
    move v3, v4

    .line 407
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 408
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$c;

    move v5, v4

    .line 409
    :goto_3
    iget-object v1, p0, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    .line 410
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$c;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/a/b/a/a$c;

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 411
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 407
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 415
    :cond_a
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_b
    move-object v2, v1

    goto :goto_0
.end method

.method public final a([B)Lcom/avast/android/burger/a/i$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    if-nez p1, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/burger/a/i$a;->h:[B

    .line 362
    :goto_0
    return-object p0

    .line 359
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/burger/a/i$a;->h:[B

    .line 360
    iget-object v0, p0, Lcom/avast/android/burger/a/i$a;->h:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final a([I)Lcom/avast/android/burger/a/i$a;
    .locals 3

    .prologue
    .line 266
    .line 2091
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2092
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2093
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2092
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iput-object v1, p0, Lcom/avast/android/burger/a/i$a;->e:Ljava/util/List;

    .line 267
    return-object p0
.end method
