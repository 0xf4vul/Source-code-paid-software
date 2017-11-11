.class final Lcom/b/a/c/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/i;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/i;


# direct methods
.method constructor <init>(Lcom/b/a/c/i;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/b/a/c/i$2;->a:Lcom/b/a/c/i;

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
    .line 710
    .line 1715
    iget-object v0, p0, Lcom/b/a/c/i$2;->a:Lcom/b/a/c/i;

    invoke-static {v0}, Lcom/b/a/c/i;->a(Lcom/b/a/c/i;)Lcom/b/a/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c/j;->a()Z

    .line 1716
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const/4 v0, 0x0

    .line 710
    return-object v0
.end method
