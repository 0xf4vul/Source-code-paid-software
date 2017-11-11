.class final Lcom/google/android/gms/internal/iw$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ji;

.field final synthetic b:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/ji;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$11;->b:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$11;->a:Lcom/google/android/gms/internal/ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$11;->b:Lcom/google/android/gms/internal/iw;

    const-string/jumbo v2, "Persisted write"

    iget-object v3, p0, Lcom/google/android/gms/internal/iw$11;->a:Lcom/google/android/gms/internal/ji;

    .line 1000
    iget-object v3, v3, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/lang/String;Lcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$11;->b:Lcom/google/android/gms/internal/iw;

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$11;->a:Lcom/google/android/gms/internal/ji;

    .line 2000
    iget-wide v2, v2, Lcom/google/android/gms/internal/ji;->a:J

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/iw$11;->a:Lcom/google/android/gms/internal/ji;

    .line 3000
    iget-object v4, v4, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;JLcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V

    return-void
.end method
