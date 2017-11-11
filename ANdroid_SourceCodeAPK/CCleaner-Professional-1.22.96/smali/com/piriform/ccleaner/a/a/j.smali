.class public final Lcom/piriform/ccleaner/a/a/j;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/b/a/a;
.implements Lcom/piriform/ccleaner/core/b/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/a/a/a;",
        "Lcom/piriform/ccleaner/core/b/a/a",
        "<",
        "Lcom/piriform/ccleaner/core/data/d;",
        ">;",
        "Lcom/piriform/ccleaner/core/b/c$a;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/piriform/ccleaner/core/b/c;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/data/e;",
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/a;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/c;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/piriform/ccleaner/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/a/q;",
            "Lcom/piriform/ccleaner/core/b/c;",
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/data/e;",
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/a;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;",
            "Lcom/piriform/ccleaner/b/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p7}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 50
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/j;->l:Lcom/piriform/ccleaner/core/b/c;

    .line 51
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/j;->m:Ljava/util/Map;

    .line 52
    iput-object p4, p0, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    .line 53
    iput-object p5, p0, Lcom/piriform/ccleaner/a/a/j;->j:Ljava/util/List;

    .line 54
    iput-object p6, p0, Lcom/piriform/ccleaner/a/a/j;->k:Ljava/util/List;

    .line 55
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/e;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;",
            "Lcom/piriform/ccleaner/core/data/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 180
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 182
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/d;

    .line 6008
    iget-object v2, v0, Lcom/piriform/ccleaner/core/data/d;->a:Lcom/piriform/ccleaner/core/data/e;

    .line 6054
    sget-object v4, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    if-eq p1, v4, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 184
    :goto_2
    if-eqz v2, :cond_2

    .line 185
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6054
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 188
    goto :goto_0
.end method

.method private t()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {}, Lcom/piriform/ccleaner/core/data/e;->values()[Lcom/piriform/ccleaner/core/data/e;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {}, Lcom/piriform/ccleaner/core/a;->values()[Lcom/piriform/ccleaner/core/a;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    .line 81
    iget-object v10, p0, Lcom/piriform/ccleaner/a/a/j;->l:Lcom/piriform/ccleaner/core/b/c;

    invoke-virtual {v10, v9, v5}, Lcom/piriform/ccleaner/core/b/c;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->m:Ljava/util/Map;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method private u()V
    .locals 6

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/j;->v()I

    move-result v0

    .line 3053
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 89
    const v2, 0x7f090005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v0, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/lang/String;JI)V

    .line 91
    return-void
.end method

.method private v()I
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    sget-object v1, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/a/a/j;->b(Lcom/piriform/ccleaner/core/a;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/a/a/j;->c(Lcom/piriform/ccleaner/core/a;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a;)I
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->d:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->l:Lcom/piriform/ccleaner/core/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/piriform/ccleaner/core/b/c;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/b/c$a;)Ljava/util/List;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5174
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/j;->t()V

    .line 5175
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/j;->u()V

    .line 171
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/core/a;)I
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->c:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)I

    move-result v0

    return v0
.end method

.method protected final c()I
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 61
    const v1, 0x7f08003f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/j;->l:Lcom/piriform/ccleaner/core/b/c;

    .line 2049
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/piriform/ccleaner/core/b/c;->a(Lcom/piriform/ccleaner/core/b/a/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 63
    const v1, 0x7f080040

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->e:I

    .line 74
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->d:I

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/j;->t()V

    .line 72
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/j;->u()V

    .line 74
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    goto :goto_0
.end method

.method public final c(Lcom/piriform/ccleaner/core/a;)I
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->b:Lcom/piriform/ccleaner/core/data/e;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)I

    move-result v0

    return v0
.end method

.method public final c(II)V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/a/a/j;->b(II)V

    .line 160
    return-void
.end method

.method public final synthetic d(II)V
    .locals 5

    .prologue
    .line 22
    .line 7053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 6122
    const v1, 0x7f080040

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/lang/String;)V

    .line 6123
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/a/a/j;->a(II)V

    .line 22
    return-void
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->l:Lcom/piriform/ccleaner/core/b/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/j;->j:Ljava/util/List;

    .line 4053
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4054
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/j;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/j;->l:Lcom/piriform/ccleaner/core/b/c;

    invoke-virtual {v3, v0, p0}, Lcom/piriform/ccleaner/core/b/c;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/b/c$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 106
    const v2, 0x7f090007

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v1, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/j;->v()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/lang/String;JI)V

    .line 108
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    :goto_1
    return-object v0

    .line 4056
    :cond_0
    :try_start_1
    sget-object v2, Lcom/piriform/ccleaner/core/b/c;->a:Lcom/piriform/ccleaner/core/b/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/piriform/ccleaner/core/b/c;->a(Lcom/piriform/ccleaner/core/b/a/a;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Thread was interrupted while getting filtered calls "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->c:Lcom/piriform/ccleaner/a/a/d$b;

    goto :goto_1
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/j;->k:Ljava/util/List;

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
