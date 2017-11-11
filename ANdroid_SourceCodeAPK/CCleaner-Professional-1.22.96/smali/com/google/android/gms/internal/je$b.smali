.class public final Lcom/google/android/gms/internal/je$b;
.super Lcom/google/android/gms/internal/ip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private e:Lcom/google/android/gms/internal/kr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ip;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/je$b;->e:Lcom/google/android/gms/internal/kr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ip;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/je$b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/je$b;-><init>(Lcom/google/android/gms/internal/kr;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/kr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je$b;->e:Lcom/google/android/gms/internal/kr;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/kl;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/firebase/database/b;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ip;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/je$b;

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/km$a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/je$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/je$b;

    iget-object v0, p1, Lcom/google/android/gms/internal/je$b;->e:Lcom/google/android/gms/internal/kr;

    iget-object v1, p0, Lcom/google/android/gms/internal/je$b;->e:Lcom/google/android/gms/internal/kr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je$b;->e:Lcom/google/android/gms/internal/kr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kr;->hashCode()I

    move-result v0

    return v0
.end method
