.class final Lcom/b/a/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/g;


# direct methods
.method constructor <init>(Lcom/b/a/a/g;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/b/a/a/g$1;->a:Lcom/b/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/b/a/a/g$1;->a:Lcom/b/a/a/g;

    iget-object v0, v0, Lcom/b/a/a/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/b/a/a/g$1;->a:Lcom/b/a/a/g;

    .line 1043
    iget-object v0, v0, Lcom/b/a/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g$a;

    .line 1044
    invoke-interface {v0}, Lcom/b/a/a/g$a;->a()V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
