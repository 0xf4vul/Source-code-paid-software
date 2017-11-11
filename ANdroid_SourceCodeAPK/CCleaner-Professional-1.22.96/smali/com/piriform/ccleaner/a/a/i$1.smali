.class final Lcom/piriform/ccleaner/a/a/i$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/a/a/i;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/a/a/i;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/i$1;->a:Lcom/piriform/ccleaner/a/a/i;

    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1035
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i$1;->a:Lcom/piriform/ccleaner/a/a/i;

    .line 1092
    iget-object v0, v0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1035
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/i$1;->b()V

    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i$1;->a:Lcom/piriform/ccleaner/a/a/i;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/a/a/i;->a(Lcom/piriform/ccleaner/a/a/i;Lcom/piriform/ccleaner/core/data/AndroidPackage;)V

    goto :goto_0
.end method
