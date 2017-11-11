.class final Lcom/piriform/ccleaner/cleaning/advanced/i$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/i;->userObserver()Lcom/piriform/ccleaner/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/google/firebase/auth/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/i;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$200(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/cleaning/advanced/ai;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ai;->fetch()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    .line 72
    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$100(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/p/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 73
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->J:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/Throwable;)V

    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->FAILURE:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$300(Lcom/piriform/ccleaner/cleaning/advanced/i;Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 79
    return-void
.end method

.method public final onNext(Lcom/google/firebase/auth/i;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->b(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/google/firebase/auth/i;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/i$1;->onNext(Lcom/google/firebase/auth/i;)V

    return-void
.end method
