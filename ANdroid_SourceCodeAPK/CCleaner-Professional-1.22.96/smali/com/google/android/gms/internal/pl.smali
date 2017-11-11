.class final Lcom/google/android/gms/internal/pl;
.super Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/oi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/np;

.field private final b:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/oi;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/internal/np;

    iput-object p2, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/internal/oi;

    iput-object p3, p0, Lcom/google/android/gms/internal/pl;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/po;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pq;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/internal/oi;

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->c:Ljava/lang/reflect/Type;

    .line 1000
    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 0
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/pl;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/internal/np;

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/pi$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/internal/oi;

    instance-of v1, v1, Lcom/google/android/gms/internal/pi$a;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/internal/oi;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
