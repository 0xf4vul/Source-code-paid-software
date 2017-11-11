.class public final Lcom/google/android/exoplayer2/c/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:J

.field f:J

.field private g:I

.field private h:[I

.field private i:[J

.field private j:[I

.field private k:[I

.field private l:[J

.field private m:[[B

.field private n:[Lcom/google/android/exoplayer2/Format;

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/Format;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    .line 610
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->h:[I

    .line 611
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    .line 612
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    .line 613
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    .line 614
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->j:[I

    .line 615
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->m:[[B

    .line 616
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    .line 617
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d$b;->e:J

    .line 618
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d$b;->o:Z

    .line 620
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 640
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/b/e;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/c/d$a;)I
    .locals 4

    .prologue
    const/4 v0, -0x5

    .line 744
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    if-nez v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;

    if-eq v1, p3, :cond_0

    .line 746
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;

    iput-object v1, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :goto_0
    monitor-exit p0

    return v0

    .line 749
    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    .line 752
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-object v1, v1, v2

    if-eq v1, p3, :cond_2

    .line 753
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-object v1, v1, v2

    iput-object v1, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 757
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/b/e;->d:J

    .line 758
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget v0, v0, v1

    .line 1063
    iput v0, p2, Lcom/google/android/exoplayer2/b/a;->a:I

    .line 759
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->j:[I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget v0, v0, v1

    iput v0, p4, Lcom/google/android/exoplayer2/c/d$a;->a:I

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-wide v0, v0, v1

    iput-wide v0, p4, Lcom/google/android/exoplayer2/c/d$a;->b:J

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->m:[[B

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-object v0, v0, v1

    iput-object v0, p4, Lcom/google/android/exoplayer2/c/d$a;->d:[B

    .line 763
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d$b;->e:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/b/e;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d$b;->e:J

    .line 764
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 765
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    .line 766
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    .line 767
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    if-ne v0, v1, :cond_3

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    .line 772
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-wide v0, v0, v1

    :goto_1
    iput-wide v0, p4, Lcom/google/android/exoplayer2/c/d$a;->c:J

    .line 774
    const/4 v0, -0x4

    goto :goto_0

    .line 772
    :cond_4
    iget-wide v0, p4, Lcom/google/android/exoplayer2/c/d$a;->b:J

    iget v2, p4, Lcom/google/android/exoplayer2/c/d$a;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized a(J)J
    .locals 9

    .prologue
    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    .line 785
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    iget v3, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-wide v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 820
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 789
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 790
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    aget-wide v2, v3, v2

    .line 791
    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 798
    const/4 v3, 0x0

    .line 800
    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    move v4, v2

    move v2, v5

    .line 801
    :goto_2
    iget v6, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    if-eq v4, v6, :cond_4

    .line 802
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, p1

    if-gtz v6, :cond_4

    .line 805
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v2, v3

    .line 809
    :cond_2
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    rem-int/2addr v4, v6

    .line 810
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 789
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    goto :goto_1

    .line 813
    :cond_4
    if-eq v2, v5, :cond_0

    .line 817
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 818
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    .line 819
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    aget-wide v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JIJI[B)V
    .locals 13

    .prologue
    .line 842
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d$b;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 843
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/c/d$b;->b(J)V

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    aput-wide p1, v0, v1

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    aput-wide p4, v0, v1

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->j:[I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    aput p6, v0, v1

    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    aput p3, v0, v1

    .line 848
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->m:[[B

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    aput-object p7, v0, v1

    .line 849
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;

    aput-object v2, v0, v1

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->h:[I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->q:I

    aput v2, v0, v1

    .line 852
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 853
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    if-ne v0, v1, :cond_2

    .line 855
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    add-int/lit16 v0, v0, 0x3e8

    .line 856
    new-array v1, v0, [I

    .line 857
    new-array v2, v0, [J

    .line 858
    new-array v3, v0, [J

    .line 859
    new-array v4, v0, [I

    .line 860
    new-array v5, v0, [I

    .line 861
    new-array v6, v0, [[B

    .line 862
    new-array v7, v0, [Lcom/google/android/exoplayer2/Format;

    .line 863
    iget v8, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    iget v9, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    sub-int/2addr v8, v9

    .line 864
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->j:[I

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->m:[[B

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/d$b;->h:[I

    iget v10, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    iget v9, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    .line 872
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 874
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->j:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->m:[[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/d$b;->h:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    iput-object v2, p0, Lcom/google/android/exoplayer2/c/d$b;->i:[J

    .line 880
    iput-object v3, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    .line 881
    iput-object v4, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    .line 882
    iput-object v5, p0, Lcom/google/android/exoplayer2/c/d$b;->j:[I

    .line 883
    iput-object v6, p0, Lcom/google/android/exoplayer2/c/d$b;->m:[[B

    .line 884
    iput-object v7, p0, Lcom/google/android/exoplayer2/c/d$b;->n:[Lcom/google/android/exoplayer2/Format;

    .line 885
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/d$b;->h:[I

    .line 886
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    .line 887
    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    iput v1, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    .line 888
    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    iput v1, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 889
    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 842
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 891
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    .line 892
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    if-ne v0, v1, :cond_0

    .line 894
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 826
    monitor-enter p0

    if-nez p1, :cond_1

    .line 827
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/d$b;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 830
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c/d$b;->o:Z

    .line 831
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 836
    goto :goto_0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 3

    .prologue
    .line 900
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    monitor-exit p0

    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 702
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d$b;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d$b;->p:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 911
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d$b;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    .line 920
    :goto_0
    monitor-exit p0

    return v0

    .line 914
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 915
    :goto_1
    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    iget v4, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    rem-int/2addr v4, v5

    aget-wide v4, v3, v4

    cmp-long v3, v4, p1

    if-ltz v3, :cond_1

    .line 917
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 919
    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    add-int/2addr v2, v3

    .line 1650
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/d$b;->a()I

    move-result v3

    sub-int v2, v3, v2

    .line 1651
    if-ltz v2, :cond_2

    iget v3, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    if-gt v2, v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 1653
    if-nez v2, :cond_4

    .line 1654
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    if-eqz v0, :cond_3

    :cond_3
    move v0, v1

    .line 920
    goto :goto_0

    .line 1662
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 1663
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    iget v3, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    .line 1666
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J

    .line 1667
    iget v0, p0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 1668
    iget v2, p0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/google/android/exoplayer2/c/d$b;->g:I

    rem-int/2addr v2, v3

    .line 1669
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/d$b;->l:[J

    aget-wide v6, v3, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J

    .line 1670
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/d$b;->k:[I

    aget v2, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 1667
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()J
    .locals 4

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d$b;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d$b;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
