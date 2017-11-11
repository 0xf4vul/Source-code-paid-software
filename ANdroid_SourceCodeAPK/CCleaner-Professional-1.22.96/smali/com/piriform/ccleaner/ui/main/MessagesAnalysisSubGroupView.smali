.class public Lcom/piriform/ccleaner/ui/main/MessagesAnalysisSubGroupView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/ui/main/MessagesAnalysisSubGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/MessagesAnalysisSubGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/MessagesAnalysisSubGroupView;->setOrientation(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/MessagesAnalysisSubGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/piriform/ccleaner/core/a/b;->a(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public setAnalysisClickListener(Lcom/piriform/ccleaner/ui/b/d$a;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
