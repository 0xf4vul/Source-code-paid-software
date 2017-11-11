.class public Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/support/design/widget/FloatingActionButton;

.field d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

.field e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

.field final f:Landroid/graphics/Rect;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

.field private final k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->k:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->f:Landroid/graphics/Rect;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->j:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a()Landroid/animation/Animator;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 207
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p2, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 8213
    new-instance v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$4;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)V

    .line 208
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a:Landroid/view/View;

    .line 2016
    const v1, 0x7f10008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 3016
    const v1, 0x7f100152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->g:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 4016
    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->h:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 5016
    const v1, 0x7f100154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->i:Landroid/view/View;

    .line 6016
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 7016
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    check-cast v0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 8016
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    check-cast v0, Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->setMessage(I)V

    .line 76
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 8085
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->getMeasuredWidth()I

    move-result v0

    .line 8086
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->getMeasuredHeight()I

    move-result v1

    .line 8088
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 8089
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 8090
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 8092
    iget-object v5, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->f:Landroid/graphics/Rect;

    sub-int v6, v0, v2

    sub-int/2addr v6, v3

    sub-int v2, v1, v2

    sub-int/2addr v2, v4

    sub-int/2addr v0, v3

    sub-int/2addr v1, v4

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    return-void
.end method

.method public setButtonClickListener(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->j:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    .line 171
    return-void
.end method

.method public setButtonsEnabled(Z)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 179
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 180
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 181
    return-void
.end method

.method public setDialogListener(Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1, p1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(ILcom/piriform/ccleaner/ui/view/WarningDialogView$b;)V

    .line 193
    return-void
.end method

.method public setDisableButtonVisible(Z)V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void

    .line 188
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnableButtonVisible(Z)V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
