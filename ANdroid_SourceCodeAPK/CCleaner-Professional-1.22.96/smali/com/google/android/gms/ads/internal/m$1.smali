.class final Lcom/google/android/gms/ads/internal/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aes$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/m;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/acw;

.field final synthetic b:Lcom/google/android/gms/ads/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/acw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m$1;->b:Lcom/google/android/gms/ads/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/m$1;->a:Lcom/google/android/gms/internal/acw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/rd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$1;->b:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m$1;->a:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/rd;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$1;->a:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/rd$b;)V

    return-void
.end method
