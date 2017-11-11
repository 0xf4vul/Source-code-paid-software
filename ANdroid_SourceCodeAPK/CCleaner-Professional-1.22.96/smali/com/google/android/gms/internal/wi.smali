.class public final Lcom/google/android/gms/internal/wi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/f;

.field private final c:Lcom/google/android/gms/internal/yr;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    .line 0
    const-string/jumbo v0, "resize"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "playVideo"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "storePicture"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "createCalendarEvent"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "setOrientationProperties"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "closeResizedAd"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 9000
    new-instance v12, Landroid/support/v4/h/a;

    invoke-direct {v12, v13}, Landroid/support/v4/h/a;-><init>(I)V

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/wi;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/yr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/ads/internal/f;

    iput-object p2, p0, Lcom/google/android/gms/internal/wi;->c:Lcom/google/android/gms/internal/yr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 0
    const-string/jumbo v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/wi;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/ads/internal/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/ads/internal/f;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/f;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/ads/internal/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/f;->a(Ljava/lang/String;)V

    .line 8000
    :goto_0
    return-void

    .line 0
    :cond_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "Unknown MRAID command called."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/google/android/gms/internal/wi;->c:Lcom/google/android/gms/internal/yr;

    .line 1000
    iget-object v7, v6, Lcom/google/android/gms/internal/yr;->j:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    if-nez v1, :cond_1

    const-string/jumbo v1, "Not an activity context. Cannot resize."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Webview is not yet available, size is not set."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_0

    :cond_2
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_0

    :cond_3
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Cannot resize an expanded banner."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_0

    .line 2000
    :cond_4
    const-string/jumbo v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    const-string/jumbo v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/yr;->i:I

    :cond_5
    const-string/jumbo v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    const-string/jumbo v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/yr;->f:I

    :cond_6
    const-string/jumbo v1, "offsetX"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    const-string/jumbo v1, "offsetX"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/yr;->g:I

    :cond_7
    const-string/jumbo v1, "offsetY"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    const-string/jumbo v1, "offsetY"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/yr;->h:I

    :cond_8
    const-string/jumbo v1, "allowOffscreen"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "allowOffscreen"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/google/android/gms/internal/yr;->c:Z

    :cond_9
    const-string/jumbo v1, "customClosePosition"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v1, v6, Lcom/google/android/gms/internal/yr;->b:Ljava/lang/String;

    .line 3000
    :cond_a
    iget v1, v6, Lcom/google/android/gms/internal/yr;->i:I

    if-ltz v1, :cond_b

    iget v1, v6, Lcom/google/android/gms/internal/yr;->f:I

    if-ltz v1, :cond_b

    move v1, v5

    .line 1000
    :goto_1
    if-nez v1, :cond_c

    const-string/jumbo v1, "Invalid width and height options. Cannot resize."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_0

    :cond_b
    move v1, v4

    .line 3000
    goto :goto_1

    .line 1000
    :cond_c
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    const-string/jumbo v1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v6}, Lcom/google/android/gms/internal/yr;->a()[I

    move-result-object v9

    if-nez v9, :cond_f

    const-string/jumbo v1, "Resize location out of screen or close button is not visible."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    iget v2, v6, Lcom/google/android/gms/internal/yr;->i:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v10

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    iget v2, v6, Lcom/google/android/gms/internal/yr;->f:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v11

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_13

    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    iget-object v12, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v12}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    if-nez v1, :cond_12

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v6, Lcom/google/android/gms/internal/yr;->s:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v12, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    invoke-direct {v2, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lcom/google/android/gms/internal/yr;->n:Landroid/widget/ImageView;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/yr;->m:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->s:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/adj;->a(Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    iget-boolean v1, v6, Lcom/google/android/gms/internal/yr;->c:Z

    if-nez v1, :cond_14

    move v1, v5

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v2

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v1, v2, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/yr;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    const/16 v10, 0x32

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v10, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v1, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_10
    :goto_4
    packed-switch v3, :pswitch_data_1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_5
    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->o:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/google/android/gms/internal/yr$1;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/yr$1;-><init>(Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->o:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "Close button"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    iget-object v3, v6, Lcom/google/android/gms/internal/yr;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v4, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    const/4 v5, 0x0

    aget v5, v9, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v5, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    const/4 v8, 0x1

    aget v8, v9, v8

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4000
    :try_start_3
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->p:Lcom/google/android/gms/internal/yx;

    if-eqz v1, :cond_11

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->p:Lcom/google/android/gms/internal/yx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yx;->L()V

    .line 1000
    :cond_11
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    iget-object v3, v6, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/gms/ads/d;

    iget v5, v6, Lcom/google/android/gms/internal/yr;->i:I

    iget v8, v6, Lcom/google/android/gms/internal/yr;->f:I

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/aer;->a(Lcom/google/android/gms/internal/zzeg;)V

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/internal/yr;->a(II)V

    const-string/jumbo v1, "resized"

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->b(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_0

    :cond_12
    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_0

    :cond_14
    move v1, v4

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v5, "top-left"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v3, v4

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v4, "top-center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v3, v5

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo v4, "center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x2

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v4, "bottom-left"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x3

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v4, "bottom-center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x4

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v4, "bottom-right"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x5

    goto/16 :goto_4

    :pswitch_2
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :pswitch_3
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :pswitch_4
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :pswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :pswitch_6
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :pswitch_7
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Cannot show popup window: "

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/yr;->a(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->r:Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->s:Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->s:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->s:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/yr;->k:Lcom/google/android/gms/internal/aer;

    iget-object v2, v6, Lcom/google/android/gms/internal/yr;->m:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/aer;->a(Lcom/google/android/gms/internal/zzeg;)V

    :cond_15
    monitor-exit v7

    goto/16 :goto_0

    :cond_16
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 0
    :pswitch_8
    new-instance v2, Lcom/google/android/gms/internal/yq;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/yq;-><init>(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V

    .line 5000
    iget-object v1, v2, Lcom/google/android/gms/internal/yq;->a:Landroid/content/Context;

    if-nez v1, :cond_17

    const-string/jumbo v1, "Activity context is not available."

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/yq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, v2, Lcom/google/android/gms/internal/yq;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/tu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tu;->b()Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "This feature is not available on the device."

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/yq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, v2, Lcom/google/android/gms/internal/yq;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->c(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/acz;->q()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_19

    sget v1, Lcom/google/android/gms/a$c;->create_calendar_title:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_1a

    sget v1, Lcom/google/android/gms/a$c;->create_calendar_message:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_1b

    sget v1, Lcom/google/android/gms/a$c;->accept:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    new-instance v5, Lcom/google/android/gms/internal/yq$1;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/yq$1;-><init>(Lcom/google/android/gms/internal/yq;)V

    invoke-virtual {v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_1c

    sget v1, Lcom/google/android/gms/a$c;->decline:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_a
    new-instance v4, Lcom/google/android/gms/internal/yq$2;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/yq$2;-><init>(Lcom/google/android/gms/internal/yq;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v1, "Create calendar event"

    goto :goto_7

    :cond_1a
    const-string/jumbo v1, "Allow Ad to create a calendar event?"

    goto :goto_8

    :cond_1b
    const-string/jumbo v1, "Accept"

    goto :goto_9

    :cond_1c
    const-string/jumbo v1, "Decline"

    goto :goto_a

    .line 0
    :pswitch_9
    new-instance v3, Lcom/google/android/gms/internal/yt;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/internal/yt;-><init>(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V

    .line 6000
    iget-object v1, v3, Lcom/google/android/gms/internal/yt;->b:Landroid/content/Context;

    if-nez v1, :cond_1d

    const-string/jumbo v1, "Activity context is not available"

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yt;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, v3, Lcom/google/android/gms/internal/yt;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/tu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tu;->a()Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v1, "Feature is not supported by the device."

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yt;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v1, v3, Lcom/google/android/gms/internal/yt;->a:Ljava/util/Map;

    const-string/jumbo v2, "iurl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v1, "Image url cannot be empty."

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yt;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v2, "Invalid image url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yt;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 7000
    :cond_21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {v4}, Lcom/google/android/gms/internal/adj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string/jumbo v2, "Image type not recognized: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yt;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->q()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v2, v3, Lcom/google/android/gms/internal/yt;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/adj;->c(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    if-eqz v5, :cond_24

    sget v2, Lcom/google/android/gms/a$c;->store_picture_title:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_25

    sget v2, Lcom/google/android/gms/a$c;->store_picture_message:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_26

    sget v2, Lcom/google/android/gms/a$c;->accept:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_f
    new-instance v7, Lcom/google/android/gms/internal/yt$1;

    invoke-direct {v7, v3, v1, v4}, Lcom/google/android/gms/internal/yt$1;-><init>(Lcom/google/android/gms/internal/yt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_27

    sget v1, Lcom/google/android/gms/a$c;->decline:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_10
    new-instance v2, Lcom/google/android/gms/internal/yt$2;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yt$2;-><init>(Lcom/google/android/gms/internal/yt;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v2, "Save image"

    goto :goto_d

    :cond_25
    const-string/jumbo v2, "Allow Ad to store image in Picture gallery?"

    goto :goto_e

    :cond_26
    const-string/jumbo v2, "Accept"

    goto :goto_f

    :cond_27
    const-string/jumbo v1, "Decline"

    goto :goto_10

    .line 0
    :pswitch_a
    new-instance v2, Lcom/google/android/gms/internal/ys;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ys;-><init>(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V

    .line 8000
    iget-object v1, v2, Lcom/google/android/gms/internal/ys;->a:Lcom/google/android/gms/internal/aer;

    if-nez v1, :cond_28

    const-string/jumbo v1, "AdWebView is null"

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v1, "portrait"

    iget-object v4, v2, Lcom/google/android/gms/internal/ys;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adk;->b()I

    move-result v1

    :goto_11
    iget-object v2, v2, Lcom/google/android/gms/internal/ys;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/aer;->b(I)V

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v1, "landscape"

    iget-object v4, v2, Lcom/google/android/gms/internal/ys;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adk;->a()I

    move-result v1

    goto :goto_11

    :cond_2a
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ys;->b:Z

    if-eqz v1, :cond_2b

    move v1, v3

    goto :goto_11

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adk;->c()I

    move-result v1

    goto :goto_11

    .line 0
    :pswitch_b
    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->c:Lcom/google/android/gms/internal/yr;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/yr;->a(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1000
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x3c587281 -> :sswitch_0
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_5
        0x4ccee637 -> :sswitch_4
        0x68a23bcd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
