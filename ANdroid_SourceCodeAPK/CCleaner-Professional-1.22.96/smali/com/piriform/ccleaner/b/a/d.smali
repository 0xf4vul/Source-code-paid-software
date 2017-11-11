.class public final Lcom/piriform/ccleaner/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/n/c;

.field final b:Lcom/google/gson/e;

.field private final c:Lcom/piriform/ccleaner/b/a/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/n/c;Lcom/piriform/ccleaner/b/a/g;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/b/a/d;->a:Lcom/piriform/ccleaner/n/c;

    .line 15
    iput-object p2, p0, Lcom/piriform/ccleaner/b/a/d;->c:Lcom/piriform/ccleaner/b/a/g;

    .line 16
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/b/a/d;->b:Lcom/google/gson/e;

    .line 17
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/d;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/d;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "guid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 1008
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/d;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v2, "guid"

    invoke-virtual {v1, v2, v0}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    monitor-exit p0

    .line 44
    :cond_1
    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
