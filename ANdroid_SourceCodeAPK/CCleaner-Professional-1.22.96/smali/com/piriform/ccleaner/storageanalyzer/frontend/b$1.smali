.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/b;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    .line 1070
    iget-object v0, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iget-object v2, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    .line 1071
    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v0

    iget-object v2, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->c:Landroid/view/View;

    .line 1072
    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v0

    .line 1092
    iput v3, v0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    .line 1097
    iput v3, v0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    .line 1075
    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b()V

    .line 1077
    iget-object v0, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;->getBackgroundColor()I

    move-result v2

    .line 1078
    iget-object v0, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->c:Landroid/view/View;

    .line 2095
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2096
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 1080
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1081
    iget-object v4, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    invoke-static {v4}, Lcom/piriform/ccleaner/ui/a;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v4

    .line 1082
    iget-object v5, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    invoke-virtual {v5}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a()Landroid/animation/Animator;

    move-result-object v5

    .line 1083
    iget-object v6, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 3054
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v2, 0x1

    aput v0, v7, v2

    .line 4010
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4011
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 4012
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 3055
    new-instance v2, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$2;

    invoke-direct {v2, v6}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$2;-><init>(Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3062
    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1084
    iget-object v1, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->c:Landroid/view/View;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/a;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 1086
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1087
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1088
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1090
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 33
    return-void
.end method
