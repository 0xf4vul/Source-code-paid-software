.class public final Lcom/google/android/gms/internal/vt;
.super Lcom/google/android/gms/internal/vo$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vo$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vt;->a:Lcom/google/android/gms/ads/formats/c$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/vj;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->a:Lcom/google/android/gms/ads/formats/c$a;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/vk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/vk;-><init>(Lcom/google/android/gms/internal/vj;)V

    .line 0
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/c$a;->a(Lcom/google/android/gms/ads/formats/c;)V

    return-void
.end method
