.class final Lcom/google/android/exoplayer2/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/google/android/exoplayer2/f/a;

.field private final c:Landroid/net/Uri;

.field private final d:Lcom/google/android/exoplayer2/i/f;

.field private final e:Lcom/google/android/exoplayer2/f/a$b;

.field private final f:Lcom/google/android/exoplayer2/j/d;

.field private final g:Lcom/google/android/exoplayer2/c/l;

.field private volatile h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/f/a;Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f;Lcom/google/android/exoplayer2/f/a$b;Lcom/google/android/exoplayer2/j/d;)V
    .locals 2

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a$a;->b:Lcom/google/android/exoplayer2/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    invoke-static {p2}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->c:Landroid/net/Uri;

    .line 566
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->d:Lcom/google/android/exoplayer2/i/f;

    .line 567
    invoke-static {p4}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/f/a$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->e:Lcom/google/android/exoplayer2/f/a$b;

    .line 568
    iput-object p5, p0, Lcom/google/android/exoplayer2/f/a$a;->f:Lcom/google/android/exoplayer2/j/d;

    .line 569
    new-instance v0, Lcom/google/android/exoplayer2/c/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->g:Lcom/google/android/exoplayer2/c/l;

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a$a;->i:Z

    .line 571
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a$a;->a:J

    .line 572
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a$a;->h:Z

    .line 582
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->g:Lcom/google/android/exoplayer2/c/l;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a$a;->i:Z

    .line 577
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a$a;->h:Z

    return v0
.end method

.method public final c()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 591
    move v8, v6

    .line 592
    :goto_0
    if-nez v8, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a$a;->h:Z

    if-nez v0, :cond_5

    .line 593
    const/4 v7, 0x0

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->g:Lcom/google/android/exoplayer2/c/l;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$a;->d:Lcom/google/android/exoplayer2/i/f;

    new-instance v1, Lcom/google/android/exoplayer2/i/h;

    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a$a;->c:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/exoplayer2/f/a$a;->c:Landroid/net/Uri;

    .line 597
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/j/r;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/google/android/exoplayer2/i/h;-><init>(Landroid/net/Uri;JLjava/lang/String;)V

    .line 596
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/i/f;->a(Lcom/google/android/exoplayer2/i/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a$a;->a:J

    .line 598
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a$a;->a:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 599
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a$a;->a:J

    .line 601
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/c/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$a;->d:Lcom/google/android/exoplayer2/i/f;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f/a$a;->a:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/b;-><init>(Lcom/google/android/exoplayer2/i/f;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$a;->e:Lcom/google/android/exoplayer2/f/a$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/f/a$b;->a(Lcom/google/android/exoplayer2/c/g;)Lcom/google/android/exoplayer2/c/f;

    move-result-object v7

    .line 603
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/f/a$a;->i:Z

    if-eqz v1, :cond_1

    .line 604
    invoke-interface {v7, v2, v3}, Lcom/google/android/exoplayer2/c/f;->b(J)V

    .line 605
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/f/a$a;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move-wide v4, v2

    move v1, v8

    .line 607
    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/f/a$a;->h:Z

    if-nez v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/google/android/exoplayer2/f/a$a;->f:Lcom/google/android/exoplayer2/j/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/d;->c()V

    .line 609
    iget-object v2, p0, Lcom/google/android/exoplayer2/f/a$a;->g:Lcom/google/android/exoplayer2/c/l;

    invoke-interface {v7, v0, v2}, Lcom/google/android/exoplayer2/c/f;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    .line 610
    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    add-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-lez v1, :cond_6

    .line 611
    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    .line 612
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$a;->f:Lcom/google/android/exoplayer2/j/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/d;->b()Z

    .line 613
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$a;->b:Lcom/google/android/exoplayer2/f/a;

    .line 1049
    iget-object v1, v1, Lcom/google/android/exoplayer2/f/a;->f:Landroid/os/Handler;

    .line 613
    iget-object v3, p0, Lcom/google/android/exoplayer2/f/a$a;->b:Lcom/google/android/exoplayer2/f/a;

    .line 2049
    iget-object v3, v3, Lcom/google/android/exoplayer2/f/a;->e:Ljava/lang/Runnable;

    .line 613
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v2

    goto :goto_1

    .line 617
    :cond_2
    if-ne v1, v12, :cond_3

    move v0, v6

    .line 622
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$a;->d:Lcom/google/android/exoplayer2/i/f;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/i/f;->a()V

    move v8, v0

    .line 623
    goto/16 :goto_0

    .line 620
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/f/a$a;->g:Lcom/google/android/exoplayer2/c/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/l;->a:J

    move v0, v1

    goto :goto_2

    .line 617
    :catchall_0
    move-exception v0

    move-object v1, v7

    move v2, v8

    :goto_3
    if-eq v2, v12, :cond_4

    .line 619
    if-eqz v1, :cond_4

    .line 620
    iget-object v2, p0, Lcom/google/android/exoplayer2/f/a$a;->g:Lcom/google/android/exoplayer2/c/l;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 622
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$a;->d:Lcom/google/android/exoplayer2/i/f;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/i/f;->a()V

    throw v0

    .line 625
    :cond_5
    return-void

    .line 617
    :catchall_1
    move-exception v1

    move v2, v8

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v13, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method
