.class final Lcom/piriform/ccleaner/cleaning/advanced/ag$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->call(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/piriform/ccleaner/cleaning/advanced/ag$2;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ag$2;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2$1;->this$1:Lcom/piriform/ccleaner/cleaning/advanced/ag$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2$1;->this$1:Lcom/piriform/ccleaner/cleaning/advanced/ag$2;

    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->O:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 68
    return-void
.end method
