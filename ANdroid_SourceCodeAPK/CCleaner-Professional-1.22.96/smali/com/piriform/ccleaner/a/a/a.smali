.class public abstract Lcom/piriform/ccleaner/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/a/d;


# instance fields
.field protected a_:Lcom/piriform/ccleaner/core/c;

.field protected b:Lcom/piriform/ccleaner/core/e;

.field public c:Lcom/piriform/ccleaner/a/a/d$b;

.field d:Lcom/piriform/ccleaner/a/a/d$c;

.field final e:Lcom/piriform/ccleaner/a/h;

.field final f:Lcom/piriform/ccleaner/a/q;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lcom/piriform/ccleaner/core/i;

.field private i:Landroid/os/Handler;

.field private j:I

.field private final k:Lcom/piriform/ccleaner/a/c;

.field private final l:Lcom/piriform/ccleaner/b/e;


# direct methods
.method protected constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->b:I

    iput v0, p0, Lcom/piriform/ccleaner/a/a/a;->j:I

    .line 27
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->c:Lcom/piriform/ccleaner/a/a/d$b;

    .line 28
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$c;->a:Lcom/piriform/ccleaner/a/a/d$c;

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 41
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 42
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/a;->k:Lcom/piriform/ccleaner/a/c;

    .line 43
    iput-object p4, p0, Lcom/piriform/ccleaner/a/a/a;->l:Lcom/piriform/ccleaner/b/e;

    .line 44
    invoke-virtual {p0, p2}, Lcom/piriform/ccleaner/a/a/a;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/core/i;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 45
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->t()V

    .line 46
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    const-string/jumbo v1, ""

    .line 1084
    iput-object v1, v0, Lcom/piriform/ccleaner/core/i;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->i:Landroid/os/Handler;

    sget-object v1, Lcom/piriform/ccleaner/core/k;->e:Lcom/piriform/ccleaner/core/k;

    .line 2032
    iget v1, v1, Lcom/piriform/ccleaner/core/k;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->i:Landroid/os/Handler;

    sget-object v1, Lcom/piriform/ccleaner/core/k;->h:Lcom/piriform/ccleaner/core/k;

    .line 8032
    iget v1, v1, Lcom/piriform/ccleaner/core/k;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8227
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 8234
    iget v1, v1, Lcom/piriform/ccleaner/a/h;->A:I

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/core/i;
    .locals 2

    .prologue
    .line 49
    new-instance v1, Lcom/piriform/ccleaner/core/i;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/piriform/ccleaner/core/i$a;->b:I

    :goto_0
    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/core/i;-><init>(I)V

    return-object v1

    :cond_0
    sget v0, Lcom/piriform/ccleaner/core/i$a;->a:I

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/piriform/ccleaner/a/a/a;->j:I

    .line 190
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->v()V

    .line 191
    return-void
.end method

.method protected final a(II)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->a_:Lcom/piriform/ccleaner/core/c;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->a_:Lcom/piriform/ccleaner/core/c;

    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/core/c;->a(II)V

    .line 66
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/a;->i:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/a/d$b;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/a;->c:Lcom/piriform/ccleaner/a/a/d$b;

    .line 196
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->v()V

    .line 197
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/a/d$c;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 248
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/c;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/a;->a_:Lcom/piriform/ccleaner/core/c;

    .line 233
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/e;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/a;->b:Lcom/piriform/ccleaner/core/e;

    .line 238
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->a_:Lcom/piriform/ccleaner/core/c;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->a_:Lcom/piriform/ccleaner/core/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/core/c;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 169
    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 170
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 6052
    iput-wide p4, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 180
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 7044
    iput p6, v0, Lcom/piriform/ccleaner/core/i;->a:I

    .line 181
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 7084
    iput-object p1, v0, Lcom/piriform/ccleaner/core/i;->c:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 7092
    iput-object p2, v0, Lcom/piriform/ccleaner/core/i;->d:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 7104
    iput-object p3, v0, Lcom/piriform/ccleaner/core/i;->e:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->v()V

    .line 185
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/cleaning/g;)Z
    .locals 2

    .prologue
    .line 97
    .line 2227
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 2246
    sget-object v1, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 97
    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9227
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 9230
    iget v1, v1, Lcom/piriform/ccleaner/a/h;->z:I

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->t()V

    .line 103
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->u()V

    .line 104
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/a;->c()I

    move-result v0

    .line 3092
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->d:I

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->u()V

    .line 109
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/a;->a(I)V

    .line 110
    return-void
.end method

.method protected final b(II)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->b:Lcom/piriform/ccleaner/core/e;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->b:Lcom/piriform/ccleaner/core/e;

    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/core/e;->a(II)V

    .line 72
    :cond_0
    return-void
.end method

.method protected abstract c()I
.end method

.method public d()V
    .locals 5

    .prologue
    .line 118
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$c;->c:Lcom/piriform/ccleaner/a/a/d$c;

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 119
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->u()V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/a;->f()Lcom/piriform/ccleaner/a/a/d$b;

    move-result-object v0

    .line 4092
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->c:Lcom/piriform/ccleaner/a/a/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    iput-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 132
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/a;->u()V

    .line 133
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/a;->a(Lcom/piriform/ccleaner/a/a/d$b;)V

    .line 134
    return-void

    .line 126
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 127
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    .line 128
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/a;->l:Lcom/piriform/ccleaner/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Ignored exception while performing cleaning: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4227
    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 128
    invoke-virtual {v4}, Lcom/piriform/ccleaner/a/h;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->c:I

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/a;->a(I)V

    .line 139
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    if-ne p0, p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    instance-of v2, p1, Lcom/piriform/ccleaner/a/a/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_2
    check-cast p1, Lcom/piriform/ccleaner/a/a/a;

    .line 286
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/a;->k:Lcom/piriform/ccleaner/a/c;

    iget-object v3, p1, Lcom/piriform/ccleaner/a/a/a;->k:Lcom/piriform/ccleaner/a/c;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    iget-object v3, p1, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected abstract f()Lcom/piriform/ccleaner/a/a/d$b;
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/piriform/ccleaner/a/a/a;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->k:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/c;->hashCode()I

    move-result v0

    .line 293
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/a/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    return v0
.end method

.method public final i()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->c:Lcom/piriform/ccleaner/a/a/d$b;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 5088
    iget-object v0, v0, Lcom/piriform/ccleaner/core/i;->c:Ljava/lang/String;

    .line 165
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    .line 10053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 10227
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 11226
    iget v1, v1, Lcom/piriform/ccleaner/a/h;->y:I

    .line 217
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    .line 11227
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 11238
    iget-object v0, v0, Lcom/piriform/ccleaner/a/h;->B:Ljava/lang/String;

    .line 222
    return-object v0
.end method

.method public final m()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method public final n()Lcom/piriform/ccleaner/a/a/d$c;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    return-object v0
.end method

.method public final o()Lcom/piriform/ccleaner/a/c;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->k:Lcom/piriform/ccleaner/a/c;

    return-object v0
.end method

.method public final p()Lcom/piriform/ccleaner/core/i;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 262
    .line 11242
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 262
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/d$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 267
    .line 12242
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 267
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/d$c;->a()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 272
    .line 13242
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->d:Lcom/piriform/ccleaner/a/a/d$c;

    .line 14090
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 272
    goto :goto_0
.end method
