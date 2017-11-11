.class public final Lcom/google/android/gms/internal/kr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/iu;

.field final b:Lcom/google/android/gms/internal/kq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/kq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    iput-object p2, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/kr;

    sget-object v1, Lcom/google/android/gms/internal/kq;->a:Lcom/google/android/gms/internal/kq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/kr;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/kq;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    invoke-static {}, Lcom/google/android/gms/internal/lv;->d()Lcom/google/android/gms/internal/lv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/kr;

    iget-object v2, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    iget-object v3, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/iu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    iget-object v3, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/kq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kq;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
