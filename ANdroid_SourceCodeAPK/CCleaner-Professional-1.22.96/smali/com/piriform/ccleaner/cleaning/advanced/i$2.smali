.class final Lcom/piriform/ccleaner/cleaning/advanced/i$2;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/i;->stepsObserver()Lcom/piriform/ccleaner/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/cleaning/advanced/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private nodeActionExecutor:Lcom/piriform/ccleaner/cleaning/advanced/ab;

.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/i;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->K:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->B:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$402(Lcom/piriform/ccleaner/cleaning/advanced/i;Z)Z

    .line 99
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$600(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/cleaning/advanced/f;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->nodeActionExecutor:Lcom/piriform/ccleaner/cleaning/advanced/ab;

    iget-object v3, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-virtual {v1, v2, v3}, Lcom/piriform/ccleaner/cleaning/advanced/f;->walker(Lcom/piriform/ccleaner/cleaning/advanced/ab;Lcom/piriform/ccleaner/cleaning/advanced/e$a;)Lcom/piriform/ccleaner/cleaning/advanced/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$502(Lcom/piriform/ccleaner/cleaning/advanced/i;Lcom/piriform/ccleaner/cleaning/advanced/e;)Lcom/piriform/ccleaner/cleaning/advanced/e;

    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$500(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/cleaning/advanced/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/e;->start()V

    .line 101
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->L:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/Throwable;)V

    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->FAILURE:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$300(Lcom/piriform/ccleaner/cleaning/advanced/i;Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 107
    return-void
.end method

.method public final onNext(Lcom/piriform/ccleaner/cleaning/advanced/ab;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->nodeActionExecutor:Lcom/piriform/ccleaner/cleaning/advanced/ab;

    .line 90
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/piriform/ccleaner/cleaning/advanced/ab;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/i$2;->onNext(Lcom/piriform/ccleaner/cleaning/advanced/ab;)V

    return-void
.end method
