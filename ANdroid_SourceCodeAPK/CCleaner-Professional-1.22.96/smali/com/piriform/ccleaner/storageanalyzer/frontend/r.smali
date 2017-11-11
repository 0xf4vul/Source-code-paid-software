.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/r;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/frontend/h;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/piriform/ccleaner/storageanalyzer/a;

.field private final b:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

.field private final c:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/a;Lcom/piriform/ccleaner/storageanalyzer/frontend/t;Lcom/piriform/ccleaner/storageanalyzer/frontend/s;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->f:Z

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 19
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    .line 20
    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->c:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/a;->a()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 2

    .prologue
    .line 9
    .line 10025
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->c:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    invoke-static {p1, v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->a(Landroid/view/ViewGroup;Lcom/piriform/ccleaner/storageanalyzer/frontend/t;Lcom/piriform/ccleaner/storageanalyzer/frontend/s;)Lcom/piriform/ccleaner/storageanalyzer/frontend/h;

    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 8

    .prologue
    .line 9
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;

    .line 8030
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/storageanalyzer/a;->a(I)Lcom/piriform/ccleaner/storageanalyzer/c;

    move-result-object v1

    .line 8031
    iget-boolean v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->f:Z

    .line 8053
    invoke-interface {v1}, Lcom/piriform/ccleaner/storageanalyzer/c;->a()Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v3

    .line 8054
    iget-object v4, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->p:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    .line 9041
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/s$1;->a:[I

    invoke-virtual {v3}, Lcom/piriform/ccleaner/storageanalyzer/f;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 9059
    invoke-static {v3}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;->b(Lcom/piriform/ccleaner/storageanalyzer/f;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 9043
    :pswitch_0
    const v0, 0x7f0200d1

    .line 8054
    :goto_0
    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 8056
    iget-object v4, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    .line 9089
    if-eqz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8056
    :goto_1
    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setAlpha(F)V

    .line 8058
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->o:Lcom/piriform/ccleaner/ui/view/c;

    iget-object v4, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->p:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    invoke-static {v3}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(I)V

    .line 8059
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->o:Lcom/piriform/ccleaner/ui/view/c;

    const/4 v4, 0x0

    invoke-interface {v1}, Lcom/piriform/ccleaner/storageanalyzer/c;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(ILjava/lang/CharSequence;)V

    .line 8061
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;

    invoke-direct {v1, p1, v3}, Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/h;Lcom/piriform/ccleaner/storageanalyzer/f;)V

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8067
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setClickable(Z)V

    .line 9
    return-void

    .line 9045
    :pswitch_1
    const v0, 0x7f0200d5

    goto :goto_0

    .line 9047
    :pswitch_2
    const v0, 0x7f0200f0

    goto :goto_0

    .line 9049
    :pswitch_3
    const v0, 0x7f020131

    goto :goto_0

    .line 9051
    :pswitch_4
    const v0, 0x7f0200e1

    goto :goto_0

    .line 9053
    :pswitch_5
    const v0, 0x7f0200d2

    goto :goto_0

    .line 9055
    :pswitch_6
    const v0, 0x7f0200c9

    goto :goto_0

    .line 9057
    :pswitch_7
    const v0, 0x7f020114

    goto :goto_0

    .line 9089
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_1

    .line 9041
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/r;->f:Z

    .line 7636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 47
    return-void
.end method
