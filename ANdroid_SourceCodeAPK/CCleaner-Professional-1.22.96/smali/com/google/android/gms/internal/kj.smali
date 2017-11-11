.class public final Lcom/google/android/gms/internal/kj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/km;


# instance fields
.field private final a:Lcom/google/android/gms/internal/iu;

.field private final b:Lcom/google/android/gms/internal/ip;

.field private final c:Lcom/google/firebase/database/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;Lcom/google/android/gms/internal/iu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->b:Lcom/google/android/gms/internal/ip;

    iput-object p3, p0, Lcom/google/android/gms/internal/kj;->a:Lcom/google/android/gms/internal/iu;

    iput-object p2, p0, Lcom/google/android/gms/internal/kj;->c:Lcom/google/firebase/database/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->b:Lcom/google/android/gms/internal/ip;

    iget-object v1, p0, Lcom/google/android/gms/internal/kj;->c:Lcom/google/firebase/database/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ip;->a(Lcom/google/firebase/database/b;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
