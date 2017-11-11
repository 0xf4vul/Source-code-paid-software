.class final Lcom/piriform/ccleaner/cleaning/advanced/ag$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/ag;->toUpdatedStepsRepository(Ljava/util/List;)Lf/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

.field final synthetic val$logs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->val$logs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->val$logs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->P:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 72
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->access$100(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->access$200(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/cleaning/advanced/ai;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ai;->clearFailures(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/ag$2$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ag$2;)V

    .line 70
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->access$200(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/cleaning/advanced/ai;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->val$logs:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, p1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ai;->update(Ljava/util/List;Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/advanced/u;)V

    goto :goto_0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->call(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
