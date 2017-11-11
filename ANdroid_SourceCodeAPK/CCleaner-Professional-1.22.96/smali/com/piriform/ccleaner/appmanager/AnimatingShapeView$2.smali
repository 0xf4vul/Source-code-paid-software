.class public final Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$2;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$2;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    invoke-static {v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    return-void
.end method
