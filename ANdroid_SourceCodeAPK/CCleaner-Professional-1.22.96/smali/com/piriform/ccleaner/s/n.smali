.class public final Lcom/piriform/ccleaner/s/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/s/r;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/piriform/ccleaner/s/h;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/s/n;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/s/n;->b:Lcom/piriform/ccleaner/s/h;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/s/n;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a([Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    array-length v5, p1

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, p1, v3

    .line 1064
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/.?Android/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 1065
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1069
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/piriform/ccleaner/s/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 56
    :goto_1
    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Lcom/piriform/ccleaner/s/l;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/s/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1069
    goto :goto_1

    .line 60
    :cond_3
    return-object v4
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/s/n;->b:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/piriform/ccleaner/s/n;->a:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 1041
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1042
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 1043
    if-eqz v4, :cond_0

    .line 1044
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    .line 1048
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 1035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/s/n;->a([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 28
    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
