.class final Lcom/piriform/ccleaner/scheduler/o$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/o;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/o;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/o$1;->a:Lcom/piriform/ccleaner/scheduler/o;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 41
    const-string/jumbo v0, "Problem updating scheduled clean alarms"

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/scheduler/o$1;->logToCrashlytics(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Problem updating scheduled clean alarms"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 33
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 1036
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/o$1;->a:Lcom/piriform/ccleaner/scheduler/o;

    .line 2053
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/piriform/ccleaner/l/c;->a(J)Ljava/util/Date;

    move-result-object v0

    .line 2054
    :goto_0
    if-nez v0, :cond_1

    .line 2055
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Cancelling all alarms as nextAlarmTime is null"

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    .line 2056
    iget-object v0, v1, Lcom/piriform/ccleaner/scheduler/o;->a:Lcom/piriform/ccleaner/alarm/c;

    sget-object v1, Lcom/piriform/ccleaner/alarm/g;->b:Lcom/piriform/ccleaner/alarm/g;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/d;)V

    :goto_1
    return-void

    .line 2053
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2058
    :cond_1
    invoke-static {p1}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Lcom/piriform/ccleaner/l/c;)Ljava/lang/String;

    move-result-object v2

    .line 2059
    sget-object v3, Lcom/piriform/ccleaner/alarm/g;->b:Lcom/piriform/ccleaner/alarm/g;

    invoke-static {v3}, Lcom/piriform/ccleaner/alarm/a;->a(Lcom/piriform/ccleaner/alarm/d;)Lcom/piriform/ccleaner/alarm/a$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/alarm/a$a;->a(Ljava/util/Date;)Lcom/piriform/ccleaner/alarm/a$a;

    move-result-object v0

    .line 2096
    iput-object v2, v0, Lcom/piriform/ccleaner/alarm/a$a;->c:Ljava/lang/String;

    .line 2059
    invoke-virtual {v0}, Lcom/piriform/ccleaner/alarm/a$a;->a()Lcom/piriform/ccleaner/alarm/a;

    move-result-object v0

    .line 2060
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Scheduler Service setting next alarm for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    .line 2061
    iget-object v1, v1, Lcom/piriform/ccleaner/scheduler/o;->a:Lcom/piriform/ccleaner/alarm/c;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/a;)V

    goto :goto_1
.end method
