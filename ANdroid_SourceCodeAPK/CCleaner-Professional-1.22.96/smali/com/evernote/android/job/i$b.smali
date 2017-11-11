.class public final Lcom/evernote/android/job/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field c:J

.field d:J

.field e:J

.field f:Lcom/evernote/android/job/i$a;

.field public g:J

.field public h:J

.field i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/evernote/android/job/i$c;

.field n:Lcom/evernote/android/job/a/a/b;

.field o:Ljava/lang/String;

.field public p:Z

.field public q:Z


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/i$b;->a:I

    .line 532
    const-string/jumbo v0, "tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 534
    const-string/jumbo v0, "startMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/i$b;->c:J

    .line 535
    const-string/jumbo v0, "endMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/i$b;->d:J

    .line 537
    const-string/jumbo v0, "backoffMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/i$b;->e:J

    .line 539
    :try_start_0
    const-string/jumbo v0, "backoffPolicy"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/i$a;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    const-string/jumbo v0, "intervalMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/i$b;->g:J

    .line 546
    const-string/jumbo v0, "flexMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/i$b;->h:J

    .line 548
    const-string/jumbo v0, "requirementsEnforced"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->i:Z

    .line 549
    const-string/jumbo v0, "requiresCharging"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->j:Z

    .line 550
    const-string/jumbo v0, "requiresDeviceIdle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->k:Z

    .line 551
    const-string/jumbo v0, "exact"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->l:Z

    .line 553
    :try_start_1
    const-string/jumbo v0, "networkType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/i$c;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/i$c;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    :goto_5
    const-string/jumbo v0, "extras"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->o:Ljava/lang/String;

    .line 561
    const-string/jumbo v0, "persisted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    :goto_6
    iput-boolean v1, p0, Lcom/evernote/android/job/i$b;->p:Z

    .line 562
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 542
    sget-object v0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/i$a;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    goto/16 :goto_0

    :cond_0
    move v0, v2

    .line 548
    goto :goto_1

    :cond_1
    move v0, v2

    .line 549
    goto :goto_2

    :cond_2
    move v0, v2

    .line 550
    goto :goto_3

    :cond_3
    move v0, v2

    .line 551
    goto :goto_4

    .line 554
    :catch_1
    move-exception v0

    .line 555
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 556
    sget-object v0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/i$c;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    goto :goto_5

    :cond_4
    move v1, v2

    .line 561
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/evernote/android/job/i$b;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/i$b;)V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/i$b;-><init>(Lcom/evernote/android/job/i$b;Z)V

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/i$b;B)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/evernote/android/job/i$b;-><init>(Lcom/evernote/android/job/i$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/i$b;Z)V
    .locals 2

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    if-eqz p2, :cond_0

    const/16 v0, -0x223d

    :goto_0
    iput v0, p0, Lcom/evernote/android/job/i$b;->a:I

    .line 571
    iget-object v0, p1, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 573
    iget-wide v0, p1, Lcom/evernote/android/job/i$b;->c:J

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    .line 574
    iget-wide v0, p1, Lcom/evernote/android/job/i$b;->d:J

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    .line 576
    iget-wide v0, p1, Lcom/evernote/android/job/i$b;->e:J

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->e:J

    .line 577
    iget-object v0, p1, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    .line 579
    iget-wide v0, p1, Lcom/evernote/android/job/i$b;->g:J

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    .line 580
    iget-wide v0, p1, Lcom/evernote/android/job/i$b;->h:J

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->h:J

    .line 582
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->i:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->i:Z

    .line 583
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->j:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->j:Z

    .line 584
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->k:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->k:Z

    .line 585
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->l:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->l:Z

    .line 586
    iget-object v0, p1, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 588
    iget-object v0, p1, Lcom/evernote/android/job/i$b;->n:Lcom/evernote/android/job/a/a/b;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->n:Lcom/evernote/android/job/a/a/b;

    .line 589
    iget-object v0, p1, Lcom/evernote/android/job/i$b;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->o:Ljava/lang/String;

    .line 591
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->p:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->p:Z

    .line 593
    iget-boolean v0, p1, Lcom/evernote/android/job/i$b;->q:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/i$b;->q:Z

    .line 594
    return-void

    .line 570
    :cond_0
    iget v0, p1, Lcom/evernote/android/job/i$b;->a:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/i$b;ZB)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/i$b;-><init>(Lcom/evernote/android/job/i$b;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    invoke-static {p1}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 518
    const/16 v0, -0x223d

    iput v0, p0, Lcom/evernote/android/job/i$b;->a:I

    .line 520
    iput-wide v2, p0, Lcom/evernote/android/job/i$b;->c:J

    .line 521
    iput-wide v2, p0, Lcom/evernote/android/job/i$b;->d:J

    .line 523
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->e:J

    .line 524
    sget-object v0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/i$a;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    .line 526
    sget-object v0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/i$c;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 527
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/evernote/android/job/i$b;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    .line 813
    iput-boolean v8, p0, Lcom/evernote/android/job/i$b;->l:Z

    .line 814
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 815
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v2

    const-string/jumbo v3, "exactInMs clamped from %d days to %d days"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide p1, v0

    .line 819
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/i$b;->a(JJ)Lcom/evernote/android/job/i$b;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)Lcom/evernote/android/job/i$b;
    .locals 9

    .prologue
    .line 655
    const-string/jumbo v0, "startInMs must be greater than 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/a/e;->a(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    .line 656
    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "endInMs"

    move-wide v0, p3

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/e;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    .line 658
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 659
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "startInMs reduced from %d days to %d days"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/evernote/android/job/i$b;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v6, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    .line 662
    :cond_0
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 663
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "endInMs reduced from %d days to %d days"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/evernote/android/job/i$b;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v6, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    .line 667
    :cond_1
    return-object p0
