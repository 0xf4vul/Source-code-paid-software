.class public final Lcom/piriform/ccleaner/core/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/a/r;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/core/a/r;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/piriform/ccleaner/core/a/b",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;"
        }
    .end annotation
.end field

.field b:Lcom/piriform/ccleaner/core/a/e;

.field c:Lcom/piriform/ccleaner/core/a/q;

.field private final d:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 5054
    invoke-static {}, Lcom/piriform/ccleaner/core/a/g;->a()I

    move-result v0

    .line 140
    return v0
.end method


# virtual methods
.method public final a(I)Lcom/piriform/ccleaner/core/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 98
    monitor-exit v1

    .line 99
    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 4059
    iget-object v3, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    monitor-exit v1

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_1
    monitor-exit v1

    .line 91
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 26
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 27
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/core/a/b;->a(Lcom/piriform/ccleaner/core/a/r;)V

    .line 1050
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 2038
    iget v0, v0, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2045
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 2046
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    :goto_0
    monitor-exit v1

    return-void

    .line 2048
    :cond_0
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2049
    iget-object v3, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->c:Lcom/piriform/ccleaner/core/a/q;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->c:Lcom/piriform/ccleaner/core/a/q;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/a/q;->s_()V

    .line 132
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 73
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 3050
    iget-object v2, p1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 4038
    iget v2, v2, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2054
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2055
    iget-object v3, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2056
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2057
    iget-object v3, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 76
    :goto_1
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2059
    :cond_1
    iget-object v4, p0, Lcom/piriform/ccleaner/core/a/j;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 81
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->b:Lcom/piriform/ccleaner/core/a/e;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->b:Lcom/piriform/ccleaner/core/a/e;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/a/e;->a()V

    .line 125
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 137
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
