.class final Lcom/google/android/gms/internal/dv$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/dv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/dv;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dv$a;-><init>(Lcom/google/android/gms/internal/dv;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dv;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "onActivityCreated"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/dv;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ee;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dv;->q()Lcom/google/android/gms/internal/ee;

    .line 2000
    const-string/jumbo v5, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "https://www.google.com"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android-app://com.google.appcrawler"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    .line 0
    :goto_0
    if-eqz v2, :cond_4

    const-string/jumbo v2, "gs"

    :goto_1
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    const-string/jumbo v6, "_cmp"

    invoke-virtual {v5, v2, v6, v4}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string/jumbo v2, "referrer"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v1

    .line 2000
    goto :goto_0

    .line 0
    :cond_4
    const-string/jumbo v2, "auto"

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "gclid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "utm_campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "utm_source"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "utm_medium"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "utm_term"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "utm_content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    :goto_3
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dv;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    .line 7000
    if-eqz p2, :cond_2

    const-string/jumbo v1, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dw;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v0

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/dw$a;->d:J

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/dw$a;->b:Ljava/lang/String;

    const-string/jumbo v2, "referrer_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/dw$a;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 0
    goto :goto_3

    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Activity created with referrer"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5000
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    const-string/jumbo v1, "auto"

    const-string/jumbo v3, "_ldl"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/internal/dw;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    .line 9000
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dw;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/measurement/AppMeasurement$f;

    iput-object v2, v0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/measurement/AppMeasurement$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/dw;->d:J

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/measurement/AppMeasurement$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/dw$2;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/dw$2;-><init>(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/dw$a;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->s()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    .line 10000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/dz$4;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/internal/dz$4;-><init>(Lcom/google/android/gms/internal/dz;J)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    .line 11000
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dw;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/dw$a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/dw;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/dw$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->f()Lcom/google/android/gms/internal/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cq;->a()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->s()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    .line 12000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/dz$3;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/internal/dz$3;-><init>(Lcom/google/android/gms/internal/dz;J)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv$a;->a:Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    .line 13000
    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/dw;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw$a;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "id"

    iget-wide v4, v0, Lcom/google/android/gms/internal/dw$a;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/google/android/gms/internal/dw$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "referrer_name"

    iget-object v0, v0, Lcom/google/android/gms/internal/dw$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 0
    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
