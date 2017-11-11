.class final Lcom/google/ads/mediation/a$c;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/internal/sb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lcom/google/android/gms/ads/mediation/d;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$c;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/d;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/d;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/d;->a()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/d;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/d;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a$c;->b:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/d;->e()V

    return-void
.end method
