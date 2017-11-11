.class public final Lcom/piriform/ccleaner/f/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/p;


# instance fields
.field protected final a:Lcom/piriform/ccleaner/f/m;

.field protected final b:Lcom/piriform/ccleaner/f/q;

.field public c:Z

.field public d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/io/File;

.field private final g:Lcom/piriform/ccleaner/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/piriform/ccleaner/v/b$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/v/b$a;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/f/m;",
            "Ljava/io/File;",
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/f/u;->e:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    .line 35
    iput-object p2, p0, Lcom/piriform/ccleaner/f/u;->f:Ljava/io/File;

    .line 36
    iput-object p3, p0, Lcom/piriform/ccleaner/f/u;->g:Lcom/piriform/ccleaner/v/b;

    .line 37
    new-instance v0, Lcom/piriform/ccleaner/f/q;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/f/q;-><init>(Lcom/piriform/ccleaner/f/m;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/f/u;->b:Lcom/piriform/ccleaner/f/q;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/f/u;->c:Z

    .line 39
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 1265
    iget-boolean v2, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 77
    if-eqz v2, :cond_0

    .line 2239
    iget v0, v0, Lcom/piriform/ccleaner/f/j;->d:I

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Queue;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 94
    iget-object v1, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/f/m;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 95
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/f/m;->i(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/piriform/ccleaner/f/u;->c:Z

    if-eqz v4, :cond_0

    .line 96
    invoke-interface {p1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3084
    :cond_0
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->g:Lcom/piriform/ccleaner/v/b;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/v/b;->a(Ljava/lang/Object;)Z

    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 3106
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3114
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/f/m;->f(Ljava/io/File;)J

    move-result-wide v4

    .line 3116
    iget v6, p0, Lcom/piriform/ccleaner/f/u;->i:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/piriform/ccleaner/f/u;->i:I

    .line 3117
    invoke-direct {p0, v3}, Lcom/piriform/ccleaner/f/u;->a(Ljava/io/File;)Z

    move-result v6

    .line 3118
    if-nez p2, :cond_1

    if-nez v6, :cond_2

    .line 3119
    :cond_1
    iget-wide v8, p0, Lcom/piriform/ccleaner/f/u;->h:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/piriform/ccleaner/f/u;->h:J

    .line 3122
    :cond_2
    invoke-static {v3, v4, v5, v6}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;JZ)Lcom/piriform/ccleaner/f/j;

    move-result-object v3

    .line 3123
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3108
    :cond_4
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3127
    iget-object v4, p0, Lcom/piriform/ccleaner/f/u;->b:Lcom/piriform/ccleaner/f/q;

    iget-object v5, p0, Lcom/piriform/ccleaner/f/u;->g:Lcom/piriform/ccleaner/v/b;

    invoke-virtual {v4, v3, p2, v5}, Lcom/piriform/ccleaner/f/q;->a(Ljava/io/File;ZLcom/piriform/ccleaner/v/b;)Lcom/piriform/ccleaner/f/j;

    move-result-object v4

    .line 3128
    iget-object v5, p0, Lcom/piriform/ccleaner/f/u;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3130
    iget v5, p0, Lcom/piriform/ccleaner/f/u;->i:I

    .line 3239
    iget v6, v4, Lcom/piriform/ccleaner/f/j;->d:I

    .line 3130
    add-int/2addr v5, v6

    iput v5, p0, Lcom/piriform/ccleaner/f/u;->i:I

    .line 3131
    if-nez p2, :cond_5

    invoke-direct {p0, v3}, Lcom/piriform/ccleaner/f/u;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3132
    :cond_5
    iget-wide v6, p0, Lcom/piriform/ccleaner/f/u;->h:J

    .line 4231
    iget-wide v4, v4, Lcom/piriform/ccleaner/f/j;->c:J

    .line 3132
    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/piriform/ccleaner/f/u;->h:J

    goto :goto_1

    .line 103
    :cond_6
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/m;->b()Lcom/piriform/ccleaner/f/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/f/l;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/f/p$a;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/piriform/ccleaner/f/u;->a(Lcom/piriform/ccleaner/f/p$a;Ljava/io/File;Z)V

    .line 44
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/f/p$a;Ljava/io/File;Z)V
    .locals 4

    .prologue
    .line 48
    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/piriform/ccleaner/f/u;->f:Ljava/io/File;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/f/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/piriform/ccleaner/f/u;->h:J

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/piriform/ccleaner/f/u;->i:I

    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p2}, Lcom/piriform/ccleaner/f/m;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/f/u;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p2}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 59
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    invoke-direct {p0, v0, p3}, Lcom/piriform/ccleaner/f/u;->a(Ljava/util/Queue;Z)V

    goto :goto_1

    .line 65
    :cond_3
    iget-boolean v0, p0, Lcom/piriform/ccleaner/f/u;->d:Z

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/f/u;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/piriform/ccleaner/f/u;->a(Ljava/util/List;)V

    .line 70
    :cond_4
    iget v0, p0, Lcom/piriform/ccleaner/f/u;->i:I

    iget-wide v2, p0, Lcom/piriform/ccleaner/f/u;->h:J

    iget-object v1, p0, Lcom/piriform/ccleaner/f/u;->e:Ljava/util/List;

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/piriform/ccleaner/f/p$a;->a(IJLjava/util/List;)V

    goto :goto_0
.end method
