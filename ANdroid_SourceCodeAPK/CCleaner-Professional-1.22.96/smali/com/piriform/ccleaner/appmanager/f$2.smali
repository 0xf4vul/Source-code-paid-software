.class final enum Lcom/piriform/ccleaner/appmanager/f$2;
.super Lcom/piriform/ccleaner/appmanager/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    const v1, 0x7f080200

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/f;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 4

    .prologue
    .line 28
    .line 1249
    iget-object v0, p1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    .line 2129
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->f:Landroid/graphics/Rect;

    .line 2130
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 2131
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getDialogPosition()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 2132
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 3092
    iput v2, v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    .line 3097
    const/4 v2, 0x0

    iput v2, v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    .line 2134
    invoke-virtual {v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b()V

    .line 2136
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/a;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getShowingAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 29
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z
    .locals 1

    .prologue
    .line 23
    .line 1166
    iget-boolean v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 23
    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 23
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
