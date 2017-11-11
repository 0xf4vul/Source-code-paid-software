.class public final Lcom/facebook/ads/internal/m/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/m/x$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/ads/internal/m/x$a;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/h;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/m/x$a;->c:Lcom/facebook/ads/internal/m/x$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/m/x;->a:Lcom/facebook/ads/internal/m/x$a;

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->c:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/facebook/ads/internal/m/x$1;->a:[I

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/m/x$a;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/m/x$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/m/x$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lcom/facebook/ads/internal/e;

    sget-object v1, Lcom/facebook/ads/internal/a;->p:Lcom/facebook/ads/internal/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported BidPayload type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/m/ac;->a(Ljava/lang/Exception;Landroid/content/Context;)Lcom/facebook/ads/internal/h/p;

    new-instance v1, Lcom/facebook/ads/internal/e;

    sget-object v2, Lcom/facebook/ads/internal/a;->p:Lcom/facebook/ads/internal/a;

    const-string/jumbo v3, "Invalid BidPayload"

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    sget-object v3, Lcom/facebook/ads/internal/m/x$a;->a:Lcom/facebook/ads/internal/m/x$a;

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->a:Lcom/facebook/ads/internal/m/x$a;

    const-string/jumbo v3, "bid_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    const-string/jumbo v3, "device_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->c:Ljava/lang/String;

    :goto_0
    const-string/jumbo v3, "sdk_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4.26.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lcom/facebook/ads/internal/e;

    sget-object v1, Lcom/facebook/ads/internal/a;->o:Lcom/facebook/ads/internal/a;

    const-string/jumbo v3, "Bid %d for SDK version %s being used on SDK version %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "sdk_version"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    const-string/jumbo v5, "4.26.0"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v3, Lcom/facebook/ads/internal/m/x$a;->b:Lcom/facebook/ads/internal/m/x$a;

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->a:Lcom/facebook/ads/internal/m/x$a;

    const-string/jumbo v3, "bid_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    const-string/jumbo v3, "device_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->d:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "payload"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/internal/m/x;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "resolved_placement_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lcom/facebook/ads/internal/e;

    sget-object v1, Lcom/facebook/ads/internal/a;->o:Lcom/facebook/ads/internal/a;

    const-string/jumbo v3, "Bid %d for placement %s being used on placement %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "resolved_placement_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v3, "template"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1000
    iget v4, p3, Lcom/facebook/ads/internal/h;->n:I

    .line 2000
    sget-object v5, Lcom/facebook/ads/internal/h;->f:Lcom/facebook/ads/internal/h;

    .line 3000
    iget v5, v5, Lcom/facebook/ads/internal/h;->n:I

    .line 2000
    if-ne v4, v5, :cond_6

    sget-object v4, Lcom/facebook/ads/internal/h;->f:Lcom/facebook/ads/internal/h;

    .line 4000
    iget v4, v4, Lcom/facebook/ads/internal/h;->n:I

    .line 2000
    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/facebook/ads/internal/h;->g:Lcom/facebook/ads/internal/h;

    .line 5000
    iget v4, v4, Lcom/facebook/ads/internal/h;->n:I

    .line 2000
    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/facebook/ads/internal/h;->h:Lcom/facebook/ads/internal/h;

    .line 6000
    iget v4, v4, Lcom/facebook/ads/internal/h;->n:I

    .line 2000
    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/facebook/ads/internal/h;->i:Lcom/facebook/ads/internal/h;

    .line 7000
    iget v4, v4, Lcom/facebook/ads/internal/h;->n:I

    .line 2000
    if-ne v3, v4, :cond_5

    :cond_4
    move v0, v1

    .line 0
    :cond_5
    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/e;

    sget-object v1, Lcom/facebook/ads/internal/a;->o:Lcom/facebook/ads/internal/a;

    const-string/jumbo v3, "Bid %d for template %s being used on template %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "template"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object p3, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2000
    :cond_6
    if-ne v3, v4, :cond_5

    move v0, v1

    goto :goto_1

    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
