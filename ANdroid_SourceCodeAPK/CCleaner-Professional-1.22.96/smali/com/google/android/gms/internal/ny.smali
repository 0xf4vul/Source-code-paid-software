.class public final Lcom/google/android/gms/internal/ny;
.super Lcom/google/android/gms/internal/nv;


# instance fields
.field final a:Lcom/google/android/gms/internal/ou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ou",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ou;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/nv;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ou;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/nv;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ou;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nv;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/ny;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ny;

    iget-object v0, p1, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    iget-object v1, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ou;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->hashCode()I

    move-result v0

    return v0
.end method
