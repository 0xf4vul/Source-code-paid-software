.class final Lcom/piriform/ccleaner/cleaning/advanced/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/ac;


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ae;->resources:Landroid/content/res/Resources;

    .line 18
    return-void
.end method

.method private extractNodeToClick(Ljava/util/List;)Landroid/view/accessibility/AccessibilityNodeInfo;
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
    .line 66
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/z;

    const-string/jumbo v1, "Zero nodes found"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 70
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/aj;

    const-string/jumbo v1, "More than one node found"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
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
    .line 78
    :goto_0
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/z;

    const-string/jumbo v1, "Failed to find clickable node"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    return-object p1

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    goto :goto_0
.end method

.method private findNode(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;
    .locals 3
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
    .line 29
    invoke-virtual {p2}, Lcom/piriform/ccleaner/cleaning/advanced/m;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/cleaning/advanced/ae;->findNodeByText(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 35
    invoke-virtual {p2}, Lcom/piriform/ccleaner/cleaning/advanced/m;->markAsUsed()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private findNodeByText(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;
    .locals 3
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
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ae;->resources:Landroid/content/res/Resources;

    invoke-virtual {p2}, Lcom/piriform/ccleaner/cleaning/advanced/m;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ae;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/ae;->removesNoneExactMatches(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private matchesExactly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removesNoneExactMatches(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 53
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ae;->matchesExactly(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    return-object v1
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
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/cleaning/advanced/ae;->findNode(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ae;->extractNodeToClick(Ljava/util/List;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ae;->findClickableNodeIn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
