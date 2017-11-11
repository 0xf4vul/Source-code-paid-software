.class final Lcom/google/android/gms/internal/adh$15;
.super Lcom/google/android/gms/internal/adh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/adh$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/adh$15;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/adh$15;->b:Lcom/google/android/gms/internal/adh$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/adh$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/adh$15;->a:Landroid/content/Context;

    .line 1000
    const-string/jumbo v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "app_settings_json"

    const-string/jumbo v3, "app_settings_json"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "app_settings_last_update_ms"

    const-string/jumbo v3, "app_settings_last_update_ms"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/adh$15;->b:Lcom/google/android/gms/internal/adh$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/adh$15;->b:Lcom/google/android/gms/internal/adh$b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/adh$b;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
