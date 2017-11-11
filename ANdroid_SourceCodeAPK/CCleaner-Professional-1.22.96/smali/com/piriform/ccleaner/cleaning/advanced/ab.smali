.class public final Lcom/piriform/ccleaner/cleaning/advanced/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final advancedCleaningNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/cleaning/advanced/ab;

    .line 46
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    iget-object v1, p1, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final executeWith(Landroid/view/accessibility/AccessibilityEvent;)Lcom/piriform/ccleaner/cleaning/advanced/aa;
    .locals 5

    .prologue
    .line 17
    new-instance v2, Lcom/piriform/ccleaner/cleaning/advanced/aa;

    invoke-direct {v2}, Lcom/piriform/ccleaner/cleaning/advanced/aa;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/m;

    .line 21
    :try_start_0
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder()Lcom/piriform/ccleaner/cleaning/advanced/ac;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ac;->findExecutableNodeMatching(Landroid/view/accessibility/AccessibilityEvent;Lcom/piriform/ccleaner/cleaning/advanced/m;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction()Lcom/piriform/ccleaner/cleaning/advanced/r;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/piriform/ccleaner/cleaning/advanced/r;->execute(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    .line 23
    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->from(Lcom/piriform/ccleaner/cleaning/advanced/m;Z)Lcom/piriform/ccleaner/cleaning/advanced/aa$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    :goto_1
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/m;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/aa;->add(Lcom/piriform/ccleaner/cleaning/advanced/aa$a;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->from(Ljava/lang/Exception;)Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    move-result-object v1

    goto :goto_1

    .line 32
    :cond_0
    return-object v2
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ab;->advancedCleaningNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
