.class public final Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/view/HeaderGridView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;->a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    .line 164
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;->a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;->a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    .line 170
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;->a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    .line 171
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 172
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 174
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 175
    return-void
.end method
