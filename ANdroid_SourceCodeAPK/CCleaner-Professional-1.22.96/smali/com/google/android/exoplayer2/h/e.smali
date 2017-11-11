.class public abstract Lcom/google/android/exoplayer2/h/e;
.super Lcom/google/android/exoplayer2/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/h/e$a;,
        Lcom/google/android/exoplayer2/h/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/h/h",
        "<",
        "Lcom/google/android/exoplayer2/h/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/f/i;",
            "Lcom/google/android/exoplayer2/h/e$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h/h;-><init>(Landroid/os/Handler;)V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h/e;->c:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h/e;->d:Landroid/util/SparseBooleanArray;

    .line 94
    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/f/i;)Lcom/google/android/exoplayer2/h/g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/m;",
            "Lcom/google/android/exoplayer2/f/i;",
            ")",
            "Lcom/google/android/exoplayer2/h/g",
            "<",
            "Lcom/google/android/exoplayer2/h/e$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 233
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [I

    .line 234
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [[Lcom/google/android/exoplayer2/f/h;

    .line 235
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [[[I

    .line 236
    const/4 v0, 0x0

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_0

    .line 237
    iget v1, p2, Lcom/google/android/exoplayer2/f/i;->a:I

    new-array v1, v1, [Lcom/google/android/exoplayer2/f/h;

    aput-object v1, v9, v0

    .line 238
    iget v1, p2, Lcom/google/android/exoplayer2/f/i;->a:I

    new-array v1, v1, [[I

    aput-object v1, v4, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    array-length v0, p1

    new-array v3, v0, [I

    .line 1388
    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 1389
    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/m;->l()I

    move-result v1

    aput v1, v3, v0

    .line 1388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    iget v0, p2, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v7, v0, :cond_7

    .line 2051
    iget-object v0, p2, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v10, v0, v7

    .line 2338
    array-length v1, p1

    .line 2339
    const/4 v0, 0x0

    .line 2340
    const/4 v2, 0x0

    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 2341
    aget-object v11, p1, v2

    .line 2342
    const/4 v5, 0x0

    :goto_4
    iget v6, v10, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v5, v6, :cond_2

    .line 3060
    iget-object v6, v10, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v5

    .line 2343
    invoke-interface {v11, v6}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    .line 2344
    if-le v6, v0, :cond_d

    .line 2347
    const/4 v0, 0x3

    if-eq v6, v0, :cond_4

    move v1, v6

    move v6, v2

    .line 2342
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v1

    move v1, v6

    goto :goto_4

    .line 2340
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v1

    .line 251
    :cond_4
    array-length v0, p1

    if-ne v2, v0, :cond_5

    iget v0, v10, Lcom/google/android/exoplayer2/f/h;->a:I

    new-array v0, v0, [I

    .line 254
    :goto_6
    aget v1, v8, v2

    .line 255
    aget-object v5, v9, v2

    aput-object v10, v5, v1

    .line 256
    aget-object v5, v4, v2

    aput-object v0, v5, v1

    .line 257
    aget v0, v8, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, v8, v2

    .line 246
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 251
    :cond_5
    aget-object v5, p1, v2

    .line 3369
    iget v0, v10, Lcom/google/android/exoplayer2/f/h;->a:I

    new-array v1, v0, [I

    .line 3370
    const/4 v0, 0x0

    :goto_7
    iget v6, v10, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v0, v6, :cond_6

    .line 4060
    iget-object v6, v10, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v0

    .line 3371
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    aput v6, v1, v0

    .line 3370
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    move-object v0, v1

    .line 3373
    goto :goto_6

    .line 261
    :cond_7
    array-length v0, p1

    new-array v2, v0, [Lcom/google/android/exoplayer2/f/i;

    .line 262
    array-length v0, p1

    new-array v1, v0, [I

    .line 263
    const/4 v0, 0x0

    move v5, v0

    :goto_8
    array-length v0, p1

    if-ge v5, v0, :cond_8

    .line 264
    aget v6, v8, v5

    .line 265
    new-instance v7, Lcom/google/android/exoplayer2/f/i;

    aget-object v0, v9, v5

    .line 266
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/f/h;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/f/i;-><init>([Lcom/google/android/exoplayer2/f/h;)V

    aput-object v7, v2, v5

    .line 267
    aget-object v0, v4, v5

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v4, v5

    .line 268
    aget-object v0, p1, v5

    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->a()I

    move-result v0

    aput v0, v1, v5

    .line 263
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_8

    .line 272
    :cond_8
    array-length v0, p1

    aget v0, v8, v0

    .line 273
    new-instance v5, Lcom/google/android/exoplayer2/f/i;

    array-length v6, p1

    aget-object v6, v9, v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/f/h;

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/f/i;-><init>([Lcom/google/android/exoplayer2/f/h;)V

    .line 276
    invoke-virtual {p0, p1, v2, v4}, Lcom/google/android/exoplayer2/h/e;->a([Lcom/google/android/exoplayer2/m;[Lcom/google/android/exoplayer2/f/i;[[[I)[Lcom/google/android/exoplayer2/h/f;

    move-result-object v7

    .line 280
    const/4 v0, 0x0

    move v6, v0

    :goto_9
    array-length v0, p1

    if-ge v6, v0, :cond_c

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/e;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    const/4 v0, 0x0

    aput-object v0, v7, v6

    .line 280
    :cond_9
    :goto_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    .line 284
    :cond_a
    aget-object v8, v2, v6

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 286
    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 287
    :goto_b
    if-eqz v0, :cond_9

    .line 4066
    iget-object v9, v0, Lcom/google/android/exoplayer2/h/e$b;->a:Lcom/google/android/exoplayer2/h/f$a;

    iget v10, v0, Lcom/google/android/exoplayer2/h/e$b;->b:I

    .line 5051
    iget-object v8, v8, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v8, v8, v10

    .line 4066
    iget-object v0, v0, Lcom/google/android/exoplayer2/h/e$b;->c:[I

    invoke-interface {v9, v8, v0}, Lcom/google/android/exoplayer2/h/f$a;->a(Lcom/google/android/exoplayer2/f/h;[I)Lcom/google/android/exoplayer2/h/f;

    move-result-object v0

    .line 288
    aput-object v0, v7, v6

    goto :goto_a

    .line 286
    :cond_b
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h/e$b;

    goto :goto_b

    .line 294
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/h/e$a;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/h/e$a;-><init>([I[Lcom/google/android/exoplayer2/f/i;[I[[[ILcom/google/android/exoplayer2/f/i;)V

    .line 297
    new-instance v1, Lcom/google/android/exoplayer2/h/g;

    invoke-direct {v1, v0, v7}, Lcom/google/android/exoplayer2/h/g;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/h/f;)V

    return-object v1

    :cond_d
    move v6, v1

    move v1, v0

    goto/16 :goto_5
.end method

.method protected abstract a([Lcom/google/android/exoplayer2/m;[Lcom/google/android/exoplayer2/f/i;[[[I)[Lcom/google/android/exoplayer2/h/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation
.end method
