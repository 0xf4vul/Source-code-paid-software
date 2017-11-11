.class final Lcom/piriform/ccleaner/cleaning/advanced/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/w;->toNodeActions()Lf/c/e;
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
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
        ">;",
        "Lcom/piriform/ccleaner/cleaning/advanced/ab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/w;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/w;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/util/List;)Lcom/piriform/ccleaner/cleaning/advanced/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;)",
            "Lcom/piriform/ccleaner/cleaning/advanced/ab;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ab;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/w;

    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/w;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/w;)Lcom/piriform/ccleaner/cleaning/advanced/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/piriform/ccleaner/cleaning/advanced/n;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/ab;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/w$1;->call(Ljava/util/List;)Lcom/piriform/ccleaner/cleaning/advanced/ab;

    move-result-object v0

    return-object v0
.end method
