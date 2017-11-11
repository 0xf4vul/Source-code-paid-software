.class final Lcom/piriform/ccleaner/alarm/k$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/alarm/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/alarm/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/alarm/k;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/alarm/k;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/alarm/k$1;->a:Lcom/piriform/ccleaner/alarm/k;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Problem querying alarms to re-set them"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    check-cast p1, Lcom/piriform/ccleaner/alarm/a;

    .line 1021
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 2045
    iget-object v0, p1, Lcom/piriform/ccleaner/alarm/a;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1049
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move v0, v1

    .line 1022
    :goto_0
    if-eqz v0, :cond_1

    .line 1023
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Dispatching missed alarm"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    .line 1024
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k$1;->a:Lcom/piriform/ccleaner/alarm/k;

    .line 3013
    iget-object v0, v0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    .line 1024
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/alarm/c;->c(Lcom/piriform/ccleaner/alarm/a;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1049
    goto :goto_0

    .line 1026
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Re-setting alarm"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    .line 1027
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k$1;->a:Lcom/piriform/ccleaner/alarm/k;

    .line 4013
    iget-object v0, v0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    .line 1027
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/a;)V

    goto :goto_1
.end method
