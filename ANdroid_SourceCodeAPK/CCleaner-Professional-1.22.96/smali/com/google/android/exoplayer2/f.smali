.class final Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# instance fields
.field final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer2/e$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:I

.field e:I

.field f:Z

.field g:Lcom/google/android/exoplayer2/o;

.field h:Ljava/lang/Object;

.field i:Lcom/google/android/exoplayer2/g$b;

.field j:I

.field k:J

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/google/android/exoplayer2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/g",
            "<*>;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/o$b;

.field private final o:Lcom/google/android/exoplayer2/o$a;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/l;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/l;",
            "Lcom/google/android/exoplayer2/h/h",
            "<*>;",
            "Lcom/google/android/exoplayer2/i;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string/jumbo v0, "ExoPlayerImpl"

    const-string/jumbo v3, "Init 2.0.3"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 71
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/f;->c:Z

    .line 72
    iput v1, p0, Lcom/google/android/exoplayer2/f;->d:I

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/f$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/f$1;-><init>(Lcom/google/android/exoplayer2/f;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->l:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/g;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/f;->c:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/f;->l:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/g;-><init>([Lcom/google/android/exoplayer2/l;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/g$b;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/f;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 6

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-nez v0, :cond_0

    .line 148
    iput p1, p0, Lcom/google/android/exoplayer2/f;->j:I

    .line 149
    iput-wide v4, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->b:Z

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(I)I

    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/f;->j:I

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    .line 2108
    invoke-virtual {v1, p1, v2}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    .line 156
    iget v1, v1, Lcom/google/android/exoplayer2/o$b;->f:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/g;->a(IJ)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 10

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 167
    cmp-long v0, p2, v8

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/f;->a(I)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-nez v0, :cond_2

    .line 170
    iput p1, p0, Lcom/google/android/exoplayer2/f;->j:I

    .line 171
    iput-wide p2, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->b:Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(I)I

    .line 175
    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    .line 176
    iput p1, p0, Lcom/google/android/exoplayer2/f;->j:I

    .line 177
    iput-wide p2, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    .line 3108
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    iget v4, v0, Lcom/google/android/exoplayer2/o$b;->f:I

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    .line 3267
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$b;->j:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    .line 180
    add-long v2, v0, p2

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 4136
    invoke-virtual {v0, v4, v1, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 4326
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$a;->d:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    .line 182
    :goto_1
    cmp-long v5, v0, v8

    if-eqz v5, :cond_3

    cmp-long v5, v2, v0

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    iget v5, v5, Lcom/google/android/exoplayer2/o$b;->g:I

    if-ge v4, v5, :cond_3

    .line 184
    sub-long/2addr v2, v0

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    add-int/lit8 v4, v4, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 5136
    invoke-virtual {v0, v4, v1, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 5326
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$a;->d:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/g;->a(IJ)V

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 189
    invoke-interface {v0}, Lcom/google/android/exoplayer2/e$a;->g()V

    goto :goto_2
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->g()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/f;->a(IJ)V

    .line 163
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/e$a;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/f/d;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    .line 1109
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1110
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    .line 1111
    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->h:Ljava/lang/Object;

    .line 1112
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 1113
    invoke-interface {v0}, Lcom/google/android/exoplayer2/e$a;->f()V

    goto :goto_0

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    .line 1168
    iget-object v0, v0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->c:Z

    if-eq v0, p1, :cond_1

    .line 122
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/f;->c:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    .line 1173
    iget-object v3, v0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 125
    iget v2, p0, Lcom/google/android/exoplayer2/f;->d:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/e$a;->a(ZI)V

    goto :goto_1

    :cond_0
    move v0, v2

    .line 1173
    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method public final varargs a([Lcom/google/android/exoplayer2/e$c;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    .line 6185
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/g;->b:Z

    if-eqz v1, :cond_0

    .line 6186
    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    :goto_0
    return-void

    .line 6189
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/g;->c:I

    .line 6190
    iget-object v0, v0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/exoplayer2/e$a;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public final varargs b([Lcom/google/android/exoplayer2/e$c;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/g;->a([Lcom/google/android/exoplayer2/e$c;)V

    .line 213
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->c:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/f;->a(I)V

    .line 143
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    .line 6181
    iget-object v0, v0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->m:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->a()V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public final f()Lcom/google/android/exoplayer2/o;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    return-object v0
.end method

.method public final g()I
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    if-lez v0, :cond_1

    .line 223
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/f;->j:I

    .line 225
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 7136
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 225
    iget v0, v0, Lcom/google/android/exoplayer2/o$a;->c:I

    goto :goto_0
.end method

.method public final h()J
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-nez v0, :cond_0

    .line 232
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 234
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/o$b;

    .line 8108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v0

    .line 8252
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$b;->i:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final i()J
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    if-lez v0, :cond_1

    .line 240
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 243
    :goto_0
    return-wide v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 9136
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 9342
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$a;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final j()J
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    if-lez v0, :cond_1

    .line 251
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 254
    :goto_0
    return-wide v0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 10136
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->o:Lcom/google/android/exoplayer2/o$a;

    .line 10342
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$a;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    .line 254
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->d:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final k()I
    .locals 10

    .prologue
    const-wide/16 v0, 0x64

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 260
    iget-object v3, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    if-nez v3, :cond_0

    move v0, v2

    .line 265
    :goto_0
    return v0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->j()J

    move-result-wide v4

    .line 264
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->h()J

    move-result-wide v6

    .line 265
    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_3

    :goto_1
    long-to-int v0, v0

    goto :goto_0

    :cond_3
    mul-long/2addr v0, v4

    div-long/2addr v0, v6

    goto :goto_1
.end method
