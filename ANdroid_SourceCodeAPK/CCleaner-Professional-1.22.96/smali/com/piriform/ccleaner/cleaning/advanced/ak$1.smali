.class final Lcom/piriform/ccleaner/cleaning/advanced/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/ak;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/ak;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ak;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ak;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak;->hide()V

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ak;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/ak;)Lcom/piriform/ccleaner/cleaning/advanced/ak$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak$a;->gotIt()V

    .line 32
    return-void
.end method
