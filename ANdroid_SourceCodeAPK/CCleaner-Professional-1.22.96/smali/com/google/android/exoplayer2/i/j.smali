.class public final Lcom/google/android/exoplayer2/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i/d;
.implements Lcom/google/android/exoplayer2/i/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/i/d;",
        "Lcom/google/android/exoplayer2/i/r",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/i/d$a;

.field private final c:Lcom/google/android/exoplayer2/j/o;

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/i/j;-><init>(B)V

    .line 51
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/i/j;-><init>(C)V

    .line 55
    return-void
.end method

.method private constructor <init>(C)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/google/android/exoplayer2/i/j;->a:Landroid/os/Handler;

    .line 59
    iput-object v0, p0, Lcom/google/android/exoplayer2/i/j;->b:Lcom/google/android/exoplayer2/i/d$a;

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/j/o;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/j;->c:Lcom/google/android/exoplayer2/j/o;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->i:J

    .line 62
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/i/j;->d:I

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->e:J

    .line 74
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/i/j;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/i/j;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/i/j;->d:I

    if-lez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 86
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->e:J

    sub-long v4, v8, v4

    long-to-int v3, v4

    .line 87
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->g:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->g:J

    .line 88
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->h:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i/j;->f:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->h:J

    .line 89
    if-lez v3, :cond_8

    .line 90
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->f:J

    const-wide/16 v6, 0x1f40

    mul-long/2addr v4, v6

    int-to-long v6, v3

    div-long/2addr v4, v6

    long-to-float v4, v4

    .line 91
    iget-object v5, p0, Lcom/google/android/exoplayer2/i/j;->c:Lcom/google/android/exoplayer2/j/o;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i/j;->f:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 1136
    iget v0, v5, Lcom/google/android/exoplayer2/j/o;->f:I

    if-eq v0, v2, :cond_0

    .line 1137
    iget-object v0, v5, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/exoplayer2/j/o;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1138
    const/4 v0, 0x1

    iput v0, v5, Lcom/google/android/exoplayer2/j/o;->f:I

    .line 1087
    :cond_0
    iget v0, v5, Lcom/google/android/exoplayer2/j/o;->i:I

    if-lez v0, :cond_3

    iget-object v0, v5, Lcom/google/android/exoplayer2/j/o;->e:[Lcom/google/android/exoplayer2/j/o$a;

    iget v2, v5, Lcom/google/android/exoplayer2/j/o;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v5, Lcom/google/android/exoplayer2/j/o;->i:I

    aget-object v0, v0, v2

    .line 1089
    :goto_1
    iget v2, v5, Lcom/google/android/exoplayer2/j/o;->g:I

    add-int/lit8 v7, v2, 0x1

    iput v7, v5, Lcom/google/android/exoplayer2/j/o;->g:I

    iput v2, v0, Lcom/google/android/exoplayer2/j/o$a;->a:I

    .line 1090
    iput v6, v0, Lcom/google/android/exoplayer2/j/o$a;->b:I

    .line 1091
    iput v4, v0, Lcom/google/android/exoplayer2/j/o$a;->c:F

    .line 1092
    iget-object v2, v5, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget v0, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    add-int/2addr v0, v6

    iput v0, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    .line 1095
    :cond_1
    :goto_2
    iget v0, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    iget v2, v5, Lcom/google/android/exoplayer2/j/o;->c:I

    if-le v0, v2, :cond_5

    .line 1096
    iget v0, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    iget v2, v5, Lcom/google/android/exoplayer2/j/o;->c:I

    sub-int v2, v0, v2

    .line 1097
    iget-object v0, v5, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/j/o$a;

    .line 1098
    iget v4, v0, Lcom/google/android/exoplayer2/j/o$a;->b:I

    if-gt v4, v2, :cond_4

    .line 1099
    iget v2, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    iget v4, v0, Lcom/google/android/exoplayer2/j/o$a;->b:I

    sub-int/2addr v2, v4

    iput v2, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    .line 1100
    iget-object v2, v5, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1101
    iget v2, v5, Lcom/google/android/exoplayer2/j/o;->i:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    .line 1102
    iget-object v2, v5, Lcom/google/android/exoplayer2/j/o;->e:[Lcom/google/android/exoplayer2/j/o$a;

    iget v4, v5, Lcom/google/android/exoplayer2/j/o;->i:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v5, Lcom/google/android/exoplayer2/j/o;->i:I

    aput-object v0, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    .line 1087
    :cond_3
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/j/o$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/j/o$a;-><init>(B)V

    goto :goto_1

    .line 1105
    :cond_4
    iget v4, v0, Lcom/google/android/exoplayer2/j/o$a;->b:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/exoplayer2/j/o$a;->b:I

    .line 1106
    iget v0, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    sub-int/2addr v0, v2

    iput v0, v5, Lcom/google/android/exoplayer2/j/o;->h:I

    goto :goto_2

    .line 92
    :cond_5
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->g:J

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->h:J

    const-wide/32 v6, 0x80000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_8

    .line 94
    :cond_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/i/j;->c:Lcom/google/android/exoplayer2/j/o;

    .line 2146
    iget v0, v4, Lcom/google/android/exoplayer2/j/o;->f:I

    if-eqz v0, :cond_7

    .line 2147
    iget-object v0, v4, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/exoplayer2/j/o;->b:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2148
    const/4 v0, 0x0

    iput v0, v4, Lcom/google/android/exoplayer2/j/o;->f:I

    .line 2119
    :cond_7
    const/high16 v0, 0x3f000000    # 0.5f

    iget v2, v4, Lcom/google/android/exoplayer2/j/o;->h:I

    int-to-float v2, v2

    mul-float v5, v0, v2

    move v2, v1

    .line 2121
    :goto_3
    iget-object v0, v4, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2122
    iget-object v0, v4, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/j/o$a;

    .line 2123
    iget v6, v0, Lcom/google/android/exoplayer2/j/o$a;->b:I

    add-int/2addr v2, v6

    .line 2124
    int-to-float v6, v2

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_b

    .line 2125
    iget v0, v0, Lcom/google/android/exoplayer2/j/o$a;->c:F

    .line 95
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    const-wide/16 v0, -0x1

    :goto_5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->i:J

    .line 99
    :cond_8
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/j;->f:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i/j;->i:J

    .line 3107
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/j;->a:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/i/j;->b:Lcom/google/android/exoplayer2/i/d$a;

    if-eqz v0, :cond_9

    .line 3108
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/i/j$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/i/j$1;-><init>(Lcom/google/android/exoplayer2/i/j;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/i/j;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/i/j;->d:I

    if-lez v0, :cond_a

    .line 101
    iput-wide v8, p0, Lcom/google/android/exoplayer2/i/j;->e:J

    .line 103
    :cond_a
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/j;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 2121
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2129
    :cond_c
    :try_start_2
    iget-object v0, v4, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_4

    :cond_d
    iget-object v0, v4, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/j/o$a;

    iget v0, v0, Lcom/google/android/exoplayer2/j/o$a;->c:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 95
    :cond_e
    float-to-long v0, v0

    goto :goto_5
.end method
