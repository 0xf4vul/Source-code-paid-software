.class public final Lcom/piriform/ccleaner/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/f/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/f/m;

.field private final b:Lcom/piriform/ccleaner/f/q;

.field private final c:Lcom/piriform/ccleaner/f/e$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/f/e$a;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/f/q;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/f/q;-><init>(Lcom/piriform/ccleaner/f/m;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/f/e;->b:Lcom/piriform/ccleaner/f/q;

    .line 34
    iput-object p2, p0, Lcom/piriform/ccleaner/f/e;->c:Lcom/piriform/ccleaner/f/e$a;

    .line 35
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/f/b;Ljava/util/Set;Lcom/piriform/ccleaner/settings/c;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/f/b;",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;",
            "Lcom/piriform/ccleaner/settings/c;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    .line 9172
    new-instance v0, Ljava/io/File;

    .line 10099
    iget-object v2, p3, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 9172
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9174
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 9175
    invoke-static {p3}, Lcom/piriform/ccleaner/f/e;->a(Lcom/piriform/ccleaner/settings/c;)Z

    move-result v4

    .line 9176
    invoke-virtual {p3}, Lcom/piriform/ccleaner/settings/c;->b()[Ljava/lang/String;

    move-result-object v5

    .line 9177
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9179
    :cond_0
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9180
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 9182
    iget-object v6, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v6, v0}, Lcom/piriform/ccleaner/f/m;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 9183
    iget-object v9, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v9, v8}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v9, v8}, Lcom/piriform/ccleaner/f/m;->i(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v4, :cond_1

    .line 9184
    invoke-interface {v3, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9186
    :cond_1
    invoke-direct {p0, v8, v5}, Lcom/piriform/ccleaner/f/e;->a(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 9187
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9182
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 114
    :goto_1
    if-ge v1, v3, :cond_6

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 117
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/f/e;->a(Ljava/io/File;)Z

    move-result v4

    .line 119
    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v5, v0}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10146
    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v5, v0}, Lcom/piriform/ccleaner/f/m;->f(Ljava/io/File;)J

    move-result-wide v6

    .line 10147
    invoke-static {v0, v6, v7, v4}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;JZ)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    .line 10149
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 10150
    invoke-virtual {p1, p2, v4, v0}, Lcom/piriform/ccleaner/f/b;->a(Ljava/util/Set;ZLcom/piriform/ccleaner/f/j;)V

    .line 11032
    :cond_4
    :goto_2
    iget v0, p1, Lcom/piriform/ccleaner/f/b;->c:F

    .line 124
    int-to-float v4, v1

    .line 12028
    iget v5, p1, Lcom/piriform/ccleaner/f/b;->b:F

    .line 124
    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 125
    int-to-float v0, v0

    .line 12036
    iput v0, p1, Lcom/piriform/ccleaner/f/b;->c:F

    .line 126
    invoke-virtual {p1}, Lcom/piriform/ccleaner/f/b;->a()V

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 121
    :cond_5
    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v5, v0}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10159
    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->b:Lcom/piriform/ccleaner/f/q;

    invoke-virtual {v5, v0}, Lcom/piriform/ccleaner/f/q;->a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    .line 10161
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 10162
    invoke-virtual {p1, p2, v4, v0}, Lcom/piriform/ccleaner/f/b;->a(Ljava/util/Set;ZLcom/piriform/ccleaner/f/j;)V

    goto :goto_2

    .line 128
    :cond_6
    return v3
.end method

