.class final Lcom/google/android/gms/internal/pi$1;
.super Lcom/google/android/gms/internal/pi$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/np;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/google/android/gms/internal/pn;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/internal/pi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pi;Ljava/lang/String;ZZLcom/google/android/gms/internal/np;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/pn;Z)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/pi$1;->f:Lcom/google/android/gms/internal/pi;

    iput-object p5, p0, Lcom/google/android/gms/internal/pi$1;->b:Lcom/google/android/gms/internal/np;

    iput-object p6, p0, Lcom/google/android/gms/internal/pi$1;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/pi$1;->d:Lcom/google/android/gms/internal/pn;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/pi$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/pi$b;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pi$1;->f:Lcom/google/android/gms/internal/pi;

    iget-object v1, p0, Lcom/google/android/gms/internal/pi$1;->b:Lcom/google/android/gms/internal/np;

    iget-object v2, p0, Lcom/google/android/gms/internal/pi$1;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/pi$1;->d:Lcom/google/android/gms/internal/pn;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/pi;->a(Lcom/google/android/gms/internal/pi;Lcom/google/android/gms/internal/np;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pi$1;->a:Lcom/google/android/gms/internal/oi;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/po;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pi$1;->a:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/pi$1;->e:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pi$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/pi$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/pl;

    iget-object v2, p0, Lcom/google/android/gms/internal/pi$1;->b:Lcom/google/android/gms/internal/np;

    iget-object v3, p0, Lcom/google/android/gms/internal/pi$1;->a:Lcom/google/android/gms/internal/oi;

    iget-object v4, p0, Lcom/google/android/gms/internal/pi$1;->d:Lcom/google/android/gms/internal/pn;

    .line 1000
    iget-object v4, v4, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 0
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/oi;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/pi$1;->h:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/pi$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
