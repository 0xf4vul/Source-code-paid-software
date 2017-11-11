.class final Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;
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
    .line 226
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    iput p2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;->a:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->requestLayout()V

    .line 231
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final willChangeBounds()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method