.method private static a(Lcom/piriform/ccleaner/settings/c;)Z
    .locals 2

    .prologue
    .line 220
    .line 12125
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 221
    sget-object v1, Lcom/piriform/ccleaner/settings/c$a;->b:Lcom/piriform/ccleaner/settings/c$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/piriform/ccleaner/settings/c$a;->c:Lcom/piriform/ccleaner/settings/c$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/m;->b()Lcom/piriform/ccleaner/f/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/f/l;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    iget-object v2, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, p1}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, p1}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v2, p2

    if-nez v2, :cond_2

    move v0, v1

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, p1}, Lcom/piriform/ccleaner/f/m;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 204
    array-length v4, p2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, p2, v2

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 207
    goto :goto_0

    .line 204
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/f/h;
    .locals 5

    .prologue
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/f/e;->c:Lcom/piriform/ccleaner/f/e$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/e$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    .line 54
    invoke-static {v0}, Lcom/piriform/ccleaner/f/e;->a(Lcom/piriform/ccleaner/settings/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7125
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 56
    sget-object v4, Lcom/piriform/ccleaner/settings/c$a;->c:Lcom/piriform/ccleaner/settings/c$a;

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    .line 59
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 8099
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 60
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;Z)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    .line 9065
    iget-object v0, v0, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 61
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 67
    :cond_2
    invoke-static {v2}, Lcom/piriform/ccleaner/f/h;->a(Ljava/util/List;)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/f/p$a;)V
    .locals 8

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/f/e;->c:Lcom/piriform/ccleaner/f/e$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/e$a;->a()Ljava/util/List;

    move-result-object v0

    .line 1072
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1073
    new-instance v3, Lcom/piriform/ccleaner/f/b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, p1, v1}, Lcom/piriform/ccleaner/f/b;-><init>(Lcom/piriform/ccleaner/f/p$a;F)V

    .line 1075
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    .line 1076
    new-instance v1, Ljava/io/File;

    .line 1099
    iget-object v5, v0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 1076
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v5, v1}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2097
    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/c;->b()[Ljava/lang/String;

    move-result-object v0

    .line 2132
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/f/e;->a(Ljava/io/File;)Z

    move-result v5

    .line 2133
    iget-object v6, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v6, v1}, Lcom/piriform/ccleaner/f/m;->f(Ljava/io/File;)J

    move-result-wide v6

    .line 2134
    invoke-static {v1, v6, v7, v5}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;JZ)Lcom/piriform/ccleaner/f/j;

    move-result-object v6

    .line 2136
    invoke-direct {p0, v1, v0}, Lcom/piriform/ccleaner/f/e;->a(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2137
    invoke-virtual {v3, v2, v5, v6}, Lcom/piriform/ccleaner/f/b;->a(Ljava/util/Set;ZLcom/piriform/ccleaner/f/j;)V

    .line 2098
    :cond_1
    invoke-virtual {v3}, Lcom/piriform/ccleaner/f/b;->b()V

    .line 2099
    invoke-virtual {v3}, Lcom/piriform/ccleaner/f/b;->a()V

    goto :goto_0

    .line 1083
    :cond_2
    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v5, v1}, Lcom/piriform/ccleaner/f/m;->c(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/piriform/ccleaner/f/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v5, v1}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-direct {p0, v3, v2, v0}, Lcom/piriform/ccleaner/f/e;->a(Lcom/piriform/ccleaner/f/b;Ljava/util/Set;Lcom/piriform/ccleaner/settings/c;)I

    move-result v5

    .line 4125
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 3216
    sget-object v6, Lcom/piriform/ccleaner/settings/c$a;->c:Lcom/piriform/ccleaner/settings/c$a;

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    .line 3103
    :goto_1
    if-eqz v1, :cond_3

    if-nez v5, :cond_3

    .line 3104
    new-instance v1, Ljava/io/File;

    .line 5099
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 3104
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3105
    iget-object v0, p0, Lcom/piriform/ccleaner/f/e;->b:Lcom/piriform/ccleaner/f/q;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/f/q;->a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    .line 3106
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1089
    :cond_3
    invoke-virtual {v3}, Lcom/piriform/ccleaner/f/b;->b()V

    goto :goto_0

    .line 3216
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1091
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1092
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6052
    iget-object v1, v3, Lcom/piriform/ccleaner/f/b;->a:Lcom/piriform/ccleaner/f/b$a;

    .line 6068
    iget v1, v1, Lcom/piriform/ccleaner/f/b$a;->b:I

    .line 7056
    iget-object v2, v3, Lcom/piriform/ccleaner/f/b;->a:Lcom/piriform/ccleaner/f/b$a;

    .line 7064
    iget-wide v2, v2, Lcom/piriform/ccleaner/f/b$a;->a:J

    .line 1093
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/piriform/ccleaner/f/p$a;->a(IJLjava/util/List;)V

    .line 42
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/f/p$a;Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/f/e;->a(Lcom/piriform/ccleaner/f/p$a;)V

    .line 48
    return-void
.end method
