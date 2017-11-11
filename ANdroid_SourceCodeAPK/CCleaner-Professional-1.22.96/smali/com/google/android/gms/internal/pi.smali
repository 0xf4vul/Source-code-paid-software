.class public final Lcom/google/android/gms/internal/pi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/pi$a;,
        Lcom/google/android/gms/internal/pi$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/oq;

.field private final b:Lcom/google/android/gms/internal/no;

.field private final c:Lcom/google/android/gms/internal/or;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/no;Lcom/google/android/gms/internal/or;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/oq;

    iput-object p2, p0, Lcom/google/android/gms/internal/pi;->b:Lcom/google/android/gms/internal/no;

    iput-object p3, p0, Lcom/google/android/gms/internal/pi;->c:Lcom/google/android/gms/internal/or;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/pi;Lcom/google/android/gms/internal/np;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 2

    .prologue
    .line 11000
    const-class v0, Lcom/google/android/gms/internal/ok;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ok;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/oq;

    invoke-static {v1, p1, p3, v0}, Lcom/google/android/gms/internal/pc;->a(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/ok;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->b:Lcom/google/android/gms/internal/no;

    .line 3000
    const-class v0, Lcom/google/android/gms/internal/ol;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ol;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-nez v0, :cond_1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/no;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    :cond_0
    return-object v2

    .line 3000
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ol;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/ol;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Ljava/lang/Class;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/pi$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v12

    :goto_0
    return-object v1

    .line 5000
    :cond_0
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 0
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v7, v15, v13

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/android/gms/internal/pi;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/android/gms/internal/pi;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_4

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6000
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/op;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/pi;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v18

    const/4 v10, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v11, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v8

    .line 8000
    iget-object v1, v8, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 7000
    invoke-static {v1}, Lcom/google/android/gms/internal/ow;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v1, Lcom/google/android/gms/internal/pi$1;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/pi$1;-><init>(Lcom/google/android/gms/internal/pi;Ljava/lang/String;ZZLcom/google/android/gms/internal/np;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/pn;Z)V

    .line 0
    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/pi$b;

    if-nez v10, :cond_7

    :goto_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v10, v1

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/internal/pi$b;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " declares multiple JSON fields named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_2

    .line 9000
    :cond_5
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/op;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object p2

    .line 10000
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    move-object/from16 p3, v0

    goto/16 :goto_1

    :cond_6
    move-object v1, v12

    .line 0
    goto/16 :goto_0

    :cond_7
    move-object v1, v10

    goto :goto_4
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/pi;->c:Lcom/google/android/gms/internal/or;

    .line 1000
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/google/android/gms/internal/or;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2000
    iget v0, v4, Lcom/google/android/gms/internal/or;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 1000
    :goto_0
    if-nez v0, :cond_8

    move v0, v2

    :goto_1
    return v0

    .line 2000
    :cond_0
    iget-wide v0, v4, Lcom/google/android/gms/internal/or;->b:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/om;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/om;

    const-class v1, Lcom/google/android/gms/internal/on;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/on;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/om;Lcom/google/android/gms/internal/on;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, v4, Lcom/google/android/gms/internal/or;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/or;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/or;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    iget-object v0, v4, Lcom/google/android/gms/internal/or;->e:Ljava/util/List;

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/nm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nm;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nl;->a(Lcom/google/android/gms/internal/nm;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, v4, Lcom/google/android/gms/internal/or;->f:Ljava/util/List;

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v3

    .line 0
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 4000
    iget-object v1, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/oq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/ov;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/pi$a;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/pi;->a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/pi$a;-><init>(Lcom/google/android/gms/internal/ov;Ljava/util/Map;B)V

    goto :goto_0
.end method
