.class final Lcom/piriform/ccleaner/professional/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/e",
        "<",
        "Lcom/piriform/ccleaner/professional/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/p;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/p;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/p$1;->a:Lcom/piriform/ccleaner/professional/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p$1;->a:Lcom/piriform/ccleaner/professional/p;

    .line 1012
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    .line 25
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    .line 1035
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/professional/p$a;->a(Lcom/piriform/ccleaner/professional/m;)V

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to check pro state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/piriform/ccleaner/professional/m;

    .line 2031
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p$1;->a:Lcom/piriform/ccleaner/professional/p;

    .line 3012
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    .line 3035
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/professional/p$a;->a(Lcom/piriform/ccleaner/professional/m;)V

    .line 17
    return-void
.end method
