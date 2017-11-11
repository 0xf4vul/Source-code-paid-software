.class public final Lcom/google/android/exoplayer2/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/f/d;
.implements Lcom/google/android/exoplayer2/f/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/f/b$b;,
        Lcom/google/android/exoplayer2/f/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/i/f$a;

.field private final c:Lcom/google/android/exoplayer2/c/i;

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/exoplayer2/f/b$a;

.field private final g:Lcom/google/android/exoplayer2/o$a;

.field private h:Lcom/google/android/exoplayer2/f/d$a;

.field private i:Lcom/google/android/exoplayer2/o;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f$a;Lcom/google/android/exoplayer2/c/i;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/f/b;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f$a;Lcom/google/android/exoplayer2/c/i;B)V

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f$a;Lcom/google/android/exoplayer2/c/i;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/b;->a:Landroid/net/Uri;

    .line 129
    iput-object p2, p0, Lcom/google/android/exoplayer2/f/b;->b:Lcom/google/android/exoplayer2/i/f$a;

    .line 130
    iput-object p3, p0, Lcom/google/android/exoplayer2/f/b;->c:Lcom/google/android/exoplayer2/c/i;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/f/b;->d:I

    .line 132
    iput-object v1, p0, Lcom/google/android/exoplayer2/f/b;->e:Landroid/os/Handler;

    .line 133
    iput-object v1, p0, Lcom/google/android/exoplayer2/f/b;->f:Lcom/google/android/exoplayer2/f/b$a;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/b;->g:Lcom/google/android/exoplayer2/o$a;

    .line 135
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/i/b;)Lcom/google/android/exoplayer2/f/c;
    .locals 9

    .prologue
    .line 151
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 152
    new-instance v0, Lcom/google/android/exoplayer2/f/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/b;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/f/b;->b:Lcom/google/android/exoplayer2/i/f$a;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/i/f$a;->a()Lcom/google/android/exoplayer2/i/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/f/b;->c:Lcom/google/android/exoplayer2/c/i;

    .line 153
    invoke-interface {v3}, Lcom/google/android/exoplayer2/c/i;->a()[Lcom/google/android/exoplayer2/c/f;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/f/b;->d:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/f/b;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/f/b;->f:Lcom/google/android/exoplayer2/f/b$a;

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/f/a;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f;[Lcom/google/android/exoplayer2/c/f;ILandroid/os/Handler;Lcom/google/android/exoplayer2/f/b$a;Lcom/google/android/exoplayer2/f/d$a;Lcom/google/android/exoplayer2/i/b;)V

    .line 152
    return-object v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/b;->h:Lcom/google/android/exoplayer2/f/d$a;

    .line 165
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/f/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    check-cast p1, Lcom/google/android/exoplayer2/f/a;

    .line 1139
    iget-object v0, p1, Lcom/google/android/exoplayer2/f/a;->c:Lcom/google/android/exoplayer2/f/a$b;

    .line 1140
    iget-object v1, p1, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    new-instance v2, Lcom/google/android/exoplayer2/f/a$3;

    invoke-direct {v2, p1, v0}, Lcom/google/android/exoplayer2/f/a$3;-><init>(Lcom/google/android/exoplayer2/f/a;Lcom/google/android/exoplayer2/f/a$b;)V

    .line 1198
    iget-object v0, v1, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, v1, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/i/q$b;->a(Z)V

    .line 1202
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/i/q;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1204
    iget-object v0, v1, Lcom/google/android/exoplayer2/i/q;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1150
    iget-object v0, p1, Lcom/google/android/exoplayer2/f/a;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1151
    iput-boolean v3, p1, Lcom/google/android/exoplayer2/f/a;->r:Z

    .line 160
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/f/d$a;)V
    .locals 4

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/b;->h:Lcom/google/android/exoplayer2/f/d$a;

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/f/g;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/f/g;-><init>(JZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/b;->i:Lcom/google/android/exoplayer2/o;

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/b;->i:Lcom/google/android/exoplayer2/o;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/f/d$a;->a(Lcom/google/android/exoplayer2/o;)V

    .line 142
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/o;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/b;->g:Lcom/google/android/exoplayer2/o$a;

    .line 2136
    invoke-virtual {p1, v0, v1, v0}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    .line 2333
    iget-wide v2, v1, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 172
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 173
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/f/b;->j:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/b;->i:Lcom/google/android/exoplayer2/o;

    .line 178
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/b;->j:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/b;->h:Lcom/google/android/exoplayer2/f/d$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/b;->i:Lcom/google/android/exoplayer2/o;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/f/d$a;->a(Lcom/google/android/exoplayer2/o;)V

    goto :goto_0
.end method
