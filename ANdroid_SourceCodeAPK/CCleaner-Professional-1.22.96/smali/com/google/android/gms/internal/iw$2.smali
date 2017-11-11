.class final Lcom/google/android/gms/internal/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iw$a;

.field final synthetic b:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iw$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$2;->b:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$2;->a:Lcom/google/android/gms/internal/iw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$2;->b:Lcom/google/android/gms/internal/iw;

    new-instance v1, Lcom/google/android/gms/internal/jk;

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$2;->b:Lcom/google/android/gms/internal/iw;

    iget-object v3, p0, Lcom/google/android/gms/internal/iw$2;->a:Lcom/google/android/gms/internal/iw$a;

    invoke-static {v3}, Lcom/google/android/gms/internal/iw$a;->i(Lcom/google/android/gms/internal/iw$a;)Lcom/google/firebase/database/n;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/iw$2;->a:Lcom/google/android/gms/internal/iw$a;

    invoke-static {v4}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/ip;)V

    return-void
.end method
