.class public final Lcom/piriform/ccleaner/a/a/t;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/b/a/a;
.implements Lcom/piriform/ccleaner/core/b/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/a/a/a;",
        "Lcom/piriform/ccleaner/core/b/a/a",
        "<",
        "Lcom/piriform/ccleaner/core/data/g;",
        ">;",
        "Lcom/piriform/ccleaner/core/b/i$a;"
    }
.end annotation


# static fields
.field private static final l:Landroid/net/Uri;


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/piriform/ccleaner/core/b/j;

.field private final n:Lcom/piriform/ccleaner/core/b/i;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/data/h;",
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/a;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/a/a/t;->l:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/j;Lcom/piriform/ccleaner/core/b/i;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZLcom/piriform/ccleaner/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/a/q;",
            "Lcom/piriform/ccleaner/core/b/j;",
            "Lcom/piriform/ccleaner/core/b/i;",
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/data/h;",
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/core/a;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/h;",
            ">;Z",
            "Lcom/piriform/ccleaner/b/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v1, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    if-eqz p7, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    :goto_0
    invoke-direct {p0, p1, v1, v0, p8}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->k:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/t;->m:Lcom/piriform/ccleaner/core/b/j;

    .line 70
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/t;->n:Lcom/piriform/ccleaner/core/b/i;

    .line 71
    iput-object p4, p0, Lcom/piriform/ccleaner/a/a/t;->o:Ljava/util/Map;

    .line 72
    iput-object p5, p0, Lcom/piriform/ccleaner/a/a/t;->i:Ljava/util/List;

    .line 73
    iput-object p6, p0, Lcom/piriform/ccleaner/a/a/t;->j:Ljava/util/List;

    .line 74
    iput-boolean p7, p0, Lcom/piriform/ccleaner/a/a/t;->p:Z

    .line 75
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/a/c;->f:Lcom/piriform/ccleaner/a/c;

    goto :goto_0
.end method

.method private a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->o:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;ZLcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/t;
    .locals 9

    .prologue
    .line 48
    new-instance v2, Lcom/piriform/ccleaner/core/b/e;

    sget-object v0, Lcom/piriform/ccleaner/a/a/t;->l:Landroid/net/Uri;

    invoke-direct {v2, p1, v0}, Lcom/piriform/ccleaner/core/b/e;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 49
    new-instance v3, Lcom/piriform/ccleaner/core/b/i;

    sget-object v0, Lcom/piriform/ccleaner/a/a/t;->l:Landroid/net/Uri;

    invoke-direct {v3, p1, v0}, Lcom/piriform/ccleaner/core/b/i;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v0, Lcom/piriform/ccleaner/a/a/t;

    move-object v1, p0

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/piriform/ccleaner/a/a/t;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/j;Lcom/piriform/ccleaner/core/b/i;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZLcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/h;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;",
            "Lcom/piriform/ccleaner/core/data/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/g;

    .line 5010
    iget-object v1, v0, Lcom/piriform/ccleaner/core/data/g;->a:Lcom/piriform/ccleaner/core/data/h;

    .line 5052
    sget-object v4, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    if-eq p1, v4, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 192
    :goto_1
    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5052
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 196
    :cond_3
    return-object v2
.end method

.method private t()V
    .locals 6

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/t;->v()I

    move-result v0

    .line 3053
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 102
    const v2, 0x7f090011

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v0, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/lang/String;JI)V

    .line 104
    return-void
.end method

.method private u()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Lcom/piriform/ccleaner/core/data/h;->values()[Lcom/piriform/ccleaner/core/data/h;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 108
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {}, Lcom/piriform/ccleaner/core/a;->values()[Lcom/piriform/ccleaner/core/a;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    .line 110
    iget-object v10, p0, Lcom/piriform/ccleaner/a/a/t;->m:Lcom/piriform/ccleaner/core/b/j;

    invoke-interface {v10, v9, v5}, Lcom/piriform/ccleaner/core/b/j;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->o:Ljava/util/Map;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private v()I
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Lcom/piriform/ccleaner/core/a;)I

    move-result v0

    sget-object v1, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/a/a/t;->b(Lcom/piriform/ccleaner/core/a;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a;)I
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->c:Lcom/piriform/ccleaner/core/data/h;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->n:Lcom/piriform/ccleaner/core/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/piriform/ccleaner/core/b/i;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/b/i$a;)Ljava/util/List;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/t;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5207
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/t;->u()V

    .line 5208
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/t;->t()V

    .line 204
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/core/a;)I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->b:Lcom/piriform/ccleaner/core/data/h;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)I

    move-result v0

    return v0
.end method

.method protected final c()I
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-boolean v0, p0, Lcom/piriform/ccleaner/a/a/t;->p:Z

    if-eqz v0, :cond_0

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 82
    const v1, 0x7f080043

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/t;->m:Lcom/piriform/ccleaner/core/b/j;

    invoke-interface {v1, p0}, Lcom/piriform/ccleaner/core/b/j;->a(Lcom/piriform/ccleaner/core/b/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 84
    const v1, 0x7f080044

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/t;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/t;->u()V

    .line 91
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/t;->t()V

    .line 93
    invoke-direct {p0}, Lcom/piriform/ccleaner/a/a/t;->v()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->e:I

    .line 97
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v0

    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->d:I

    goto :goto_0

    .line 97
    :cond_1
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    goto :goto_0
.end method

.method public final c(II)V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/a/a/t;->b(II)V

    .line 178
    return-void
.end method

.method public final synthetic d(II)V
    .locals 5

    .prologue
    .line 27
    .line 7053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 6146
    const v1, 0x7f080044

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/lang/String;)V

    .line 6147
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/a/a/t;->a(II)V

    .line 27
    return-void
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->m:Lcom/piriform/ccleaner/core/b/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/t;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/core/b/j;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 127
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/t;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 128
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/t;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/t;->n:Lcom/piriform/ccleaner/core/b/i;

    invoke-virtual {v3, v0, p0}, Lcom/piriform/ccleaner/core/b/i;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/b/i$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 130
    const v2, 0x7f090013

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v1, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/lang/String;JI)V

    .line 132
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Thread was interrupted while getting filtered messages "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->c:Lcom/piriform/ccleaner/a/a/d$b;

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/t;->k:Ljava/util/List;

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
