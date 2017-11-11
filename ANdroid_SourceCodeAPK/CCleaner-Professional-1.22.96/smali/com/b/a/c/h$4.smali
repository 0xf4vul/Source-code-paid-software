.class final Lcom/b/a/c/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/a/a/g/p;

.field final synthetic b:Lcom/b/a/c/h;


# direct methods
.method constructor <init>(Lcom/b/a/c/h;Lc/a/a/a/a/g/p;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/b/a/c/h$4;->b:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/h$4;->a:Lc/a/a/a/a/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 472
    .line 1475
    iget-object v0, p0, Lcom/b/a/c/h$4;->b:Lcom/b/a/c/h;

    invoke-virtual {v0}, Lcom/b/a/c/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 1481
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/b/a/c/h$4;->b:Lcom/b/a/c/h;

    iget-object v1, p0, Lcom/b/a/c/h$4;->a:Lc/a/a/a/a/g/p;

    invoke-static {v0, v1}, Lcom/b/a/c/h;->a(Lcom/b/a/c/h;Lc/a/a/a/a/g/p;)V

    .line 1483
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method
