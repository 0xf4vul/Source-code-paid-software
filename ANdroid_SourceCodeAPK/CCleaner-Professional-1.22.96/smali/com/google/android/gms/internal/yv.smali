.class public final Lcom/google/android/gms/internal/yv;
.super Lcom/google/android/gms/internal/yw;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field private final h:Lcom/google/android/gms/internal/aer;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/view/WindowManager;

.field private final k:Lcom/google/android/gms/internal/tu;

.field private l:F

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aer;Landroid/content/Context;Lcom/google/android/gms/internal/tu;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/yw;-><init>(Lcom/google/android/gms/internal/aer;)V

    iput v0, p0, Lcom/google/android/gms/internal/yv;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->g:I

    iput-object p1, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    iput-object p2, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/yv;->k:Lcom/google/android/gms/internal/tu;

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/yv;->j:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->c(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/yv;->f:I

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/yv;->g:I

    :cond_1
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/yv;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/yv;->g:I

    .line 1000
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yw;->t:Lcom/google/android/gms/internal/aer;

    const-string/jumbo v2, "onDefaultPositionReceived"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    .line 3000
    iput p1, v0, Lcom/google/android/gms/internal/yr;->d:I

    iput p2, v0, Lcom/google/android/gms/internal/yr;->e:I

    .line 0
    :cond_2
    return-void

    .line 1000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while dispatching default position."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 10
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
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 0
    .line 5000
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->j:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/yv;->l:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/yv;->m:I

    .line 6000
    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aea;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/yv;->b:I

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aea;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/yv;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/yv;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->d:I

    iget v0, p0, Lcom/google/android/gms/internal/yv;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->e:I

    .line 7000
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/yv;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->f:I

    iget v0, p0, Lcom/google/android/gms/internal/yv;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/yv;->g:I

    .line 8000
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/yv;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/yv;->c:I

    iget v3, p0, Lcom/google/android/gms/internal/yv;->d:I

    iget v4, p0, Lcom/google/android/gms/internal/yv;->e:I

    iget v5, p0, Lcom/google/android/gms/internal/yv;->l:F

    iget v6, p0, Lcom/google/android/gms/internal/yv;->m:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/yv;->a(IIIIFI)V

    .line 10000
    new-instance v0, Lcom/google/android/gms/internal/yu$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/yu$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->k:Lcom/google/android/gms/internal/tu;

    .line 11000
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/tu;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 12000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/yu$a;->b:Z

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->k:Lcom/google/android/gms/internal/tu;

    .line 13000
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sms:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/tu;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 14000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/yu$a;->a:Z

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->k:Lcom/google/android/gms/internal/tu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tu;->b()Z

    move-result v1

    .line 15000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/yu$a;->c:Z

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->k:Lcom/google/android/gms/internal/tu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tu;->a()Z

    move-result v1

    .line 16000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/yu$a;->d:Z

    .line 17000
    iput-boolean v8, v0, Lcom/google/android/gms/internal/yu$a;->e:Z

    .line 18000
    new-instance v1, Lcom/google/android/gms/internal/yu;

    invoke-direct {v1, v0, v7}, Lcom/google/android/gms/internal/yu;-><init>(Lcom/google/android/gms/internal/yu$a;B)V

    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    const-string/jumbo v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yu;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/aer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19000
    new-array v0, v9, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aer;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v2, p0, Lcom/google/android/gms/internal/yv;->i:Landroid/content/Context;

    aget v0, v0, v8

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/yv;->a(II)V

    .line 20000
    invoke-static {v9}, Lcom/google/android/gms/internal/adf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    .line 21000
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "js"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yw;->t:Lcom/google/android/gms/internal/aer;

    const-string/jumbo v2, "onReadyEventReceived"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    .line 6000
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aea;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/yv;->d:I

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, p0, Lcom/google/android/gms/internal/yv;->a:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aea;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/yv;->e:I

    goto/16 :goto_0

    .line 7000
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/yv;->h:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/aer;->measure(II)V

    goto/16 :goto_1

    .line 21000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while dispatching ready Event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
