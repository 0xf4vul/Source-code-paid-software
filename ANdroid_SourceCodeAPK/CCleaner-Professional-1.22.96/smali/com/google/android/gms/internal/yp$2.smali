.class final Lcom/google/android/gms/internal/yp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/yp;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/yp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yp$2;->a:Lcom/google/android/gms/internal/yp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yp$2;->a:Lcom/google/android/gms/internal/yp;

    invoke-static {v0}, Lcom/google/android/gms/internal/yp;->a(Lcom/google/android/gms/internal/yp;)Lcom/google/android/gms/ads/mediation/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/f;->h()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/yp$2;->a:Lcom/google/android/gms/internal/yp;

    invoke-static {v0}, Lcom/google/android/gms/internal/yp;->c(Lcom/google/android/gms/internal/yp;)Lcom/google/android/gms/internal/ur;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yp$2;->a:Lcom/google/android/gms/internal/yp;

    invoke-static {v1}, Lcom/google/android/gms/internal/yp;->b(Lcom/google/android/gms/internal/yp;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ur;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const-string/jumbo v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yp$2;->a:Lcom/google/android/gms/internal/yp;

    invoke-static {v0}, Lcom/google/android/gms/internal/yp;->a(Lcom/google/android/gms/internal/yp;)Lcom/google/android/gms/ads/mediation/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/f;->g()V

    return-void
.end method
