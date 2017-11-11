.class public final Lcom/avast/android/burger/internal/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/a/b/a/a$e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$e;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0xe7ef0

    const v9, 0x7a120

    const/4 v8, 0x0

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$e;->f()Lcom/avast/a/b/a/a$e$a;

    move-result-object v3

    .line 129
    invoke-static {}, Lcom/avast/a/b/a/a$e;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v1

    .line 130
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$e$a;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e;->c()I

    move-result v0

    .line 131
    sget-object v4, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Splitting envelope with size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/avast/android/f/e/a;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " original record count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$e$a;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 131
    invoke-virtual {v4, v5, v6}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :goto_0
    if-le v0, v9, :cond_4

    .line 1604
    iget-object v0, v3, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$o;

    .line 1733
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$e$a;->e()V

    .line 1734
    iget-object v4, v3, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->c()I

    move-result v4

    if-ge v4, v10, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$e;->f()Lcom/avast/a/b/a/a$e$a;

    move-result-object v1

    .line 2645
    if-nez v0, :cond_0

    .line 2646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2648
    :cond_0
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$e$a;->e()V

    .line 2649
    iget-object v4, v1, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$e$a;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    .line 141
    :goto_1
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$e$a;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$e;->c()I

    move-result v1

    .line 143
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e;->c()I

    move-result v4

    if-le v4, v10, :cond_2

    .line 144
    invoke-static {v0}, Lcom/avast/android/burger/internal/e/c;->a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-static {}, Lcom/avast/a/b/a/a$e;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$e;->f()Lcom/avast/a/b/a/a$e$a;

    move-result-object v1

    invoke-static {v0}, Lcom/avast/android/burger/internal/e/c;->a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/a/b/a/a$e$a;->a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e$a;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e;->c()I

    move-result v4

    if-lt v4, v9, :cond_3

    .line 147
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {}, Lcom/avast/a/b/a/a$e;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    :cond_3
    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 150
    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$e$a;->f()I

    move-result v0

    if-lez v0, :cond_5

    .line 152
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$e$a;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_5
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$e;->d()I

    move-result v0

    if-lez v0, :cond_6

    .line 155
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_6
    return-object v2
.end method

.method private static a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/a/b/a/a$o;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$o;",
            ">;"
        }
    .end annotation

    .prologue
    const v11, 0xe7ef0

    const/4 v10, 0x0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v3

    .line 174
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->e()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v1

    .line 176
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->c()I

    move-result v0

    .line 177
    sget-object v5, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Splitting record with size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v8, v0

    invoke-static {v8, v9}, Lcom/avast/android/f/e/a;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_0
    if-le v0, v11, :cond_3

    .line 3487
    iget-object v0, v3, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$g;

    .line 180
    invoke-virtual {v3, v10}, Lcom/avast/a/b/a/a$o$a;->b(I)Lcom/avast/a/b/a/a$o$a;

    .line 181
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$g;->c()I

    move-result v5

    if-ge v5, v11, :cond_0

    .line 182
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/a/b/a/a$o$a;->a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    .line 186
    :goto_1
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o;->c()I

    move-result v1

    .line 187
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->c()I

    move-result v5

    if-le v5, v11, :cond_1

    .line 188
    invoke-static {v0}, Lcom/avast/android/burger/internal/e/c;->a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-virtual {v4}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_0

    .line 184
    :cond_0
    sget-object v5, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Discarding too large event:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avast/android/burger/a/d;->e(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->c()I

    move-result v5

    const v6, 0x7a120

    if-lt v5, v6, :cond_2

    .line 191
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v4}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    :cond_2
    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 194
    goto :goto_0

    .line 4477
    :cond_3
    iget-object v0, v3, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 195
    if-lez v0, :cond_4

    .line 196
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_4
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o;->d()I

    move-result v0

    if-lez v0, :cond_5

    .line 199
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_5
    return-object v2
.end method
