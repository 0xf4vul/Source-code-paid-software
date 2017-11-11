.class public abstract Lcom/piriform/ccleaner/a/a/q;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/n$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/piriform/ccleaner/f/p;",
        ">",
        "Lcom/piriform/ccleaner/a/a/a;",
        "Lcom/piriform/ccleaner/f/n$a;"
    }
.end annotation


# instance fields
.field final i:Lcom/piriform/ccleaner/f/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile j:I

.field volatile k:J

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/piriform/ccleaner/f/n;

.field private final n:Lcom/piriform/ccleaner/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/a/q;",
            "Lcom/piriform/ccleaner/a/h;",
            "Lcom/piriform/ccleaner/a/c;",
            "TT;",
            "Lcom/piriform/ccleaner/f/n;",
            "Lcom/piriform/ccleaner/b/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v6, Lcom/piriform/ccleaner/v/b$a;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Lcom/piriform/ccleaner/v/b$a;-><init>(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/v/b;Lcom/piriform/ccleaner/b/e;)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/v/b;Lcom/piriform/ccleaner/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/a/q;",
            "Lcom/piriform/ccleaner/a/h;",
            "Lcom/piriform/ccleaner/a/c;",
            "TT;",
            "Lcom/piriform/ccleaner/f/n;",
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/piriform/ccleaner/b/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->l:Ljava/util/List;

    .line 60
    iput-object p4, p0, Lcom/piriform/ccleaner/a/a/q;->i:Lcom/piriform/ccleaner/f/p;

    .line 61
    iput-object p5, p0, Lcom/piriform/ccleaner/a/a/q;->m:Lcom/piriform/ccleaner/f/n;

    .line 62
    iput-object p6, p0, Lcom/piriform/ccleaner/a/a/q;->n:Lcom/piriform/ccleaner/v/b;

    .line 63
    return-void
.end method

.method private B()V
    .locals 9

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->w()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->x()Ljava/lang/String;

    move-result-object v2

    .line 1133
    const-string/jumbo v3, ""

    .line 112
    iget-wide v4, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    .line 2116
    const/4 v6, 0x0

    .line 2117
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 2119
    const/4 v8, 0x1

    .line 2239
    iget v0, v0, Lcom/piriform/ccleaner/f/j;->d:I

    .line 2119
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v6, v0

    .line 2120
    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/a/a/q;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    return p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/a/a/q;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    return-wide p1
.end method

.method private a(IIJ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    invoke-static {p3, p4}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 3053
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 184
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-interface {v1, p1, p2, v2}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method protected a(IJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    const v0, 0x7f090018

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/piriform/ccleaner/a/a/q;->a(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/piriform/ccleaner/f/h;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/f/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .line 3041
    iget-object v0, p1, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    .line 157
    return-object v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Lcom/piriform/ccleaner/f/h;)I
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/piriform/ccleaner/f/h;->a()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/List;)Lcom/piriform/ccleaner/f/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)",
            "Lcom/piriform/ccleaner/f/h;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->m:Lcom/piriform/ccleaner/f/n;

    sget-object v1, Lcom/piriform/ccleaner/a/a/q;->a:Lcom/piriform/ccleaner/f/n$a;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->A()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/piriform/ccleaner/f/n;->a(Ljava/util/List;Lcom/piriform/ccleaner/f/n$a;Z)Lcom/piriform/ccleaner/f/h;

    move-result-object v1

    .line 4041
    iget-object v0, v1, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    .line 3234
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/q;->a(Ljava/util/List;)V

    .line 3235
    iget v2, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/q;->n:Lcom/piriform/ccleaner/v/b;

    .line 4045
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4046
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4048
    iget-object v0, v1, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 4049
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/v/b;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4050
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4054
    :cond_1
    iget-object v0, v1, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 4055
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/v/b;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4056
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4061
    :cond_3
    new-instance v0, Lcom/piriform/ccleaner/f/h;

    iget-wide v6, v1, Lcom/piriform/ccleaner/f/h;->b:J

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/piriform/ccleaner/f/h;-><init>(JLjava/util/List;Ljava/util/List;)V

    .line 3235
    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/h;->a()I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    .line 3236
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/q;->B()V

    .line 230
    return-object v1
.end method

.method protected b(IJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->u()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/piriform/ccleaner/a/a/q;->a(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    .line 1053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 67
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->t()I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/q;->a(Ljava/lang/String;)V

    .line 69
    iput v3, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v1, Lcom/piriform/ccleaner/a/a/q$1;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/a/a/q$1;-><init>(Lcom/piriform/ccleaner/a/a/q;Ljava/util/List;)V

    .line 90
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/q;->i:Lcom/piriform/ccleaner/f/p;

    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/f/p;->a(Lcom/piriform/ccleaner/f/p$a;)V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->o:Ljava/util/List;

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->e:I

    .line 103
    :goto_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/q;->B()V

    .line 105
    return v0

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 100
    :cond_0
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    goto :goto_0
.end method

.method public final c(II)V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/a/a/q;->b(II)V

    .line 194
    return-void
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->m:Lcom/piriform/ccleaner/f/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/q;->o:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/piriform/ccleaner/f/n;->a(Ljava/util/List;Lcom/piriform/ccleaner/f/n$a;Z)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/q;->b(Lcom/piriform/ccleaner/f/h;)I

    move-result v1

    .line 3037
    iget-wide v2, v0, Lcom/piriform/ccleaner/f/h;->b:J

    .line 142
    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/q;->l:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/q;->a(Lcom/piriform/ccleaner/f/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-virtual {p0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/q;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/q;->a(Ljava/lang/String;JI)V

    .line 147
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->v()V

    .line 149
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract t()I
.end method

.method protected abstract u()I
.end method

.method protected v()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/q;->z()I

    move-result v0

    iget v1, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    iget-wide v2, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/q;->a(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const v0, 0x7f090029

    iget v1, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    iget-wide v2, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/q;->a(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->o:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 210
    const v0, 0x7f09000e

    return v0
.end method
