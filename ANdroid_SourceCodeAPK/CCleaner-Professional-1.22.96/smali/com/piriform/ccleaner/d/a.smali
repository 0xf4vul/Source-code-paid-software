.class public final Lcom/piriform/ccleaner/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/d/a/a;
.implements Lcom/piriform/ccleaner/k/a/a/a;


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/f;

.field private final b:Ljava/util/concurrent/Executor;

.field private c:Lcom/piriform/ccleaner/k/a/c;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/f;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    .line 22
    iput-object p2, p0, Lcom/piriform/ccleaner/d/a;->b:Ljava/util/concurrent/Executor;

    .line 23
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    sget-object v1, Lcom/piriform/ccleaner/c;->a:Lcom/piriform/ccleaner/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/f;->a(Lcom/piriform/ccleaner/c;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/d/a;->c:Lcom/piriform/ccleaner/k/a/c;

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->c:Lcom/piriform/ccleaner/k/a/c;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->c:Lcom/piriform/ccleaner/k/a/c;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/k/a/c;->a()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/f;->a()V

    .line 39
    invoke-direct {p0}, Lcom/piriform/ccleaner/d/a;->c()V

    .line 40
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/a/f;->a(F)V

    .line 50
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/a/d;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/a/f;->a(Lcom/piriform/ccleaner/a/a/d;)V

    .line 45
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/e;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/b/e;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    sget-object v1, Lcom/piriform/ccleaner/c;->b:Lcom/piriform/ccleaner/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/f;->a(Lcom/piriform/ccleaner/c;)V

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/k/a/c;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/k/a/c;-><init>(Lcom/piriform/ccleaner/k/a/a/a;Lcom/piriform/ccleaner/b/e;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/d/a;->c:Lcom/piriform/ccleaner/k/a/c;

    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->c:Lcom/piriform/ccleaner/k/a/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/d/a;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/k/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/a/f;->a(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/d/a;->a:Lcom/piriform/ccleaner/a/f;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/f;->b()V

    .line 60
    invoke-direct {p0}, Lcom/piriform/ccleaner/d/a;->c()V

    .line 61
    return-void
.end method
