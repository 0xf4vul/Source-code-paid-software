.class public final Lcom/google/gson/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/g",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/g",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/google/gson/internal/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/gson/internal/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 99
    :cond_0
    new-instance v0, Lcom/google/gson/internal/c$6;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/c$6;-><init>(Lcom/google/gson/internal/c;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/gson/b/a;)Lcom/google/gson/internal/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/internal/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .line 1101
    iget-object v1, p1, Lcom/google/gson/b/a;->b:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v2, p1, Lcom/google/gson/b/a;->a:Ljava/lang/Class;

    .line 58
    iget-object v0, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/g;

    .line 59
    if-eqz v0, :cond_1

    .line 60
    new-instance v2, Lcom/google/gson/internal/c$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/gson/internal/c$1;-><init>(Lcom/google/gson/internal/c;Lcom/google/gson/g;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/g;

    .line 71
    if-eqz v0, :cond_2

    .line 72
    new-instance v2, Lcom/google/gson/internal/c$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/gson/internal/c$5;-><init>(Lcom/google/gson/internal/c;Lcom/google/gson/g;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/gson/internal/c;->a(Ljava/lang/Class;)Lcom/google/gson/internal/g;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 2130
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2131
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2132
    new-instance v0, Lcom/google/gson/internal/c$7;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$7;-><init>(Lcom/google/gson/internal/c;)V

    .line 85
    :goto_1
    if-nez v0, :cond_0

    .line 3202
    new-instance v0, Lcom/google/gson/internal/c$4;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/gson/internal/c$4;-><init>(Lcom/google/gson/internal/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 2137
    :cond_3
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2138
    new-instance v0, Lcom/google/gson/internal/c$8;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/c$8;-><init>(Lcom/google/gson/internal/c;Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 2153
    :cond_4
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2154
    new-instance v0, Lcom/google/gson/internal/c$9;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$9;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_1

    .line 2159
    :cond_5
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2160
    new-instance v0, Lcom/google/gson/internal/c$10;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$10;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_1

    .line 2166
    :cond_6
    new-instance v0, Lcom/google/gson/internal/c$11;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$11;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_1

    .line 2174
    :cond_7
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2175
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2176
    new-instance v0, Lcom/google/gson/internal/c$12;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$12;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_1

    .line 2181
    :cond_8
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    const-class v3, Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v0

    .line 3094
    iget-object v0, v0, Lcom/google/gson/b/a;->a:Ljava/lang/Class;

    .line 2181
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2183
    new-instance v0, Lcom/google/gson/internal/c$2;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$2;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_1

    .line 2189
    :cond_9
    new-instance v0, Lcom/google/gson/internal/c$3;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/c$3;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_1

    .line 2197
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
