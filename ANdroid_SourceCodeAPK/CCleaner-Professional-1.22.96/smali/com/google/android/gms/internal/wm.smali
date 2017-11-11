.class public final Lcom/google/android/gms/internal/wm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    :cond_0
    :goto_0
    return p3

    :catch_0
    move-exception v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Could not parse "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in a video GMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 12
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
    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v4, 0x0

    .line 0
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Action missing from video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string/jumbo v2, "google.afma.Notify_dt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Video GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "color"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "Color parameter missing from color video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/aer;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Invalid color parameter in video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->w()Lcom/google/android/gms/internal/aeq;

    move-result-object v3

    if-nez v3, :cond_5

    const-string/jumbo v0, "Could not get underlay container for a video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v1, "position"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v5, :cond_6

    if-eqz v1, :cond_9

    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v1, "y"

    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v1, "w"

    invoke-static {v0, p2, v1, v11}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v1, "h"

    invoke-static {v0, p2, v1, v11}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ud;->cp:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    :cond_7
    :try_start_1
    const-string/jumbo v0, "player"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    const-string/jumbo v0, "spherical"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aeq;->a()Lcom/google/android/gms/ads/internal/overlay/m;

    move-result-object v5

    if-nez v5, :cond_8

    .line 2000
    iget-object v5, v3, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/google/android/gms/internal/aeq;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/aer;->y()Lcom/google/android/gms/internal/uk;

    move-result-object v5

    .line 3000
    iget-object v5, v5, Lcom/google/android/gms/internal/uk;->b:Lcom/google/android/gms/internal/ul;

    .line 2000
    iget-object v8, v3, Lcom/google/android/gms/internal/aeq;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v8}, Lcom/google/android/gms/internal/aer;->x()Lcom/google/android/gms/internal/uj;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "vpr2"

    aput-object v10, v9, v4

    invoke-static {v5, v8, v9}, Lcom/google/android/gms/internal/uh;->a(Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    new-instance v5, Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v8, v3, Lcom/google/android/gms/internal/aeq;->b:Landroid/content/Context;

    iget-object v9, v3, Lcom/google/android/gms/internal/aeq;->a:Lcom/google/android/gms/internal/aer;

    iget-object v10, v3, Lcom/google/android/gms/internal/aeq;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v10}, Lcom/google/android/gms/internal/aer;->y()Lcom/google/android/gms/internal/uk;

    move-result-object v10

    .line 4000
    iget-object v10, v10, Lcom/google/android/gms/internal/uk;->b:Lcom/google/android/gms/internal/ul;

    .line 2000
    invoke-direct {v5, v8, v9, v0, v10}, Lcom/google/android/gms/ads/internal/overlay/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aer;ZLcom/google/android/gms/internal/ul;)V

    iput-object v5, v3, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v0, v3, Lcom/google/android/gms/internal/aeq;->c:Landroid/view/ViewGroup;

    iget-object v5, v3, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-virtual {v0, v6, v7, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/m;->a(IIII)V

    iget-object v0, v3, Lcom/google/android/gms/internal/aeq;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    .line 5000
    iput-boolean v4, v0, Lcom/google/android/gms/internal/aes;->f:Z

    goto/16 :goto_0

    .line 6000
    :cond_8
    const-string/jumbo v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-virtual {v0, v6, v7, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/m;->a(IIII)V

    goto/16 :goto_0

    .line 0
    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/aeq;->a()Lcom/google/android/gms/ads/internal/overlay/m;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Lcom/google/android/gms/internal/aer;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v1, "y"

    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-float v5, v2

    int-to-float v6, v3

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 7000
    iget-object v1, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v1, :cond_b

    iget-object v1, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 0
    :cond_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "currentTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v0, "time"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    const-string/jumbo v0, "Time parameter missing from currentTime video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 8000
    iget-object v2, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/overlay/k;->a(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 0
    :catch_1
    move-exception v1

    const-string/jumbo v1, "Could not parse time parameter from currentTime video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const-string/jumbo v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/overlay/m;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "load"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/m;->h()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "muted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v0, "muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 9000
    iget-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/k;->f()V

    goto/16 :goto_0

    .line 10000
    :cond_12
    iget-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/k;->g()V

    goto/16 :goto_0

    .line 0
    :cond_13
    const-string/jumbo v1, "pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/m;->i()V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v1, "play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 11000
    iget-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/k;->d()V

    goto/16 :goto_0

    .line 0
    :cond_15
    const-string/jumbo v1, "show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v8, v4}, Lcom/google/android/gms/ads/internal/overlay/m;->setVisibility(I)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v1, "src"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12000
    iput-object v0, v8, Lcom/google/android/gms/ads/internal/overlay/m;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 0
    :cond_17
    const-string/jumbo v1, "touchMove"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dx"

    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "dy"

    invoke-static {v0, p2, v2, v4}, Lcom/google/android/gms/internal/wm;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    .line 13000
    iget-object v2, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v2, :cond_18

    iget-object v2, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/k;->a(FF)V

    .line 0
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wm;->a:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->i()Lcom/google/android/gms/ads/internal/overlay/f;

    move-result-object v0

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/f;->l:Lcom/google/android/gms/ads/internal/overlay/f$b;

    .line 15000
    iput-boolean v9, v0, Lcom/google/android/gms/ads/internal/overlay/f$b;->b:Z

    .line 0
    iput-boolean v9, p0, Lcom/google/android/gms/internal/wm;->a:Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v1, "volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v0, "volume"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1a

    const-string/jumbo v0, "Level parameter missing from volume video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    :try_start_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 16000
    iget-object v2, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/overlay/k;->a(F)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 0
    :catch_2
    move-exception v1

    const-string/jumbo v1, "Could not parse volume parameter from volume video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_1c
    const-string/jumbo v1, "watermark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/m;->j()V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v1, "Unknown video action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
