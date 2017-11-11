.class final Lcom/google/android/gms/internal/afr$b;
.super Lcom/google/android/gms/internal/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/afr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/f$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/afs;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/gms/internal/zzzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzm;Lcom/google/android/gms/common/api/c;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/afo;->c:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/f$a;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/afr$b;->h:Lcom/google/android/gms/internal/zzzm;

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/a$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/afs;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/afr$b$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/afr$b$1;-><init>(Lcom/google/android/gms/internal/afr$b;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/afr$b;->h:Lcom/google/android/gms/internal/zzzm;

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->i:Lcom/google/android/gms/internal/afo$c;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->h:Lcom/google/android/gms/internal/qg$d;

    iget-object v2, v2, Lcom/google/android/gms/internal/qg$d;->k:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->h:Lcom/google/android/gms/internal/qg$d;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzzm;->i:Lcom/google/android/gms/internal/afo$c;

    invoke-interface {v3}, Lcom/google/android/gms/internal/afo$c;->a()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/qg$d;->k:[B

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->j:Lcom/google/android/gms/internal/afo$c;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->h:Lcom/google/android/gms/internal/qg$d;

    iget-object v2, v2, Lcom/google/android/gms/internal/qg$d;->r:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->h:Lcom/google/android/gms/internal/qg$d;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzzm;->j:Lcom/google/android/gms/internal/afo$c;

    invoke-interface {v3}, Lcom/google/android/gms/internal/afo$c;->a()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/qg$d;->r:[B

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/zzzm;->h:Lcom/google/android/gms/internal/qg$d;

    invoke-static {v2}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/qc;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzzm;->b:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/afr$b;->h:Lcom/google/android/gms/internal/zzzm;

    .line 3000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/afs;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/afv;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/afv;->a(Lcom/google/android/gms/internal/afu;Lcom/google/android/gms/internal/zzzm;)V

    .line 1000
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ClearcutLoggerApiImpl"

    const-string/jumbo v2, "derived ClearcutLogger.MessageProducer "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string/jumbo v2, "MessageProducer"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/afr$b;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected final synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/g;
    .locals 0

    .prologue
    .line 0
    return-object p1
.end method
