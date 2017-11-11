.class final Lcom/piriform/ccleaner/p/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/d;
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
.field final synthetic a:Lcom/piriform/ccleaner/p/d;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/p/d;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/p/d$1;->a:Lcom/piriform/ccleaner/p/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 24
    .line 1027
    iget-object v0, p0, Lcom/piriform/ccleaner/p/d$1;->a:Lcom/piriform/ccleaner/p/d;

    .line 2008
    iget-object v1, v0, Lcom/piriform/ccleaner/p/d;->b:Lf/c/e;

    .line 1027
    iget-object v0, p0, Lcom/piriform/ccleaner/p/d$1;->a:Lcom/piriform/ccleaner/p/d;

    .line 3008
    iget-object v0, v0, Lcom/piriform/ccleaner/p/d;->a:Lf/i/a;

    .line 3216
    iget-object v0, v0, Lf/i/a;->b:Lf/i/c;

    .line 4082
    iget-object v2, v0, Lf/i/c;->a:Ljava/lang/Object;

    .line 4196
    if-eqz v2, :cond_0

    invoke-static {v2}, Lf/d/a/d;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lf/d/a/d;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3217
    :goto_0
    if-eqz v0, :cond_1

    .line 3218
    invoke-static {v2}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1027
    :goto_1
    invoke-interface {v1, v0}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    .line 24
    return-object v0

    .line 4196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3220
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
