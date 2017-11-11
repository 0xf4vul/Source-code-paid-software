.class public final Lcom/google/gson/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/gson/i;

.field final b:Lcom/google/gson/r;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/b/a",
            "<*>;",
            "Lcom/google/gson/e$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/b/a",
            "<*>;",
            "Lcom/google/gson/v",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/w;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/gson/internal/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 177
    sget-object v1, Lcom/google/gson/internal/Excluder;->a:Lcom/google/gson/internal/Excluder;

    sget-object v2, Lcom/google/gson/c;->a:Lcom/google/gson/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/gson/u;->a:Lcom/google/gson/u;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/e;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZLcom/google/gson/u;Ljava/util/List;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZLcom/google/gson/u;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/Excluder;",
            "Lcom/google/gson/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/g",
            "<*>;>;ZZZZZZ",
            "Lcom/google/gson/u;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/google/gson/e$1;

    invoke-direct {v0, p0}, Lcom/google/gson/e$1;-><init>(Lcom/google/gson/e;)V

    iput-object v0, p0, Lcom/google/gson/e;->a:Lcom/google/gson/i;

    .line 133
    new-instance v0, Lcom/google/gson/e$2;

    invoke-direct {v0, p0}, Lcom/google/gson/e$2;-><init>(Lcom/google/gson/e;)V

    iput-object v0, p0, Lcom/google/gson/e;->b:Lcom/google/gson/r;

    .line 189
    new-instance v0, Lcom/google/gson/internal/c;

    invoke-direct {v0, p3}, Lcom/google/gson/internal/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/gson/e;->f:Lcom/google/gson/internal/c;

    .line 190
    iput-boolean p4, p0, Lcom/google/gson/e;->g:Z

    .line 191
    iput-boolean p6, p0, Lcom/google/gson/e;->i:Z

    .line 192
    iput-boolean p7, p0, Lcom/google/gson/e;->h:Z

    .line 193
    iput-boolean p8, p0, Lcom/google/gson/e;->j:Z

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    sget-object v0, Lcom/google/gson/internal/bind/i;->Q:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/google/gson/internal/bind/e;->a:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v1, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    sget-object v0, Lcom/google/gson/internal/bind/i;->x:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/google/gson/internal/bind/i;->m:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/google/gson/internal/bind/i;->g:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/google/gson/internal/bind/i;->i:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/google/gson/internal/bind/i;->k:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    .line 1307
    sget-object v0, Lcom/google/gson/u;->a:Lcom/google/gson/u;

    if-ne p10, v0, :cond_0

    .line 1308
    sget-object v0, Lcom/google/gson/internal/bind/i;->n:Lcom/google/gson/v;

    .line 213
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/gson/internal/bind/i;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    .line 2251
    if-eqz p9, :cond_1

    .line 2252
    sget-object v0, Lcom/google/gson/internal/bind/i;->p:Lcom/google/gson/v;

    .line 215
    :goto_1
    invoke-static {v2, v3, v0}, Lcom/google/gson/internal/bind/i;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    .line 2275
    if-eqz p9, :cond_2

    .line 2276
    sget-object v0, Lcom/google/gson/internal/bind/i;->o:Lcom/google/gson/v;

    .line 217
    :goto_2
    invoke-static {v2, v3, v0}, Lcom/google/gson/internal/bind/i;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/google/gson/internal/bind/i;->r:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/google/gson/internal/bind/i;->t:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/google/gson/internal/bind/i;->z:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/google/gson/internal/bind/i;->B:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/gson/internal/bind/i;->v:Lcom/google/gson/v;

    invoke-static {v0, v2}, Lcom/google/gson/internal/bind/i;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/gson/internal/bind/i;->w:Lcom/google/gson/v;

    invoke-static {v0, v2}, Lcom/google/gson/internal/bind/i;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/google/gson/internal/bind/i;->D:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/google/gson/internal/bind/i;->F:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/google/gson/internal/bind/i;->J:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/google/gson/internal/bind/i;->O:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/google/gson/internal/bind/i;->H:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/google/gson/internal/bind/i;->d:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/google/gson/internal/bind/b;->a:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/google/gson/internal/bind/i;->M:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/google/gson/internal/bind/g;->a:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/google/gson/internal/bind/f;->a:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/google/gson/internal/bind/i;->K:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/google/gson/internal/bind/a;->a:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/google/gson/internal/bind/i;->b:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/e;->f:Lcom/google/gson/internal/c;

    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/gson/internal/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/e;->f:Lcom/google/gson/internal/c;

    invoke-direct {v0, v2, p5}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/gson/internal/c;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/e;->f:Lcom/google/gson/internal/c;

    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/google/gson/internal/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/google/gson/internal/bind/i;->R:Lcom/google/gson/w;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/e;->f:Lcom/google/gson/internal/c;

    invoke-direct {v0, v2, p2, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/gson/internal/c;Lcom/google/gson/d;Lcom/google/gson/internal/Excluder;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    .line 248
    return-void

    .line 1310
    :cond_0
    new-instance v0, Lcom/google/gson/e$5;

    invoke-direct {v0, p0}, Lcom/google/gson/e$5;-><init>(Lcom/google/gson/e;)V

    goto/16 :goto_0

    .line 2254
    :cond_1
    new-instance v0, Lcom/google/gson/e$3;

    invoke-direct {v0, p0}, Lcom/google/gson/e$3;-><init>(Lcom/google/gson/e;)V

    goto/16 :goto_1

    .line 2278
    :cond_2
    new-instance v0, Lcom/google/gson/e$4;

    invoke-direct {v0, p0}, Lcom/google/gson/e$4;-><init>(Lcom/google/gson/e;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/io/Writer;)Lcom/google/gson/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/google/gson/e;->i:Z

    if-eqz v0, :cond_0

    .line 650
    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 652
    :cond_0
    new-instance v0, Lcom/google/gson/c/c;

    invoke-direct {v0, p1}, Lcom/google/gson/c/c;-><init>(Ljava/io/Writer;)V

    .line 653
    iget-boolean v1, p0, Lcom/google/gson/e;->j:Z

    if-eqz v1, :cond_1

    .line 654
    const-string/jumbo v1, "  "

    .line 18213
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 18214
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/gson/c/c;->c:Ljava/lang/String;

    .line 18215
    const-string/jumbo v1, ":"

    iput-object v1, v0, Lcom/google/gson/c/c;->d:Ljava/lang/String;

    .line 656
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/gson/e;->g:Z

    .line 18269
    iput-boolean v1, v0, Lcom/google/gson/c/c;->g:Z

    .line 657
    return-object v0

    .line 18217
    :cond_2
    iput-object v1, v0, Lcom/google/gson/c/c;->c:Ljava/lang/String;

    .line 18218
    const-string/jumbo v1, ": "

    iput-object v1, v0, Lcom/google/gson/c/c;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/google/gson/c/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/c/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/l;,
            Lcom/google/gson/t;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 806
    .line 19333
    iget-boolean v2, p1, Lcom/google/gson/c/a;->b:Z

    .line 20326
    iput-boolean v1, p1, Lcom/google/gson/c/a;->b:Z

    .line 810
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/c/a;->f()Lcom/google/gson/c/b;

    .line 811
    const/4 v1, 0x0

    .line 812
    invoke-static {p2}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v0

    .line 813
    invoke-virtual {p0, v0}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    .line 814
    invoke-virtual {v0, p1}, Lcom/google/gson/v;->a(Lcom/google/gson/c/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 21326
    iput-boolean v2, p1, Lcom/google/gson/c/a;->b:Z

    .line 831
    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v0

    .line 821
    if-eqz v1, :cond_0

    .line 22326
    iput-boolean v2, p1, Lcom/google/gson/c/a;->b:Z

    .line 831
    const/4 v0, 0x0

    goto :goto_0

    .line 824
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/gson/t;

    invoke-direct {v1, v0}, Lcom/google/gson/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :catchall_0
    move-exception v0

    .line 23326
    iput-boolean v2, p1, Lcom/google/gson/c/a;->b:Z

    .line 831
    throw v0

    .line 825
    :catch_1
    move-exception v0

    .line 826
    :try_start_2
    new-instance v1, Lcom/google/gson/t;

    invoke-direct {v1, v0}, Lcom/google/gson/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 827
    :catch_2
    move-exception v0

    .line 829
    new-instance v1, Lcom/google/gson/t;

    invoke-direct {v1, v0}, Lcom/google/gson/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(D)V
    .locals 4

    .prologue
    .line 100
    .line 24299
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/b/a;)Lcom/google/gson/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/v;

    .line 337
    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 342
    const/4 v1, 0x0

    .line 343
    if-nez v0, :cond_6

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    iget-object v0, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 350
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/e$a;

    .line 351
    if-nez v0, :cond_0

    .line 356
    :try_start_0
    new-instance v3, Lcom/google/gson/e$a;

    invoke-direct {v3}, Lcom/google/gson/e$a;-><init>()V

    .line 357
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/w;

    .line 360
    invoke-interface {v0, p0, p1}, Lcom/google/gson/w;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_2

    .line 2886
    iget-object v4, v3, Lcom/google/gson/e$a;->a:Lcom/google/gson/v;

    if-eqz v4, :cond_4

    .line 2887
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    throw v0

    .line 2889
    :cond_4
    :try_start_1
    iput-object v0, v3, Lcom/google/gson/e$a;->a:Lcom/google/gson/v;

    .line 363
    iget-object v3, p0, Lcom/google/gson/e;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/google/gson/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 367
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/gson/w;Lcom/google/gson/b/a;)Lcom/google/gson/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/w;",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 428
    const/4 v0, 0x0

    .line 432
    iget-object v2, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/w;

    .line 435
    if-nez v2, :cond_2

    .line 436
    if-ne v0, p1, :cond_1

    move v2, v1

    .line 437
    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/gson/w;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_1

    .line 444
    return-object v0

    .line 447
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/gson/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gson/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p1}, Lcom/google/gson/b/a;->a(Ljava/lang/Class;)Lcom/google/gson/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/l;,
            Lcom/google/gson/t;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lcom/google/gson/c/a;

    invoke-direct {v0, p1}, Lcom/google/gson/c/a;-><init>(Ljava/io/Reader;)V

    .line 779
    invoke-direct {p0, v0, p2}, Lcom/google/gson/e;->a(Lcom/google/gson/c/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 18786
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/gson/c/a;->f()Lcom/google/gson/c/b;

    move-result-object v0

    sget-object v2, Lcom/google/gson/c/b;->j:Lcom/google/gson/c/b;

    if-eq v0, v2, :cond_0

    .line 18787
    new-instance v0, Lcom/google/gson/l;

    const-string/jumbo v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gson/c/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18789
    :catch_0
    move-exception v0

    .line 18790
    new-instance v1, Lcom/google/gson/t;

    invoke-direct {v1, v0}, Lcom/google/gson/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 18791
    :catch_1
    move-exception v0

    .line 18792
    new-instance v1, Lcom/google/gson/l;

    invoke-direct {v1, v0}, Lcom/google/gson/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 781
    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/t;
        }
    .end annotation

    .prologue
    .line 700
    .line 18724
    if-nez p1, :cond_0

    .line 18725
    const/4 v0, 0x0

    .line 701
    :goto_0
    invoke-static {p2}, Lcom/google/gson/internal/h;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 18727
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 18728
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/e;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    sget-object v3, Lcom/google/gson/m;->a:Lcom/google/gson/m;

    .line 3623
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 4077
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    .line 3638
    invoke-direct {p0, v1}, Lcom/google/gson/e;->a(Ljava/io/Writer;)Lcom/google/gson/c/c;

    move-result-object v4

    .line 5242
    iget-boolean v5, v4, Lcom/google/gson/c/c;->e:Z

    .line 6235
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/google/gson/c/c;->e:Z

    .line 6261
    iget-boolean v6, v4, Lcom/google/gson/c/c;->f:Z

    .line 4668
    iget-boolean v1, p0, Lcom/google/gson/e;->h:Z

    .line 7253
    iput-boolean v1, v4, Lcom/google/gson/c/c;->f:Z

    .line 7277
    iget-boolean v7, v4, Lcom/google/gson/c/c;->g:Z

    .line 4670
    iget-boolean v1, p0, Lcom/google/gson/e;->g:Z

    .line 8269
    iput-boolean v1, v4, Lcom/google/gson/c/c;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4672
    :try_start_1
    invoke-static {v3, v4}, Lcom/google/gson/internal/i;->a(Lcom/google/gson/k;Lcom/google/gson/c/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9235
    :try_start_2
    iput-boolean v5, v4, Lcom/google/gson/c/c;->e:Z

    .line 9253
    iput-boolean v6, v4, Lcom/google/gson/c/c;->f:Z

    .line 9269
    iput-boolean v7, v4, Lcom/google/gson/c/c;->g:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3625
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    :goto_0
    return-object v1

    .line 4673
    :catch_0
    move-exception v1

    .line 4674
    :try_start_3
    new-instance v2, Lcom/google/gson/l;

    invoke-direct {v2, v1}, Lcom/google/gson/l;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4676
    :catchall_0
    move-exception v1

    .line 10235
    :try_start_4
    iput-boolean v5, v4, Lcom/google/gson/c/c;->e:Z

    .line 10253
    iput-boolean v6, v4, Lcom/google/gson/c/c;->f:Z

    .line 10269
    iput-boolean v7, v4, Lcom/google/gson/c/c;->g:Z

    .line 4678
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3640
    :catch_1
    move-exception v1

    .line 3641
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 519
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 10538
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 11077
    :try_start_5
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    .line 10583
    invoke-direct {p0, v1}, Lcom/google/gson/e;->a(Ljava/io/Writer;)Lcom/google/gson/c/c;

    move-result-object v4

    .line 11597
    invoke-static {v3}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v1

    .line 12242
    iget-boolean v3, v4, Lcom/google/gson/c/c;->e:Z

    .line 13235
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/gson/c/c;->e:Z

    .line 13261
    iget-boolean v5, v4, Lcom/google/gson/c/c;->f:Z

    .line 11601
    iget-boolean v6, p0, Lcom/google/gson/e;->h:Z

    .line 14253
    iput-boolean v6, v4, Lcom/google/gson/c/c;->f:Z

    .line 14277
    iget-boolean v6, v4, Lcom/google/gson/c/c;->g:Z

    .line 11603
    iget-boolean v7, p0, Lcom/google/gson/e;->g:Z

    .line 15269
    iput-boolean v7, v4, Lcom/google/gson/c/c;->g:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 11605
    :try_start_6
    invoke-virtual {v1, v4, p1}, Lcom/google/gson/v;->a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 16235
    :try_start_7
    iput-boolean v3, v4, Lcom/google/gson/c/c;->e:Z

    .line 16253
    iput-boolean v5, v4, Lcom/google/gson/c/c;->f:Z

    .line 16269
    iput-boolean v6, v4, Lcom/google/gson/c/c;->g:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 10540
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11606
    :catch_2
    move-exception v1

    .line 11607
    :try_start_8
    new-instance v2, Lcom/google/gson/l;

    invoke-direct {v2, v1}, Lcom/google/gson/l;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 11609
    :catchall_1
    move-exception v1

    .line 17235
    :try_start_9
    iput-boolean v3, v4, Lcom/google/gson/c/c;->e:Z

    .line 17253
    iput-boolean v5, v4, Lcom/google/gson/c/c;->f:Z

    .line 17269
    iput-boolean v6, v4, Lcom/google/gson/c/c;->g:Z

    .line 11611
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 10585
    :catch_3
    move-exception v1

    .line 10586
    new-instance v2, Lcom/google/gson/l;

    invoke-direct {v2, v1}, Lcom/google/gson/l;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->f:Lcom/google/gson/internal/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
