.class final Lcom/google/android/gms/internal/ht$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ht$a$a;,
        Lcom/google/android/gms/internal/ht$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TC;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/hk$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hk$a$a",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hs",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hs",
            "<TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/hk$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/hk$a$a",
            "<TA;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ht$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ht$a;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ht$a;->c:Lcom/google/android/gms/internal/hk$a$a;

    return-void
.end method

.method private a(II)Lcom/google/android/gms/internal/hq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/hq",
            "<TA;TC;>;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ht$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/ho;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ht$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ho;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    goto :goto_0

    :cond_1
    div-int/lit8 v0, p2, 0x2

    add-int v1, p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ht$a;->a(II)Lcom/google/android/gms/internal/hq;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/ht$a;->a(II)Lcom/google/android/gms/internal/hq;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ht$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/ho;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ht$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/ho;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/hk$a$a;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ht;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/hk$a$a",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/ht",
            "<TA;TC;>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/ht$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/ht$a;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/hk$a$a;)V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/google/android/gms/internal/ht$a$a;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ht$a$a;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ht$a$a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ht$a$b;

    iget v4, v0, Lcom/google/android/gms/internal/ht$a$b;->b:I

    sub-int/2addr v1, v4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ht$a$b;->a:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/google/android/gms/internal/hq$a;->b:I

    iget v0, v0, Lcom/google/android/gms/internal/ht$a$b;->b:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/ht$a;->a(III)V

    goto :goto_0

    :cond_0
    sget v4, Lcom/google/android/gms/internal/hq$a;->b:I

    iget v5, v0, Lcom/google/android/gms/internal/ht$a$b;->b:I

    invoke-direct {v2, v4, v5, v1}, Lcom/google/android/gms/internal/ht$a;->a(III)V

    iget v4, v0, Lcom/google/android/gms/internal/ht$a$b;->b:I

    sub-int/2addr v1, v4

    sget v4, Lcom/google/android/gms/internal/hq$a;->a:I

    iget v0, v0, Lcom/google/android/gms/internal/ht$a$b;->b:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/ht$a;->a(III)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ht;

    iget-object v0, v2, Lcom/google/android/gms/internal/ht$a;->d:Lcom/google/android/gms/internal/hs;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, v2}, Lcom/google/android/gms/internal/ht;-><init>(Lcom/google/android/gms/internal/hq;Ljava/util/Comparator;B)V

    return-object v1

    :cond_2
    iget-object v0, v2, Lcom/google/android/gms/internal/ht$a;->d:Lcom/google/android/gms/internal/hs;

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ht$a;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ht$a;->c:Lcom/google/android/gms/internal/hk$a$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/hk$a$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ht$a;->a(II)Lcom/google/android/gms/internal/hq;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ht$a;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v0, Lcom/google/android/gms/internal/hq$a;->a:I

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hr;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ht$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/hr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ht$a;->d:Lcom/google/android/gms/internal/hs;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ht$a;->d:Lcom/google/android/gms/internal/hs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ht$a;->e:Lcom/google/android/gms/internal/hs;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ho;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ht$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ho;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ht$a;->e:Lcom/google/android/gms/internal/hs;

    .line 1000
    iput-object v0, v1, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/ht$a;->e:Lcom/google/android/gms/internal/hs;

    goto :goto_1
.end method
