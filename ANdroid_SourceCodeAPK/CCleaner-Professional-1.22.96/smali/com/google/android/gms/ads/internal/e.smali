.class public final Lcom/google/android/gms/ads/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ws;

.field public final b:Lcom/google/android/gms/ads/internal/overlay/l;

.field public final c:Lcom/google/android/gms/ads/internal/overlay/o;

.field public final d:Lcom/google/android/gms/internal/aco;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ws;Lcom/google/android/gms/ads/internal/overlay/l;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/aco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/internal/ws;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/e;->b:Lcom/google/android/gms/ads/internal/overlay/l;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/e;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/e;->d:Lcom/google/android/gms/internal/aco;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/e;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/vy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/vy;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/v;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/v;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/acl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/acl;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/e;-><init>(Lcom/google/android/gms/internal/ws;Lcom/google/android/gms/ads/internal/overlay/l;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/aco;)V

    return-object v0
.end method
