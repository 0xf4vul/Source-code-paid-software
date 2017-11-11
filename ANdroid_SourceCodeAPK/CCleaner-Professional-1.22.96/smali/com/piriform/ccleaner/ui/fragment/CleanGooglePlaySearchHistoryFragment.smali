.class public Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;
.super Lcom/piriform/ccleaner/ui/fragment/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/aa",
        "<",
        "Lcom/piriform/ccleaner/a/a/s;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/piriform/ccleaner/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;-><init>()V

    return-void
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final J()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->b:Lcom/piriform/ccleaner/d/f;

    .line 1023
    new-instance v2, Lcom/piriform/ccleaner/k/a/g;

    iget-object v3, v1, Lcom/piriform/ccleaner/d/f;->b:Lcom/piriform/ccleaner/a/a/s;

    invoke-direct {v2, v3, v1}, Lcom/piriform/ccleaner/k/a/g;-><init>(Lcom/piriform/ccleaner/a/a/s;Lcom/piriform/ccleaner/d/f;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/k/a/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->T()V

    .line 71
    return-void
.end method

.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 5

    .prologue
    .line 18
    check-cast p1, Lcom/piriform/ccleaner/a/a/s;

    .line 1117
    iget-object v0, p1, Lcom/piriform/ccleaner/a/a/s;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/k;

    .line 1031
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->ac:Lcom/piriform/ccleaner/core/a/h;

    new-instance v3, Lcom/piriform/ccleaner/ui/b/z;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/piriform/ccleaner/ui/b/z;-><init>(Lcom/piriform/ccleaner/core/data/k;Z)V

    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v3, v0}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 1036
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 18
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/ui/activity/c;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment$1;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/activity/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->f:Landroid/widget/TextView;

    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->aa:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->ab:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->E_()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final synthetic b(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/piriform/ccleaner/a/a/s;

    .line 2063
    new-instance v0, Lcom/piriform/ccleaner/d/f;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/d/f;-><init>(Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;Lcom/piriform/ccleaner/a/a/s;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->b:Lcom/piriform/ccleaner/d/f;

    .line 18
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->ac:Lcom/piriform/ccleaner/core/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/piriform/ccleaner/core/a/h;->a(Ljava/util/List;Z)V

    .line 77
    return-void
.end method

.method protected final r_()Ljava/lang/String;
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
