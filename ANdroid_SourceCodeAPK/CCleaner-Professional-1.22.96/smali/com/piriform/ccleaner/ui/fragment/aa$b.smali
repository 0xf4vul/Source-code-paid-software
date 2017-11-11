.class public final Lcom/piriform/ccleaner/ui/fragment/aa$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/aa;


# direct methods
.method protected constructor <init>(Lcom/piriform/ccleaner/ui/fragment/aa;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$b;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 181
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 183
    if-ge p3, v0, :cond_0

    move v0, v1

    .line 203
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/aa$b;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    sub-int v0, p3, v0

    invoke-static {v2, v0}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Lcom/piriform/ccleaner/ui/fragment/aa;I)I

    .line 190
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa$b;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/aa$b;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Lcom/piriform/ccleaner/ui/fragment/aa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 1038
    iget-boolean v0, v0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 190
    if-eqz v0, :cond_1

    .line 191
    const v0, 0x7f0f0001

    .line 196
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/aa$b;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/fragment/aa;->g()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    const v3, 0x7f0800ff

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/piriform/ccleaner/ui/fragment/aa$c;

    iget-object v5, p0, Lcom/piriform/ccleaner/ui/fragment/aa$b;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-direct {v4, v5, v1}, Lcom/piriform/ccleaner/ui/fragment/aa$c;-><init>(Lcom/piriform/ccleaner/ui/fragment/aa;B)V

    .line 198
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const v0, 0x7f0f0004

    goto :goto_1
.end method
