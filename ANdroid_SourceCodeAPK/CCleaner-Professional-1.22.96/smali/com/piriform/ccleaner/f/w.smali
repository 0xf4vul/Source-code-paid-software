.class public final Lcom/piriform/ccleaner/f/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/p;


# instance fields
.field private final a:Lcom/piriform/ccleaner/f/m;

.field private final b:Ljava/io/File;

.field private final c:Lcom/piriform/ccleaner/f/v;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/f/v;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/f/w;->a:Lcom/piriform/ccleaner/f/m;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/f/w;->c:Lcom/piriform/ccleaner/f/v;

    .line 19
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->o()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/f/w;->b:Ljava/io/File;

    .line 21
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 58
    move v8, v4

    move v7, v10

    move-object v9, v11

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 61
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2026
    sget-object v1, Lcom/piriform/ccleaner/f/v;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2027
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2029
    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/piriform/ccleaner/f/v;->a(ILjava/util/regex/Matcher;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/f/v;->a(ILjava/util/regex/Matcher;)I

    move-result v2

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lcom/piriform/ccleaner/f/v;->a(ILjava/util/regex/Matcher;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2030
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 2031
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 63
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v9, :cond_0

    invoke-virtual {v0, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move-object v1, v0

    move v0, v8

    .line 60
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v7, v0

    move-object v9, v1

    goto :goto_0

    :cond_1
    move-object v0, v11

    .line 2033
    goto :goto_1

    .line 68
    :cond_2
    if-eq v7, v10, :cond_3

    .line 69
    invoke-interface {p0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    :cond_3
    return-object p0

    :cond_4
    move v0, v7

    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/f/p$a;)V
    .locals 7

    .prologue
    .line 25
    .line 1039
    iget-object v0, p0, Lcom/piriform/ccleaner/f/w;->a:Lcom/piriform/ccleaner/f/m;

    iget-object v1, p0, Lcom/piriform/ccleaner/f/w;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/f/m;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 1047
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1048
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 1049
    invoke-static {v4}, Lcom/piriform/ccleaner/f/v;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1050
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    invoke-static {v2}, Lcom/piriform/ccleaner/f/w;->a(Ljava/util/List;)Ljava/util/List;

    .line 27
    const-wide/16 v0, 0x0

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 30
    invoke-static {v0}, Lcom/piriform/ccleaner/f/j;->b(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v6

    .line 1231
    iget-wide v0, v6, Lcom/piriform/ccleaner/f/j;->c:J

    .line 31
    add-long/2addr v0, v2

    .line 32
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v0

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/piriform/ccleaner/f/p$a;->a(IJLjava/util/List;)V

    .line 36
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/f/p$a;Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/f/w;->a(Lcom/piriform/ccleaner/f/p$a;)V

    .line 83
    return-void
.end method
