.class public final Lcom/google/android/gms/internal/np;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/np$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/nt;

.field final b:Lcom/google/android/gms/internal/oc;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/pn",
            "<*>;",
            "Lcom/google/android/gms/internal/np$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/pn",
            "<*>;",
            "Lcom/google/android/gms/internal/oi",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/oj;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/oq;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v1, Lcom/google/android/gms/internal/or;->a:Lcom/google/android/gms/internal/or;

    sget-object v2, Lcom/google/android/gms/internal/nn;->a:Lcom/google/android/gms/internal/nn;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/gms/internal/og;->a:Lcom/google/android/gms/internal/og;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/np;-><init>(Lcom/google/android/gms/internal/or;Lcom/google/android/gms/internal/no;Ljava/util/Map;ZLcom/google/android/gms/internal/og;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/or;Lcom/google/android/gms/internal/no;Ljava/util/Map;ZLcom/google/android/gms/internal/og;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/or;",
            "Lcom/google/android/gms/internal/no;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/nr",
            "<*>;>;Z",
            "Lcom/google/android/gms/internal/og;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/oj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/np;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/np;->d:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/np$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/np$1;-><init>(Lcom/google/android/gms/internal/np;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/np;->a:Lcom/google/android/gms/internal/nt;

    new-instance v0, Lcom/google/android/gms/internal/np$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/np$2;-><init>(Lcom/google/android/gms/internal/np;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/np;->b:Lcom/google/android/gms/internal/oc;

    new-instance v0, Lcom/google/android/gms/internal/oq;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/oq;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/np;->f:Lcom/google/android/gms/internal/oq;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/np;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/np;->i:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/np;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/np;->j:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/pm;->Q:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/ph;->a:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->x:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->m:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->g:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->i:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->k:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/og;->a:Lcom/google/android/gms/internal/og;

    if-ne p5, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/pm;->n:Lcom/google/android/gms/internal/oi;

    .line 0
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/pm;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    .line 2000
    new-instance v3, Lcom/google/android/gms/internal/np$3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/np$3;-><init>(Lcom/google/android/gms/internal/np;)V

    .line 0
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/pm;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    .line 3000
    new-instance v3, Lcom/google/android/gms/internal/np$4;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/np$4;-><init>(Lcom/google/android/gms/internal/np;)V

    .line 0
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/pm;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->r:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->t:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->z:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->B:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/android/gms/internal/pm;->v:Lcom/google/android/gms/internal/oi;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/pm;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/android/gms/internal/pm;->w:Lcom/google/android/gms/internal/oi;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/pm;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->D:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->F:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->J:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->O:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->H:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->d:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pb;->a:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->M:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pk;->a:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pj;->a:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->K:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/oz;->a:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->b:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/pa;

    iget-object v2, p0, Lcom/google/android/gms/internal/np;->f:Lcom/google/android/gms/internal/oq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pa;-><init>(Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/pf;

    iget-object v2, p0, Lcom/google/android/gms/internal/np;->f:Lcom/google/android/gms/internal/oq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pf;-><init>(Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/pc;

    iget-object v2, p0, Lcom/google/android/gms/internal/np;->f:Lcom/google/android/gms/internal/oq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pc;-><init>(Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/pm;->R:Lcom/google/android/gms/internal/oj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/pi;

    iget-object v2, p0, Lcom/google/android/gms/internal/np;->f:Lcom/google/android/gms/internal/oq;

    invoke-direct {v0, v2, p2, p1}, Lcom/google/android/gms/internal/pi;-><init>(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/no;Lcom/google/android/gms/internal/or;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/np;->e:Ljava/util/List;

    return-void

    .line 1000
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/np$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/np$5;-><init>(Lcom/google/android/gms/internal/np;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/io/Writer;)Lcom/google/android/gms/internal/pq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/np;->i:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/pq;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/np;->j:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "  "

    .line 37000
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/pq;->c:Ljava/lang/String;

    const-string/jumbo v1, ":"

    iput-object v1, v0, Lcom/google/android/gms/internal/pq;->d:Ljava/lang/String;

    .line 0
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/np;->g:Z

    .line 38000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/pq;->g:Z

    .line 0
    return-object v0

    .line 37000
    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/pq;->c:Ljava/lang/String;

    const-string/jumbo v1, ": "

    iput-object v1, v0, Lcom/google/android/gms/internal/pq;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(D)V
    .locals 4

    .prologue
    .line 0
    .line 47000
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/oj;",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/np;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/np;->e:Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gms/internal/oj;

    if-nez v2, :cond_2

    if-ne v0, p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/android/gms/internal/oj;->a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GSON cannot serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/np;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oi;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/np;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/np;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/np$a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/np$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/np$a;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/np;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oj;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/oj;->a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4000
    iget-object v4, v3, Lcom/google/android/gms/internal/np$a;->a:Lcom/google/android/gms/internal/oi;

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/np;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    throw v0

    .line 4000
    :cond_4
    :try_start_1
    iput-object v0, v3, Lcom/google/android/gms/internal/np$a;->a:Lcom/google/android/gms/internal/oi;

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/np;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/np;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "GSON cannot handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/oi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/po;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/po;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/nw;,
            Lcom/google/android/gms/internal/oe;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 0
    .line 42000
    iget-boolean v2, p1, Lcom/google/android/gms/internal/po;->b:Z

    .line 43000
    iput-boolean v1, p1, Lcom/google/android/gms/internal/po;->b:Z

    .line 0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->f()Lcom/google/android/gms/internal/pp;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44000
    iput-boolean v2, p1, Lcom/google/android/gms/internal/po;->b:Z

    .line 0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 45000
    iput-boolean v2, p1, Lcom/google/android/gms/internal/po;->b:Z

    .line 0
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 46000
    iput-boolean v2, p1, Lcom/google/android/gms/internal/po;->b:Z

    .line 0
    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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
            Lcom/google/android/gms/internal/oe;
        }
    .end annotation

    .prologue
    .line 0
    .line 39000
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 0
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ow;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 39000
    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 40000
    new-instance v1, Lcom/google/android/gms/internal/po;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/po;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/po;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 41000
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/po;->f()Lcom/google/android/gms/internal/pp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/pp;->j:Lcom/google/android/gms/internal/pp;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/nw;

    const-string/jumbo v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/pr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/nw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 0
    if-nez p1, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    .line 5000
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 7000
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    .line 6000
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/np;->a(Ljava/io/Writer;)Lcom/google/android/gms/internal/pq;

    move-result-object v4

    .line 9000
    iget-boolean v5, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 10000
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 11000
    iget-boolean v6, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 8000
    iget-boolean v1, p0, Lcom/google/android/gms/internal/np;->h:Z

    .line 12000
    iput-boolean v1, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 13000
    iget-boolean v7, v4, Lcom/google/android/gms/internal/pq;->g:Z

    .line 8000
    iget-boolean v1, p0, Lcom/google/android/gms/internal/np;->g:Z

    .line 14000
    iput-boolean v1, v4, Lcom/google/android/gms/internal/pq;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8000
    :try_start_1
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/internal/nv;Lcom/google/android/gms/internal/pq;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15000
    :try_start_2
    iput-boolean v5, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 16000
    iput-boolean v6, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 17000
    iput-boolean v7, v4, Lcom/google/android/gms/internal/pq;->g:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5000
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 0
    :goto_0
    return-object v1

    .line 8000
    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/nw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 18000
    :try_start_4
    iput-boolean v5, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 19000
    iput-boolean v6, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 20000
    iput-boolean v7, v4, Lcom/google/android/gms/internal/pq;->g:Z

    .line 8000
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 6000
    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 21000
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 23000
    :try_start_5
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    .line 22000
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/np;->a(Ljava/io/Writer;)Lcom/google/android/gms/internal/pq;

    move-result-object v4

    .line 24000
    invoke-static {v3}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v1

    .line 25000
    iget-boolean v3, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 26000
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 27000
    iget-boolean v5, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 24000
    iget-boolean v6, p0, Lcom/google/android/gms/internal/np;->h:Z

    .line 28000
    iput-boolean v6, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 29000
    iget-boolean v6, v4, Lcom/google/android/gms/internal/pq;->g:Z

    .line 24000
    iget-boolean v7, p0, Lcom/google/android/gms/internal/np;->g:Z

    .line 30000
    iput-boolean v7, v4, Lcom/google/android/gms/internal/pq;->g:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 24000
    :try_start_6
    invoke-virtual {v1, v4, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 31000
    :try_start_7
    iput-boolean v3, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 32000
    iput-boolean v5, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 33000
    iput-boolean v6, v4, Lcom/google/android/gms/internal/pq;->g:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 21000
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24000
    :catch_2
    move-exception v1

    :try_start_8
    new-instance v2, Lcom/google/android/gms/internal/nw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    .line 34000
    :try_start_9
    iput-boolean v3, v4, Lcom/google/android/gms/internal/pq;->e:Z

    .line 35000
    iput-boolean v5, v4, Lcom/google/android/gms/internal/pq;->f:Z

    .line 36000
    iput-boolean v6, v4, Lcom/google/android/gms/internal/pq;->g:Z

    .line 24000
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 22000
    :catch_3
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/nw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/np;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/np;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/np;->f:Lcom/google/android/gms/internal/oq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
