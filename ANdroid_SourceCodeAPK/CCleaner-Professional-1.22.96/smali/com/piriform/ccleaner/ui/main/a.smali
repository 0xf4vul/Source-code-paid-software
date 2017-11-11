.class public final Lcom/piriform/ccleaner/ui/main/a;
.super Lcom/piriform/ccleaner/ui/main/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/main/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/piriform/ccleaner/b/a;

.field b:Lcom/piriform/ccleaner/settings/a;

.field c:Lcom/piriform/ccleaner/b/f;

.field private final e:I

.field private f:Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;

.field private g:Lcom/piriform/ccleaner/a/a/d$b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f030052

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/d;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    .line 57
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->g:Lcom/piriform/ccleaner/a/a/d$b;

    .line 72
    iput p3, p0, Lcom/piriform/ccleaner/ui/main/a;->e:I

    .line 73
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/main/a;)V

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)Lcom/piriform/ccleaner/ui/main/a;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/piriform/ccleaner/ui/main/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/piriform/ccleaner/ui/main/a;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->c:Lcom/piriform/ccleaner/b/f;

    const-string/jumbo v1, "Requesting advert"

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    .line 9116
    new-instance v0, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/c$a;-><init>()V

    .line 9120
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/a;->f:Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->getNativeAdvert()Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->a(Lcom/google/android/gms/ads/c;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/a;)V
    .locals 2

    .prologue
    .line 9154
    sget-object v0, Lcom/piriform/ccleaner/ui/main/a$2;->a:[I

    iget v1, p0, Lcom/piriform/ccleaner/ui/main/a;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 9157
    :goto_0
    return-void

    .line 9156
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->Q:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    goto :goto_0

    .line 9159
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->T:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    goto :goto_0

    .line 9154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/a;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 9167
    sget-object v0, Lcom/piriform/ccleaner/ui/main/a$2;->a:[I

    iget v1, p0, Lcom/piriform/ccleaner/ui/main/a;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 9170
    :goto_0
    return-void

    .line 9169
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->R:Lcom/piriform/ccleaner/b/b;

    invoke-static {p1}, Lcom/piriform/ccleaner/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    goto :goto_0

    .line 9172
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->U:Lcom/piriform/ccleaner/b/b;

    invoke-static {p1}, Lcom/piriform/ccleaner/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    goto :goto_0

    .line 9167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/main/a;)V
    .locals 2

    .prologue
    .line 9180
    sget-object v0, Lcom/piriform/ccleaner/ui/main/a$2;->a:[I

    iget v1, p0, Lcom/piriform/ccleaner/ui/main/a;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 9183
    :goto_0
    return-void

    .line 9182
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->S:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    goto :goto_0

    .line 9185
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->V:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    goto :goto_0

    .line 9180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupAdLoadedListener(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->f:Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;->getNativeAdvert()Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/ui/main/a$1;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/ui/main/a$1;-><init>(Lcom/piriform/ccleaner/ui/main/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 78
    .line 1082
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/a;->b:Lcom/piriform/ccleaner/settings/a;

    .line 2024
    iget-boolean v0, v2, Lcom/piriform/ccleaner/settings/a;->d:Z

    if-nez v0, :cond_0

    .line 2026
    :try_start_0
    iget-object v0, v2, Lcom/piriform/ccleaner/settings/a;->a:Landroid/content/Context;

    iget-object v3, v2, Lcom/piriform/ccleaner/settings/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/piriform/ccleaner/settings/a;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4000
    invoke-static {}, Lcom/google/android/gms/internal/tk;->a()Lcom/google/android/gms/internal/tk;

    move-result-object v4

    .line 5000
    sget-object v5, Lcom/google/android/gms/internal/tk;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v4, Lcom/google/android/gms/internal/tk;->b:Lcom/google/android/gms/internal/tb;

    if-eqz v6, :cond_2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2027
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v2, Lcom/piriform/ccleaner/settings/a;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1083
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->f:Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;

    if-nez v0, :cond_5

    .line 6016
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5092
    check-cast v0, Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->f:Lcom/piriform/ccleaner/ui/activity/CustomSizedNativeExpressAdView;

    .line 7016
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5093
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/main/a;->setupAdLoadedListener(Landroid/view/View;)V

    .line 1085
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/main/a;->a()V

    :cond_1
    :goto_2
    return-void

    .line 5000
    :cond_2
    if-nez v0, :cond_3

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Context cannot be null."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2028
    :catch_0
    move-exception v0

    .line 2037
    iget-object v2, v2, Lcom/piriform/ccleaner/settings/a;->c:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5000
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/so;->b()Lcom/google/android/gms/internal/sn;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/tb;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/gms/internal/tk;->b:Lcom/google/android/gms/internal/tb;

    iget-object v6, v4, Lcom/google/android/gms/internal/tk;->b:Lcom/google/android/gms/internal/tb;

    invoke-interface {v6}, Lcom/google/android/gms/internal/tb;->b()V

    if-eqz v3, :cond_4

    iget-object v6, v4, Lcom/google/android/gms/internal/tk;->b:Lcom/google/android/gms/internal/tb;

    new-instance v7, Lcom/google/android/gms/internal/tk$1;

    invoke-direct {v7, v4, v0}, Lcom/google/android/gms/internal/tk$1;-><init>(Lcom/google/android/gms/internal/tk;Landroid/content/Context;)V

    invoke-static {v7}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v6, v3, v0}, Lcom/google/android/gms/internal/tb;->a(Ljava/lang/String;Lcom/google/android/gms/a/a;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_3
    :try_start_6
    monitor-exit v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "MobileAdsSettingManager initialization failed"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 8059
    :cond_5
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 7103
    check-cast v0, Lcom/piriform/ccleaner/a/a/n;

    .line 8160
    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/a;->c:Lcom/piriform/ccleaner/a/a/d$b;

    .line 9109
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a;->g:Lcom/piriform/ccleaner/a/a/d$b;

    sget-object v3, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    if-eq v0, v3, :cond_6

    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    if-ne v2, v0, :cond_6

    move v0, v1

    .line 9111
    :goto_4
    iput-object v2, p0, Lcom/piriform/ccleaner/ui/main/a;->g:Lcom/piriform/ccleaner/a/a/d$b;

    .line 1086
    if-eqz v0, :cond_1

    .line 1087
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/main/a;->a()V

    goto :goto_2

    .line 9109
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method
