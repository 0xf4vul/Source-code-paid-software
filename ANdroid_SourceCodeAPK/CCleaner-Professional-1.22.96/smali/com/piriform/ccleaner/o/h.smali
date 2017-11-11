.class public final Lcom/piriform/ccleaner/o/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/o/j;


# instance fields
.field final a:Lcom/piriform/ccleaner/scheduler/f;

.field final b:Lcom/piriform/ccleaner/b/e;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/scheduler/f;Lcom/piriform/ccleaner/b/e;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/piriform/ccleaner/o/h;->c:Landroid/content/ContentResolver;

    .line 37
    iput-object p2, p0, Lcom/piriform/ccleaner/o/h;->a:Lcom/piriform/ccleaner/scheduler/f;

    .line 38
    iput-object p3, p0, Lcom/piriform/ccleaner/o/h;->b:Lcom/piriform/ccleaner/b/e;

    .line 39
    return-void
.end method

.method private c()Lf/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/c/e",
            "<",
            "Landroid/database/Cursor;",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/piriform/ccleaner/o/h$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/o/h$1;-><init>(Lcom/piriform/ccleaner/o/h;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/piriform/ccleaner/o/h;->b()Lf/d;

    move-result-object v0

    .line 13052
    sget-object v1, Lf/d/a/af$a;->a:Lf/d/a/af;

    .line 12424
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/l/c;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/l/c;",
            ")",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/o/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/piriform/ccleaner/o/h$2;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/o/h$2;-><init>(Lcom/piriform/ccleaner/o/h;Lcom/piriform/ccleaner/l/c;)V

    invoke-static {v0}, Lf/d;->a(Ljava/util/concurrent/Callable;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)Lf/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .line 12060
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a:Landroid/net/Uri;

    .line 12063
    invoke-static {}, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 12065
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 12060
    invoke-static {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/p/a/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lf/d;

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/piriform/ccleaner/o/h;->c()Lf/c/e;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/p/a/c;->a(Lf/c/e;)Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 12389
    new-instance v1, Lf/d/a/ae;

    invoke-direct {v1}, Lf/d/a/ae;-><init>()V

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method final a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h;->c:Landroid/content/ContentResolver;

    const-string/jumbo v1, "com.piriform.ccleaner.settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 109
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to apply operations"

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "repo_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "cp_pid"

    invoke-static {}, Lcom/piriform/ccleaner/data/CCleanerContentProvider;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/piriform/ccleaner/o/h;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v3, "uri"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "Failed to apply operations"

    invoke-interface {v0, v2, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-array v0, v4, [Landroid/content/ContentProviderResult;

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_1
.end method

.method public final b()Lf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 55
    .line 13070
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/piriform/ccleaner/p/a/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lf/d;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/piriform/ccleaner/o/h;->c()Lf/c/e;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/p/a/c;->a(Lf/c/e;)Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/piriform/ccleaner/l/c;)V
    .locals 6

    .prologue
    .line 101
    .line 13129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13142
    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a:Landroid/net/Uri;

    .line 13143
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 13144
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->a()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 13145
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 13130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/o/h;->a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 102
    return-void
.end method
