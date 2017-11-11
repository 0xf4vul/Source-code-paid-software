.class final Lcom/piriform/ccleaner/ui/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/a/c;
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
.field final synthetic a:Lcom/piriform/ccleaner/ui/a/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/a/c;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/c$1;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to get pro state in drawer activity"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    check-cast p1, Lcom/piriform/ccleaner/professional/m;

    .line 1057
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$1;->a:Lcom/piriform/ccleaner/ui/a/c;

    .line 1179
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/a/c;->J:Lcom/piriform/ccleaner/ui/a/g;

    .line 2127
    iput-object p1, v1, Lcom/piriform/ccleaner/ui/a/g;->a:Lcom/piriform/ccleaner/professional/m;

    .line 2128
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/a/g;->b()V

    .line 1180
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/a/c;->I:Lcom/piriform/ccleaner/ui/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/a/d;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
