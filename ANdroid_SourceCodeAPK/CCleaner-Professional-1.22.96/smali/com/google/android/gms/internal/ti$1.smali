.class final Lcom/google/android/gms/internal/ti$1;
.super Lcom/google/android/gms/internal/sq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/gms/internal/ti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ti;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ti$1;->c:Lcom/google/android/gms/internal/ti;

    invoke-direct {p0}, Lcom/google/android/gms/internal/sq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti$1;->c:Lcom/google/android/gms/internal/ti;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->b:Lcom/google/android/gms/ads/g;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/ti$1;->c:Lcom/google/android/gms/internal/ti;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ti;->c()Lcom/google/android/gms/internal/te;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/internal/te;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/sq;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti$1;->c:Lcom/google/android/gms/internal/ti;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->b:Lcom/google/android/gms/ads/g;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/ti$1;->c:Lcom/google/android/gms/internal/ti;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ti;->c()Lcom/google/android/gms/internal/te;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/internal/te;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/sq;->b()V

    return-void
.end method
