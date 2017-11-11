.class final Lcom/piriform/ccleaner/scheduler/l$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/core/a/p",
        "<",
        "Lcom/piriform/ccleaner/professional/m;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/l;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/l;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/l$1;->a:Lcom/piriform/ccleaner/scheduler/l;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 46
    const-string/jumbo v0, "Failed to load schedules"

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/scheduler/l$1;->logToCrashlytics(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Failed to load schedules"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 43
    check-cast p1, Lcom/piriform/ccleaner/core/a/p;

    .line 2014
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/p;->a:Ljava/lang/Object;

    .line 1052
    check-cast v0, Lcom/piriform/ccleaner/professional/m;

    .line 2018
    iget-object v1, p1, Lcom/piriform/ccleaner/core/a/p;->b:Ljava/lang/Object;

    .line 1053
    check-cast v1, Ljava/util/List;

    .line 1054
    if-nez v1, :cond_0

    .line 1055
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/l$1;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 2028
    iget-object v2, v2, Lcom/piriform/ccleaner/scheduler/l;->c:Lcom/piriform/ccleaner/b/e;

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\nMysteriously null List of Scheduled Cleans: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/piriform/ccleaner/scheduler/l$1;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 3028
    iget-object v4, v4, Lcom/piriform/ccleaner/scheduler/l;->g:Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 1058
    :cond_0
    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/l$1;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 4028
    iget-object v2, v2, Lcom/piriform/ccleaner/scheduler/l;->d:Lcom/piriform/ccleaner/scheduler/l$a;

    .line 1058
    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/m;->a()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/piriform/ccleaner/scheduler/l$a;->a(Ljava/util/List;Z)V

    .line 43
    return-void
.end method
