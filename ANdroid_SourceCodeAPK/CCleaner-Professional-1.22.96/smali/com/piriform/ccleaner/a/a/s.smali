.class public final Lcom/piriform/ccleaner/a/a/s;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/k;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/k;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/piriform/ccleaner/a/p;

.field private final l:Landroid/content/pm/PackageManager;

.field private final m:Lcom/piriform/ccleaner/m/m;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/p;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->c:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 42
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/s;->k:Lcom/piriform/ccleaner/a/p;

    .line 43
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/s;->l:Landroid/content/pm/PackageManager;

    .line 44
    iput-object p4, p0, Lcom/piriform/ccleaner/a/a/s;->m:Lcom/piriform/ccleaner/m/m;

    .line 45
    return-void
.end method

.method private t()V
    .locals 6

    .prologue
    .line 63
    .line 1053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 63
    const v1, 0x7f090010

    iget v2, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 63
    invoke-interface {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/s;->a(Ljava/lang/String;JI)V

    .line 66
    return-void
.end method

.method private u()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->m:Lcom/piriform/ccleaner/m/m;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/m/m;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/s;->l:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/s;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/k;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/k;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 102
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/s;->k:Lcom/piriform/ccleaner/a/p;

    .line 5173
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5175
    invoke-static {p1}, Lcom/piriform/ccleaner/a/p;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 5177
    new-array v4, v10, [Ljava/lang/String;

    .line 5178
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    .line 5210
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 5211
    const-string/jumbo v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5212
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5213
    const-string/jumbo v1, "suggestions"

    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5215
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 5180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/k;

    .line 5181
    const/4 v7, 0x0

    .line 6017
    iget-wide v8, v0, Lcom/piriform/ccleaner/core/data/k;->a:J

    .line 5181
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 5182
    iget-object v7, v2, Lcom/piriform/ccleaner/a/p;->a:Landroid/content/ContentResolver;

    const-string/jumbo v8, "_id = ?"

    invoke-virtual {v7, v1, v8, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 5183
    if-ne v7, v10, :cond_1

    .line 5184
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6111
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6112
    iget v0, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    .line 6113
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/s;->t()V

    .line 107
    return-object v3
.end method

.method public final b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/a/a/s;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    .line 3053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 3227
    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/a;->e:Lcom/piriform/ccleaner/a/h;

    .line 4226
    iget v3, v3, Lcom/piriform/ccleaner/a/h;->y:I

    .line 2048
    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5053
    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 2049
    const v4, 0x7f080042

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/s;->a(Ljava/lang/String;)V

    .line 2051
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/s;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->o:Landroid/graphics/drawable/Drawable;

    .line 2053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->k:Lcom/piriform/ccleaner/a/p;

    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/a/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2054
    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/s;->k:Lcom/piriform/ccleaner/a/p;

    .line 5094
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5095
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 5096
    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/a/p;->a(Landroid/app/SearchableInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2054
    :cond_0
    iput-object v4, p0, Lcom/piriform/ccleaner/a/a/s;->j:Ljava/util/List;

    .line 2055
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    .line 2057
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/s;->t()V

    .line 2059
    iget v0, p0, Lcom/piriform/ccleaner/a/a/s;->n:I

    if-lez v0, :cond_1

    move v0, v1

    .line 70
    :goto_1
    if-eqz v0, :cond_2

    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 2059
    goto :goto_1

    .line 70
    :cond_2
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->b:I

    goto :goto_2
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/s;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->i:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/s;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
