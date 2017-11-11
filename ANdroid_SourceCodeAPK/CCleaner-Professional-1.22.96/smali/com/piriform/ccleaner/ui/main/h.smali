.class public final Lcom/piriform/ccleaner/ui/main/h;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/piriform/ccleaner/ui/main/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/piriform/ccleaner/core/a/h;

.field private final b:Lcom/piriform/ccleaner/ui/main/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Lcom/piriform/ccleaner/ui/main/i;)V
    .locals 6

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/core/a/h;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/a/h;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Z)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    .line 32
    iput-object p5, p0, Lcom/piriform/ccleaner/ui/main/h;->b:Lcom/piriform/ccleaner/ui/main/i;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 65
    .line 8102
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    .line 65
    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 4

    .prologue
    .line 21
    .line 11037
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 11038
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/h;->b:Lcom/piriform/ccleaner/ui/main/i;

    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->j:Lcom/piriform/ccleaner/core/a/g;

    invoke-static {p2, v0}, Lcom/piriform/ccleaner/core/a/g;->a(ILcom/piriform/ccleaner/core/a/g;)Lcom/piriform/ccleaner/core/a/g;

    move-result-object v0

    .line 12030
    sget-object v3, Lcom/piriform/ccleaner/ui/main/i$1;->a:[I

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/g;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 12048
    new-instance v0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    iget-object v2, v2, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;)V

    .line 11039
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/ui/main/k;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/ui/main/k;-><init>(Lcom/piriform/ccleaner/ui/main/j;)V

    .line 21
    return-object v1

    .line 12032
    :pswitch_0
    new-instance v0, Lcom/piriform/ccleaner/ui/main/g;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/ui/main/g;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/main/i;)V

    goto :goto_0

    .line 12034
    :pswitch_1
    iget-object v0, v2, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/ui/main/d;->a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;)Lcom/piriform/ccleaner/ui/main/d;

    move-result-object v0

    goto :goto_0

    .line 12036
    :pswitch_2
    iget-object v0, v2, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/ui/main/d;->b(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;)Lcom/piriform/ccleaner/ui/main/d;

    move-result-object v0

    goto :goto_0

    .line 12038
    :pswitch_3
    iget-object v0, v2, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    iget-object v2, v2, Lcom/piriform/ccleaner/ui/main/i;->c:Lcom/piriform/ccleaner/b/b/b;

    invoke-static {v1, v0, v2}, Lcom/piriform/ccleaner/ui/main/d;->a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;Lcom/piriform/ccleaner/b/b/b;)Lcom/piriform/ccleaner/ui/main/d;

    move-result-object v0

    goto :goto_0

    .line 12040
    :pswitch_4
    iget-object v0, v2, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    sget v2, Lcom/piriform/ccleaner/ui/main/a$a;->a:I

    invoke-static {v1, v0, v2}, Lcom/piriform/ccleaner/ui/main/a;->a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)Lcom/piriform/ccleaner/ui/main/a;

    move-result-object v0

    goto :goto_0

    .line 12042
    :pswitch_5
    iget-object v0, v2, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    sget v2, Lcom/piriform/ccleaner/ui/main/a$a;->b:I

    invoke-static {v1, v0, v2}, Lcom/piriform/ccleaner/ui/main/a;->a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)Lcom/piriform/ccleaner/ui/main/a;

    move-result-object v0

    goto :goto_0

    .line 12044
    :pswitch_6
    new-instance v0, Lcom/piriform/ccleaner/ui/main/o;

    iget-object v2, v2, Lcom/piriform/ccleaner/ui/main/i;->b:Lcom/piriform/ccleaner/a;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/ui/main/o;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/a;)V

    goto :goto_0

    .line 12046
    :pswitch_7
    new-instance v0, Lcom/piriform/ccleaner/ui/main/m;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/ui/main/m;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 12030
    nop

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

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 3

    .prologue
    .line 21
    check-cast p1, Lcom/piriform/ccleaner/ui/main/k;

    .line 10057
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v1

    .line 10058
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/core/a/h;->b(I)Lcom/piriform/ccleaner/core/a/o;

    move-result-object v2

    .line 11016
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/main/k;->a:Landroid/view/View;

    check-cast v0, Lcom/piriform/ccleaner/ui/main/j;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/ui/main/j;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V

    .line 10060
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/main/k;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 8636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 79
    return-void
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 7050
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 8038
    iget v0, v0, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;",
            "Lcom/piriform/ccleaner/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 9092
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/core/a/b;)I

    move-result v0

    .line 9652
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 89
    return-void
.end method
