.class public final Lcom/piriform/ccleaner/cleaning/advanced/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_TYPE_SCROLL:Ljava/lang/String; = "scroll"

.field private static final STRING_RESOURCE_IDENTIFIER:Ljava/lang/String; = ":string"


# instance fields
.field private final clickAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

.field private final nodesFinderById:Lcom/piriform/ccleaner/cleaning/advanced/ac;

.field private final nodesFinderByText:Lcom/piriform/ccleaner/cleaning/advanced/ac;

.field private final scrollAction:Lcom/piriform/ccleaner/cleaning/advanced/r;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ae;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ae;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->nodesFinderByText:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ad;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ad;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->nodesFinderById:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/advanced/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->clickAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/advanced/c;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->scrollAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    .line 22
    return-void
.end method

.method private accessibilityActionForType(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/r;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->scrollAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->clickAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    goto :goto_0
.end method

.method private from(Lcom/piriform/ccleaner/cleaning/advanced/StepValue;)Lcom/piriform/ccleaner/cleaning/advanced/m;
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/m;

    iget-object v1, p1, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->id:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->isFinal:Z

    iget-object v3, p1, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->id:Ljava/lang/String;

    .line 36
    invoke-direct {p0, v3}, Lcom/piriform/ccleaner/cleaning/advanced/n;->nodesFinderForResourceType(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/ac;

    move-result-object v3

    iget-object v4, p1, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->type:Ljava/lang/String;

    .line 37
    invoke-direct {p0, v4}, Lcom/piriform/ccleaner/cleaning/advanced/n;->accessibilityActionForType(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/r;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/cleaning/advanced/m;-><init>(Ljava/lang/String;ZLcom/piriform/ccleaner/cleaning/advanced/ac;Lcom/piriform/ccleaner/cleaning/advanced/r;)V

    return-object v0
.end method

.method private nodesFinderForResourceType(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/ac;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, ":string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->nodesFinderByText:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/n;->nodesFinderById:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    goto :goto_0
.end method


# virtual methods
.method final from(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    .line 27
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/n;->from(Lcom/piriform/ccleaner/cleaning/advanced/StepValue;)Lcom/piriform/ccleaner/cleaning/advanced/m;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    return-object v1
.end method
