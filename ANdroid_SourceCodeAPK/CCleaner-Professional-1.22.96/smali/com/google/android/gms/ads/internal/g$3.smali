.class final Lcom/google/android/gms/ads/internal/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aes$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/rd;

.field final synthetic b:Lcom/google/android/gms/internal/acw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rd;Lcom/google/android/gms/internal/acw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/g$3;->a:Lcom/google/android/gms/internal/rd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/g$3;->b:Lcom/google/android/gms/internal/acw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g$3;->a:Lcom/google/android/gms/internal/rd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g$3;->b:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/rd$b;)V

    return-void
.end method
