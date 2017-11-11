.class final Lcom/piriform/ccleaner/cleaning/advanced/ag$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/ag;->reportIfFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->O:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 50
    return-void
.end method
