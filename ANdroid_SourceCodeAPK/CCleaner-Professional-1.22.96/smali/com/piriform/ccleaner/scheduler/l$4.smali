.class final Lcom/piriform/ccleaner/scheduler/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/core/a/p",
        "<",
        "Lcom/piriform/ccleaner/professional/m;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/l;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/l;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/l$4;->a:Lcom/piriform/ccleaner/scheduler/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 119
    check-cast p1, Lcom/piriform/ccleaner/core/a/p;

    .line 1122
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/l$4;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 2028
    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/l;->g:Ljava/lang/StringBuilder;

    .line 1122
    const-string/jumbo v1, "\nTuple 1 (Pro State): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3014
    iget-object v1, p1, Lcom/piriform/ccleaner/core/a/p;->a:Ljava/lang/Object;

    .line 1122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1123
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/l$4;->a:Lcom/piriform/ccleaner/scheduler/l;

    .line 3028
    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/l;->g:Ljava/lang/StringBuilder;

    .line 1123
    const-string/jumbo v1, "\nTuple 2 (List of Scheduled Cleans): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4018
    iget-object v1, p1, Lcom/piriform/ccleaner/core/a/p;->b:Ljava/lang/Object;

    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    return-void
.end method
