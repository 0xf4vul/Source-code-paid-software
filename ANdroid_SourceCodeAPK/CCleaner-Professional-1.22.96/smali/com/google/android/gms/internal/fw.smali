.class public final Lcom/google/android/gms/internal/fw;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/google/android/gms/internal/np;
    .locals 13

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x0

    .line 0
    new-instance v7, Lcom/google/android/gms/internal/fv;

    invoke-direct {v7}, Lcom/google/android/gms/internal/fv;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/gf;

    invoke-direct {v8}, Lcom/google/android/gms/internal/gf;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ge;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ge;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/nq;-><init>()V

    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 1000
    iget-object v0, v2, Lcom/google/android/gms/internal/nq;->a:Lcom/google/android/gms/internal/or;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/or;->a()Lcom/google/android/gms/internal/or;

    move-result-object v4

    iput v1, v4, Lcom/google/android/gms/internal/or;->c:I

    move v0, v1

    :goto_0
    if-ge v0, v10, :cond_0

    aget v5, v3, v0

    iget v6, v4, Lcom/google/android/gms/internal/or;->c:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/gms/internal/or;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    iput-object v4, v2, Lcom/google/android/gms/internal/nq;->a:Lcom/google/android/gms/internal/or;

    .line 3000
    iput-boolean v1, v2, Lcom/google/android/gms/internal/nq;->i:Z

    .line 0
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/google/android/gms/internal/nl;

    new-instance v0, Lcom/google/android/gms/internal/fq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fq;-><init>()V

    aput-object v0, v3, v1

    move v0, v1

    .line 4000
    :goto_1
    if-gtz v0, :cond_1

    aget-object v4, v3, v1

    iget-object v5, v2, Lcom/google/android/gms/internal/nq;->a:Lcom/google/android/gms/internal/or;

    .line 5000
    invoke-virtual {v5}, Lcom/google/android/gms/internal/or;->a()Lcom/google/android/gms/internal/or;

    move-result-object v6

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/google/android/gms/internal/or;->e:Ljava/util/List;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v6, Lcom/google/android/gms/internal/or;->e:Ljava/util/List;

    iget-object v10, v6, Lcom/google/android/gms/internal/or;->e:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/google/android/gms/internal/or;->f:Ljava/util/List;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v6, Lcom/google/android/gms/internal/or;->f:Ljava/util/List;

    iget-object v5, v6, Lcom/google/android/gms/internal/or;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4000
    iput-object v6, v2, Lcom/google/android/gms/internal/nq;->a:Lcom/google/android/gms/internal/or;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 0
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/zzbml;

    invoke-virtual {v2, v0, v7}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/nq;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbmv;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/nq;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbmr;

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/nq;

    move-result-object v5

    .line 6000
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v5, Lcom/google/android/gms/internal/nq;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, v5, Lcom/google/android/gms/internal/nq;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, v5, Lcom/google/android/gms/internal/nq;->g:I

    iget v1, v5, Lcom/google/android/gms/internal/nq;->h:I

    .line 7000
    if-eq v0, v12, :cond_2

    if-eq v1, v12, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/nk;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/nk;-><init>(II)V

    const-class v0, Ljava/util/Date;

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/oh;->a(Lcom/google/android/gms/internal/pn;Ljava/lang/Object;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Timestamp;

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/oh;->a(Lcom/google/android/gms/internal/pn;Ljava/lang/Object;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Date;

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/oh;->a(Lcom/google/android/gms/internal/pn;Ljava/lang/Object;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6000
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/np;

    iget-object v1, v5, Lcom/google/android/gms/internal/nq;->a:Lcom/google/android/gms/internal/or;

    iget-object v2, v5, Lcom/google/android/gms/internal/nq;->c:Lcom/google/android/gms/internal/no;

    iget-object v3, v5, Lcom/google/android/gms/internal/nq;->d:Ljava/util/Map;

    iget-boolean v4, v5, Lcom/google/android/gms/internal/nq;->i:Z

    iget-object v5, v5, Lcom/google/android/gms/internal/nq;->b:Lcom/google/android/gms/internal/og;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/np;-><init>(Lcom/google/android/gms/internal/or;Lcom/google/android/gms/internal/no;Ljava/util/Map;ZLcom/google/android/gms/internal/og;Ljava/util/List;)V

    .line 8000
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/np;

    iput-object v1, v7, Lcom/google/android/gms/internal/fv;->a:Lcom/google/android/gms/internal/np;

    .line 9000
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/np;

    iput-object v1, v8, Lcom/google/android/gms/internal/gf;->a:Lcom/google/android/gms/internal/np;

    .line 10000
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/np;

    iput-object v1, v9, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/np;

    .line 0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x8
        0x80
        0x40
    .end array-data
.end method
