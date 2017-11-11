.class final Lcom/piriform/ccleaner/cleaning/advanced/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/ac;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractNode(Ljava/util/List;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/cleaning/advanced/z;,
            Lcom/piriform/ccleaner/cleaning/advanced/aj;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/z;

    const-string/jumbo v1, "Zero nodes found"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 45
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aj;

    const-string/jumbo v1, "More than one node found"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method private findClickableNodeIn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/cleaning/advanced/z;
        }
    .end annotation

    .prologue
    .line 52
    :goto_0
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/z;

    const-string/jumbo v1, "Failed to find clickable node"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    return-object p1

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    goto :goto_0
.end method

.method private findNode(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Lcom/piriform/ccleaner/cleaning/advanced/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p2}, Lcom/piriform/ccleaner/cleaning/advanced/m;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/cleaning/advanced/ad;->findNodeById(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 29
    invoke-virtual {p2}, Lcom/piriform/ccleaner/cleaning/advanced/m;->markAsUsed()V

    .line 30
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private findNodeById(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Lcom/piriform/ccleaner/cleaning/advanced/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/piriform/ccleaner/cleaning/advanced/m;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final findExecutableNodeMatching(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/cleaning/advanced/z;,
            Lcom/piriform/ccleaner/cleaning/advanced/aj;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/cleaning/advanced/ad;->findNode(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ad;->extractNode(Ljava/util/List;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ad;->findClickableNodeIn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
