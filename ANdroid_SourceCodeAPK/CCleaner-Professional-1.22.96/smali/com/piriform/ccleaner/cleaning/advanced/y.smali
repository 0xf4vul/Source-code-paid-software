.class public final Lcom/piriform/ccleaner/cleaning/advanced/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/database/h;
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;"
        }
    .end annotation
.end field

.field public className:Ljava/lang/String;

.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->children:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->errors:Ljava/util/List;

    .line 32
    return-void
.end method

.method private static createNodeInfoWithoutChildren(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/piriform/ccleaner/cleaning/advanced/y;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/y;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/advanced/y;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->className:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->text:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->id:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/aa;->errorsFromResultMap()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->errors:Ljava/util/List;

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->children:Ljava/util/List;

    .line 76
    return-object v0
.end method

.method public static from(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/piriform/ccleaner/cleaning/advanced/y;
    .locals 4

    .prologue
    .line 35
    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/y;

    invoke-direct {v1}, Lcom/piriform/ccleaner/cleaning/advanced/y;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/piriform/ccleaner/cleaning/advanced/y;->className:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/piriform/ccleaner/cleaning/advanced/y;->text:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/piriform/ccleaner/cleaning/advanced/y;->id:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/aa;->errorsFromResultMap()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/piriform/ccleaner/cleaning/advanced/y;->errors:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 43
    iget-object v2, v1, Lcom/piriform/ccleaner/cleaning/advanced/y;->children:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/piriform/ccleaner/cleaning/advanced/y;->getAllLeafsFrom(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method

.method private static getAllLeafsFrom(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/aa;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    if-nez p1, :cond_0

    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-static {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/y;->createNodeInfoWithoutChildren(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/piriform/ccleaner/cleaning/advanced/y;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/piriform/ccleaner/cleaning/advanced/y;->getAllLeafsFrom(Lcom/piriform/ccleaner/cleaning/advanced/aa;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 64
    goto :goto_0
.end method
