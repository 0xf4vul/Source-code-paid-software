.class public final Lcom/google/android/exoplayer2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n$a;,
        Lcom/google/android/exoplayer2/n$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/e;

.field public final b:[Lcom/google/android/exoplayer2/l;

.field public final c:Lcom/google/android/exoplayer2/n$a;

.field public final d:I

.field e:Z

.field f:Lcom/google/android/exoplayer2/Format;

.field g:Lcom/google/android/exoplayer2/Format;

.field h:Landroid/view/Surface;

.field public i:Landroid/view/TextureView;

.field public j:Lcom/google/android/exoplayer2/g/k$a;

.field public k:Lcom/google/android/exoplayer2/n$b;

.field l:Lcom/google/android/exoplayer2/a/c;

.field m:Lcom/google/android/exoplayer2/k/e;

.field n:Lcom/google/android/exoplayer2/b/d;

.field o:Lcom/google/android/exoplayer2/b/d;

.field public p:I

.field public q:F

.field private final r:Landroid/os/Handler;

.field private final s:I

.field private t:Z

.field private u:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/h/h",
            "<*>;",
            "Lcom/google/android/exoplayer2/i;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/n$a;

    invoke-direct {v0, p0, v3}, Lcom/google/android/exoplayer2/n$a;-><init>(Lcom/google/android/exoplayer2/n;B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    .line 1073
    iget-object v1, p2, Lcom/google/android/exoplayer2/h/h;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    new-instance v0, Lcom/google/android/exoplayer2/k/c;

    sget-object v2, Lcom/google/android/exoplayer2/d/c;->a:Lcom/google/android/exoplayer2/d/c;

    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/google/android/exoplayer2/k/c;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/d/c;Landroid/os/Handler;Lcom/google/android/exoplayer2/k/e;)V

    .line 1539
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v0, Lcom/google/android/exoplayer2/a/f;

    sget-object v2, Lcom/google/android/exoplayer2/d/c;->a:Lcom/google/android/exoplayer2/d/c;

    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    .line 1543
    invoke-static {p1}, Lcom/google/android/exoplayer2/a/b;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/a/b;

    move-result-object v6

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/a/f;-><init>(Lcom/google/android/exoplayer2/d/c;Landroid/os/Handler;Lcom/google/android/exoplayer2/a/c;Lcom/google/android/exoplayer2/a/b;)V

    .line 1544
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v0, Lcom/google/android/exoplayer2/g/k;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/google/android/exoplayer2/g/k;-><init>(Lcom/google/android/exoplayer2/g/k$a;Landroid/os/Looper;)V

    .line 1547
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    new-instance v0, Lcom/google/android/exoplayer2/e/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    .line 1550
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/e/a/d;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/e/a/d;-><init>()V

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/e/c;-><init>(Lcom/google/android/exoplayer2/e/c$a;Landroid/os/Looper;Lcom/google/android/exoplayer2/e/a;)V

    .line 1551
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1560
    :try_start_0
    const-string/jumbo v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 1561
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1562
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-class v5, Lcom/google/android/exoplayer2/k/e;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1564
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const/16 v5, 0x32

    .line 1565
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1564
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibvpxVideoRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :goto_0
    :try_start_1
    const-string/jumbo v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 1575
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1576
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/exoplayer2/a/c;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1578
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibopusAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1587
    :goto_1
    :try_start_2
    const-string/jumbo v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 1588
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1589
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/exoplayer2/a/c;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1591
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibflacAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1600
    :goto_2
    :try_start_3
    const-string/jumbo v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 1601
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1602
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/exoplayer2/a/c;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1604
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->r:Landroid/os/Handler;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded FfmpegAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 141
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/l;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    .line 146
    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    array-length v5, v4

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_4
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 147
    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->a()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 146
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1582
    :catch_1
    move-exception v0

    .line 1583
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1595
    :catch_2
    move-exception v0

    .line 1596
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1608
    :catch_3
    move-exception v0

    .line 1609
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_5

    .line 152
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 156
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/n;->s:I

    .line 157
    iput v0, p0, Lcom/google/android/exoplayer2/n;->d:I

    .line 160
    iput v3, p0, Lcom/google/android/exoplayer2/n;->p:I

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/n;->q:F

    .line 164
    new-instance v0, Lcom/google/android/exoplayer2/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/f;-><init>([Lcom/google/android/exoplayer2/l;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    .line 165
    return-void

    .line 1610
    :catch_4
    move-exception v0

    goto :goto_3

    .line 1597
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 1584
    :catch_6
    move-exception v0

    goto/16 :goto_1

    .line 1571
    :catch_7
    move-exception v0

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/n;Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->a()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->a(I)V

    .line 451
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/e;->a(J)V

    .line 456
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->l()V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 211
    return-void
.end method

.method public final a(Landroid/view/Surface;Z)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 631
    iget v1, p0, Lcom/google/android/exoplayer2/n;->s:I

    new-array v3, v1, [Lcom/google/android/exoplayer2/e$c;

    .line 633
    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 634
    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->a()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 635
    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lcom/google/android/exoplayer2/e$c;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8, p1}, Lcom/google/android/exoplayer2/e$c;-><init>(Lcom/google/android/exoplayer2/e$b;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    .line 633
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    .line 640
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/n;->t:Z

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/e;->b([Lcom/google/android/exoplayer2/e$c;)V

    .line 648
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    .line 649
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/n;->t:Z

    .line 650
    return-void

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/e;->a([Lcom/google/android/exoplayer2/e$c;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/view/SurfaceView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 2220
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->l()V

    .line 2221
    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->u:Landroid/view/SurfaceHolder;

    .line 2222
    if-nez v0, :cond_0

    .line 2223
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    :goto_0
    return-void

    .line 2225
    :cond_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 2226
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/e$a;)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->a(Lcom/google/android/exoplayer2/e$a;)V

    .line 406
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/f/d;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->a(Lcom/google/android/exoplayer2/f/d;)V

    .line 421
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->a(Z)V

    .line 431
    return-void
.end method

.method public final varargs a([Lcom/google/android/exoplayer2/e$c;)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->a([Lcom/google/android/exoplayer2/e$c;)V

    .line 483
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/e$a;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->b(Lcom/google/android/exoplayer2/e$a;)V

    .line 411
    return-void
.end method

.method public final varargs b([Lcom/google/android/exoplayer2/e$c;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/e;->b([Lcom/google/android/exoplayer2/e$c;)V

    .line 488
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->c()V

    .line 446
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->d()V

    .line 466
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->e()V

    .line 471
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->l()V

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 473
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/n;->t:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 476
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    .line 478
    :cond_1
    return-void
.end method

.method public final f()Lcom/google/android/exoplayer2/o;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->f()Lcom/google/android/exoplayer2/o;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->g()I

    move-result v0

    return v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->k()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->i:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->i:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    if-eq v0, v1, :cond_2

    .line 616
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/n;->i:Landroid/view/TextureView;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->u:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->u:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 624
    iput-object v2, p0, Lcom/google/android/exoplayer2/n;->u:Landroid/view/SurfaceHolder;

    .line 626
    :cond_1
    return-void

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->i:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method
