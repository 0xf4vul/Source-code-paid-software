.class final Lcom/piriform/ccleaner/scheduler/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/e",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/h;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/h;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/h$1;->a:Lcom/piriform/ccleaner/scheduler/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Error loading schedule"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/h$1;->a:Lcom/piriform/ccleaner/scheduler/h;

    .line 1016
    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    .line 28
    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/h$a;->g()V

    .line 29
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 1033
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/h$1;->a:Lcom/piriform/ccleaner/scheduler/h;

    .line 2016
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/scheduler/h;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 19
    return-void
.end method
