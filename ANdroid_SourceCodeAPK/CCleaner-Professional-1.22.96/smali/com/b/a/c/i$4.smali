.class final Lcom/b/a/c/i$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/i;


# direct methods
.method constructor <init>(Lcom/b/a/c/i;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/b/a/c/i$4;->a:Lcom/b/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 744
    .line 1747
    iget-object v0, p0, Lcom/b/a/c/i$4;->a:Lcom/b/a/c/i;

    invoke-static {v0}, Lcom/b/a/c/i;->a(Lcom/b/a/c/i;)Lcom/b/a/c/j;

    move-result-object v0

    .line 2048
    invoke-virtual {v0}, Lcom/b/a/c/j;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1747
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 744
    return-object v0
.end method
