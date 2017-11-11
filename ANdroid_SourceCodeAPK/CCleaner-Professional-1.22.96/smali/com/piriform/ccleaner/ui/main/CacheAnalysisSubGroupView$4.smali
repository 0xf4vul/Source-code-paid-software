.class final Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;I)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    iput p2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->a:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->c(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->a:I

    iget v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->requestLayout()V

    goto :goto_0
.end method

.method public final willChangeBounds()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method
