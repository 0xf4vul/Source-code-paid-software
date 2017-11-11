.class final Lcom/piriform/ccleaner/p/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/d",
        "<",
        "Lf/d",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/d;

.field final synthetic b:Lcom/piriform/ccleaner/p/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/p/a;Lf/d;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    iput-object p2, p0, Lcom/piriform/ccleaner/p/a$1;->a:Lf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 26
    .line 6029
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a$1;->a:Lf/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    .line 7080
    new-instance v2, Lcom/piriform/ccleaner/p/a$4;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/p/a$4;-><init>(Lcom/piriform/ccleaner/p/a;)V

    .line 7875
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v1

    .line 7876
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v3

    .line 7877
    new-instance v4, Lf/d/e/a;

    invoke-direct {v4, v1, v2, v3}, Lf/d/e/a;-><init>(Lf/c/b;Lf/c/b;Lf/c/a;)V

    .line 7879
    new-instance v1, Lf/d/a/i;

    invoke-direct {v1, v0, v4}, Lf/d/a/i;-><init>(Lf/d;Lf/e;)V

    invoke-static {v1}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    .line 6030
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    iget-object v2, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    .line 8010
    iget-object v2, v2, Lcom/piriform/ccleaner/p/a;->b:Ljava/lang/Integer;

    .line 9067
    new-instance v3, Lcom/piriform/ccleaner/p/a$3;

    invoke-direct {v3, v1, v2}, Lcom/piriform/ccleaner/p/a$3;-><init>(Lcom/piriform/ccleaner/p/a;Ljava/lang/Integer;)V

    .line 6031
    invoke-virtual {v0, v3}, Lf/d;->a(Lf/d$c;)Lf/d;

    move-result-object v0

    .line 6033
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    .line 10010
    iget-boolean v1, v1, Lcom/piriform/ccleaner/p/a;->c:Z

    .line 6033
    if-eqz v1, :cond_1

    .line 6034
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    .line 11058
    new-instance v2, Lcom/piriform/ccleaner/p/a$2;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/p/a$2;-><init>(Lcom/piriform/ccleaner/p/a;)V

    .line 6034
    invoke-virtual {v0, v2}, Lf/d;->a(Lf/c/a;)Lf/d;

    move-result-object v0

    move-object v1, v0

    .line 6040
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    .line 12010
    iget-object v0, v0, Lcom/piriform/ccleaner/p/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6040
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6041
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a$1;->b:Lcom/piriform/ccleaner/p/a;

    .line 13010
    iget-object v0, v0, Lcom/piriform/ccleaner/p/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6041
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;

    .line 6042
    if-eqz v0, :cond_0

    .line 26
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
