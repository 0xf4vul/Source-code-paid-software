.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

.field final synthetic c:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Landroid/view/View;Lcom/piriform/ccleaner/ui/view/LastCleanedView;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;->c:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;->b:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 258
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;->b:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->setTopPadding(I)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method
