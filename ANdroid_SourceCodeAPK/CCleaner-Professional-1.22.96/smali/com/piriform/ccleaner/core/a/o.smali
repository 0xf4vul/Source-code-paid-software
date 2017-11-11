.class public final Lcom/piriform/ccleaner/core/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/core/a/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lcom/piriform/ccleaner/core/a/b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/piriform/ccleaner/core/a/o$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/o$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/core/a/o;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    new-instance v1, Lcom/piriform/ccleaner/core/a/o$2;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/core/a/o$2;-><init>(Lcom/piriform/ccleaner/core/a/o;Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    instance-of v0, v0, Lcom/piriform/ccleaner/ui/b/n;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    check-cast v0, Lcom/piriform/ccleaner/ui/b/n;

    .line 1146
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 2076
    iget-wide v0, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 57
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 3038
    iget-boolean v3, v0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 63
    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    return-object v1
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 131
    .line 3107
    const/4 v2, 0x0

    .line 3109
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 3110
    instance-of v1, v0, Lcom/piriform/ccleaner/ui/b/d;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/piriform/ccleaner/ui/b/d;

    .line 4059
    iget-object v1, v1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 3110
    if-eqz v1, :cond_6

    .line 3111
    check-cast v0, Lcom/piriform/ccleaner/ui/b/d;

    .line 5059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 3111
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->n()Lcom/piriform/ccleaner/a/a/d$c;

    move-result-object v0

    .line 5121
    if-nez v2, :cond_0

    .line 3112
    :goto_1
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->c:Lcom/piriform/ccleaner/a/a/d$c;

    if-eq v0, v1, :cond_4

    :goto_2
    move-object v2, v0

    .line 3116
    goto :goto_0

    .line 5123
    :cond_0
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->a:Lcom/piriform/ccleaner/a/a/d$c;

    if-ne v2, v1, :cond_2

    :cond_1
    if-ne v2, v0, :cond_2

    move-object v0, v2

    .line 5124
    goto :goto_1

    .line 5126
    :cond_2
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$c;->c:Lcom/piriform/ccleaner/a/a/d$c;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 131
    :cond_4
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method
