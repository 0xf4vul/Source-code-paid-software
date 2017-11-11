.class public final Lcom/piriform/ccleaner/core/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/b/i$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/i;->a:Landroid/content/ContentResolver;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/core/b/i;->b:Landroid/net/Uri;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/piriform/ccleaner/core/b/i$a;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;",
            "Lcom/piriform/ccleaner/core/b/i$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/g;

    .line 27
    if-eqz p2, :cond_1

    .line 28
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v1, v5}, Lcom/piriform/ccleaner/core/b/i$a;->c(II)V

    move v1, v3

    .line 1039
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "_id=\'"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1040
    iget-object v7, p0, Lcom/piriform/ccleaner/core/b/i;->a:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/piriform/ccleaner/core/b/i;->b:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    .line 30
    :goto_1
    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1040
    goto :goto_1

    .line 35
    :cond_3
    return-object v4
.end method
