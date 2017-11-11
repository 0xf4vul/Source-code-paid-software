.class final Lcom/evernote/android/job/j$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/evernote/android/job/j;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 354
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 355
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 358
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 362
    iget-object v4, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v4, v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 364
    invoke-static {}, Lcom/evernote/android/job/j;->b()Ld/a/a/a/c;

    move-result-object v4

    const-string/jumbo v5, "Deleted job %d which failed to delete earlier"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 366
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/evernote/android/job/j;->b()Ld/a/a/a/c;

    move-result-object v4

    const-string/jumbo v5, "Couldn\'t delete job %d which failed to delete earlier"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ld/a/a/a/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 375
    :try_start_4
    iget-object v0, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 378
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 380
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    add-int/lit8 v2, v1, 0x1

    if-gt v1, v8, :cond_3

    .line 384
    iget-object v1, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 385
    goto :goto_1

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/evernote/android/job/j$1;->a:Lcom/evernote/android/job/j;

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 389
    :cond_3
    monitor-exit v4

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