.end method

.method public final a(JLcom/evernote/android/job/i$a;)Lcom/evernote/android/job/i$b;
    .locals 3

    .prologue
    .line 879
    const-string/jumbo v0, "backoffMs must be > 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/a/e;->a(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/i$b;->e:J

    .line 880
    invoke-static {p3}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/i$a;

    iput-object v0, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    .line 881
    return-object p0
.end method

.method public final a(Z)Lcom/evernote/android/job/i$b;
    .locals 2

    .prologue
    .line 893
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v0

    .line 1504
    iget-object v0, v0, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    .line 893
    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Does not have RECEIVE_BOOT_COMPLETED permission, which is mandatory for this feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_0
    iput-boolean p1, p0, Lcom/evernote/android/job/i$b;->p:Z

    .line 897
    return-object p0
.end method

.method public final a()Lcom/evernote/android/job/i;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, -0x223d

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    .line 917
    iget-object v0, p0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 918
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->e:J

    const-string/jumbo v2, "backoffMs must be > 0"

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/a/e;->a(JLjava/lang/String;)J

    .line 919
    iget-object v0, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    invoke-static {v0}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v0, p0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    invoke-static {v0}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 923
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    invoke-static {}, Lcom/evernote/android/job/i;->a()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "intervalMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/e;->a(JJJLjava/lang/String;)J

    .line 924
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->h:J

    invoke-static {}, Lcom/evernote/android/job/i;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/i$b;->g:J

    const-string/jumbo v6, "flexMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/e;->a(JJJLjava/lang/String;)J

    .line 926
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    sget-wide v2, Lcom/evernote/android/job/i;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->h:J

    sget-wide v2, Lcom/evernote/android/job/i;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 928
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "AllowSmallerIntervals enabled, this will crash on Android N and later, interval %d (minimum is %d), flex %d (minimum is %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/evernote/android/job/i$b;->g:J

    .line 929
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    sget-wide v4, Lcom/evernote/android/job/i;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/evernote/android/job/i$b;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-wide v4, Lcom/evernote/android/job/i;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 928
    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :cond_1
    iget-boolean v0, p0, Lcom/evernote/android/job/i$b;->l:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExact() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_2
    iget-boolean v0, p0, Lcom/evernote/android/job/i$b;->l:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    iget-wide v2, p0, Lcom/evernote/android/job/i$b;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 937
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExecutionWindow() for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_3
    iget-boolean v0, p0, Lcom/evernote/android/job/i$b;->l:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/evernote/android/job/i$b;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/i$b;->k:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/i$b;->j:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/i$c;

    iget-object v1, p0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/i$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 940
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t require any condition for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_5
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_7

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_7

    .line 944
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_7
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_9

    .line 947
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExecutionWindow() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_9
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->e:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    sget-object v0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/i$a;

    iget-object v1, p0, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/i$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 950
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_b
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_d

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    const-wide v2, 0x2aaaaaaaaaaaaaaaL

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->d:J

    const-wide v2, 0x2aaaaaaaaaaaaaaaL

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 955
    :cond_c
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/blob/master/FAQ.md"

    .line 2061
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 958
    :cond_d
    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_e

    iget-wide v0, p0, Lcom/evernote/android/job/i$b;->c:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x16d

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 959
    invoke-static {}, Lcom/evernote/android/job/i;->f()Ld/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "Warning: job with tag %s scheduled over a year in the future"

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    :cond_e
    iget v0, p0, Lcom/evernote/android/job/i$b;->a:I

    if-eq v0, v12, :cond_f

    .line 963
    iget v0, p0, Lcom/evernote/android/job/i$b;->a:I

    const-string/jumbo v1, "id can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/a/e;->a(ILjava/lang/String;)I

    .line 966
    :cond_f
    new-instance v0, Lcom/evernote/android/job/i$b;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/i$b;-><init>(Lcom/evernote/android/job/i$b;)V

    .line 967
    iget v1, p0, Lcom/evernote/android/job/i$b;->a:I

    if-ne v1, v12, :cond_10

    .line 968
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v1

    .line 2492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 968
    invoke-virtual {v1}, Lcom/evernote/android/job/j;->a()I

    move-result v1

    iput v1, v0, Lcom/evernote/android/job/i$b;->a:I

    .line 969
    iget v1, v0, Lcom/evernote/android/job/i$b;->a:I

    const-string/jumbo v2, "id can\'t be negative"

    invoke-static {v1, v2}, Lcom/evernote/android/job/a/e;->a(ILjava/lang/String;)I

    .line 972
    :cond_10
    new-instance v1, Lcom/evernote/android/job/i;

    invoke-direct {v1, v0, v7}, Lcom/evernote/android/job/i;-><init>(Lcom/evernote/android/job/i$b;B)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 977
    if-ne p0, p1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return v0

    .line 978
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 980
    :cond_3
    check-cast p1, Lcom/evernote/android/job/i$b;

    .line 982
    iget v2, p0, Lcom/evernote/android/job/i$b;->a:I

    iget v3, p1, Lcom/evernote/android/job/i$b;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/evernote/android/job/i$b;->a:I

    return v0
.end method
