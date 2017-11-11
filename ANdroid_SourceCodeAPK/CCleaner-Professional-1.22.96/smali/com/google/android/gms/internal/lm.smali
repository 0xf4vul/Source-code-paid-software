.class public final Lcom/google/android/gms/internal/lm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/lr;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/hn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hn",
            "<",
            "Lcom/google/android/gms/internal/lr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/internal/ls;

.field c:Lcom/google/android/gms/internal/hn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hn",
            "<",
            "Lcom/google/android/gms/internal/lr;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/gms/internal/ll;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/hn;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/hn;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ls;",
            "Lcom/google/android/gms/internal/ll;",
            "Lcom/google/android/gms/internal/hn",
            "<",
            "Lcom/google/android/gms/internal/lr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    iput-object p3, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/lm;

    invoke-static {}, Lcom/google/android/gms/internal/lv;->d()Lcom/google/android/gms/internal/lv;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v1, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/ls;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/lm;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    sget-object v3, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hn;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v1, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/lm;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hn;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    new-instance v3, Lcom/google/android/gms/internal/lr;

    invoke-direct {v3, p1, v1}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    .line 4000
    iget-object v1, v0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/hk;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    if-ne v1, v3, :cond_4

    .line 0
    :goto_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/lr;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    .line 5000
    new-instance v1, Lcom/google/android/gms/internal/hn;

    iget-object v0, v0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/hk;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hk;)V

    move-object v0, v1

    .line 0
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/lm;

    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hn;)V

    move-object v0, v1

    goto :goto_0

    .line 4000
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/hn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hk;)V

    goto :goto_1
.end method

.method final a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-static {}, Lcom/google/android/gms/internal/ln;->d()Lcom/google/android/gms/internal/ln;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    .line 1000
    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/ls;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/lr;

    .line 2000
    iget-object v6, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/hn;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/hn;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    :cond_3
    :goto_2
    return-void

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/internal/ll;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/lm;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hn;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/lr;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v1, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
