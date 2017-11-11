.class public final Lcom/piriform/ccleaner/cleaning/advanced/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/o;


# instance fields
.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private overlayView:Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->windowManager:Landroid/view/WindowManager;

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method

.method private getOverlayParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 45
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const v4, 0x2060410

    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 57
    const/16 v1, 0xe

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 58
    return-object v0
.end method


# virtual methods
.method public final hide()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->overlayView:Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->overlayView:Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->overlayView:Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

    .line 42
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->overlayView:Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/h;->overlayView:Lcom/piriform/ccleaner/cleaning/advanced/ControlButtonPressAbsorbingLinearLayout;

    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/h;->getOverlayParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method
