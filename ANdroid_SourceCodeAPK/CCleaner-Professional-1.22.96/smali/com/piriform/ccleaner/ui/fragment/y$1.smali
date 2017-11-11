.class final Lcom/piriform/ccleaner/ui/fragment/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/fragment/y;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/y;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/y;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/y$1;->a:Lcom/piriform/ccleaner/ui/fragment/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y$1;->a:Lcom/piriform/ccleaner/ui/fragment/y;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/y;->a(Lcom/piriform/ccleaner/ui/fragment/y;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    .line 74
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y$1;->a:Lcom/piriform/ccleaner/ui/fragment/y;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/y;->b(Lcom/piriform/ccleaner/ui/fragment/y;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y$1;->a:Lcom/piriform/ccleaner/ui/fragment/y;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/y;->c(Lcom/piriform/ccleaner/ui/fragment/y;)Lcom/piriform/ccleaner/ui/fragment/v;

    move-result-object v1

    .line 1136
    iget-object v0, v1, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1137
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p3, v0}, Lcom/piriform/ccleaner/ui/fragment/v;->a(IZ)V

    .line 79
    :goto_1
    return-void

    .line 1137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y$1;->a:Lcom/piriform/ccleaner/ui/fragment/y;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/y;->d(Lcom/piriform/ccleaner/ui/fragment/y;)Lcom/piriform/ccleaner/ui/fragment/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/x;->c(Lcom/piriform/ccleaner/settings/c;)V

    goto :goto_1
.end method
