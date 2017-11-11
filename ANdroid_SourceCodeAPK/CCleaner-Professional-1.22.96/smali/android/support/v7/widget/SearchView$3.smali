.class final Landroid/support/v7/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1466
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$3;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 1474
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$3;->a:Landroid/support/v7/widget/SearchView;

    .line 2446
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/SearchView$d;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/SearchView$d;

    .line 2447
    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2491
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2492
    iget-object v2, v0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->a()Landroid/database/Cursor;

    move-result-object v2

    .line 2493
    if-eqz v2, :cond_1

    .line 2496
    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2498
    iget-object v3, v0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/d;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2499
    if-eqz v2, :cond_2

    .line 2502
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 2507
    :cond_1
    :goto_0
    return-void

    .line 2505
    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2509
    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1484
    return-void
.end method
