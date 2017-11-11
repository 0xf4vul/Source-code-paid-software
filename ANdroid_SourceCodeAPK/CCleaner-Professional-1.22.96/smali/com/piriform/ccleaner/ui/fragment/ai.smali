.class public final Lcom/piriform/ccleaner/ui/fragment/ai;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/ai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/piriform/ccleaner/ui/fragment/ai$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/piriform/ccleaner/ui/fragment/ai$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;Z",
            "Lcom/piriform/ccleaner/ui/fragment/ai$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    const v0, 0x7f030060

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    iput-boolean p3, p0, Lcom/piriform/ccleaner/ui/fragment/ai;->a:Z

    .line 31
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/fragment/ai;->b:Lcom/piriform/ccleaner/ui/fragment/ai$a;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/ai;)Lcom/piriform/ccleaner/ui/fragment/ai$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ai;->b:Lcom/piriform/ccleaner/ui/fragment/ai$a;

    return-object v0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/ai;->a:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ai;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/ai;->getItemViewType(I)I

    move-result v1

    .line 40
    if-nez p2, :cond_2

    .line 41
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    if-nez v1, :cond_0

    .line 43
    const v2, 0x7f03005c

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 51
    :goto_0
    if-nez v1, :cond_1

    move-object v0, v2

    .line 72
    :goto_1
    return-object v0

    .line 45
    :cond_0
    const v2, 0x7f030060

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/ai;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 1016
    const v1, 0x7f10010f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/j;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2016
    const v1, 0x7f10010b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 2209
    iget-object v3, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3016
    const v1, 0x7f100110

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    new-instance v3, Lcom/piriform/ccleaner/ui/fragment/ai$1;

    invoke-direct {v3, p0, v0}, Lcom/piriform/ccleaner/ui/fragment/ai$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/ai;Lcom/piriform/ccleaner/f/j;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    .line 72
    goto :goto_1

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x2

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/ai;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/ai;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 3265
    iget-boolean v0, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 92
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
