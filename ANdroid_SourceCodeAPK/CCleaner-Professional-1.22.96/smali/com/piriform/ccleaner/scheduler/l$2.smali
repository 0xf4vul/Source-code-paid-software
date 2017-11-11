.class final Lcom/piriform/ccleaner/scheduler/l$2;
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
        "Lcom/piriform/ccleaner/o/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/l;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/l;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/l$2;->a:Lcom/piriform/ccleaner/scheduler/l;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/l$2;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 1028
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->j:Lf/j;

    .line 65
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "Error creating new scheduled clean"

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/scheduler/l$2;->logToCrashlytics(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/l$2;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 2028
    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/l;->d:Lcom/piriform/ccleaner/scheduler/l$a;

    .line 70
    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/l$a;->f()V

    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/l$2;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 3028
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->j:Lf/j;

    .line 72
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 61
    check-cast p1, Lcom/piriform/ccleaner/o/g;

    .line 3076
    invoke-interface {p1}, Lcom/piriform/ccleaner/o/g;->b()Ljava/lang/Long;

    move-result-object v0

    .line 3077
    if-eqz v0, :cond_0

    .line 3078
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/l$2;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 4028
    iget-object v1, v1, Lcom/piriform/ccleaner/scheduler/l;->e:Lcom/piriform/ccleaner/scheduler/m;

    .line 3078
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/piriform/ccleaner/scheduler/m;->a(J)V

    .line 61
    :cond_0
    return-void
.end method
