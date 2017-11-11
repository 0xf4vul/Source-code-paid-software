.class public final Lcom/google/android/gms/internal/aad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zy$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zy$a",
        "<",
        "Lcom/google/android/gms/internal/ux;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/aad;->a:Z

    return-void
.end method

.method private static a(Landroid/support/v4/h/k;)Landroid/support/v4/h/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/h/k",
            "<TK;",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;)",
            "Landroid/support/v4/h/k",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v2, Landroid/support/v4/h/k;

    invoke-direct {v2}, Landroid/support/v4/h/k;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/h/k;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/h/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/support/v4/h/k;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/h/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/zy;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/vb$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 0
    .line 1000
    new-instance v2, Landroid/support/v4/h/k;

    invoke-direct {v2}, Landroid/support/v4/h/k;-><init>()V

    new-instance v3, Landroid/support/v4/h/k;

    invoke-direct {v3}, Landroid/support/v4/h/k;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/aeh;

    move-result-object v4

    const-string/jumbo v0, "video"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/aeh;

    move-result-object v5

    const-string/jumbo v0, "custom_assets"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "string"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2000
    const-string/jumbo v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "string_value"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Landroid/support/v4/h/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3000
    const-string/jumbo v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "image_value"

    iget-boolean v10, p0, Lcom/google/android/gms/internal/aad;->a:Z

    .line 4000
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v9, "require"

    const/4 v11, 0x1

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-virtual {p1, v1, v9, v10}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/aeh;

    move-result-object v1

    .line 3000
    invoke-virtual {v2, v8, v1}, Landroid/support/v4/h/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1000
    :cond_2
    const-string/jumbo v9, "Unknown custom asset type: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcom/google/android/gms/internal/zy;->a(Lcom/google/android/gms/internal/aeh;)Lcom/google/android/gms/internal/aer;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/ux;

    const-string/jumbo v1, "custom_template_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/internal/aad;->a(Landroid/support/v4/h/k;)Landroid/support/v4/h/k;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/us;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lcom/google/android/gms/internal/aer;->z()Lcom/google/android/gms/internal/aex;

    move-result-object v5

    :goto_3
    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v6

    :cond_5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ux;-><init>(Ljava/lang/String;Landroid/support/v4/h/k;Landroid/support/v4/h/k;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/te;Landroid/view/View;)V

    .line 0
    return-object v0

    :cond_6
    move-object v5, v6

    .line 1000
    goto :goto_3
.end method
