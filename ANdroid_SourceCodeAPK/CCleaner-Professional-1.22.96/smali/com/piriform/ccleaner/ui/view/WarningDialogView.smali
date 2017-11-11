.class public Lcom/piriform/ccleaner/ui/view/WarningDialogView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/view/WarningDialogView$a;,
        Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;
    }
.end annotation


# instance fields
.field public a:Lcom/piriform/ccleaner/ui/view/WarningDialogView$a;

.field private b:Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    const v1, 0x7f03009a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 43
    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->setBackgroundColor(I)V

    .line 44
    invoke-virtual {p0, v3}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->setClickable(Z)V

    .line 45
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->setPadding(IIII)V

    .line 1016
    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->c:Landroid/view/View;

    .line 2016
    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->d:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->b:Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)Lcom/piriform/ccleaner/ui/view/WarningDialogView$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a:Lcom/piriform/ccleaner/ui/view/WarningDialogView$a;

    return-object v0
.end method


# virtual methods
.method public final a(IILandroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 82
    .line 3016
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/Button;

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 84
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public final a(ILcom/piriform/ccleaner/ui/view/WarningDialogView$b;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;-><init>(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V

    .line 64
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->b:Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;

    .line 65
    const v1, 0x7f10017b

    invoke-virtual {p0, p1, v1, v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(IILandroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogPosition()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHidingAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/piriform/ccleaner/ui/a;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getShowingAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lcom/piriform/ccleaner/ui/a;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-void
.end method
