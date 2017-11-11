.class final Lf/d/a/aa$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lf/f;
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lf/f;",
        "Lf/j;"
    }
.end annotation


# instance fields
.field final a:Lf/d/a/aa$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/aa$e",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(Lf/d/a/aa$e;Lf/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/aa$e",
            "<TT;>;",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 671
    iput-object p1, p0, Lf/d/a/aa$b;->a:Lf/d/a/aa$e;

    .line 672
    iput-object p2, p0, Lf/d/a/aa$b;->b:Lf/i;

    .line 673
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 674
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 679
    cmp-long v0, p1, v6

    if-gez v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lf/d/a/aa$b;->get()J

    move-result-wide v2

    .line 689
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 693
    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    cmp-long v0, p1, v6

    if-eqz v0, :cond_0

    .line 697
    :cond_2
    add-long v0, v2, p1

    .line 699
    cmp-long v4, v0, v6

    if-gez v4, :cond_3

    .line 701
    const-wide v0, 0x7fffffffffffffffL

    .line 704
    :cond_3
    invoke-virtual {p0, v2, v3, v0, v1}, Lf/d/a/aa$b;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {p0, p1, p2}, Lf/d/a/aa$b;->b(J)V

    .line 709
    iget-object v0, p0, Lf/d/a/aa$b;->a:Lf/d/a/aa$e;

    invoke-virtual {v0, p0}, Lf/d/a/aa$e;->b(Lf/d/a/aa$b;)V

    .line 711
    iget-object v0, p0, Lf/d/a/aa$b;->a:Lf/d/a/aa$e;

    iget-object v0, v0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    invoke-interface {v0, p0}, Lf/d/a/aa$d;->a(Lf/d/a/aa$b;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 774
    invoke-virtual {p0}, Lf/d/a/aa$b;->get()J

    move-result-wide v0

    .line 776
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {p0, v2, v3}, Lf/d/a/aa$b;->getAndSet(J)J

    move-result-wide v0

    .line 783
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 785
    iget-object v1, p0, Lf/d/a/aa$b;->a:Lf/d/a/aa$e;

    .line 1415
    iget-boolean v0, v1, Lf/d/a/aa$e;->g:Z

    if-nez v0, :cond_0

    .line 1418
    iget-object v2, v1, Lf/d/a/aa$e;->h:Lf/d/e/g;

    monitor-enter v2

    .line 1419
    :try_start_0
    iget-boolean v0, v1, Lf/d/a/aa$e;->g:Z

    if-eqz v0, :cond_2

    .line 1420
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/d/a/aa$b;->a:Lf/d/a/aa$e;

    invoke-virtual {v0, p0}, Lf/d/a/aa$e;->b(Lf/d/a/aa$b;)V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lf/d/a/aa$b;->b:Lf/i;

    .line 795
    :cond_1
    return-void

    .line 1422
    :cond_2
    :try_start_1
    iget-object v3, v1, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 2094
    iget-object v4, v3, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 2095
    iget v5, v3, Lf/d/e/g;->b:I

    .line 2096
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lf/d/e/g;->a(I)I

    move-result v0

    and-int/2addr v0, v5

    .line 2097
    aget-object v6, v4, v0

    .line 2098
    if-eqz v6, :cond_3

    .line 2101
    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2102
    invoke-virtual {v3, v0, v4, v5}, Lf/d/e/g;->a(I[Ljava/lang/Object;I)Z

    .line 1423
    :cond_3
    :goto_1
    iget-object v0, v1, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 2200
    iget v0, v0, Lf/d/e/g;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1423
    :goto_2
    if-eqz v0, :cond_4

    .line 1424
    sget-object v0, Lf/d/a/aa$e;->e:[Lf/d/a/aa$b;

    iput-object v0, v1, Lf/d/a/aa$e;->i:[Lf/d/a/aa$b;

    .line 1426
    :cond_4
    iget-wide v4, v1, Lf/d/a/aa$e;->j:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v1, Lf/d/a/aa$e;->j:J

    .line 1427
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2105
    :cond_5
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v5

    .line 2106
    :try_start_2
    aget-object v6, v4, v0

    .line 2107
    if-eqz v6, :cond_3

    .line 2110
    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2111
    invoke-virtual {v3, v0, v4, v5}, Lf/d/e/g;->a(I[Ljava/lang/Object;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2200
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final b(J)V
    .locals 7

    .prologue
    .line 725
    :cond_0
    iget-object v0, p0, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 726
    add-long v0, v2, p1

    .line 727
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 728
    const-wide v0, 0x7fffffffffffffffL

    .line 730
    :cond_1
    iget-object v4, p0, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    return-void
.end method

.method public final c(J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v0, -0x8000000000000000L

    .line 743
    cmp-long v2, p1, v8

    if-gtz v2, :cond_0

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cant produce zero or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lf/d/a/aa$b;->get()J

    move-result-wide v4

    .line 750
    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    .line 762
    :goto_0
    return-wide v0

    .line 754
    :cond_1
    sub-long v2, v4, p1

    .line 756
    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 757
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "More produced ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") than requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_2
    invoke-virtual {p0, v4, v5, v2, v3}, Lf/d/a/aa$b;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 762
    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Lf/d/a/aa$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
