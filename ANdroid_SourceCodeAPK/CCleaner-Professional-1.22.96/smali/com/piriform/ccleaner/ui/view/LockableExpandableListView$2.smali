.class final Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$2;->b:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$2;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 339
    return-void
.end method
