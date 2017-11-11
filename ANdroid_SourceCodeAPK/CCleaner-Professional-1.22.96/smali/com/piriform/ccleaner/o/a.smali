.class public final Lcom/piriform/ccleaner/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/o/b;
.implements Lcom/piriform/ccleaner/o/c;


# instance fields
.field final a:Lcom/piriform/ccleaner/b/e;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Lcom/piriform/ccleaner/alarm/f;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/alarm/f;Lcom/piriform/ccleaner/b/e;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/piriform/ccleaner/o/a;->b:Landroid/content/ContentResolver;

    .line 34
    iput-object p2, p0, Lcom/piriform/ccleaner/o/a;->c:Lcom/piriform/ccleaner/alarm/f;

    .line 35
    iput-object p3, p0, Lcom/piriform/ccleaner/o/a;->a:Lcom/piriform/ccleaner/b/e;

    .line 36
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/o/a;->b:Landroid/content/ContentResolver;

    const-string/jumbo v1, "com.piriform.ccleaner.settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 94
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to apply operations"

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/o/a;->a:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "repo_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/o/a;->a:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "cp_pid"

    invoke-static {}, Lcom/piriform/ccleaner/data/CCleanerContentProvider;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/piriform/ccleaner/o/a;->a:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v3, "uri"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/o/a;->a:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "Failed to apply operations"

    invoke-interface {v0, v2, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_1
.end method

.method private static b(Lcom/piriform/ccleaner/alarm/d;)Landroid/content/ContentProviderOperation;
    .locals 5

    .prologue
    .line 120
    sget-object v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider$a;->a:Landroid/net/Uri;

    .line 121
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "recipient = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 122
    invoke-interface {p0}, Lcom/piriform/ccleaner/alarm/d;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/alarm/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    .line 4070
    iget-object v0, p0, Lcom/piriform/ccleaner/o/a;->b:Landroid/content/ContentResolver;

    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$a;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/piriform/ccleaner/data/CCleanerContentProvider$a;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/piriform/ccleaner/p/a/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lf/d;

    move-result-object v0

    .line 5055
    new-instance v1, Lcom/piriform/ccleaner/o/a$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/o/a$1;-><init>(Lcom/piriform/ccleaner/o/a;)V

    .line 51
    invoke-static {v1}, Lcom/piriform/ccleaner/p/a/c;->a(Lf/c/e;)Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 3

    .prologue
    .line 40
    .line 1106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2041
    iget-object v1, p1, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    .line 1107
    invoke-static {v1}, Lcom/piriform/ccleaner/o/a;->b(Lcom/piriform/ccleaner/alarm/d;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$a;->a:Landroid/net/Uri;

    .line 2128
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2129
    invoke-static {p1}, Lcom/piriform/ccleaner/alarm/f;->a(Lcom/piriform/ccleaner/alarm/a;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2130
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/o/a;->a(Ljava/util/ArrayList;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/alarm/d;)V
    .locals 2

    .prologue
    .line 45
    .line 3114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3115
    invoke-static {p1}, Lcom/piriform/ccleaner/o/a;->b(Lcom/piriform/ccleaner/alarm/d;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/o/a;->a(Ljava/util/ArrayList;)V

    .line 46
    return-void
.end method
