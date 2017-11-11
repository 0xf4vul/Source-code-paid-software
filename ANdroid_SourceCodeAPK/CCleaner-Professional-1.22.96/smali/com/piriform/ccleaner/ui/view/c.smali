.class public final Lcom/piriform/ccleaner/ui/view/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;B)V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/c;->setOrientation(I)V

    .line 25
    const v0, 0x7f0100af

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/view/c;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/c;->a:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/c;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/c;->addView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method private a(I)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0100b0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/view/c;->a(I)Landroid/widget/TextView;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/c;->addView(Landroid/view/View;)V

    .line 41
    return-object v0
.end method

.method public final a(ILjava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 45
    add-int/lit8 v1, p1, 0x1

    .line 46
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/c;->getChildCount()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_0
    if-lez v0, :cond_0

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/view/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public final setMainText(I)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    return-void
.end method

.method public final setMainText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method
