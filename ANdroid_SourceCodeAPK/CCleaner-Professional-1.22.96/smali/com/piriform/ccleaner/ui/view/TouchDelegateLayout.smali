.class public Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->a:Landroid/graphics/Rect;

    .line 16
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    invoke-virtual {p0, v3}, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->a:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/view/TouchDelegateLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 24
    return-void
.end method
