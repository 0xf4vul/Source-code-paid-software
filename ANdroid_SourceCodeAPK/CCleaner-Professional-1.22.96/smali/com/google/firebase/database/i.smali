.class public final Lcom/google/firebase/database/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/jb;

.field private final b:Lcom/google/android/gms/internal/iu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/iu;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/i;->a:Lcom/google/android/gms/internal/jb;

    iput-object p2, p0, Lcom/google/firebase/database/i;->b:Lcom/google/android/gms/internal/iu;

    iget-object v0, p0, Lcom/google/firebase/database/i;->b:Lcom/google/android/gms/internal/iu;

    .line 2000
    iget-object v1, p0, Lcom/google/firebase/database/i;->a:Lcom/google/android/gms/internal/jb;

    iget-object v2, p0, Lcom/google/firebase/database/i;->b:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    .line 1000
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v1

    .line 0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/jb;-><init>(Lcom/google/android/gms/internal/ls;)V

    new-instance v1, Lcom/google/android/gms/internal/iu;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/i;-><init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/iu;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/i;->a:Lcom/google/android/gms/internal/jb;

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/i;

    iget-object v0, v0, Lcom/google/firebase/database/i;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/i;->b:Lcom/google/android/gms/internal/iu;

    check-cast p1, Lcom/google/firebase/database/i;

    iget-object v1, p1, Lcom/google/firebase/database/i;->b:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/i;->b:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/lf;->a:Ljava/lang/String;

    .line 0
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/i;->a:Lcom/google/android/gms/internal/jb;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    .line 0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ls;->a(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "MutableData { key = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "<none>"

    goto :goto_0
.end method
