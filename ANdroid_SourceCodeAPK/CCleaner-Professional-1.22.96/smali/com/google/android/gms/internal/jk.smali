.class public final Lcom/google/android/gms/internal/jk;
.super Lcom/google/android/gms/internal/ip;


# instance fields
.field private final e:Lcom/google/android/gms/internal/iw;

.field private final f:Lcom/google/firebase/database/n;

.field private final g:Lcom/google/android/gms/internal/kr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ip;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jk;->e:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    iput-object p3, p0, Lcom/google/android/gms/internal/jk;->g:Lcom/google/android/gms/internal/kr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ip;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/jk;

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->e:Lcom/google/android/gms/internal/iw;

    iget-object v2, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kl;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->e:Lcom/google/android/gms/internal/iw;

    .line 1000
    iget-object v1, p2, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v0, v1}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/firebase/database/d;

    move-result-object v0

    .line 2000
    iget-object v1, p1, Lcom/google/android/gms/internal/kk;->b:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-static {v0, v1}, Lcom/google/firebase/database/o;->a(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/lm;)Lcom/google/firebase/database/a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/kl;

    sget-object v2, Lcom/google/android/gms/internal/km$a;->e:Lcom/google/android/gms/internal/km$a;

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/kl;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/a;)V

    return-object v1
.end method

.method public final a()Lcom/google/android/gms/internal/kr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->g:Lcom/google/android/gms/internal/kr;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/kl;)V
    .locals 2

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/ip;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    .line 4000
    iget-object v1, p1, Lcom/google/android/gms/internal/kl;->a:Lcom/google/firebase/database/a;

    .line 0
    invoke-interface {v0, v1}, Lcom/google/firebase/database/n;->onDataChange(Lcom/google/firebase/database/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/firebase/database/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/n;->onCancelled(Lcom/google/firebase/database/b;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ip;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/jk;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/jk;

    iget-object v0, p1, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/km$a;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/km$a;->e:Lcom/google/android/gms/internal/km$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/jk;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/jk;

    iget-object v0, v0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/jk;

    iget-object v0, v0, Lcom/google/android/gms/internal/jk;->e:Lcom/google/android/gms/internal/iw;

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->e:Lcom/google/android/gms/internal/iw;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/jk;

    iget-object v0, p1, Lcom/google/android/gms/internal/jk;->g:Lcom/google/android/gms/internal/kr;

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->g:Lcom/google/android/gms/internal/kr;

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
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->f:Lcom/google/firebase/database/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->e:Lcom/google/android/gms/internal/iw;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->g:Lcom/google/android/gms/internal/kr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ValueEventRegistration"

    return-object v0
.end method
