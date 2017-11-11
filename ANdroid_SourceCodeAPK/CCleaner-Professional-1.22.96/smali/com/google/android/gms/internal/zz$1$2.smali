.class final Lcom/google/android/gms/internal/zz$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aes$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zz$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zz$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zz$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zz$1$2;->a:Lcom/google/android/gms/internal/zz$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Z)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zz$1$2;->a:Lcom/google/android/gms/internal/zz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zz;->e:Lcom/google/android/gms/ads/internal/r;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->M()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zz$1$2;->a:Lcom/google/android/gms/internal/zz$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zz$1;->b:Lcom/google/android/gms/internal/aee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aee;->b(Ljava/lang/Object;)V

    return-void
.end method
