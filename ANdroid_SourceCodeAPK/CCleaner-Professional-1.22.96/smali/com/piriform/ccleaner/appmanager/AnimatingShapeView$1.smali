.class final Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$1;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$1;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(F)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 47
    return-void
.end method
